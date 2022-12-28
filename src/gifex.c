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
#include "lzw.h"

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
int g_current_x = -1;                   // current drawing pixel X
int g_current_y = 0;                    // current drawing pixel Y
int g_current_filter = 0;               // current PNG filter mode

//#ifdef DEBUG_FWRITE
//FILE* fp_image_data;
//#endif

// cached data for filtering
unsigned char g_left_rf = 0;
unsigned char g_left_gf = 0;
unsigned char g_left_bf = 0;
unsigned char* g_up_rf_ptr = NULL;
unsigned char* g_up_gf_ptr = NULL;
unsigned char* g_up_bf_ptr = NULL;

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
  unsigned short logical_screen_width;
  unsigned short logical_screen_height;
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
  unsigned char transparent_color_index;
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

// file buffer operations
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

inline static unsigned short get_ushort_file_buffer(unsigned char* file_buffer_ptr, int* file_buffer_ofs_ptr, FILE* fp) {

  int ofs = *file_buffer_ofs_ptr;
  unsigned short us;

  if (ofs < g_input_buffer_size - 1) {
    // we can read 2 bytes from the buffer
    us = file_buffer_ptr[ofs] || (file_buffer_ptr[ofs+1] << 8);
    ofs += 2;
  } else if (ofs < g_input_buffer_size) {
    // we can read 1 byte from the buffer
    int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size - 1, fp);
    us = file_buffer_ptr[ofs] || (file_buffer_ptr[0] << 8);
    ofs = 1;
  } else {
    // we cannot read any bytes from the buffer
    int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
    us = file_buffer_ptr[0] || (file_buffer_ptr[1] << 8);
    ofs = 2;
  }

  *file_buffer_ofs_ptr = ofs;

  return us;
}

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

// initialize color mapping table
static void initialize_color_mapping() {
  for (int i = 0; i < 256; i++) {
    unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
    g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
    g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
    g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
  }
}

// initialize screen
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

// direct memory allocation using DOSCALL (with malloc, we cannot allocate more than 64k, why?)
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

