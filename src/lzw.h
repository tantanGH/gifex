#ifndef __H_LZW__
#define __H_LZW__

//
//  decode LZW bit stream - originated by miku in Typescript
//  https://github.com/BaroqueEngine/GIFParser
//

#define MAX_LZW_STACK_SIZE (4096)

// to preserve status to resume decoding
typedef struct {    
  int clear_code;
  int end_code;
  int data_size;
  int available;
  int old_code;
  int code_size;
  int code_mask;
  int first;
  int pixel_sp;
  int datum;
  int bits;
} LZW_INF;

void initialize_lzw(LZW_INF* lzw, int min_code_size);
int decode_lzw(LZW_INF* lzw, unsigned char* input_buffer, int input_len, unsigned char* output_buffer, int pixel_count);

#endif