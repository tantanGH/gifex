#ifndef __H_CRTC__
#define __H_CRTC__

// graphic ops memory addresses
#define GVRAM     (0xC00000)
#define CRTC_R00  (0xE80000)                    // CRTC R00-R08 (Inside X68000 p232)
#define CRTC_R12  (0xE80018)                    // CRTC R12 for scroll (Insite X68000 p197)
#define CRTC_R20  (0xE80028)                    // CRTC R20 (Inside X68000 p234)
#define VDC_R1    (0xE82400)                    // video controller (Inside X68000 p234)
#define VDC_R2    (0xE82600)                    // video controller (Inside X68000 p210)
#define PALETTE   (0xE82000)                    // graphic palette (Inside X68000 p218)
#define GPIP      (0xE88001)                    // generic I/O port (Inside X68000 p81)
#define SYSP      (0xE8E007)                    // system port (Inside/Out X68030 p44)
#define SCON      (0xEB080A)                    // sprite controller (Inside X68000 p235)

// screen mode
#define SCREEN_MODE_384x256         (0)
#define SCREEN_MODE_512x512         (1)
#define SCREEN_MODE_768x512         (2)
#define SCREEN_MODE_768x512_FULL    (3)       // only for XEiJ extended graphic memory mode 7

// wait vsync/vblank
#define WAIT_VSYNC   while(!(((volatile unsigned char*)GPIP)[0] & 0x10))
#define WAIT_VBLANK  while(((volatile unsigned char*)GPIP)[0] & 0x10)

// reset system port
#define SET_SYSP     (((volatile unsigned char*)SYSP)[0] |=  0x02)
#define RESET_SYSP   (((volatile unsigned char*)SYSP)[0] &= ~0x02)

// wait SCON write
#define WAIT_SCON    for (int i = 0; i < 0x1000; i++) {}

// prototype declarations
int initialize_screen(int mode);
int initialize_palette(int mode);

#endif