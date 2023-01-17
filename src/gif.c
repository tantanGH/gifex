#include <stdio.h>
#include <string.h>
#include <doslib.h>
#include "gif.h"
#include "buffer.h"
#include "memory.h"

//
//  constructor
//
int gif_open(GIF_DECODE_HANDLE* gif, const unsigned char* file_name) {
  
  int rc = 1;

  if (gif == NULL || file_name == NULL) goto exit;

  // reset
  gif->file_name = NULL;
  gif->fp = NULL;
  gif->rgb555_r = NULL;
  gif->rgb555_g = NULL;
  gif->rgb555_b = NULL;
  gif->input_buffer = NULL;
  gif->image_frame_count = 0;
  gif->image_frames = NULL;

  // open file
  gif->file_name = malloc_himem(strlen(file_name) + 1, gif->use_high_memory);
  strcpy(gif->file_name, file_name);
  gif->file_name[ strlen(file_name) ] = '\0';
  if ((gif->fp = fopen(gif->file_name, "rb")) == NULL) {
    printf("error: file open error (%s).\n", gif->file_name);
    goto exit;
  }

  // for RGB888 to RGB555 conversion
  gif->rgb555_r = malloc_himem(512, gif->use_high_memory);
  gif->rgb555_g = malloc_himem(512, gif->use_high_memory);
  gif->rgb555_b = malloc_himem(512, gif->use_high_memory);

  // initialize color map
  for (int i = 0; i < 256; i++) {
    unsigned int c = (int)(i * 32 * gif->brightness / 100) >> 8;
    gif->rgb555_r[i] = (unsigned short)((c <<  6) + 1);
    gif->rgb555_g[i] = (unsigned short)((c << 11) + 1);
    gif->rgb555_b[i] = (unsigned short)((c <<  1) + 1);
  }

  // input buffers
  gif->input_buffer = malloc_himem(sizeof(BUFFER_HANDLE), gif->use_high_memory);
  gif->input_buffer->buffer_size = gif->input_buffer_size;
  gif->input_buffer->buffer_data = NULL;
  gif->input_buffer->use_high_memory = gif->use_high_memory;
  if (buffer_open(gif->input_buffer, gif->fp) != 0) goto exit;

  // output buffer
  gif->output_buffer = malloc_himem(gif->output_buffer_size, gif->use_high_memory);

  // image frames
  if (gif->image_frame_max == 0) {
    gif->image_frame_max = MAX_IMAGE_FRAMES;
  }
  gif->image_frames = malloc_himem(sizeof(GIF_IMAGE_FRAME) * gif->image_frame_max, gif->use_high_memory);

  rc = 0;

exit:

  return rc;
}

//
//  close
//
void gif_close(GIF_DECODE_HANDLE* gif) {

  if (gif == NULL) return;

  // close file
  if (gif->fp != NULL) {
    fclose(gif->fp);
    gif->fp = NULL;
  }

  // reclaim file name memory
  if (gif->file_name != NULL) {
    free_himem(gif->file_name, gif->use_high_memory);
    gif->file_name = NULL;
  }

  // reclaim color map memory
  if (gif->rgb555_r != NULL) {
    free_himem(gif->rgb555_r, gif->use_high_memory);
    gif->rgb555_r = NULL;
  }

  if (gif->rgb555_g != NULL) {
    free_himem(gif->rgb555_g, gif->use_high_memory);
    gif->rgb555_g = NULL;
  }

  if (gif->rgb555_b != NULL) {
    free_himem(gif->rgb555_b, gif->use_high_memory);
    gif->rgb555_b = NULL;
  }

  // reclaim input buffer
  if (gif->input_buffer != NULL) {
    buffer_close(gif->input_buffer);
    free_himem(gif->input_buffer, gif->use_high_memory);
    gif->input_buffer = NULL;
  }

  // reclaim output buffer
  if (gif->output_buffer != NULL) {
    free_himem(gif->output_buffer, gif->use_high_memory);
    gif->use_high_memory = NULL;
  }

  // reclaim image frames buffer
  if (gif->image_frames != NULL) {
    free_himem(gif->image_frames, gif->use_high_memory);
    gif->image_frames = NULL;
  }
}

//
//  read bits from a byte (LSB to MSB)
//
inline static unsigned char read_bits(unsigned char byte_data, int bit_ofs, int bit_len) {
  return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
}

