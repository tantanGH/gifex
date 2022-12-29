//
//  gifex.c - Animated GIF loader for X680x0 with XEiJ graphic extension support
//
//  2022,2023 tantan
//
//  https://github.com/tantanGH/gifex/
//
//  reference: https://www.tohoho-web.com/wwwgif.htm#GIFPatent
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <jstring.h>
#include <time.h>
#include <doslib.h>
#include <iocslib.h>

#define VERSION "0.1.0"
#define DEBUG

// global variables (flags)
int g_clear_screen = 0;                 // 1:clear screen by picture
int g_extended_graphic_mode = 0;        // 1:XEiJ extended graphic mode 7
int g_information_mode = 0;             // 1:show PNG file information
int g_centering_mode = 0;               // 1:centering yes
int g_wait_mode = 0;                    // 1:wait key input
int g_reversed_scroll = 0;              // 1:cursor down = up scroll
int g_random_mode = 0;                  // 1:display one image randomly
int g_brightness = 100;                 // 0-100% brightness

// global variables (buffers)
int g_buffer_memory_size_factor = 8;    // in=64KB*factor, out=128KB*factor
int g_input_buffer_size = 65536 * 8;    // default input buffer size bytes
int g_output_buffer_size = 131072 * 8;  // default output buffer size bytes

// global variables (states)
int g_actual_width = 0;                 // crop width
int g_actual_height = 0;                // crop height
int g_start_x = 0;                      // display offset X
int g_start_y = 0;                      // display offset Y

// RGB888 to RGB555 mapping
unsigned short g_rgb555_r[256];
unsigned short g_rgb555_g[256];
unsigned short g_rgb555_b[256];

// graphic ops memory addresses
#define GVRAM     0xC00000
#define CRTC_R00  0xE80000
#define CRTC_R12  0xE80018
#define CRTC_R20  0xE80028
#define VDC_R1    0xE82400
#define VDC_R3    0xE82600
#define PALETTE   0xE82000
#define GPIP      0xE88001

// display screen size
#define SCREEN_WIDTH  768
#define SCREEN_HEIGHT 512

// actual screen size
#define ACTUAL_WIDTH_EX  1024
#define ACTUAL_HEIGHT_EX 1024
#define ACTUAL_WIDTH      512
#define ACTUAL_HEIGHT     512

// GIF header
typedef struct {
  char signature[4];
  char version[4];
  unsigned short screen_width;
  unsigned short screen_height;
  unsigned char flag_code;
  unsigned char bg_color_index;
  unsigned char aspect_ratio;
  //unsigned char global_color_table[];
} GIF_HEADER;

// GIF image block header
typedef struct {
  unsigned char separator;
  unsigned short left_position;
  unsigned short top_position;
  unsigned short width;
  unsigned short height;
  unsigned char flag_code;
  unsigned char* local_color_table;
  unsigned char lzw_min_code_size;
  unsigned char* image_data;
} GIF_IMAGE_BLOCK;

// GIF graphic control extension
typedef struct {
  unsigned char introducer;
  unsigned char label;
  unsigned char block_size;
  unsigned char flag_code;
  unsigned short delay_time;
  unsigned char transparent_index;
  unsigned char terminator;
} GIF_GRAPHIC_CONTROL_EXTENSION;

// GIF comment extension
typedef struct {
  unsigned char introducer;
  unsigned char label;
  unsigned char block_size;
  unsigned char* comment_data;
  unsigned char terminator;
} GIF_COMMENT_EXTENSION;

// GIF plain text extension
typedef struct {
  unsigned char introducer;
  unsigned char label;
  unsigned char block_size;
  unsigned short text_grid_left_position;
  unsigned short text_grid_top_position;
  unsigned short text_grid_width;
  unsigned short text_grid_height;
  unsigned char character_cell_width;
  unsigned char character_cell_height;
  unsigned char text_fg_color_index;
  unsigned char text_bg_color_index;
  unsigned char block_size2;
  unsigned char* plain_text_data;
  unsigned char terminator;
} GIF_PLAIN_TEXT_EXTENSION;

