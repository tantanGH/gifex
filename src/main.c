//
//  gifex.c - Animated GIF loader for X680x0 with XEiJ graphic extension support
//
//  reference: https://www.tohoho-web.com/wwwgif.htm
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <jstring.h>
#include <time.h>
#include <error.h>
#include <doslib.h>
#include <iocslib.h>

#include "memory.h"
#include "buffer.h"
#include "crtc.h"
#include "lzw.h"
#include "gif.h"

#define VERSION "0.5.0b1"
#define DEBUG

// global variables (flags)
int g_clear_screen = 0;                 // 1:clear screen by picture
int g_information_mode = 0;             // 1:show PNG file information
int g_centering_mode = 0;               // 1:centering yes
int g_key_wait_mode = 0;                // 1:wait key input
int g_brightness = 100;                 // 0-100% brightness
int g_memory_cache_mode = 0;            // 1:load all images to memory before animation
int g_high_memory_mode = 0;             // 1:use HIMEM for buffering
int g_screen_mode = 0;                  // 0:384x256 1:512x512 2:768x512(XEiJ extended graphic)
int g_image_index_limit = MAX_IMAGE_FRAMES;  // max image frames
int g_frame_rate = -1;                  // 0:no wait, n:n frames/sec, -1:auto

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

// for vdisp handler
unsigned short g_global_color_table[256];
GIF_IMAGE_FRAME g_image_frames[ MAX_IMAGE_FRAMES ];
int g_max_frame_index = 0;
volatile int g_current_frame_index = 0;

// actual screen size
#define ACTUAL_WIDTH_EX  1024
#define ACTUAL_HEIGHT_EX 1024
#define ACTUAL_WIDTH      512
#define ACTUAL_HEIGHT     512

//
//  read bits from a byte (LSB to MSB)
//
inline static unsigned char read_bits(unsigned char byte_data, int bit_ofs, int bit_len) {
  return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
}

//
//  initialize 15bit color mapping table
//
static void initialize_color_mapping() {
  for (int i = 0; i < 256; i++) {
    unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
    g_rgb555_r[i] = (unsigned short)(((c & 0x1f) <<  6) + 1);
    g_rgb555_g[i] = (unsigned short)(((c & 0x1f) << 11) + 1);
    g_rgb555_b[i] = (unsigned short)(((c & 0x1f) <<  1) + 1);
  }
}

//
//  output image data to graphic vram
//
void output_image(GIF_IMAGE_FRAME* image_frame) {
  
  // image frame attributes
  unsigned char* buffer = image_frame->frame_data_ptr;
  unsigned char* buffer_end = buffer + image_frame->frame_data_size;
  unsigned short* global_palette = image_frame->global_color_table_ptr;
  
  // image block attributes
  GIF_IMAGE_BLOCK* image_block = &image_frame->image_block;
  int width = image_block->width, height = image_block->height;
  int offset_x = g_start_x + image_block->left_position;
  int offset_y = g_start_y + image_block->top_position;
  int x = 0, y = 0;
  unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
  
  // graphic control extension attributes
  GIF_GRAPHIC_CONTROL_EXTENSION* graphic_ctrl_ext = &image_frame->graphic_ctrl_ext;
  int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
  
  // gvram entry point
  unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
 
  while (buffer < buffer_end) {

    unsigned char palette_code = *buffer++;
    
    if ((offset_x + x) < g_actual_width) {
      if (transparent_index < 0 || palette_code != transparent_index) {
        *gvram++ = palette[ palette_code ];
      } else if (palette_code == transparent_index && global_palette != NULL) {
        *gvram++ = global_palette[ image_frame->bg_color_index ];
      } else {
        gvram++;
      }
    }
    
    // next pixel
    x++;

    // next scan line
    if (x >= width) {
      x = 0;
      if (++y >= height) break;
      if ((offset_y + y) >= g_actual_height) break;  // Y cropping
      gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
    }

  }

}