// output pixel data
static void output_pixel(unsigned char* buffer, int buffer_size) {
/*
  int consumed_size = 0;
  int ssp;
  int bytes_per_pixel = (png_headerp->color_type == PNG_COLOR_TYPE_RGBA) ? 4 : 3;
  unsigned char* buffer_end = buffer + buffer_size;
  unsigned short* gvram_current;
  
  // cropping check
  if ((g_start_y + g_current_y) >= g_actual_height) {
    // no need to output any pixels
    *buffer_consumed = buffer_size;     // just consumed all
    return;
  }

  // GVRAM entry point
  gvram_current = (unsigned short*)GVRAM +  
                                    g_actual_width * (g_start_y + g_current_y) + 
                                    g_start_x + ((g_current_x >= 0) ? g_current_x : 0);

  // supervisor mode
  ssp = SUPER(0);

  while (buffer < buffer_end) {

    if (g_current_x == -1) {    // first byte of each scan line

      // get filter mode
      g_current_filter = *buffer++;
#ifdef DEBUG
      //printf("g_current_filter=%d,g_current_y=%d\n",g_current_filter,g_current_y);
#endif
      // next pixel
      g_current_x++;

    } else {

      short r,rf;
      short g,gf;
      short b,bf;

      // before plotting, need to ensure we have accessible 3(or 4 bytes) in the inflated buffer
      // if not, we give up now and return
      if ((buffer_end - buffer) < bytes_per_pixel) {
        break;
      }

      // get raw RGB data
      r = *buffer++;
      g = *buffer++;
      b = *buffer++;

      // ignore 4th byte in RGBA mode
      if (png_headerp->color_type == PNG_COLOR_TYPE_RGBA) {
        buffer++;      
      }

      // apply filter
      switch (g_current_filter) {
      case 1:     // sub
        {
          short arf = (g_current_x > 0) ? g_left_rf : 0;
          short agf = (g_current_x > 0) ? g_left_gf : 0;
          short abf = (g_current_x > 0) ? g_left_bf : 0;
          rf = ( r + arf ) & 0xff;
          gf = ( g + agf ) & 0xff;
          bf = ( b + abf ) & 0xff;
        }
        break;
      case 2:     // up
        {
          short brf = (g_current_y > 0) ? g_up_rf_ptr[g_current_x] : 0;
          short bgf = (g_current_y > 0) ? g_up_gf_ptr[g_current_x] : 0;
          short bbf = (g_current_y > 0) ? g_up_bf_ptr[g_current_x] : 0;
          rf = ( r + brf ) & 0xff;
          gf = ( g + bgf ) & 0xff;
          bf = ( b + bbf ) & 0xff;
        }
        break;
      case 3:     // average
        {
          short arf = (g_current_x > 0) ? g_left_rf : 0;
          short agf = (g_current_x > 0) ? g_left_gf : 0;
          short abf = (g_current_x > 0) ? g_left_bf : 0;
          short brf = (g_current_y > 0) ? g_up_rf_ptr[g_current_x] : 0;
          short bgf = (g_current_y > 0) ? g_up_gf_ptr[g_current_x] : 0;
          short bbf = (g_current_y > 0) ? g_up_bf_ptr[g_current_x] : 0;
          rf = ( r + ((arf + brf) >> 1)) & 0xff;
          gf = ( g + ((agf + bgf) >> 1)) & 0xff;
          bf = ( b + ((abf + bbf) >> 1)) & 0xff;
        }
        break;
      case 4:     // paeth
        {
          short arf = (g_current_x > 0) ? g_left_rf : 0;
          short agf = (g_current_x > 0) ? g_left_gf : 0;
          short abf = (g_current_x > 0) ? g_left_bf : 0;
          short brf = (g_current_y > 0) ? g_up_rf_ptr[g_current_x] : 0;
          short bgf = (g_current_y > 0) ? g_up_gf_ptr[g_current_x] : 0;
          short bbf = (g_current_y > 0) ? g_up_bf_ptr[g_current_x] : 0;
          short crf = (g_current_x > 0 && g_current_y > 0) ? g_up_rf_ptr[g_current_x-1] : 0;
          short cgf = (g_current_x > 0 && g_current_y > 0) ? g_up_gf_ptr[g_current_x-1] : 0;
          short cbf = (g_current_x > 0 && g_current_y > 0) ? g_up_bf_ptr[g_current_x-1] : 0;
          rf = ( r + paeth_predictor(arf,brf,crf)) & 0xff;
          gf = ( g + paeth_predictor(agf,bgf,cgf)) & 0xff;
          bf = ( b + paeth_predictor(abf,bbf,cbf)) & 0xff;
        }
        break;
      default:    // none
        rf = r;
        gf = g;
        bf = b;
      }

      // write pixel data with cropping
      if ((g_start_x + g_current_x) < g_actual_width) {
        *gvram_current++ = g_rgb555_r[rf] | g_rgb555_g[gf] | g_rgb555_b[bf];
      }
#ifdef DEBUG
      //printf("pixel: x=%d,y=%d,r=%d,g=%d,b=%d,rf=%d,gf=%d,bf=%d\n",g_current_x,g_current_y,r,g,b,rf,gf,bf);
#endif      
  
      // cache r,g,b for downstream filtering
      if (g_current_x > 0) {
        g_up_rf_ptr[g_current_x-1] = g_left_rf;
        g_up_gf_ptr[g_current_x-1] = g_left_gf;
        g_up_bf_ptr[g_current_x-1] = g_left_bf;
      }
      if (g_current_x == png_headerp->width-1) {
        g_up_rf_ptr[g_current_x] = rf;
        g_up_gf_ptr[g_current_x] = gf;
        g_up_bf_ptr[g_current_x] = bf;
      }
      g_left_rf = rf;
      g_left_gf = gf;
      g_left_bf = bf;

      // next pixel
      g_current_x++;

      // next scan line
      if (g_current_x >= png_headerp->width) {
        g_current_x = -1;
        g_current_y++;
        if ((g_start_y + g_current_y) >= g_actual_height) break;  // Y cropping
        gvram_current = (unsigned short*)GVRAM + g_actual_width * (g_start_y + g_current_y) + g_start_x;
      }

    }

  }

  SUPER(ssp);
*/
}