// GIF application extension
typedef struct {
  unsigned char introducer;
  unsigned char label;
  unsigned char block_size;
  unsigned char identifier[8];
  unsigned char auth_code[3];
  unsigned char block_size2;
  unsigned char* application_data;
  unsigned char terminator;
} GIF_APPLICATION_EXTENSION;

#define GIF_TRAILOR            0x3b
#define IMAGE_SEPARATOR        0x2c
#define EXTENSION_INTRODUCER   0x21
#define GRAPHIC_CONTROL_LABEL  0xf9
#define COMMENT_LABEL          0xfe
#define PLAIN_TEXT_LABEL       0x01
#define APPLICATION_LABEL      0xff

//
//  file buffer operations (read 1 byte)
//
inline static unsigned char get_uchar_file_buffer(unsigned char* file_buffer_ptr, int* file_buffer_ofs_ptr, FILE* fp) {

  int ofs = *file_buffer_ofs_ptr;
  unsigned char uc;
  
  if (ofs < g_input_buffer_size) {
    // we can read 1 byte from the buffer
     uc = file_buffer_ptr[ofs++];
  } else {
    int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    // we cannot read any bytes from the buffer
    uc = file_buffer_ptr[0];
    ofs = 1;
  }

  *file_buffer_ofs_ptr = ofs;

  return uc;
}

//
//  file buffer operations (read 2 bytes in little endian)
//
inline static unsigned short get_ushort_file_buffer(unsigned char* file_buffer_ptr, int* file_buffer_ofs_ptr, FILE* fp) {

  int ofs = *file_buffer_ofs_ptr;
  unsigned short us;

  if (ofs < ( g_input_buffer_size - 1)) {
    // we can read 2 bytes from the buffer
    us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
    ofs += 2;
  } else if (ofs < g_input_buffer_size) {
    // we can read 1 byte from the buffer
    int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size - 1, fp);
    us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
    ofs = 1;
  } else {
    // we cannot read any bytes from the buffer
    int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    us = file_buffer_ptr[0] + (file_buffer_ptr[1] << 8);          // must not use bit or (|) here, not to discard upper bits
    ofs = 2;
  }

  *file_buffer_ofs_ptr = ofs;

  return us;
}

//
//  file buffer operations (copy multiple bytes)
//
inline static void memcpy_file_buffer(unsigned char* dest_ptr, unsigned char* file_buffer_ptr, int* file_buffer_ofs_ptr, int len, FILE* fp) {

  int ofs = *file_buffer_ofs_ptr;

  if ((ofs + len) <= g_input_buffer_size) {
    // we can read all bytes from the buffer
    memcpy(dest_ptr, file_buffer_ptr + ofs, len);
    ofs += len;
  } else if (ofs >= g_input_buffer_size) {
    // we cannot read any bytes from the buffer
    fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    memcpy(dest_ptr, file_buffer_ptr, len);
    ofs = len;
  } else {
    // we can read some bytes from the buffer
    int available = g_input_buffer_size - ofs;
    memcpy(dest_ptr, file_buffer_ptr + ofs, available);
    fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    memcpy(dest_ptr + available, file_buffer_ptr, len - available);
    ofs = len - available;
  }

  *file_buffer_ofs_ptr = ofs;
}

//
//  file buffer operations (just skip bytes)
//
inline static void skip_file_buffer(unsigned char* file_buffer_ptr, int* file_buffer_ofs_ptr, int len, FILE* fp) {

  int ofs = *file_buffer_ofs_ptr;

  if ((ofs + len) <= g_input_buffer_size) {
    // we can skip all bytes from the buffer
    ofs += len;
  } else if (ofs >= g_input_buffer_size) {
    // we cannot skip any bytes from the buffer
    fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    ofs = len;
  } else {
    // we can skip some bytes from the buffer
    int available = g_input_buffer_size - ofs;
    fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    ofs = len - available;
  }

  *file_buffer_ofs_ptr = ofs;
}

//
//  read bits from a byte (LSB to MSB)
//
inline static unsigned char read_bits(unsigned char byte_data, int bit_ofs, int bit_len) {
  return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
}