//
//  output image data to graphic vram (vdisp handler)
//
void __attribute__((interrupt)) output_image_vdisp() {
  if (g_current_frame_index < g_max_frame_index) {
    output_image(&g_image_frames[ g_current_frame_index++ ]);
  }
}

//
//  load GIF image
//
static int load_gif_image(char* gif_file_name) {

    // return code
    int rc = 0;

    // for file read access
    struct FILBUF inf;
    FILE* fp = NULL;
    int read_size;

    // for GIF file parsing
    GIF_HEADER header;
    int image_frame_index = 0;
    int end_of_gif = 0;

    // for file content buffering
    unsigned char* file_buffer_ptr = NULL;
    int file_buffer_size = g_input_buffer_size;
    int file_buffer_ofs = 0;

    // for image sub block buffering
    unsigned char* sub_block_buffer_ptr = NULL;
    int sub_block_buffer_size = g_input_buffer_size;

    // temporary decode buffer
    unsigned char* decode_buffer_ptr = NULL;
    int decode_buffer_size = g_output_buffer_size;

    // check file status
    if (FILES(&inf,gif_file_name,0x23) != 0) {
      printf("error: file read error (%s).\n", gif_file_name);
      rc = -1;
      goto catch;
    }    

    // open source file
    fp = fopen(gif_file_name, "rb");
    if (fp == NULL) {
      printf("error: cannot open input file (%s).\n", gif_file_name);
      rc = -1;
      goto catch;
    }

    // allocate file buffer memory
    file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
    if (file_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for file buffer.\n");
      rc = -1;
      goto catch;
    }

    // read into buffer as much as possible
    read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
    if (read_size <= 0) {
      printf("error: file read error.\n");
      rc = -1;
      goto catch;
    }

    // check signature
    memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
    header.signature[3] = '\0';
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      rc = -1;
      goto catch;
    }

    // check version
    memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
    header.version[3] = '\0';
    if (strcmp(header.version,"89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      rc = -1;
      goto catch;
    }

    // header fields
    header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

    // global palette
    if (read_bits(header.flag_code,7,1)) {
      int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
      for (int i = 0; i < gct_size; i++) {
        unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
      }
#ifdef DEBUG
      printf("loaded global palette. (%d colors), bg_color=%d,%04X\n",gct_size,header.bg_color_index,g_global_color_table[header.bg_color_index]);
#endif
    }

    // sub block buffer
    sub_block_buffer_ptr = malloc__(sub_block_buffer_size, g_high_memory_mode);
    if (sub_block_buffer_ptr == NULL) {
        printf("error: cannot allocate memory for sub block buffer.\n");
        rc = -1;
        goto catch;
    }

    // decode buffer
    decode_buffer_ptr = malloc__(decode_buffer_size, g_high_memory_mode);
    if (decode_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for decode buffer.\n");
      rc = -1;
      goto catch;
    }

    // parse data blocks
    do {

      // read first byte to identify block type
      unsigned char block_type = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

      if (block_type == GIF_TRAILOR) {

        // end of GIF
#ifdef DEBUG 
        printf("EOG\n");
#endif
        end_of_gif = 1;
        break;
        
      } else if (block_type == IMAGE_SEPARATOR) {
        
        // GIF image block
        GIF_IMAGE_FRAME* image_frame = &g_image_frames[image_frame_index];
        GIF_IMAGE_BLOCK* image_block = &image_frame->image_block;
        int end_of_image = 0;

        // copy header attributes
        image_frame->bg_color_index = header.bg_color_index;
        image_frame->global_color_table_ptr = header.flag_code & 0x80 ? g_global_color_table : NULL;

        // image block header fields
        image_block->separator     = block_type;
        image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
        image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

        // screen offset
        if (image_frame_index == 0) {
          if (g_centering_mode) {
            if (g_screen_mode == 0) {
              g_start_x = (384 - image_block->width) / 2;
              g_start_y = (256 - image_block->height) / 2;
            } else if (g_screen_mode == 1 || g_screen_mode == 2) {
              g_start_x = (512 - image_block->width) / 2;
              g_start_y = (512 - image_block->height) / 2;
            } else if (g_screen_mode == 3) {
              g_start_x = (768 - image_block->width) / 2;
              g_start_y = (512 - image_block->height) / 2;
            }
            if (g_start_x < 0) g_start_x = 0;
            if (g_start_y < 0) g_start_y = 0;
          }
        }

        // local palette
        if (read_bits(image_block->flag_code,7,1)) {
          int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
          for (int i = 0; i < lct_size; i++) {
            unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
            unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
            unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
            image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
          }
        }

        // read lzw minimum code size
        image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

        // total number of pixels
        int pixel_count = (image_block->width) * (image_block->height);

        // for lzw decode
        int sub_block_buffer_ofs = 0;
        int decode_buffer_ofs = 0;

        // read sub blocks
        do {

          unsigned char sub_block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

          if (sub_block_size == 0) {
            end_of_image = 1;
          } else if (sub_block_buffer_ofs + sub_block_size > sub_block_buffer_size) {
            printf("error: sub block buffer memory overflow.\n");
            end_of_image = -1;
            end_of_gif = -1;
            break;
          } else {
            memcpy_buffer(sub_block_buffer_ptr + sub_block_buffer_ofs, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, sub_block_size, fp);
            sub_block_buffer_ofs += sub_block_size;
          }

        } while (end_of_image == 0);

        // ESC key check
        //if (B_KEYINP() == 0x010001) {
        if (BITSNS(0) & 0x02) {
          end_of_gif = -1;
          break;
        }

        // decode LZW bit stream
        decode_buffer_ofs = decode_lzw(sub_block_buffer_ptr,sub_block_buffer_ofs,decode_buffer_ptr,image_block->lzw_min_code_size,pixel_count);
#ifdef DEBUG
        printf("frame data size = %d\n",decode_buffer_ofs);
#endif

        if (g_memory_cache_mode) {

          // memory cache mode
          int size = decode_buffer_ofs;

          if (g_high_memory_mode) {

            // if high memory mode, just trim the existing buffer and use it. 
            if (resize_himem(decode_buffer_ptr,size) == 0) {
              image_frame->frame_data_ptr = decode_buffer_ptr;
              image_frame->frame_data_size = size;
              decode_buffer_ptr = malloc__(decode_buffer_size, g_high_memory_mode); // reallocate buffer for next decode.
            } else {
              printf("error: high memory resize error.\n");
              end_of_gif = -1;
              break;
            }

          } else {

            // if normal memory mode, allocate a new buffer with the given size copy copy data.
            if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
              printf("error: memory allocation failure (errno=%d).\n",errno);
              end_of_gif = -1;
              break;
            }
            memcpy(image_frame->frame_data_ptr,decode_buffer_ptr,size);
            image_frame->frame_data_size = size;
#ifdef DEBUG
            printf("successfully allocated memory for frame index %d\n", image_frame_index);
#endif
          }

        } else {

          // incremental mode
          int delay_time = image_frame->graphic_ctrl_ext.delay_time;
          int vsync_count = 2;

#ifdef DEBUG
          printf("delay_time=%d\n",delay_time);
#endif          

          if (g_frame_rate == 0) {
            vsync_count = 1;
          } else if (g_frame_rate > 0) {
            vsync_count = 60 / g_frame_rate;
          } else if (delay_time > 0) {
            vsync_count = (int)((60 * delay_time) / 1000);
          }
          if (vsync_count < 2) vsync_count = 2;

          // output image
          image_frame->frame_data_ptr = decode_buffer_ptr;
          image_frame->frame_data_size = decode_buffer_ofs;

          // ESC key check
          //if (B_KEYSNS() == 0x010001) {
          if (BITSNS(0) & 0x02) {
            end_of_gif = -1;
            break;
          }

         for (int i = 0; i < vsync_count; i++) {
            WAIT_VBLANK;
          }

          output_image(image_frame);

          image_frame->frame_data_ptr = NULL;

        }

#ifdef DEBUG
        printf("decoded frame %d\n",image_frame_index);
#endif
        image_frame_index++;
        if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
          end_of_gif = 1;
          break;
        }
        if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
          putchar('.');
          fflush(stdout);
        }

      } else if (block_type == EXTENSION_INTRODUCER) {

        unsigned char extension_label = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

        if (extension_label == GRAPHIC_CONTROL_LABEL) {

          // graphic control extension
          GIF_GRAPHIC_CONTROL_EXTENSION* graphic_ctrl_ext = &g_image_frames[image_frame_index].graphic_ctrl_ext;
#ifdef DEBUG 
          printf("graphic control extension\n");
#endif
          // graphic control extension header fields
          graphic_ctrl_ext->introducer  = block_type;
          graphic_ctrl_ext->label       = extension_label;

          graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

          // block terminator check
          graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          if (graphic_ctrl_ext->terminator != 0x00) {
            printf("error: graphic control extension read error.\n");
            end_of_gif = -1;
            break;            
          }

        } else if (extension_label == COMMENT_LABEL) {

          // comment extension
          GIF_COMMENT_EXTENSION comment_ext;
#ifdef DEBUG 
          printf("comment extension\n");
#endif
          // comment extension header fields
          comment_ext.introducer = block_type;
          comment_ext.label      = extension_label;

          comment_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, comment_ext.block_size, fp);

          // terminator check
          comment_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          if (comment_ext.terminator != 0x00) {
            printf("error: comment extension read error.\n");
            end_of_gif = -1;
            break;            
          }

        } else if (extension_label == PLAIN_TEXT_LABEL) {

          // plain text extension
          GIF_PLAIN_TEXT_EXTENSION plain_text_ext;
#ifdef DEBUG 
          printf("plain text extension\n");
#endif
          // plain text extension header fields
          plain_text_ext.introducer = block_type;
          plain_text_ext.label      = extension_label;

          plain_text_ext.block_size              = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.text_grid_left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.text_grid_top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.text_grid_width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.text_grid_height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.character_cell_width    = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          plain_text_ext.character_cell_height   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

          plain_text_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, plain_text_ext.block_size2, fp);

          plain_text_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          if (plain_text_ext.terminator != 0x00) {
            printf("error: plain text extension read error.\n");
            end_of_gif = -1;
            break;            
          }

        } else if (extension_label == APPLICATION_LABEL) {

          // application extension
          GIF_APPLICATION_EXTENSION app_ext;
#ifdef DEBUG 
          printf("application extension\n");
#endif
          // application extension header fields
          app_ext.introducer = block_type;
          app_ext.label = extension_label;

          app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

          memcpy_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 8, fp);
          memcpy_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);

          app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, app_ext.block_size2, fp);

          app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
          if (app_ext.terminator != 0x00) {
            printf("error: application extension read error.\n");
            end_of_gif = -1;
            break;            
          }

        } else {

          printf("error: unknown extension label (0x%02X).\n", extension_label);
          end_of_gif = -1;
          break;

        }

      } else {

        printf("error: unknown block (0x%02X).\n", block_type);
        end_of_gif = -1;
        break;

      }

    } while (end_of_gif == 0);

    // if memory cache mode, play animation here using vsync interrupt
    if (end_of_gif == 1 && g_memory_cache_mode) {

#ifdef DEBUG
      printf("memory cache operation is complete. now we play gif animation.\n");
#endif
      int delay_time = g_image_frames[0].graphic_ctrl_ext.delay_time;
      int vsync_count = 2;
      
      if (g_frame_rate > 0) {
        vsync_count = 60 / g_frame_rate;
      } else if (delay_time > 0) {
        vsync_count = (int)((60 * delay_time) / 1000);
      }
#ifdef DEBUG
      printf("delay_time=%d,vsync_count=%d\n",delay_time,vsync_count);
#endif
      if (vsync_count < 2) vsync_count = 2;

      g_max_frame_index = image_frame_index;
      g_current_frame_index = 0;

      if (g_clear_screen) C_CLS_AL();

      WAIT_VBLANK;
      WAIT_VSYNC;

      if (VDISPST((unsigned char*)output_image_vdisp, 0, vsync_count) == 0) {

        while (g_current_frame_index < g_max_frame_index) {          
          // ESC key check
          if (BITSNS(0) & 0x02) {
            break;
          }
        }

        WAIT_VBLANK;
        WAIT_VSYNC;

        VDISPST(0, 0, 0);

      } else {
        printf("error: cannot use vsync interrupt.\n");
      }

      WAIT_VSYNC;
      WAIT_VBLANK;

    }

    if (end_of_gif == 1 && g_key_wait_mode) {
      while (INPOUT(0xFF) == 0) {
//          SLEEP_PR(100);
      }

    }