/*
// display animated GIF
static int load_gif_image(char* gif_file_name) {

  // for file operation
  FILE* fp;
  char signature[8];
  char chunk_type[5];
  int chunk_size, chunk_crc, read_size;

  // png header
  PNG_HEADER png_header;

  // for zlib inflate operation
  char* input_buffer_ptr = NULL;
  char* output_buffer_ptr = NULL;
  int input_buffer_offset = 0;
  int output_buffer_offset = 0;

  // for zlib inflate operation  
  z_stream zis;                     // inflation stream
  zis.zalloc = Z_NULL;
  zis.zfree = Z_NULL;
  zis.opaque = Z_NULL;
  zis.avail_in = 0;
  zis.next_in = Z_NULL;
  zis.avail_out = 0;
  zis.next_out = Z_NULL;

  // initialize zlib
  if (inflateInit(&zis) != Z_OK) {
    printf("error: zlib inflate initialization error.\n");
    return -1;
  }
  
//  #ifdef DEBUG_FWRITE
//  fp_image_data = fopen("__debug_.raw", "wb");
//  #endif

  // open source file
  fp = fopen(filename, "rb");
  if (fp == NULL) {
    printf("error: cannot open input file (%s).\n", filename);
    return -1;
  }

  // read first 8 bytes as signature
  read_size = fread(signature, 1, 8, fp);

  // check signature
  if (memcmp(signature,"\x89PNG\r\n\x1a\n",8) != 0 ) {
    printf("error: signature error. not a PNG file (%s).\n", filename);
    fclose(fp);
    return -1;
  }

  // allocate input buffer memory
  input_buffer_ptr = malloc__(g_input_buffer_size);
  if (input_buffer_ptr == NULL) {
    printf("error: cannot allocate memory for input buffer.\n");
    fclose(fp);
    return -1;
  }
  
  // allocate output buffer memory
  output_buffer_ptr= malloc__(g_output_buffer_size);
    if (output_buffer_ptr == NULL) {
    printf("error: cannot allocate memory for output buffer.\n");
    fclose(fp);
    free__(input_buffer_ptr);
    return -1;
  }
  
  // process PNG file chunk by chunk
  while ((read_size = fread((char*)(&chunk_size), 1, 4, fp)) > 0) {

    // read first 4 bytes as chunk size

    // read next 4 bytes as chuck type
    fread(chunk_type, 1, 4, fp);
    chunk_type[4] = '\0';

#ifdef DEBUG
    printf("chunk_type=%s\n",chunk_type);
    printf("chunk_size=%d\n",chunk_size);
#endif

    if (strcmp("IHDR",chunk_type) == 0) {

      // IHDR - header chunk, we can assume this chunk appears at top

#ifdef CHECK_CRC
      unsigned int checksum;
#endif

      fread(input_buffer_ptr, 1, chunk_size, fp);     // read chunk data to input buffer
      fread((char*)(&chunk_crc), 1, 4, fp);           // read 4 bytes as CRC
#ifdef CHECK_CRC
      checksum = crc32(crc32(0, chunk_type, 4), chunk_data_ptr, chunk_size);
      if (checksum != chunk_crc) {                    // check CRC if needed
        printf("warning: crc error.\n");
      }
#endif

      // parse header
      memcpy((char*)&png_header,input_buffer_ptr,sizeof(PNG_HEADER));
      if (g_information_mode != 0) {
        struct FILBUF inf;
        FILES(&inf,filename,0x23);
        printf("--\n");
        printf(" file name: %s\n",filename);
        printf(" file size: %d\n",inf.filelen);
        printf(" file time: %04d-%02d-%02d %02d:%02d:%02d\n",1980+(inf.date>>9),(inf.date>>5)&0xf,inf.date&0x1f,inf.time>>11,(inf.time>>5)&0x3f,inf.time&0x1f);
        printf("     width: %d\n",png_header.width);
        printf("    height: %d\n",png_header.height);
        printf(" bit depth: %d\n",png_header.bit_depth);
        printf("color type: %d\n",png_header.color_type);
        printf(" interlace: %d\n",png_header.interlace_method);
        break;
      }

      // check bit depth (support 8bit color only)
      if (png_header.bit_depth != 8) {
        printf("error: unsupported bit depth (%d).\n",png_header.bit_depth);
        break;
      }

      // check color type (support RGB or RGBA only)
      if (png_header.color_type != 2 && png_header.color_type != 6) {
        printf("error: unsupported color type (%d).\n",png_header.color_type);
        break;
      }

      // check interlace mode
      if (png_header.interlace_method != 0) {
        printf("error: interlace png is not supported.\n");
        break;
      }

      // allocate buffer memory for upper scanline filtering
      g_up_rf_ptr = malloc__(png_header.width);
      g_up_gf_ptr = malloc__(png_header.width);
      g_up_bf_ptr = malloc__(png_header.width);

      // start offset calculation
      if (g_centering_mode != 0) {
        g_start_x = (png_header.width <= SCREEN_WIDTH) ? (SCREEN_WIDTH - png_header.width) >> 1 : 0;
        g_start_y = (png_header.height <= SCREEN_HEIGHT) ? (SCREEN_HEIGHT - png_header.height) >> 1 : 0;
      } else {
        g_start_x = 0;
        g_start_y = 0;
      }

      // initialize pixel positions
      g_current_x = -1;
      g_current_y = 0;
      g_current_filter = 0;

    } else if (strcmp("IDAT",chunk_type) == 0) {

      // IDAT - data chunk, may appear several times

#ifdef CHECK_CRC
      unsigned int checksum;
#endif
      if (chunk_size > (g_input_buffer_size - input_buffer_offset)) {
        int input_buffer_consumed = 0;
        int z_status;
#ifdef DEBUG
        printf("no more space in input buffer, need to consume. (ofs=%d,chunksize=%d)\n",input_buffer_offset,chunk_size);
#endif
        z_status = inflate_data(input_buffer_ptr,input_buffer_offset,&input_buffer_consumed,output_buffer_ptr,g_output_buffer_size,&zis,&png_header);
        if (z_status != Z_OK && z_status != Z_STREAM_END) {
          printf("error: zlib data decompression error(%d).\n",z_status);
        }
#ifdef DEBUG
        printf("inflated. input consumed=%d\n",input_buffer_consumed);
#endif
        // in case we cannot consume all the data inflate data, move it to the top of the buffer for the following use
        if (input_buffer_consumed < input_buffer_offset) {
          memcpy(input_buffer_ptr,input_buffer_ptr+input_buffer_consumed,input_buffer_offset - input_buffer_consumed);
          input_buffer_offset = input_buffer_consumed;
        } else {
          input_buffer_offset = 0;
        }

      } else {
#ifdef DEBUG
        printf("input buffer memory is still not full. (ofs=%d,chunksize=%d)\n",input_buffer_offset,chunk_size);
#endif
      }

      // read chunk data into input buffer
      fread(input_buffer_ptr + input_buffer_offset, 1, chunk_size, fp);
      input_buffer_offset += chunk_size;

      fread((char*)(&chunk_crc), 1, 4, fp);
#ifdef CHECK_CRC
      checksum = crc32(crc32(0, chunk_type, 4), input_buffer_ptr + input_buffer_offset, chunk_size);
      if (checksum != chunk_crc) {
        printf("warning: crc error.\n");
      }
#endif

    } else if (strcmp("IEND",chunk_type) == 0) {

      // IEND chunk - the very last chunk

#ifdef DEBUG
      printf("found IEND.\n");
#endif
      break;

    } else {
      fseek(fp, chunk_size + 4, SEEK_CUR);
    }

  }

  // do we have any unconsumed data?
  if (input_buffer_offset > 0) {
    int input_buffer_consumed = 0;
    int z_status = inflate_data(input_buffer_ptr,input_buffer_offset,&input_buffer_consumed,output_buffer_ptr,g_output_buffer_size,&zis,&png_header);
    if (z_status != Z_OK && z_status != Z_STREAM_END) {
      printf("error: zlib data decompression error(%d).\n",z_status);
    }
    input_buffer_offset = (input_buffer_offset == input_buffer_consumed) ? 0 : input_buffer_consumed;
  }

  // complete zlib inflation stream operation
  inflateEnd(&zis);

  // close source PNG file
  fclose(fp);

//#ifdef DEBUG_FWRITE
//  fclose(fp_image_data);
//#endif

  // reclaim filter buffer memory
  if (g_up_rf_ptr != NULL) {
    free__(g_up_rf_ptr);
    g_up_rf_ptr = NULL;
  }
  if (g_up_gf_ptr != NULL) {
    free__(g_up_gf_ptr);
    g_up_gf_ptr = NULL;
  }
  if (g_up_bf_ptr != NULL) {
    free__(g_up_bf_ptr);
    g_up_bf_ptr = NULL;
  }

  // reclaim input buffer memory
  if (input_buffer_ptr != NULL) {
    free__(input_buffer_ptr);
    input_buffer_ptr = NULL;
  }

  // reclaim output buffer memory
  if (output_buffer_ptr > 0) {
    free__(output_buffer_ptr);
    output_buffer_ptr = NULL;
  }

  // key wait
  if (g_wait_mode != 0) {
    getchar();
  }

  // done
  return 0;
}
*/

