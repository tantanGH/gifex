#ifndef __H_MEMORY__
#define __H_MEMORY__

#include <stddef.h>

// only for high memory
int resize_himem(void* ptr, size_t size);

// generic memory ops
void* malloc_himem(size_t size, int use_high_memory);
void free_himem(void* ptr, int use_high_memory);

#endif