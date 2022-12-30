#include "memory.h"

//
//  high memory operations
//
void* malloc_himem(size_t size) {

    struct REGS in_regs = { 0 };
    struct REGS out_regs = { 0 };

    in_regs.d0 = 0xF8;      // IOCS _HIMEM
    in_regs.d1 = 1;         // HIMEM_MALLOC
    in_regs.d2 = size;

    TRAP15(&in_regs, &out_regs);

    int rc = out_regs.d0;

    return (rc == 0) ? (void*)out_regs.a1 : NULL;
}

void free_himem(void* ptr) {
    
    struct REGS in_regs = { 0 };
    struct REGS out_regs = { 0 };

    in_regs.d0 = 0xF8;      // IOCS _HIMEM
    in_regs.d1 = 2;         // HIMEM_FREE
    in_regs.d2 = (size_t)ptr;

    TRAP15(&in_regs, &out_regs);
}

int getsize_himem(int mode) {

    struct REGS in_regs = { 0 };
    struct REGS out_regs = { 0 };

    in_regs.d0 = 0xF8;      // IOCS _HIMEM
    in_regs.d1 = 3;         // HIMEM_GETSIZE

    TRAP15(&in_regs, &out_regs);
  
    return (mode == 0) ? out_regs.d0 : out_regs.d1;
}

//
//  main memory operations using DOSCALL (with malloc, we cannot allocate more than 64k, why?)
//
void* malloc_mainmem(size_t size) {
  int addr = MALLOC(size);
  return (addr >= 0x81000000) ? NULL : (char*)addr;
}

void free_mainmem(void* ptr) {
  if (ptr == NULL) return;
  MFREE((int)ptr);
}

//
//  generic memory operations
//
void* malloc__(size_t size, int himem) {
    return himem ? malloc_himem(size) : malloc_mainmem(size);
}

void free__(void* ptr, int himem) {
    if (himem) {
        free_himem(ptr);
    } else {
        free_mainmem(ptr);
    }
}