catch:
    // close file
    if (fp != NULL) {
      fclose(fp);
      fp = NULL;
    }

    // reclaim file buffer memory
    if (file_buffer_ptr != NULL) {
      free__(file_buffer_ptr, g_high_memory_mode);
      file_buffer_ptr = NULL;
    }
   
    // reclaim sub block buffer memory
    if (sub_block_buffer_ptr != NULL) {
        free__(sub_block_buffer_ptr, g_high_memory_mode);
        sub_block_buffer_ptr = NULL;
    }

    // reclaim decode buffer memory
    if (decode_buffer_ptr != NULL) {
        free__(decode_buffer_ptr, g_high_memory_mode);
        decode_buffer_ptr = NULL;
    }

    // reclaim frame buffer memory
    for (int i = 0; i < image_frame_index; i++) {
        if (g_image_frames[i].frame_data_ptr != NULL) {
            free__(g_image_frames[i].frame_data_ptr, g_high_memory_mode);
            g_image_frames[i].frame_data_ptr = NULL;
        }
    }

    return rc;
}

//
//  show GIF information
//
static int describe_gif_image(char* gif_file_name) {

    // for file read access
    struct FILBUF inf;
    FILE* fp;
    int read_size;

    // for file buffering
    unsigned char* file_buffer_ptr = NULL;
    int file_buffer_size = g_input_buffer_size;
    int file_buffer_ofs = 0;

    // for GIF file parsing
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
    file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
    if (file_buffer_ptr == NULL) {
      printf("error: cannot allocate memory for file buffer.\n");
      fclose(fp);
      return -1;
    }

    // read into buffer as much as possible
    read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
    if (read_size <= 0) {
      printf("error: file read error.\n");
      fclose(fp);
      free__(file_buffer_ptr, g_high_memory_mode);
      return -1;
    }

    // check signature
    memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
    header.signature[3] = '\0';
    if (strcmp(header.signature, "GIF") != 0 ) {
      printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
      fclose(fp);
      free__(file_buffer_ptr, g_high_memory_mode);
      return -1;
    }

    // check version
    memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
    header.version[3] = '\0';
    if (strcmp(header.version, "89a") != 0 ) {
      printf("error: unsupported GIF version (%s).\n", header.version);
      fclose(fp);
      free__(file_buffer_ptr, g_high_memory_mode);
      return -1;
    }

    // header fields
    header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
    header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);

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
      free__(file_buffer_ptr, g_high_memory_mode);
      file_buffer_ptr = NULL;
    }

    return 0;
}

