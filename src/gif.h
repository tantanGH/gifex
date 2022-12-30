#ifndef __H_GIF__
#define __H_GIF__

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
  int image_index;
  int bg_color_index;
  unsigned short* global_color_table_ptr;
  GIF_GRAPHIC_CONTROL_EXTENSION graphic_ctrl_ext;
  GIF_IMAGE_BLOCK image_block;
  unsigned short local_color_table[256];
  int frame_data_size;
  unsigned char* frame_data_ptr;
} GIF_IMAGE_FRAME;

#endif