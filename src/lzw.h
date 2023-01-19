#ifndef __H_LZW__
#define __H_LZW__

#define MAX_LZW_STACK_SIZE (4096)

int decode_lzw(unsigned char* input_buffer, int input_len, unsigned char* output_buffer, int min_code_size, int pixel_count);

#endif