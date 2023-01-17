#ifndef __H_MEMORY__
#define __H_MEMORY__

#include <stddef.h>
#include <doslib.h>
#include <iocslib.h>

// high memory ops
void* malloc_himem(size_t size);
void free_himem(void* ptr);
int resize_himem(void* ptr, size_t size);

// main memory ops
void* malloc_mainmem(size_t size);
void free_mainmem(void* ptr);

// generic memory ops
void* malloc__(size_t size, int himem);
void free__(void* ptr, int himem);

#endif