// load GIF image
static int load_gif_image(char* gif_file_name) {

    struct FILBUF inf;
    FILE* fp;
    int read_size;
    char* file_buffer_ptr = NULL;
    char* decode_buffer_ptr = NULL;
    int file_buffer_ofs = 0;
    GIF_HEADER header;
    int end_of_gif = 0;

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
    header.signature[3] = '\0';
    memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check version
    header.version[3] = '\0';
    memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    if (strcmp(header.version,"89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // header fields
    header.logical_screen_width  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.logical_screen_height = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.flag_code = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.aspect_ratio = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

    // read global color table
    if (header.flag_code & 0x80) {
      int gct_size = 3 * (1 << (1 + (header.flag_code & 0x07)));
      printf("gct_size=%d\n",gct_size);
      skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, gct_size, fp);
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

#ifdef DEBUG
        printf("Image block\n");
#endif

        // read block header part
        image_block.separator = block_type;
        image_block.left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.top_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.width = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.height = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
        image_block.flag_code = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

#ifdef DEBUG
        printf("left:%d,top:%d,width:%d,height:%d\n",
              image_block.left_position,
              image_block.top_position,
              image_block.width,
              image_block.height);        
#endif

        // read local color table
        if (image_block.flag_code & 0x80) {
          int local_color_table_size = 3 * (1 << (1 + (image_block.flag_code & 0x07)));
          skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, local_color_table_size, fp);
#ifdef DEBUG
          printf("local color table size=%d\n",local_color_table_size);
#endif
        }

        // read lzw minimum code size
        image_block.lzw_min_code_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
#ifdef DEBUG
        printf("lzw min code size=%d\n",image_block.lzw_min_code_size);
#endif

        image_block.image_data = file_buffer_ptr;   // first block address

        // read chunk size and image data
        do {
          
          unsigned char data_chunk_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
#ifdef DEBUG
          //printf("data chunk size=%d\n",data_chunk_size);
#endif
          if (data_chunk_size == 0) {
            end_of_image = 1;
          } else {
            skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, data_chunk_size, fp);
          }

        } while (end_of_image == 0);

        // image block does not have terminator because the last block's size indicates zero

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
          graphic_ctrl_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.flag_code = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.delay_time = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.transparent_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          graphic_ctrl_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          if (graphic_ctrl_ext.terminator != 0x00) {
            printf("error: extension read error.\n");
            end_of_gif = 1;
            break;            
          }

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
          plain_text_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_top_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_width = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.text_grid_height = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.character_cell_width = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
          plain_text_ext.character_cell_height = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
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
          memcpy_file_buffer(app_ext.auth_code, file_buffer_ptr, &file_buffer_ofs, 3, fp);
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

// show GIF information
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
    header.signature[3] = '\0';
    memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // check version
    header.version[3] = '\0';
    memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
    if (strcmp(header.version,"89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      fclose(fp);
      free__(file_buffer_ptr);
      return -1;
    }

    // header fields
    header.logical_screen_width  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.logical_screen_height = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.flag_code = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
    header.aspect_ratio = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);

    // display information
    printf("     file name: %s\n", gif_file_name);
    printf("     file size: %d\n", inf.filelen);
    printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
    printf("   GIF version: %s\n", header.version);
    printf("  screen width: %d\n", header.logical_screen_width);
    printf(" screen height: %d\n", header.logical_screen_height);
    printf("     bit depth: %d\n", 1 + (header.flag_code & 0x70) >> 4);
    printf(" GCT available: %s\n", header.flag_code & 0x80 ? "yes" : "no");
    printf("      GCT sort: %s\n", header.flag_code & 0x88 == 0x88 ? "yes" : "no");
    printf("      GCT size: %d\n", header.flag_code & 0x07);
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

// show help messages
static void show_help_message() {
  printf("GIFEX - Animated GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
  printf("usage: gifex.x [options] <image.gif>\n");
  printf("options:\n");
  printf("   -c ... clear graphic screen\n");
  printf("   -e ... use extended graphic mode for XEiJ (1024x1024x65536)\n");
  printf("   -h ... show this help message\n");
  printf("   -i ... show file information\n");
  printf("   -n ... image centering\n");
  printf("   -k ... wait key input\n");
  printf("   -v<n> ... brightness (0-100)\n");
  printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
}

// main
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

  // initialize LZW dictionary
  LZW_DICT_PAGE* pages[ LZW_DICT_MAX_SIZE ];
  LZW_DICT dict;
  initialize_lzw_dictionary(&dict,5);
  show_lzw_dictionary(&dict);

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