#ifndef __H_GIF__
#define __H_GIF__

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
//  unsigned char* local_color_table;
  unsigned char lzw_min_code_size;
//  unsigned char* image_data;
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

typedef struct {
//  int image_index;
  int bg_color_index;
  GIF_GRAPHIC_CONTROL_EXTENSION graphic_ctrl_ext;
  GIF_IMAGE_BLOCK image_block;
  unsigned short* global_color_table_ptr;
  unsigned short local_color_table[256];
  int frame_data_size;
  unsigned char* frame_data_ptr;
} GIF_IMAGE_FRAME;

typedef struct {

  // file name
  unsigned char* file_name;

  // file handle
  FILE* fp;

  // brightness
  int brightness;

  // centering
  int centering;

  // input buffer
  int input_buffer_size;
  BUFFER_HANDLE* input_buffer;

  // output buffer
  int output_buffer_size;
  unsigned char* output_buffer;

  // high memory use
  int use_high_memory;

  // memory cache mode
  int memory_cache_mode;

  // loop mode
  int loop_mode;

  // screen mode
  int screen_mode;

  // clear screen flag
  int clear_screen;

  // display width/height
  int display_width;
  int display_height;

  // actual screen width/height
  int actual_screen_width;
  int actual_screen_height;

  // display offset
  int offset_x;
  int offset_y;

  // RGB888 to RGB555 color map
  unsigned short* rgb555_r;
  unsigned short* rgb555_g;
  unsigned short* rgb555_b;

  // global color table
  unsigned short global_color_table[ 256 ];

  // image frames
  int image_frame_count;
  int image_frame_max;
  int frame_rate;
  GIF_IMAGE_FRAME* image_frames;

} GIF_DECODE_HANDLE;

// prototype declarations
int gif_open(GIF_DECODE_HANDLE* gif, const unsigned char* file_name);
void gif_close(GIF_DECODE_HANDLE* gif);
int gif_load(GIF_DECODE_HANDLE* gif);
int gif_describe(GIF_DECODE_HANDLE* gif);

#endif