//
//  decode LZW bit stream - originated by miku in Typescript
//  https://github.com/BaroqueEngine/GIFParser
//
typedef struct {    // to preserve status to resume decoding
  int clear_code;
  int end_code;
  int data_size;
  int available;
  int old_code;
  int code_size;
  short code_mask;
  int first;
  int top;
} LZW_INF;

#define MAX_STACK_SIZE 4096

static short lzw_prefix[ MAX_STACK_SIZE ];
static short lzw_suffix[ MAX_STACK_SIZE ];
static unsigned char lzw_pixel_stack[ MAX_STACK_SIZE ];
  
static void initialize_lzw(LZW_INF* lzw, int min_code_size) {

  lzw->clear_code = 1 << min_code_size;
  lzw->end_code = lzw->clear_code + 1;

  lzw->data_size = min_code_size;
  lzw->available = lzw->clear_code + 2;
  lzw->old_code = -1;
  lzw->code_size = lzw->data_size + 1;

  lzw->code_mask = ( 1 << lzw->code_size ) - 1;
  lzw->first = 0;
  lzw->top = 0;

  for (int i = 0; i < lzw->clear_code; i++) {
    lzw_prefix[i] = 0;
    lzw_suffix[i] = i;
  }

}

static int decode_lzw(LZW_INF* lzw, unsigned char* input_buffer, int input_len, unsigned char* output_buffer, int pixel_count) {

  short datum = 0;
  int bits = 0;

  int top = lzw->top;
  
  int output_buffer_ofs = 0;
  int input_buffer_ofs = 0;
  
  while (input_buffer_ofs < input_len && output_buffer_ofs < pixel_count) {

    short code, in_code;

    if (top == 0) {

      if (bits < lzw->code_size) {
        datum += input_buffer[ input_buffer_ofs++ ] << bits;
        bits += 8;
        continue;
      }

      code = datum & lzw->code_mask;
      datum >>= lzw->code_size;
      bits -= lzw->code_size;

      if (code > lzw->available || code == lzw->end_code) {
        break;
      }

      if (code == lzw->clear_code) {
        lzw->code_size = lzw->data_size + 1;
        lzw->code_mask = ( 1 << lzw->code_size ) - 1;
        lzw->available = lzw->clear_code + 2;
        lzw->old_code = -1;
        continue;
      }

      if (lzw->old_code == -1) {
        lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
        lzw->old_code = code;
        lzw->first = code;
        continue;
      }

      in_code = code;

      if (code == lzw->available) {
        lzw_pixel_stack[ top++ ] = lzw->first;
        code = lzw->old_code;
      }

      while (code > lzw->clear_code) {
        lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
        code = lzw_prefix[ code ];
      }

      lzw->first = lzw_suffix[ code ] & 0xff;
      lzw_pixel_stack[ top ++ ] = lzw->first;

      if (lzw->available < MAX_STACK_SIZE) {
        lzw_prefix[ lzw->available ] = lzw->old_code;
        lzw_suffix[ lzw->available ] = lzw->first;
        lzw->available++;

        if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
          lzw->code_size++;
          lzw->code_mask += lzw->available;
        }
      }

      lzw->old_code = in_code;

    }

    top--;
    output_buffer[ output_buffer_ofs++ ] = lzw_pixel_stack[ top ];

  }

  lzw->top = top;

  return output_buffer_ofs;
}

//
//  initialize 15bit color mapping table
//
static void initialize_color_mapping() {
  for (int i = 0; i < 256; i++) {
    unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
    g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
    g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
    g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
  }
}

