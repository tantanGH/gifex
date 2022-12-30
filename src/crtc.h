#ifndef __H_CRTC__
#define __H_CRTC__

// graphic ops memory addresses
#define GVRAM     (0xC00000)
#define CRTC_R00  (0xE80000)
#define CRTC_R12  (0xE80018)
#define CRTC_R20  (0xE80028)
#define VDC_R1    (0xE82400)
#define VDC_R2    (0xE82600)
#define PALETTE   (0xE82000)
#define GPIP      (0xE88001)
#define SYSP      (0xE8E007)
#define SCON      (0xEB080A)

void initialize_screen(int mode);
void initialize_palette(void);

#endif