//
//  describe GIF information
//
int gif_describe(GIF_DECODE_HANDLE* gif) {

  // return code
  int rc = 1;

  if (gif == NULL) goto exit;

  // file information
  struct FILBUF inf;
  if (FILES(&inf, gif->file_name, 0x23) < 0) {
    printf("error: file information access error.\n");
    goto exit;
  }

  // for GIF file parsing
  static GIF_HEADER header;
  GIF_HEADER* h = &header;

  // fill buffer as much as possible
  buffer_fill(gif->input_buffer, gif->input_buffer_size, 0);

  // check signature
  buffer_read(gif->input_buffer, h->signature, 3);
  h->signature[3] = '\0';
  if (strcmp(h->signature, "GIF") != 0 ) {
    printf("error: signature error. not a GIF file (%s).\n", gif->file_name);
    goto exit;
  }

  // check version
  buffer_read(gif->input_buffer, h->version, 3);
  h->version[3] = '\0';
  if (strcmp(h->version, "89a") != 0 ) {
    printf("error: unsupported GIF version (%s).\n", h->version);
    goto exit;
  }

  // header fields
  h->screen_width   = buffer_get_ushort(gif->input_buffer, 0);
  h->screen_height  = buffer_get_ushort(gif->input_buffer, 0);
  h->flag_code      = buffer_get_uchar(gif->input_buffer);
  h->bg_color_index = buffer_get_uchar(gif->input_buffer);
  h->aspect_ratio   = buffer_get_uchar(gif->input_buffer);

  // display information
  printf("     file name: %s\n", gif->file_name);
  printf("     file size: %d\n", inf.filelen);
  printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
  printf("   GIF version: %s\n", h->version);
  printf("  screen width: %d\n", h->screen_width);
  printf(" screen height: %d\n", h->screen_height);
  printf("     bit depth: %d\n", 1 + read_bits(h->flag_code,4,3));
  printf(" GCT available: %s\n", read_bits(h->flag_code,7,1) ? "yes" : "no");
  printf("      GCT sort: %s\n", read_bits(h->flag_code,7,1) && read_bits(h->flag_code,3,1) ? "yes" : "no");
  printf("      GCT size: %d\n", 3 * read_bits(h->flag_code,0,3));
  printf("BG color index: %d\n", h->bg_color_index);
  printf("  aspect ratio: %d\n", h->aspect_ratio);

  rc = 0;

exit:
  return rc;
}

/*
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
*/

/*
// for vdisp handler
unsigned short g_global_color_table[256];
GIF_IMAGE_FRAME g_image_frames[ MAX_IMAGE_FRAMES ];
int g_max_frame_index = 0;
volatile int g_current_frame_index = 0;

//
//  output image data to graphic vram (vdisp handler)
//
void __attribute__((interrupt)) output_image_vdisp() {
  if (g_current_frame_index < g_max_frame_index) {
    output_image(&g_image_frames[ g_current_frame_index++ ]);
  }
}
*/

//
//  load GIF image
//
int gif_load(GIF_DECODE_HANDLE* gif) {

  // return code
  int rc = 1;

  if (gif == NULL) goto exit;

  // file information
  struct FILBUF inf;
  if (FILES(&inf, gif->file_name, 0x23) < 0) {
    printf("error: file information access error.\n");
    goto exit;
  }

  // for GIF file parsing
  static GIF_HEADER header;
  GIF_HEADER* h = &header;

  // fill buffer as much as possible
  buffer_fill(gif->input_buffer, gif->input_buffer_size, 0);

  // check signature
  buffer_read(gif->input_buffer, h->signature, 3);
  h->signature[3] = '\0';
  if (strcmp(h->signature, "GIF") != 0 ) {
    printf("error: signature error. not a GIF file (%s).\n", gif->file_name);
    goto exit;
  }

  // check version
  buffer_read(gif->input_buffer, h->version, 3);
  h->version[3] = '\0';
  if (strcmp(h->version, "89a") != 0 ) {
    printf("error: unsupported GIF version (%s).\n", h->version);
    goto exit;
  }

  // header fields
  h->screen_width   = buffer_get_ushort(gif->input_buffer, 0);
  h->screen_height  = buffer_get_ushort(gif->input_buffer, 0);
  h->flag_code      = buffer_get_uchar(gif->input_buffer);
  h->bg_color_index = buffer_get_uchar(gif->input_buffer);
  h->aspect_ratio   = buffer_get_uchar(gif->input_buffer);
  
  // global palette
  if (read_bits(h->flag_code,7,1)) {
    int gct_size = 1 << (1 + read_bits(h->flag_code,0,3));
    for (int i = 0; i < gct_size; i++) {
      unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
      unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
      unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
      g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
    }
#ifdef DEBUG
    printf("loaded global palette. (%d colors), bg_color=%d,%04X\n",gct_size,h->bg_color_index,g_global_color_table[header.bg_color_index]);
#endif
  }

  // for GIF parsing
  int image_frame_index = 0;
  int end_of_gif = 0;

  // for image sub block buffering
  unsigned char* sub_block_buffer_ptr = NULL;
  int sub_block_buffer_size = gif->input_buffer_size;

  // temporary decode buffer
  unsigned char* decode_buffer_ptr = NULL;
  int decode_buffer_size = gif->output_buffer_size;

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

*/