//
//  initialize screen
//
static void initialize_screen() {

  // crtc, video controller and palette
  volatile unsigned short* crtc_r00_ptr = (unsigned short*)CRTC_R00;
  volatile unsigned short* crtc_r12_ptr = (unsigned short*)CRTC_R12;
  volatile unsigned short* crtc_r20_ptr = (unsigned short*)CRTC_R20;
  volatile unsigned short* vdc_r1_ptr   = (unsigned short*)VDC_R1;
  volatile unsigned short* vdc_r3_ptr   = (unsigned short*)VDC_R3;
  volatile unsigned short* palette_ptr  = (unsigned short*)PALETTE;
  volatile unsigned char* gpip = (unsigned char*)GPIP;

  // supervisor stack pointer
  int ssp;

  // clear screen if needed
  if (g_clear_screen != 0) {
    G_CLR_ON();
  }

  // enter supervisor
  ssp = SUPER(0);

  // wait vdisp
  while(!(*gpip & 0x10));
  while( (*gpip & 0x10));

  // change CRTC screen mode (768x512,31kHz)
  crtc_r00_ptr[0] = 0x0089;
  crtc_r00_ptr[1] = 0x000e;
  crtc_r00_ptr[2] = 0x001c;
  crtc_r00_ptr[3] = 0x007c; 
  crtc_r00_ptr[4] = 0x0237;
  crtc_r00_ptr[5] = 0x0005;
  crtc_r00_ptr[6] = 0x0028;
  crtc_r00_ptr[7] = 0x0228; 
  crtc_r00_ptr[8] = 0x001b;

  // change CRTC memory mode
  if (g_extended_graphic_mode == 0) {
    *crtc_r20_ptr = 0x0316;   // memory mode 3
    *vdc_r1_ptr = 3;          // memory mode 3
    *vdc_r3_ptr = 0x2f;       // graphic on (512x512)
    crtc_r12_ptr[0] = 0;          // scroll position X
    crtc_r12_ptr[1] = 0;          // scroll position Y
    crtc_r12_ptr[2] = 0;          // scroll position X
    crtc_r12_ptr[3] = 0;          // scroll position Y    
    crtc_r12_ptr[4] = 0;          // scroll position X
    crtc_r12_ptr[5] = 0;          // scroll position Y
    crtc_r12_ptr[6] = 0;          // scroll position X
    crtc_r12_ptr[7] = 0;          // scroll position Y
  } else {
    *crtc_r20_ptr = 0x0716;   // memory mode 7 (for XEiJ only)
    *vdc_r1_ptr = 7;          // memory mode 7 (for XEiJ only)
    *vdc_r3_ptr = 0x30;       // graphic on (1024x1024)
    crtc_r12_ptr[0] = 0;          // scroll position X
    crtc_r12_ptr[1] = 0;          // scroll position Y
  }

  // initialize 65536 color pallet
  for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
    *palette_ptr++ = (unsigned short)i;
    *palette_ptr++ = (unsigned short)i;
  }

  // back to user mode
  SUPER(ssp);
}

//
//  direct memory allocation using DOSCALL (with malloc, we cannot allocate more than 64k, why?)
//
inline static char* malloc__(int size) {
  int addr = MALLOC(size);
  return (addr >= 0x81000000) ? NULL : (char*)addr;
}

inline static void free__(char* ptr) {
  int addr;
  if (ptr == NULL) return;
  addr = (int)ptr;
  MFREE(addr);
}

//
//  output pixel data
//
static void output_pixel(int left, int top, int width, int height, unsigned char* buffer, int buffer_size, unsigned short* palette) {

  unsigned char* buffer_end = buffer + buffer_size;
  unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
  int x = 0;
  int y = top;
  int ssp;

#ifdef DEBUG
//  printf("left=%d,top=%d,width=%d,height=%d\n",left,top,width,height);
#endif

  // supervisor mode
  ssp = SUPER(0);

  while (buffer < buffer_end) {

    unsigned char palette_code = *buffer++;
    
    if ((g_start_x + left + x) < g_actual_width) {
//      printf("x=%d,y=%d,palette=%d,color=%06X\n",x,y,palette_code,palette[palette_code]);
      *gvram++ = palette[ palette_code ];
    }
    
    // next pixel
    x++;

    // next scan line
    if (x >= width) {
      x = 0;
      if (++y >= height) break;
      if ((g_start_y + y) >= g_actual_height) break;  // Y cropping
      gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + y) + (g_start_x + left);
    }

  }

  SUPER(ssp);

}

