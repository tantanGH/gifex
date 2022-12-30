#include "lzw.h"

static short lzw_prefix[ MAX_LZW_STACK_SIZE ];
static short lzw_suffix[ MAX_LZW_STACK_SIZE ];
static unsigned char lzw_pixel_stack[ MAX_LZW_STACK_SIZE ];
  
void initialize_lzw(LZW_INF* lzw, int min_code_size) {

  lzw->clear_code = 1 << min_code_size;
  lzw->end_code = lzw->clear_code + 1;

  lzw->data_size = min_code_size;
  lzw->available = lzw->clear_code + 2;
  lzw->old_code = -1;
  lzw->code_size = lzw->data_size + 1;

  lzw->code_mask = ( 1 << lzw->code_size ) - 1;
  lzw->first = 0;
  lzw->pixel_sp = 0;
  lzw->datum = 0;
  lzw->bits = 0;

  for (int i = 0; i < lzw->clear_code; i++) {
    lzw_prefix[i] = 0;
    lzw_suffix[i] = i;
  }

}

int decode_lzw(LZW_INF* lzw, unsigned char* input_buffer, int input_len, unsigned char* output_buffer, int pixel_count) {

  int output_buffer_ofs = 0;
  int input_buffer_ofs = 0;

 #ifdef DEBUG 
//    printf("output_buffer_ofs=%d,pixel_count=%d\n",output_buffer_ofs,pixel_count);
#endif
 
  while (output_buffer_ofs < pixel_count) {

    int code, in_code;

#ifdef DEBUG 
 //   printf("output_buffer_ofs=%d,pixel_count=%d,datum=%d,bits=%d,sp=%d,mask=%x,input_buffer_ofs=%d,code_size=%d\n",output_buffer_ofs,pixel_count,lzw->datum,lzw->bits,lzw->pixel_sp,lzw->code_mask,input_buffer_ofs,lzw->code_size);
#endif

    if (lzw->pixel_sp == 0) {

      if (lzw->bits < lzw->code_size) {
        lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
        lzw->bits += 8;
        continue;
      }

      code = lzw->datum & lzw->code_mask;
      lzw->datum >>= lzw->code_size;
      lzw->bits -= lzw->code_size;

 //     printf("code=%d\n",code);

      if (code > lzw->available || code == lzw->end_code) {
#ifdef DEBUG 
 //       printf("code=%d,available=%d,end_code=%d\n",code,lzw->available,lzw->end_code);
#endif
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
        lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
        lzw->old_code = code;
        lzw->first = code;
        continue;
      }

      in_code = code;

      if (code == lzw->available) {
        lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
        code = lzw->old_code;
      }

      while (code > lzw->clear_code) {
        lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
        code = lzw_prefix[ code ];
      }

      lzw->first = lzw_suffix[ code ] & 0xff;
      lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;

      if (lzw->available < MAX_LZW_STACK_SIZE) {
        lzw_prefix[ lzw->available ] = lzw->old_code;
        lzw_suffix[ lzw->available ] = lzw->first;
        lzw->available ++;

        if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_LZW_STACK_SIZE) {
          lzw->code_size ++;
          lzw->code_mask += lzw->available;
        }
      }

      lzw->old_code = in_code;

      if (lzw->bits <= 0 && input_buffer_ofs >= input_len) {
  #ifdef DEBUG
        printf("no more bit to read.\n");
  #endif
        break;    // no more bits to read
      }

    }

    lzw->pixel_sp --;
    output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];

  }

#ifdef DEBUG
  printf("input_buffer_ofs=%d,input_len=%d,output_buffer_ofs=%d\n",input_buffer_ofs,input_len,output_buffer_ofs);
#endif
  return output_buffer_ofs;
}
