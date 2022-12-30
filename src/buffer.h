#ifndef __H_BUILD__
#define __H_BUILD__

#include <stdio.h>
#include <string.h>

// ring buffer operations
unsigned char get_uchar_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, FILE* fp);
unsigned short get_ushort_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, FILE* fp);
void memcpy_buffer(unsigned char* dest_ptr, unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, int len, FILE* fp);
void skip_buffer(unsigned char* buffer_ptr, int* buffer_ofs_ptr, int buffer_size, int len, FILE* fp);

#endif