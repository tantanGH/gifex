#ifndef __H_CRTC__
#define __H_CRTC__

#include <stdint.h>

// graphic ops memory addresses
#define GVRAM       ((volatile uint16_t*)0xC00000)     // GVRAM
#define CRTC_R00    ((volatile uint16_t*)0xE80000)     // CRTC R00-R08 (Inside X68000 p232)
#define CRTC_R12    ((volatile uint16_t*)0xE80018)     // CRTC R12 for scroll (Insite X68000 p197)
#define CRTC_R20    ((volatile uint16_t*)0xE80028)     // CRTC R20 (Inside X68000 p234)
#define VDC_R0      ((volatile uint16_t*)0xE82400)     // video controller (Inside X68000 p234)
#define VDC_R2      ((volatile uint16_t*)0xE82600)     // video controller (Inside X68000 p210)
#define PALETTE     ((volatile uint16_t*)0xE82000)     // graphic palette (Inside X68000 p218)
#define REG_GPIP     ((volatile uint8_t*)0xE88001)     // generic I/O port (Inside X68000 p81)
#define REG_SYSP     ((volatile uint8_t*)0xE8E007)     // system port (Inside/Out X68030 p44)
#define REG_SCON    ((volatile uint16_t*)0xEB080A)     // sprite controller (Inside X68000 p235)
#define REG_TACR     ((volatile uint8_t*)0xE88019)     // timer-A control register (Inside X68000 p91)
#define REG_TADR     ((volatile uint8_t*)0xE8801F)     // timer-A data register (Inside X68000 p91)

// screen mode
#define SCREEN_MODE_384x256         (0)
#define SCREEN_MODE_512x512         (1)
#define SCREEN_MODE_768x512         (2)
#define SCREEN_MODE_768x512_FULL    (3)       // only for XEiJ extended graphic memory mode 7

// wait vsync/vblank
#define WAIT_VSYNC   while(!(REG_GPIP[0] & 0x10))
#define WAIT_VBLANK    while(REG_GPIP[0] & 0x10)

// reset system port
#define SET_SYSP     (REG_SYSP[0] |=  0x02)
#define RESET_SYSP   (REG_SYSP[0] &= ~0x02)

// wait SCON write (not recommended)
#define WAIT_SCON    for (int i = 0; i < 0x1000; i++) {}

// scroll
#define G_SCROLL(X,Y)   { CRTC_R12[0] = X; CRTC_R12[1] = Y; CRTC_R12[2] = X; CRTC_R12[3] = Y; CRTC_R12[4] = X; CRTC_R12[5] = Y; CRTC_R12[6] = X; CRTC_R12[7] = Y; }

// prototype declarations
int32_t initialize_screen(int32_t mode);
int32_t initialize_palette(int32_t mode);

#endif