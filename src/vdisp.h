#ifndef __FUNC_H__
#define __FUNC_H__

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <iocslib.h>
#include <doslib.h>

void initVsyncInterrupt(void *func);
void termVsyncInterrupt();

#endif

