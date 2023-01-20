#ifndef __H_GIF__
#define __H_GIF__

#include <stdint.h>
#include "buffer.h"

// supportable max number of animated gif image frames
#define MAX_IMAGE_FRAMES       (1024)

// GIF key identifiers
#define GIF_TRAILOR            (0x3b)
#define IMAGE_SEPARATOR        (0x2c)
#define EXTENSION_INTRODUCER   (0x21)
#define GRAPHIC_CONTROL_LABEL  (0xf9)
#define COMMENT_LABEL          (0xfe)
#define PLAIN_TEXT_LABEL       (0x01)
#define APPLICATION_LABEL      (0xff)

// GIF header
typedef struct {
  uint8_t signature[4];
  uint8_t version[4];
  uint16_t screen_width;
  uint16_t screen_height;
  uint8_t flag_code;
  uint8_t bg_color_index;
  uint8_t aspect_ratio;
  //uint8_t global_color_table[];
} GIF_HEADER;

// GIF image block header
typedef struct {
  uint8_t separator;
  uint16_t left_position;
  uint16_t top_position;
  uint16_t width;
  uint16_t height;
  uint8_t flag_code;
//  uint8_t* local_color_table;
  uint8_t lzw_min_code_size;
//  uint8_t* image_data;
} GIF_IMAGE_BLOCK;

// GIF graphic control extension
typedef struct {
  uint8_t introducer;
  uint8_t label;
  uint8_t block_size;
  uint8_t flag_code;
  uint16_t delay_time;
  uint8_t transparent_index;
  uint8_t terminator;
} GIF_GRAPHIC_CONTROL_EXTENSION;

// GIF comment extension
typedef struct {
  uint8_t introducer;
  uint8_t label;
  uint8_t block_size;
  uint8_t* comment_data;
  uint8_t terminator;
} GIF_COMMENT_EXTENSION;

// GIF plain text extension
typedef struct {
  uint8_t introducer;
  uint8_t label;
  uint8_t block_size;
  uint16_t text_grid_left_position;
  uint16_t text_grid_top_position;
  uint16_t text_grid_width;
  uint16_t text_grid_height;
  uint8_t character_cell_width;
  uint8_t character_cell_height;
  uint8_t text_fg_color_index;
  uint8_t text_bg_color_index;
  uint8_t block_size2;
  uint8_t* plain_text_data;
  uint8_t terminator;
} GIF_PLAIN_TEXT_EXTENSION;

// GIF application extension
typedef struct {
  uint8_t introducer;
  uint8_t label;
  uint8_t block_size;
  uint8_t identifier[8];
  uint8_t auth_code[3];
  uint8_t block_size2;
  uint8_t* application_data;
  uint8_t terminator;
} GIF_APPLICATION_EXTENSION;

typedef struct {
  int32_t index;
  uint8_t bg_color_index;
  GIF_GRAPHIC_CONTROL_EXTENSION graphic_ctrl_ext;
  GIF_IMAGE_BLOCK image_block;
  uint16_t* global_color_table_ptr;
  uint16_t local_color_table[256];
  int32_t frame_data_size;
  uint8_t* frame_data_ptr;
} GIF_IMAGE_FRAME;

typedef struct {

  // file name
  uint8_t* file_name;

  // file handle
  FILE* fp;

  // brightness
  int32_t brightness;

  // centering
  int32_t centering;

  // input buffer
  size_t input_buffer_size;
  BUFFER_HANDLE* input_buffer;

  // output buffer
  size_t output_buffer_size;
  uint8_t* output_buffer;

  // high memory use
  int32_t use_high_memory;

  // memory cache mode
  int32_t memory_cache_mode;

  // loop mode
  int32_t loop_mode;

  // screen mode
  int32_t screen_mode;

  // clear screen flag
  int32_t clear_screen;

  // display width/height
  int32_t display_width;
  int32_t display_height;

  // actual screen width/height
  int32_t actual_screen_width;
  int32_t actual_screen_height;

  // display offset
  int32_t offset_x;
  int32_t offset_y;

  // RGB888 to RGB555 color map
  uint16_t* rgb555_r;
  uint16_t* rgb555_g;
  uint16_t* rgb555_b;

  // global color table
  uint16_t global_color_table[ 256 ];

  // image frames
  int32_t image_frame_count;
  int32_t image_frame_max;
  int32_t frame_rate;
  GIF_IMAGE_FRAME* image_frames;

} GIF_DECODE_HANDLE;

// prototype declarations
int32_t gif_open(GIF_DECODE_HANDLE* gif, const uint8_t* file_name);
void gif_close(GIF_DECODE_HANDLE* gif);
int32_t gif_load(GIF_DECODE_HANDLE* gif);
int32_t gif_describe(GIF_DECODE_HANDLE* gif);

#endif