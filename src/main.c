//
//  gifex.c - Animated GIF loader for X680x0 with XEiJ graphic extension support
//
//  reference: https://www.tohoho-web.com/wwwgif.htm
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <doslib.h>
#include <iocslib.h>

#include "gif.h"

#define VERSION "0.5.0b1"
//#define DEBUG

// global variables (flags)
//int g_clear_screen = 0;                 // 1:clear screen by picture
//int g_information_mode = 0;             // 1:show PNG file information
//int g_centering_mode = 0;               // 1:centering yes
//int g_key_wait_mode = 0;                // 1:wait key input
//int g_brightness = 100;                 // 0-100% brightness
//int g_memory_cache_mode = 0;            // 1:load all images to memory before animation
//int g_high_memory_mode = 0;             // 1:use HIMEM for buffering
//int g_screen_mode = 0;                  // 0:384x256 1:512x512 2:768x512(XEiJ extended graphic)
//int g_image_index_limit = MAX_IMAGE_FRAMES;  // max image frames
//int g_frame_rate = -1;                  // 0:no wait, n:n frames/sec, -1:auto

// global variables (buffers)
//int g_buffer_memory_size_factor = 8;    // in=64KB*factor, out=128KB*factor
//int g_input_buffer_size = 65536 * 8;    // default input buffer size bytes
//int g_output_buffer_size = 131072 * 8;  // default output buffer size bytes

// global variables (states)
//int g_actual_width = 0;                 // crop width
//int g_actual_height = 0;                // crop height
//int g_start_x = 0;                      // display offset X
//int g_start_y = 0;                      // display offset Y

// RGB888 to RGB555 mapping
//unsigned short g_rgb555_r[256];
//unsigned short g_rgb555_g[256];
//unsigned short g_rgb555_b[256];

// actual screen size
//#define ACTUAL_WIDTH_EX  1024
//#define ACTUAL_HEIGHT_EX 1024
//#define ACTUAL_WIDTH      512
//#define ACTUAL_HEIGHT     512

/*
//
//  read bits from a byte (LSB to MSB)
//
inline static unsigned char read_bits(unsigned char byte_data, int bit_ofs, int bit_len) {
  return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
}
*/

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

  // return code
  int rc = 1;

  // preserve original function key mode
  int original_func_key_mode = C_FNKMOD(-1);

  // GIF file name
  char* gif_file_name = NULL;

  // GIF decode handle
  static GIF_DECODE_HANDLE gif_decode_handle = { 0 };
  GIF_DECODE_HANDLE* gif = &gif_decode_handle;
  gif->image_frame_max = MAX_IMAGE_FRAMES;

  // flags
  int clear_screen = 0;
  int describe_mode = 0;
  int key_wait = 0;
  int memory_cache_mode = 0;
  int screen_mode = 0;
  int buffer_size_factor = 4;

  // argument options
  if (argc <= 1) {
    show_help_message();
    goto exit;
  }

  for (int i = 1; i < argc; i++) {
    if (argv[i][0] == '-' && strlen(argv[i]) >= 2) {
      if (argv[i][1] == 'c') {
        clear_screen = 1;
      } else if (argv[i][1] == 'i') {
        describe_mode = 1;
      } else if (argv[i][1] == 'n') {
        gif->centering = 1;
      } else if (argv[i][1] == 'k') {
        key_wait = 1;
      } else if (argv[i][1] == 'm') {
        memory_cache_mode = 1;
      } else if (argv[i][1] == 'u') {
        gif->use_high_memory = 1;        
      } else if (argv[i][1] == 'v' && strlen(argv[i]) >= 3) {
        gif->brightness = atoi(argv[i]+2);
      } else if (argv[i][1] == 's' && strlen(argv[i]) >= 3) {
        screen_mode = atoi(argv[i]+2);
        if (screen_mode < 0 || screen_mode > 3) {
          printf("error: unknown screen mode.\n");
          goto exit;
        }
      } else if (argv[i][1] == 'f' && strlen(argv[i]) >= 3) {
        gif->image_frame_max = atoi(argv[i]+2);
      } else if (argv[i][1] == 'w' && strlen(argv[i]) >= 3) {
        gif->frame_rate = atoi(argv[i]+2);
        if (gif->frame_rate < 0 || gif->frame_rate > 60) {
          printf("error: incorrect frame rate.\n");
          goto exit;
        }
      } else if (argv[i][1] == 'o' && strlen(argv[i]) >= 5) {
        static char opt[64];
        strcpy(opt,argv[i]+2);
        char* c = strchr(opt,',');
        if (c != NULL) {
          *c = '\0';
          gif->offset_x = atoi(opt);
          gif->offset_y = atoi(c+1);
        } else {
          gif->offset_x = atoi(opt);
        }
      } else if (argv[i][1] == 'b' && strlen(argv[i]) >= 3) {
        buffer_size_factor = atoi(argv[i]+2);
        if (buffer_size_factor > 32) {
          printf("error: too large memory factor.\n");
          return 1;
        }
      } else if (argv[i][1] == 'h') {
        show_help_message();
        goto exit;
      } else {
        printf("error: unknown option (%s).\n",argv[i]);
        goto exit;
      }
    } else {
      gif_file_name = argv[i];
    }
  }

  if (gif_file_name == NULL) {
    printf("error: no input file.\n");
    goto exit;
  }

  // input buffer = 64KB * factor
  gif->input_buffer_size = 65536 * buffer_size_factor;

  // output (inflate) buffer = 128KB * factor - should be LCM(3,4)*n to store RGB or RGBA tuple
  gif->output_buffer_size = 131072 * buffer_size_factor;

  // cropping window
  gif->actual_screen_width = ( screen_mode == 3 ) ? 1024 : 512;
  gif->actual_screen_height = ( screen_mode == 3 ) ? 768 : 512;

  // open GIF decode handle
  if (gif_open(gif, gif_file_name) != 0) {
    printf("error: gif decode handle open error.\n");
    goto exit;
  }

  // describe mode
  if (describe_mode) {
    gif_describe(gif);
    rc = 0;
    goto exit;
  }

  // clear screen
  if (clear_screen) {
    G_CLR_ON();
  }

/*
  // initialize graphic screen
  initialize_screen(g_screen_mode);

  // initialize palette (65536 colors)
  initialize_palette(g_screen_mode);

  // cursor display off
  C_CUROFF();

  // function key display off
  C_FNKMOD(3);

  // load GIF image
  gif_load(gif_file_name);

  // reset system port
  if (g_screen_mode == SCREEN_MODE_384x256) {
    initialize_screen(SCREEN_MODE_768x512);
  }
*/
  rc = 0;

catch:
  // cursor on
  C_CURON();

  // resume function key display mode
  C_FNKMOD(original_func_key_mode);

exit:
  // close GIF decode handle
  if (gif != NULL) {
    gif_close(gif);
    gif = NULL;
  }  

  return rc;
}