//
//  load GIF image
//
static int load_gif_image(char* gif_file_name) {

    struct FILBUF inf;
    FILE* fp;
    int read_size;
    unsigned char* file_buffer_ptr = NULL;
    unsigned char* decode_buffer_ptr = NULL;
    int file_buffer_ofs = 0;
    GIF_HEADER header;
    int end_of_gif = 0;
    static unsigned short global_palette[256];

    // check file status
    if (FILES(&inf,gif_file_name,0x23) != 0) {
      printf("error: file read error (%s).\n", gif_file_name);
      return -1;
    }    

    // open source file
    fp = fopen(gif_file_name, "rb");
    if (fp == NULL) {
      printf("error: cannot open input file (%s).\n", gif_file_name);
      return -1;
    }

    // allocate file buffer memory
    file_buffer_ptr = malloc__(g_input_buffer_size);
    if (file_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for file buffer.\n");
      fclose(fp);
      return -1;
    }

    // read into buffer as much as possible
    read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    if (read_size <= 0) {
      printf("error: file read error.\n");
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check signature
    memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    header.signature[3] = '\0';
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check version
    memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    header.version[3] = '\0';
    if (strcmp(header.version,"89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // header fields
    header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

    // read global color table
    if (read_bits(header.flag_code,7,1)) {
      int gct_size = (1 << (1 + read_bits(header.flag_code,0,3)));
      for (int i = 0; i < gct_size; i++) {
        unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
      }
#ifdef DEBUG
      printf("loaded global palette. (%d colors)\n",gct_size);
#endif
    }

    // allocate decode buffer memory
    decode_buffer_ptr = malloc__(g_output_buffer_size);
    if (decode_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for inflate buffer.\n");
      fclose(fp);
      return -1;
    }

    // parse blocks
    do {

      // transparency information got from graphic extension block
      int transparent_color_flag = 0;
      int transparent_color_index;

      // read first byte to identify block type
      unsigned char block_type = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

      if (block_type == GIF_TRAILOR) {

        // end of GIF
#ifdef DEBUG 
        printf("EOG\n");
#endif
        end_of_gif = 1;
        break;
        
      } else if (block_type == IMAGE_SEPARATOR) {
        
        // GIF image block
        GIF_IMAGE_BLOCK image_block;
        int end_of_image = 0;
        unsigned short local_palette[256];
        int use_local_palette = 0;

        image_block.separator = block_type;

        image_block.left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.flag_code     = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

#ifdef DEBUG
        printf("image block - left:%d,top:%d,width:%d,height:%d\n",
              image_block.left_position,
              image_block.top_position,
              image_block.width,
              image_block.height);        
#endif

        // read local color table
        if ((use_local_palette = read_bits(image_block.flag_code,7,1)) != 0) {
          int lct_size = 1 << (1 + (read_bits(image_block.flag_code,0,3)));
          for (int i = 0; i < lct_size; i++) {
            unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
            unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
            unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
            local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
          }
#ifdef DEBUG
          printf("loaded local palette. (%d colors)\n",lct_size);
#endif
        }

        // read lzw minimum code size
        image_block.lzw_min_code_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
#ifdef DEBUG
        printf("lzw min code size=%d\n",image_block.lzw_min_code_size);
#endif

        int pixel_count = image_block.width * image_block.height;
        LZW_INF lzw;
        static unsigned char sub_block_data[256];
        int decode_buffer_ofs = 0;

        initialize_lzw(&lzw, image_block.lzw_min_code_size);

        // repeat to read sub block size and image data
        do {

          unsigned char sub_block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (sub_block_size == 0) {
            end_of_image = 1;
          } else {
            int decoded;
            memcpy_file_buffer(sub_block_data, file_buffer_ptr, &file_buffer_ofs, sub_block_size, fp);
            decoded = decode_lzw(&lzw, sub_block_data, sub_block_size, decode_buffer_ptr + decode_buffer_ofs, pixel_count - decode_buffer_ofs);
            decode_buffer_ofs += decoded;
          }

        } while (end_of_image == 0);

#ifdef DEBUG
        printf("decode_buffer_ofs = %d\n",decode_buffer_ofs);
#endif

        // image block does not have terminator

        // output pixel
        output_pixel(image_block.left_position, 
                     image_block.top_position, 
                     image_block.width, 
                     image_block.height,
                     decode_buffer_ptr,
                     decode_buffer_ofs,
                     use_local_palette ? local_palette : global_palette );

      } else if (block_type == EXTENSION_INTRODUCER) {

        unsigned char extension_label = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

        if (extension_label == GRAPHIC_CONTROL_LABEL) {

          // graphic control extension
          GIF_GRAPHIC_CONTROL_EXTENSION graphic_ctrl_ext;
#ifdef DEBUG 
          printf("graphic control extension\n");
#endif
          graphic_ctrl_ext.introducer = block_type;
          graphic_ctrl_ext.label = extension_label;

          graphic_ctrl_ext.block_size        = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.flag_code         = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.delay_time        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.transparent_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

          graphic_ctrl_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (graphic_ctrl_ext.terminator != 0x00) {
            printf("error: extension read error.\n");
            end_of_gif = 1;
            break;            
          }

          // capture transparency information for the next image block use
          transparent_color_flag  = graphic_ctrl_ext.flag_code & 0x01;
          transparent_color_index = graphic_ctrl_ext.transparent_index;

        } else if (extension_label == COMMENT_LABEL) {

          // comment extension
          GIF_COMMENT_EXTENSION comment_ext;
#ifdef DEBUG 
          printf("comment extension\n");
#endif
          comment_ext.introducer = block_type;
          comment_ext.label = extension_label;

          comment_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, comment_ext.block_size, fp);

          comment_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (comment_ext.terminator != 0x00) {
            printf("error: extension read error.\n");
            end_of_gif = 1;
            break;            
          }

        } else if (extension_label == PLAIN_TEXT_LABEL) {

          // plain text extension
          GIF_PLAIN_TEXT_EXTENSION plain_text_ext;
#ifdef DEBUG 
          printf("plain text extension\n");
#endif
          plain_text_ext.introducer = block_type;
          plain_text_ext.label = extension_label;

          plain_text_ext.block_size              = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.character_cell_width    = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.character_cell_height   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

          plain_text_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, plain_text_ext.block_size2, fp);

          plain_text_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (plain_text_ext.terminator != 0x00) {
            printf("error: extension read error.\n");
            end_of_gif = 1;
            break;            
          }

        } else if (extension_label == APPLICATION_LABEL) {

          // application extension
          GIF_APPLICATION_EXTENSION app_ext;
#ifdef DEBUG 
          printf("application extension\n");
#endif
          app_ext.introducer = block_type;
          app_ext.label = extension_label;

          app_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

          memcpy_file_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, 8, fp);
          memcpy_file_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, 3, fp);

          app_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, app_ext.block_size2, fp);

          app_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (app_ext.terminator != 0x00) {
            printf("error: extension read error.\n");
            end_of_gif = 1;
            break;            
          }

        } else {

          printf("error: unknown extension label (0x%02X).\n", extension_label);
          end_of_gif = 1;
          break;

        }

      } else {

        printf("error: unknown block (0x%02X).\n", block_type);
        end_of_gif = 1;
        break;

      }

    } while (end_of_gif == 0);

    // reclaim decode buffer memory
    if (decode_buffer_ptr != NULL) {
      free__(decode_buffer_ptr);
      decode_buffer_ptr = NULL;
    }

    // reclaim file buffer memory
    if (file_buffer_ptr != NULL) {
      free__(file_buffer_ptr);
      file_buffer_ptr = NULL;
    }

    // close file
    if (fp != NULL) {
      fclose(fp);
      fp = NULL;
    }

    return 0;
}

