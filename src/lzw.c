#include "lzw.h"

size_t decode_lzw(uint8_t* input_buffer, size_t input_len, uint8_t* output_buffer, uint8_t min_code_size, size_t pixel_count) {

  static uint16_t prefix[ MAX_LZW_STACK_SIZE ];
  static uint16_t suffix[ MAX_LZW_STACK_SIZE ];
  static uint8_t pixel_stack[ MAX_LZW_STACK_SIZE ];

  int32_t clear_code = 1 << min_code_size;
  int32_t end_code = clear_code + 1;

  int32_t data_size = min_code_size;
  int32_t available = clear_code + 2;
  int32_t old_code = -1;
  int32_t code_size = data_size + 1;
  int32_t code_mask = ( 1 << code_size ) - 1;

  int32_t first = 0;
  int32_t pixel_sp = 0;
  int32_t datum = 0;
  int32_t bits = 0;

  int32_t output_buffer_ofs = 0;
  int32_t input_buffer_ofs = 0;

  for (int32_t i = 0; i < clear_code; i++) {
    prefix[i] = 0;
    suffix[i] = i;
  }

  while (output_buffer_ofs < pixel_count) {

    int32_t code, in_code;

    if (pixel_sp == 0) {

      if (bits < code_size) {
        datum += input_buffer[ input_buffer_ofs ++ ] << bits;
        bits += 8;
        continue;
      }

      code = datum & code_mask;
      datum >>= code_size;
      bits -= code_size;

      if (code > available || code == end_code) {
        break;
      }

      if (code == clear_code) {
        code_size = data_size + 1;
        code_mask = ( 1 << code_size ) - 1;
        available = clear_code + 2;
        old_code = -1;
        continue;
      }

      if (old_code == -1) {
        pixel_stack[ pixel_sp ++ ] = suffix[ code ];
        old_code = code;
        first = code;
        continue;
      }

      in_code = code;

      if (code == available) {
        pixel_stack[ pixel_sp ++ ] = first;
        code = old_code;
      }

      while (code > clear_code) {
        pixel_stack[ pixel_sp ++ ] = suffix[ code ];
        code = prefix[ code ];
      }

      first = suffix[ code ] & 0xff;
      pixel_stack[ pixel_sp ++ ] = first;

      if (available < MAX_LZW_STACK_SIZE) {
        prefix[ available ] = old_code;
        suffix[ available ] = first;
        available ++;

        if ((available & code_mask) == 0 && available < MAX_LZW_STACK_SIZE) {
          code_size ++;
          code_mask += available;
        }
      }

      old_code = in_code;

      if (bits <= 0 && input_buffer_ofs >= input_len) {
        break;
      }

    }

    pixel_sp --;
    output_buffer[ output_buffer_ofs ++ ] = pixel_stack[ pixel_sp ];

  }

  return output_buffer_ofs;
}
