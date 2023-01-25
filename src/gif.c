#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <doslib.h>
#include <iocslib.h>

#include "gif.h"
#include "buffer.h"
#include "memory.h"
#include "lzw.h"
#include "crtc.h"

//#define DEBUG

//
//  constructor
//
int32_t gif_open(GIF_DECODE_HANDLE* gif, const uint8_t* file_name) {
  
  int32_t rc = 1;

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
  for (int32_t i = 0; i < 256; i++) {
    uint32_t c = (uint32_t)(i * 32 * gif->brightness / 100) >> 8;
    gif->rgb555_r[i] = (uint16_t)((c <<  6) + 1);
    gif->rgb555_g[i] = (uint16_t)((c << 11) + 1);
    gif->rgb555_b[i] = (uint16_t)((c <<  1) + 1);
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
inline static uint8_t read_bits(uint8_t byte_data, uint8_t bit_ofs, uint8_t bit_len) {
  return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
}

//
//  describe GIF information
//
int32_t gif_describe(GIF_DECODE_HANDLE* gif) {

  // return code
  int32_t rc = 1;

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

  // fill buffer - signature(3) + version(3) + header(7)
  buffer_fill(gif->input_buffer, 13, 0);

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
  h->screen_width   = buffer_get_ushort(gif->input_buffer, 1);
  h->screen_height  = buffer_get_ushort(gif->input_buffer, 1);
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

//
//  output image data to graphic vram
//
void output_image(GIF_DECODE_HANDLE* gif, int32_t frame_id, int32_t page) {
  
  // image frame
  GIF_IMAGE_FRAME* ifr = &(gif->image_frames[ frame_id ]);

  // image frame attributes
  uint8_t* buffer = ifr->frame_data_ptr;
  uint8_t* buffer_end = buffer + ifr->frame_data_size;
  uint16_t* global_palette = ifr->global_color_table_ptr;
  
  // image block attributes
  GIF_IMAGE_BLOCK* ib = &(ifr->image_block);
  int16_t width = ib->width, height = ib->height;
  int16_t offset_x = gif->offset_x + ib->left_position;
  int16_t offset_y = gif->offset_y + ib->top_position + page * 256;
  int16_t x = 0, y = 0;
  uint16_t* palette = (ib->flag_code & 0x01) ? ifr->local_color_table : gif->global_color_table;
  
  // graphic control extension attributes
  GIF_GRAPHIC_CONTROL_EXTENSION* gce = &(ifr->graphic_ctrl_ext);
  int16_t transparent_index = (gce->flag_code & 0x01) ? gce->transparent_index : -1;
  
  // gvram entry point
  uint16_t* gvram = (uint16_t*)GVRAM + gif->actual_screen_width * offset_y + offset_x;
 
  while (buffer < buffer_end) {

    uint8_t palette_code = *buffer++;

    if ((offset_x + x) < gif->actual_screen_width) {
      if (transparent_index < 0 || palette_code != transparent_index) {
        //printf("A:%04X,",palette[palette_code]);
        *gvram++ = palette[ palette_code ];
      } else if (palette_code == transparent_index && global_palette != NULL) {
        //printf("B:%04X,",global_palette[ ifr->bg_color_index ]);
        *gvram++ = global_palette[ ifr->bg_color_index ];
      } else {
        //printf("C:,");
        gvram++;
      }
    }
    
    // next pixel
    x++;

    // next scan line
    if (x >= width) {
      x = 0;
      if (++y >= height) break;
      if ((offset_y + y) >= gif->actual_screen_height) break;  // Y cropping
      gvram = (uint16_t*)GVRAM + gif->actual_screen_width * (offset_y + y) + offset_x;
    }

  }

}

// for vdisp handler
static GIF_DECODE_HANDLE* g_gif;
static volatile int32_t g_frame_index;
static volatile int32_t g_vdisp_counter;
static volatile int32_t g_vdisp_interval;

// for double buffering
static volatile int32_t g_buffer0_ready;
static volatile int32_t g_buffer1_ready;
static volatile int32_t g_current_page;

//
//  vdisp handler - double buffering
//
static void __attribute__((interrupt)) vdisp_handler_double_buffering() {

  g_vdisp_counter++;

  if (g_vdisp_counter >= g_vdisp_interval) {

    if (g_current_page == 0 && g_buffer1_ready) {
      G_SCROLL(0,256);
      g_current_page = 1;
      g_buffer1_ready = 0;
      g_vdisp_counter = 0;
    } else if (g_current_page == 1 && g_buffer0_ready) {
      G_SCROLL(0,0);
      g_current_page = 0;
      g_buffer0_ready = 0;
      g_vdisp_counter = 0;
    }

  }

}

//
//  vdisp handler - single buffering
//
static void __attribute__((interrupt)) vdisp_handler_single_buffering() {
  if (g_vdisp_counter >= g_vdisp_interval) {
    if (g_frame_index < g_gif->image_frame_max) {
      output_image(g_gif, g_frame_index++, 0);
    }
    g_vdisp_counter = 0;
  } else {
    g_vdisp_counter++;
  }
}

//
//  load GIF image
//
int32_t gif_load(GIF_DECODE_HANDLE* gif) {

  // default return code
  int32_t rc = 1;

  // decoder handle check
  if (gif == NULL) goto exit;

  // check file existence
  struct FILBUF inf;
  if (FILES(&inf, gif->file_name, 0x23) < 0) {
    printf("error: file information access error.\n");
    goto exit;
  }

  // for GIF file parsing
  static GIF_HEADER header;
  GIF_HEADER* h = &header;

  // fill buffer - signature(3) + version(3) + header(7)
  buffer_fill(gif->input_buffer, 13, 0);

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
  h->screen_width   = buffer_get_ushort(gif->input_buffer, 1);
  h->screen_height  = buffer_get_ushort(gif->input_buffer, 1);
  h->flag_code      = buffer_get_uchar(gif->input_buffer);
  h->bg_color_index = buffer_get_uchar(gif->input_buffer);
  h->aspect_ratio   = buffer_get_uchar(gif->input_buffer);

#ifdef DEBUG
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
#endif

  // global palette
  if (read_bits(h->flag_code,7,1)) {
    int32_t gct_size = 1 << (1 + read_bits(h->flag_code,0,3));
    buffer_fill(gif->input_buffer, gct_size * 3, 0);
    for (int32_t i = 0; i < gct_size; i++) {
      uint8_t r = buffer_get_uchar(gif->input_buffer);
      uint8_t g = buffer_get_uchar(gif->input_buffer);
      uint8_t b = buffer_get_uchar(gif->input_buffer);
      gif->global_color_table[i] = gif->rgb555_r[ r ] | gif->rgb555_g[ g ] | gif->rgb555_b[ b ] | 1;
    }
#ifdef DEBUG
    printf("loaded global palette. (%d colors), bg_color=%d,%04X\n",gct_size,h->bg_color_index,gif->global_color_table[h->bg_color_index]);
#endif
  } else {
#ifdef DEBUG
    printf("no global palette.\n");
#endif
  }

  // for GIF parsing
  int32_t image_frame_index = 0;
  int32_t end_of_gif = 0;

  // temporary decode buffer
  uint8_t* decode_buffer_ptr = NULL;
  int32_t decode_buffer_size = gif->output_buffer_size;

  // decode buffer
  decode_buffer_ptr = malloc_himem(decode_buffer_size, gif->use_high_memory);
  if (decode_buffer_ptr == NULL) {
    printf("error: cannot allocate memory for decode buffer.\n");
    goto catch;
  }

  // parse data blocks
  do {

    // read first byte to identify block type
    buffer_fill(gif->input_buffer, 1, 0);
    uint8_t block_type = buffer_get_uchar(gif->input_buffer);

    if (block_type == GIF_TRAILOR) {

      // end of GIF
#ifdef DEBUG 
      printf("EOG\n");
#endif
      end_of_gif = 1;
      break;
        
    } else if (block_type == IMAGE_SEPARATOR) {

      // GIF image block
      GIF_IMAGE_FRAME* ifr = &(gif->image_frames[ image_frame_index ]);
      GIF_IMAGE_BLOCK* ib = &(ifr->image_block);
      int32_t end_of_image = 0;

      // copy header attributes
      ifr->index = image_frame_index;
      ifr->bg_color_index = h->bg_color_index;
      ifr->global_color_table_ptr = ( h->flag_code & 0x80 ) ? &(gif->global_color_table[0]) : NULL;

      // image block header fields
      buffer_fill(gif->input_buffer, 9, 0);
      ib->separator     = block_type;
      ib->left_position = buffer_get_ushort(gif->input_buffer, 1);
      ib->top_position  = buffer_get_ushort(gif->input_buffer, 1);
      ib->width         = buffer_get_ushort(gif->input_buffer, 1);
      ib->height        = buffer_get_ushort(gif->input_buffer, 1);
      ib->flag_code     = buffer_get_uchar(gif->input_buffer);

      // centering
      if (image_frame_index == 0 && gif->centering) {
        gif->offset_x = (gif->display_width - ib->width) / 2;
        gif->offset_y = (gif->display_height - ib->height) / 2;
        if (gif->offset_x < 0) gif->offset_x = 0;
        if (gif->offset_y < 0) gif->offset_y = 0;
      }

      // local palette
      if (read_bits(ib->flag_code,7,1)) {
        int32_t lct_size = 1 << (1 + (read_bits(ib->flag_code,0,3)));
        buffer_fill(gif->input_buffer, 3 * lct_size, 0);
        for (int32_t i = 0; i < lct_size; i++) {
          uint8_t r = buffer_get_uchar(gif->input_buffer);
          uint8_t g = buffer_get_uchar(gif->input_buffer);
          uint8_t b = buffer_get_uchar(gif->input_buffer);
          ifr->local_color_table[i] = gif->rgb555_r[ r ] | gif->rgb555_g[ g ] | gif->rgb555_b[ b ] | 1;
        }
      }

      // read lzw minimum code size
      buffer_fill(gif->input_buffer, 1, 0);
      ib->lzw_min_code_size = buffer_get_uchar(gif->input_buffer);

      // reset buffer before starting to read sub blocks
      buffer_reset(gif->input_buffer);

      // read sub blocks
      do {

        // get sub block size
        buffer_fill(gif->input_buffer, 1, 0);
        uint8_t sub_block_size = buffer_get_uchar(gif->input_buffer);

        // rewind 
        buffer_write_skip(gif->input_buffer, -1);
        buffer_skip(gif->input_buffer, -1);

        if (sub_block_size == 0) {
          // sub block size = 0 means image block end
          end_of_image = 1;
        } else if (sub_block_size > buffer_writable_size(gif->input_buffer)) {
          printf("error: sub block buffer memory overflow. (sub_block_size=%d, buffer_writable_size=%d)\n",sub_block_size, buffer_writable_size(gif->input_buffer));
          goto catch;
        } else {
          // fill buffer with the block data
          buffer_fill(gif->input_buffer, sub_block_size, 0);
          buffer_skip(gif->input_buffer, sub_block_size);
        }

      } while (end_of_image == 0);

      // ESC key check for cancel
      if (BITSNS(0) & 0x02) {
        goto catch;
      }

      // total number of pixels
      size_t pixel_count = (ib->width) * (ib->height);

      // decode LZW bit stream
      size_t decoded_size = decode_lzw(buffer_data(gif->input_buffer), 
                                       buffer_written_size(gif->input_buffer),
                                       decode_buffer_ptr, 
                                       ib->lzw_min_code_size, 
                                       pixel_count);
#ifdef DEBUG
      printf("frame data size = %d, buffer written size = %d\n", decoded_size, buffer_written_size(gif->input_buffer));
#endif

      // reset buffer before going to the next chunk
      buffer_reset(gif->input_buffer);

      if (gif->memory_cache_mode) {

        if (resize_himem(decode_buffer_ptr, decoded_size, gif->use_high_memory) == 0) {

          // resized buffer memory
          ifr->frame_data_ptr = decode_buffer_ptr;
          ifr->frame_data_size = decoded_size;

          // reallocate buffer for next decode
          decode_buffer_ptr = malloc_himem(decode_buffer_size, gif->use_high_memory);
          if (decode_buffer_ptr == NULL) {
            printf("error: memory allocation error.\n");
            goto catch;
          }

        } else {

          // if we cannot resize, allocate new buffer and copy
          ifr->frame_data_ptr = malloc_himem(decoded_size, gif->use_high_memory);
          if (ifr->frame_data_ptr == NULL) {
            printf("error: memory allocation error.\n");
            goto catch;
          }
          memcpy(ifr->frame_data_ptr, decode_buffer_ptr, decoded_size);

        }

      } else {

        // incremental mode
        int32_t delay_time = ifr->graphic_ctrl_ext.delay_time;
        int32_t vsync_count = 2;

#ifdef DEBUG
        printf("delay_time=%d\n",delay_time);
#endif          

        if (gif->frame_rate == 0) {
          vsync_count = 1;
        } else if (gif->frame_rate > 0) {
          vsync_count = 60 / gif->frame_rate;
        } else if (delay_time > 0) {
          vsync_count = (int)((60.0 * delay_time) / 1000.0);
        }
        if (vsync_count < 2) vsync_count = 2;

        // output image
        ifr->frame_data_ptr = decode_buffer_ptr;
        ifr->frame_data_size = decoded_size;

        // ESC key check
        if (BITSNS(0) & 0x02) {
          end_of_gif = -1;
          break;
        }

        for (int32_t i = 0; i < vsync_count; i++) {
          WAIT_VBLANK;
        }

        output_image(gif, image_frame_index, 0);

        ifr->frame_data_ptr = NULL;

      }

#ifdef DEBUG
      printf("decoded frame %d (%d bytes)\n",image_frame_index, decoded_size);
#endif

      image_frame_index++;
      gif->image_frame_count = image_frame_index;
      if (image_frame_index >= gif->image_frame_max) {
        end_of_gif = 1;
        break;
      }
      if (gif->memory_cache_mode && (image_frame_index % 10) == 0) {
        putchar('.');
        fflush(stdout);
      }

      //system("memfree");

    } else if (block_type == EXTENSION_INTRODUCER) {

      buffer_fill(gif->input_buffer, 2, 0);   // extension label (1) + block size (1)
      uint8_t extension_label = buffer_get_uchar(gif->input_buffer);

      if (extension_label == GRAPHIC_CONTROL_LABEL) {

        // graphic control extension
        GIF_GRAPHIC_CONTROL_EXTENSION* gce = &(gif->image_frames[ image_frame_index ].graphic_ctrl_ext);
#ifdef DEBUG 
        printf("graphic control extension\n");
#endif
        // graphic control extension header fields
        gce->introducer        = block_type;
        gce->label             = extension_label;
        gce->block_size        = buffer_get_uchar(gif->input_buffer);
#ifdef DEBUG 
//        printf("gce->block_size = %d\n", gce->block_size);
#endif
        buffer_fill(gif->input_buffer, gce->block_size + 1, 0);

        gce->flag_code         = buffer_get_uchar(gif->input_buffer);
        gce->delay_time        = buffer_get_ushort(gif->input_buffer, 1);
        gce->transparent_index = buffer_get_uchar(gif->input_buffer);

        // block terminator check
        gce->terminator = buffer_get_uchar(gif->input_buffer);
        if (gce->terminator != 0x00) {
          printf("error: graphic control extension read error.\n");
          end_of_gif = -1;
          break;            
        }

      } else if (extension_label == COMMENT_LABEL) {

        // comment extension
        GIF_COMMENT_EXTENSION comment_ext;
        GIF_COMMENT_EXTENSION* ce = &comment_ext;
#ifdef DEBUG 
        printf("comment extension\n");
#endif
        // comment extension header fields
        ce->introducer = block_type;
        ce->label      = extension_label;

        ce->block_size = buffer_get_uchar(gif->input_buffer);
        buffer_fill(gif->input_buffer, ce->block_size + 1, 0);
        buffer_skip(gif->input_buffer, ce->block_size);

        ce->terminator = buffer_get_uchar(gif->input_buffer);
        if (ce->terminator != 0x00) {
          printf("error: comment extension read error.\n");
          end_of_gif = -1;
          break;            
        }

      } else if (extension_label == PLAIN_TEXT_LABEL) {

        // plain text extension
        GIF_PLAIN_TEXT_EXTENSION plain_text_ext;
        GIF_PLAIN_TEXT_EXTENSION* pte = &plain_text_ext;
#ifdef DEBUG 
        printf("plain text extension\n");
#endif
        // plain text extension header fields
        pte->introducer              = block_type;
        pte->label                   = extension_label;
        pte->block_size              = buffer_get_uchar(gif->input_buffer);

        buffer_fill(gif->input_buffer, 11, 0);

        pte->text_grid_left_position = buffer_get_ushort(gif->input_buffer, 1);
        pte->text_grid_top_position  = buffer_get_ushort(gif->input_buffer, 1);
        pte->text_grid_width         = buffer_get_ushort(gif->input_buffer, 1);
        pte->text_grid_height        = buffer_get_ushort(gif->input_buffer, 1);
        pte->character_cell_width    = buffer_get_uchar(gif->input_buffer);
        pte->character_cell_height   = buffer_get_uchar(gif->input_buffer);

        pte->block_size2 = buffer_get_uchar(gif->input_buffer);
        buffer_fill(gif->input_buffer, pte->block_size2 + 1, 0);
        buffer_skip(gif->input_buffer, pte->block_size2);

        pte->terminator = buffer_get_uchar(gif->input_buffer);
        if (pte->terminator != 0x00) {
          printf("error: plain text extension read error.\n");
          end_of_gif = -1;
          break;            
        }

      } else if (extension_label == APPLICATION_LABEL) {

        // application extension
        GIF_APPLICATION_EXTENSION app_ext;
        GIF_APPLICATION_EXTENSION* ae = &app_ext;
#ifdef DEBUG 
        printf("application extension\n");
#endif
        // application extension header fields
        ae->introducer = block_type;
        ae->label      = extension_label;
        ae->block_size = buffer_get_uchar(gif->input_buffer);
#ifdef DEBUG
//        printf("ae->block_size = %d\n", ae->block_size);
#endif
        buffer_fill(gif->input_buffer, 12, 0);

        buffer_read(gif->input_buffer, ae->identifier, 8);
        buffer_read(gif->input_buffer, ae->auth_code, 3);

        ae->block_size2 = buffer_get_uchar(gif->input_buffer);
#ifdef DEBUG
//        printf("ae->block_size2 = %d\n", ae->block_size2);
#endif
        buffer_fill(gif->input_buffer, ae->block_size2 + 1, 0);
        buffer_skip(gif->input_buffer, ae->block_size2);

        ae->terminator = buffer_get_uchar(gif->input_buffer);
        if (ae->terminator != 0x00) {
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
    if (end_of_gif == 1 && gif->memory_cache_mode) {

      // support fixed interval only
      GIF_GRAPHIC_CONTROL_EXTENSION* gce = &(gif->image_frames[0].graphic_ctrl_ext);
      int32_t delay_time = gce->delay_time;

      int32_t vsync_count = 12;   // default 5fps      
      if (gif->frame_rate > 0) {
        vsync_count = 60 / gif->frame_rate;
      } else if (delay_time > 0) {
        vsync_count = (int)((60.0 * delay_time) / 1000.0);
      }
      if (vsync_count < 2) vsync_count = 2;   // max 30fps

      // clear text screen
      if (gif->clear_screen) {
        C_CLS_AL();
      }

      // reset scroll position
      WAIT_VBLANK;
      G_SCROLL(0,0);

      // global variables for vdisp handlers
      g_gif = gif;
      g_frame_index = 0;
      g_vdisp_counter = 0;
      g_vdisp_interval = vsync_count;

      // for double buffering
      g_buffer0_ready = 0;
      g_buffer1_ready = 0;
      g_current_page = 0;

      // set vdisp interrupt handler
      WAIT_VBLANK;
      WAIT_VSYNC;

      if (gif->screen_mode == SCREEN_MODE_384x256) {
        // double buffering
        REG_TADR[0] = 2;      // reset Timer-A counter
        REG_TACR[0] = 8;      // start Timer-A in event count mode
        VDISPST((unsigned char*)vdisp_handler_double_buffering, 0, 1);
      } else {
        // single buffering
        REG_TADR[0] = 2;      // reset Timer-A counter
        REG_TACR[0] = 8;      // start Timer-A in event count mode
        VDISPST((unsigned char*)vdisp_handler_single_buffering, 0, 1);
      }

      int32_t loop = gif->loop_mode;

      do {

        // reset frame index
        g_frame_index = 0;

        // for double buffering
        g_buffer0_ready = 0;
        g_buffer1_ready = 0;
        g_current_page = 0;

        do {
          
          // ESC key check
          if (BITSNS(0) & 0x02) {
            loop = 0;
            break;
          }
          
          // in double buffering mode, output image in the main thread
          if (gif->screen_mode == SCREEN_MODE_384x256) {
            if ((g_frame_index % 2) == 0 && g_current_page == 0 && g_buffer1_ready == 0) {
              output_image(gif, g_frame_index, 1);
              g_buffer1_ready = 1;
              g_frame_index++;
            } else if ((g_frame_index % 2) == 1 && g_current_page == 1 && g_buffer0_ready == 0) {
              output_image(gif, g_frame_index, 0);
              g_buffer0_ready = 1;
              g_frame_index++;
            }
          }

        } while (g_frame_index < gif->image_frame_count);

      } while (loop);

    }

catch:

  // stop vdisp handler
  WAIT_VSYNC;
  VDISPST(0, 0, 0);

  // reset scroll position
  WAIT_VBLANK;
  G_SCROLL(0,0);

  // reclaim decode buffer memory
  if (decode_buffer_ptr != NULL) {
      free_himem(decode_buffer_ptr, gif->use_high_memory);
      decode_buffer_ptr = NULL;
  }

  // reclaim image frame buffer memory
  if (gif->memory_cache_mode) {
    for (int32_t i = 0; i < gif->image_frame_count; i++) {
      GIF_IMAGE_FRAME* ifr = &(gif->image_frames[i]);
      if (ifr->frame_data_ptr != NULL) {
        free_himem(ifr->frame_data_ptr, gif->use_high_memory);
        ifr->frame_data_ptr = NULL;
      }
    }
  }

  rc = 0;

exit:
  return rc;
}