//
//  show GIF information
//
static int describe_gif_image(char* gif_file_name) {

    struct FILBUF inf;
    FILE* fp;
    int read_size;
    char* file_buffer_ptr = NULL;
    int file_buffer_ofs = 0;
    GIF_HEADER header;

    // check file status
    if (FILES(&inf,gif_file_name,0x23) != 0) {
      printf("error: file read error (%s).\n", gif_file_name);
      return -1;
    }    

    // open source file
    fp = fopen(gif_file_name, "rb");
    if (fp == NULL) {
      printf("error: cannot open input file (%s).\n", gif_file_name);
      return -1;
    }

    // allocate file buffer memory
    file_buffer_ptr = malloc__(g_input_buffer_size);
    if (file_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for file buffer.\n");
      fclose(fp);
      return -1;
    }

    // read into buffer as much as possible
    read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    if (read_size <= 0) {
      printf("error: file read error.\n");
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check signature
    memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    header.signature[3] = '\0';
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check version
    memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    header.version[3] = '\0';
    if (strcmp(header.version, "89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // header fields
    header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

    // display information
    printf("     file name: %s\n", gif_file_name);
    printf("     file size: %d\n", inf.filelen);
    printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
    printf("   GIF version: %s\n", header.version);
    printf("  screen width: %d\n", header.screen_width);
    printf(" screen height: %d\n", header.screen_height);
    printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
    printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
    printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
    printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
    printf("BG color index: %d\n", header.bg_color_index);
    printf("  aspect ratio: %d\n", header.aspect_ratio);

    // close file
    if (fp != NULL) {
      fclose(fp);
      fp = NULL;
    }

    // reclaim file buffer memory
    if (file_buffer_ptr != NULL) {
      free__(file_buffer_ptr);
      file_buffer_ptr = NULL;
    }

    return 0;
}

//
//  show help messages
//
static void show_help_message() {
  printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
  printf("usage: gifex.x [options] <image.gif>\n");
  printf("options:\n");
  printf("   -c ... clear graphic screen\n");
  printf("   -s<n> ... screen mode (0:384x256, 1:512x512, 2:768x512 (XEiJ only)\n");
  printf("   -e ... use extended graphic mode for XEiJ (same as -s2)\n");
  printf("   -h ... show this help message\n");
  printf("   -i ... show file information\n");
  printf("   -n ... image centering\n");
  printf("   -k ... wait key input\n");
  printf("   -v<n> ... brightness (0-100)\n");
  printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
}

//
//  main
//
int main(int argc, char* argv[]) {

  char* gif_file_name = NULL;
  int func_key_display_mode = 0;
 
  if (argc <= 1) {
    show_help_message();
    return 1;
  }

  for (int i = 1; i < argc; i++) {
    if (argv[i][0] == '-') {
      if (argv[i][1] == 'c') {
        g_clear_screen = 1;
      } else if (argv[i][1] == 'e') {
        g_extended_graphic_mode = 1;
      } else if (argv[i][1] == 'i') {
        g_information_mode = 1;
      } else if (argv[i][1] == 'n') {
        g_centering_mode = 1;
      } else if (argv[i][1] == 'k') {
        g_wait_mode = 1;
      } else if (argv[i][1] == 'v') {
        g_brightness = atoi(argv[i]+2);
      } else if (argv[i][1] == 'b') {
        g_buffer_memory_size_factor = atoi(argv[i]+2);
        if (g_buffer_memory_size_factor > 16) {
          printf("error: too large memory factor.\n");
          return 1;
        }
      } else if (argv[i][1] == 'h') {
        show_help_message();
        return 0;
      } else {
        printf("error: unknown option (%s).\n",argv[i]);
        return 1;
      }
    } else {
      gif_file_name = argv[i];
    }
  }

  if (gif_file_name == NULL) {
    printf("error: no input file.\n");
    return 1;
  }

  // input buffer = 64KB * factor
  g_input_buffer_size = 65536 * g_buffer_memory_size_factor;

  // output (inflate) buffer = 128KB * factor - should be LCM(3,4)*n to store RGB or RGBA tuple
  g_output_buffer_size = 131072 * g_buffer_memory_size_factor;

  // cropping window
  g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
  g_actual_height = g_extended_graphic_mode != 0 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;

   if (g_information_mode == 1) {
    describe_gif_image(gif_file_name);
    return 0;
  }

  // initialize color mapping table
  initialize_color_mapping();

  // initialize graphic screen
  initialize_screen();

  // cursor display off
  C_CUROFF();

  // function key display off
  func_key_display_mode = C_FNKMOD(-1);
  C_FNKMOD(3);

  // load GIF image
  load_gif_image(gif_file_name);

  // cursor on
  C_CURON();

  // resume function key display mode
  C_FNKMOD(func_key_display_mode);

  return 0;
}