//
//  show help messages
//
static void show_help_message() {
  printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2023\n");
  printf("usage: gifex.x [options] <image.gif>\n");
  printf("options:\n");
  printf("   -b<n> ... buffer memory size factor[1-32] (default:8)\n");
  printf("   -c ... clear graphic screen\n");
  printf("   -f<n> ... max number of frames (default:no limit)\n");
  printf("   -h ... show this help message\n");
  printf("   -i ... show file information\n");
  printf("   -k ... wait key input\n");
  printf("   -m ... memory cache mode\n");
  printf("   -n ... image centering\n");
  printf("   -o<x,y> ... display offset position\n");
  printf("   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512, 3:768x512(full - XEiJ only)\n");
  printf("   -u ... use high memory\n");
  printf("   -v<n> ... brightness (0-100)\n");
  printf("   -w<n> ... frame rate (0:no wait, n:n frames/sec, default:auto)\n");
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
      } else if (argv[i][1] == 'i') {
        g_information_mode = 1;
      } else if (argv[i][1] == 'n') {
        g_centering_mode = 1;
      } else if (argv[i][1] == 'k') {
        g_key_wait_mode = 1;
      } else if (argv[i][1] == 'm') {
        g_memory_cache_mode = 1;
      } else if (argv[i][1] == 'u') {
        g_high_memory_mode = 1;        
      } else if (argv[i][1] == 'v') {
        g_brightness = atoi(argv[i]+2);
      } else if (argv[i][1] == 's') {
        g_screen_mode = atoi(argv[i]+2);
        if (g_screen_mode < 0 || g_screen_mode > 3) {
          printf("error: unknown screen mode.\n");
          return 1;
        }
      } else if (argv[i][1] == 'f') {
        g_image_index_limit = atoi(argv[i]+2);
      } else if (argv[i][1] == 'w') {
        g_frame_rate = atoi(argv[i]+2);
        if (g_frame_rate < 0 || g_frame_rate > 60) {
          printf("error: incorrect frame rate.\n");
          return 1;
        }
      } else if (argv[i][1] == 'o') {
        static char opt[64];
        strcpy(opt,argv[i]+2);
        char* c = strchr(opt,',');
        if (c != NULL) {
          *c = '\0';
          g_start_x = atoi(opt);
          g_start_y = atoi(c+1);
        } else {
          g_start_x = atoi(opt);
        }
      } else if (argv[i][1] == 'b') {
        g_buffer_memory_size_factor = atoi(argv[i]+2);
        if (g_buffer_memory_size_factor > 32) {
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

/*
  LZW_INF lzw;
  //unsigned char input[] = { 0x84, 0x03, 0x81, 0x51 };
  unsigned char input[] = { 0x44, 0x8c, 0x57 };
  unsigned char output[9];
  initialize_lzw(&lzw,2);
  int decoded = decode_lzw(&lzw, input, 3, output, 9);
  printf("decoded=%d\n",decoded);
  for (int i = 0; i < 9; i++) {
    printf("output[%d]=%d\n",i,output[i]);
  }
  return 0;
*/

  // input buffer = 64KB * factor
  g_input_buffer_size = 65536 * g_buffer_memory_size_factor;

  // output (inflate) buffer = 128KB * factor - should be LCM(3,4)*n to store RGB or RGBA tuple
  g_output_buffer_size = 131072 * g_buffer_memory_size_factor;

  // cropping window
  g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
  g_actual_height = g_screen_mode == 3 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;

   if (g_information_mode == 1) {
    describe_gif_image(gif_file_name);
    return 0;
  }

  // initialize color mapping table
  initialize_color_mapping();

  // clear screen
  if (g_clear_screen) {
    G_CLR_ON();
  }

  // go to supervisor
  SUPER(0);

  // initialize graphic screen
  initialize_screen(g_screen_mode);

  // initialize palette (65536 colors)
  initialize_palette(g_screen_mode);

  // cursor display off
  C_CUROFF();

  // function key display off
  func_key_display_mode = C_FNKMOD(-1);
  C_FNKMOD(3);

  // load GIF image
  load_gif_image(gif_file_name);

  // reset system port
  if (g_screen_mode == SCREEN_MODE_384x256) {
    initialize_screen(SCREEN_MODE_768x512);
  }

  // cursor on
  C_CURON();

  // resume function key display mode
  C_FNKMOD(func_key_display_mode);

  return 0;
}