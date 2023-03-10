//
//  GIFEX.X - Animated GIF loader for X680x0
//
//  Implemented by tantan (@snakGH) 2022-2023
//    https://github.com/tantanGH/gifex/
//
//  GIF data format reference by Tohoho
//    https://www.tohoho-web.com/wwwgif.htm
//
//  GIF LZW decoder originated by miku in Typescript
//    https://github.com/BaroqueEngine/GIFParser
//

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <doslib.h>
#include <iocslib.h>

#include "crtc.h"
#include "himem.h"
#include "gif.h"

#define VERSION "0.8.1 (2023/02/26)"

//
//  show help messages
//
static void show_help_message() {
  printf("GIFEX - GIF image loader for X680x0 version " VERSION " by tantan\n");
  printf("usage: gifex.x [options] <image.gif>\n");
  printf("options:\n");
  printf("   -c ... clear graphic screen\n");
  printf("   -n ... image centering\n");
  printf("   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512, 3:768x512(full - XEiJ only)\n");
  printf("   -v<n> ... brightness (0-100)\n");
//  printf("   -o<x,y> ... display offset position\n");
  printf("\n");
  printf("   -m ... memory cache mode\n");
  printf("   -l ... loop mode\n");
  printf("\n");
  printf("   -b<n> ... buffer memory size factor[1-24] (default:4)\n");
  printf("   -u ... use 060turbo/TS-6BE16 high memory\n");
  printf("\n");
  printf("   -f<n> ... max number of frames (default:no limit)\n");
  printf("   -w<n> ... frame rate (0:no wait, n:n frames/sec, default:auto)\n");
  printf("\n");
  printf("   -i ... show file information\n");
  printf("   -h ... show this help message\n");

}

//
//  main
//
int32_t main(int32_t argc, uint8_t* argv[]) {

  // return code
  int32_t rc = 1;

  // supervisor mode
  B_SUPER(0);

  // preserve original function key mode
  int32_t original_func_key_mode = C_FNKMOD(-1);

  // GIF file name
  uint8_t* gif_file_name = NULL;

  // GIF decode handle
  static GIF_DECODE_HANDLE gif_decode_handle = { 0 };
  GIF_DECODE_HANDLE* gif = &gif_decode_handle;
  gif->image_frame_max = MAX_IMAGE_FRAMES;
  gif->screen_mode = SCREEN_MODE_384x256;
  gif->brightness = 100;

  // flags
  int32_t describe_mode = 0;
  int32_t buffer_size_factor = 4;

  // argument options
  if (argc <= 1) {
    show_help_message();
    goto exit;
  }

  for (int32_t i = 1; i < argc; i++) {
    if (argv[i][0] == '-' && strlen(argv[i]) >= 2) {
      if (argv[i][1] == 'c') {
        gif->clear_screen = 1;
      } else if (argv[i][1] == 'n') {
        gif->centering = 1;
      } else if (argv[i][1] == 'l') {
        gif->loop_mode = 1;
      } else if (argv[i][1] == 'm') {
        gif->memory_cache_mode = 1;
      } else if (argv[i][1] == 'u') {
        if (!himem_isavailable()) {
          printf("error: high memory driver is not installed.\n");
          goto exit;
        }
        gif->use_high_memory = 1;        
      } else if (argv[i][1] == 'v' && strlen(argv[i]) >= 3) {
        gif->brightness = atoi(argv[i]+2);
      } else if (argv[i][1] == 's' && strlen(argv[i]) >= 3) {
        gif->screen_mode = atoi(argv[i]+2);
        if (gif->screen_mode < 0 || gif->screen_mode > 3) {
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
        uint8_t* c = strchr(opt,',');
        if (c != NULL) {
          *c = '\0';
          gif->offset_x = atoi(opt);
          gif->offset_y = atoi(c+1);
        } else {
          gif->offset_x = atoi(opt);
        }
      } else if (argv[i][1] == 'i') {
        describe_mode = 1;
      } else if (argv[i][1] == 'b' && strlen(argv[i]) >= 3) {
        buffer_size_factor = atoi(argv[i]+2);
        if (buffer_size_factor > 24) {
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
  gif->input_buffer_size = 32768 * buffer_size_factor;

  // output (inflate) buffer = 128KB * factor - should be LCM(3,4)*n to store RGB or RGBA tuple
  gif->output_buffer_size = 65536 * buffer_size_factor;

  // display size
  switch (gif->screen_mode) {
    case 0:
      gif->display_width = 384;
      gif->display_height = 256;
      gif->actual_screen_width = 512;
      gif->actual_screen_height = 512;
      break;
    case 1:
      gif->display_width = 512;
      gif->display_height = 512;
      gif->actual_screen_width = 512;
      gif->actual_screen_height = 512;
      break;
    case 2:
      gif->display_width = 768;
      gif->display_height = 512;
      gif->actual_screen_width = 512;
      gif->actual_screen_height = 512;
      break;
    case 3:
      gif->display_width = 768;
      gif->display_height = 512;
      gif->actual_screen_width = 1024;
      gif->actual_screen_height = 1024;
      break;
  }

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
  if (gif->clear_screen) {
    G_CLR_ON();
    C_CLS_AL();
    G_SCROLL(0,0);
  }

  // initialize graphic screen
  initialize_screen(gif->screen_mode);

  // initialize palette (65536 colors)
  initialize_palette(gif->screen_mode);

  if (gif->screen_mode == SCREEN_MODE_768x512_FULL && gif->clear_screen) {
    // manual erase
    struct FILLPTR fillptr = { 0, 0, 1023, 1023, 0 };
    FILL(&fillptr);      
  }

  // cursor display off
  C_CUROFF();

  // function key display off
  C_FNKMOD(3);

  // load GIF image
  gif_load(gif);

  // reset system port
  if (gif->screen_mode == SCREEN_MODE_384x256) {
    initialize_screen(SCREEN_MODE_768x512);
  }

  rc = 0;

catch:
  // clear screen
  if (gif->clear_screen) {
    G_CLR_ON();
    C_CLS_AL();
    G_SCROLL(0,0);
  }

  // cursor on
  C_CURON();

  // resume function key display mode
  C_FNKMOD(original_func_key_mode);

  // flush key buffer
  while (B_KEYSNS() != 0) {
    B_KEYINP();
  }

exit:
  // close GIF decode handle
  if (gif != NULL) {
    gif_close(gif);
    gif = NULL;
  }  

  return rc;
}