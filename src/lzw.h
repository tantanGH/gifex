#ifndef __H_LZW__
#define __H_LZW__

#include <stdint.h>
#include <stddef.h>

#define MAX_LZW_STACK_SIZE (4096)

size_t decode_lzw(uint8_t* input_buffer, size_t input_len, uint8_t* output_buffer, uint8_t min_code_size, size_t pixel_count);

#endif