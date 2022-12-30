#include "crtc.h"

//
//  initialize screen
//
int initialize_screen(int mode) {

  // crtc, video controller and palette
  volatile unsigned short* crtc_r00_ptr = (unsigned short*)CRTC_R00;
  volatile unsigned short* crtc_r12_ptr = (unsigned short*)CRTC_R12;
  volatile unsigned short* crtc_r20_ptr = (unsigned short*)CRTC_R20;
  volatile unsigned short* vdc_r1_ptr   = (unsigned short*)VDC_R1;
  volatile unsigned short* vdc_r2_ptr   = (unsigned short*)VDC_R2;
  volatile unsigned char* sysp = (unsigned char*)SYSP;
  volatile unsigned char* scon = (unsigned char*)SCON;
  int current_resolution;

  // return code
  int rc = -1;

  // wait vblank
  WAIT_VSYNC;
  WAIT_VBLANK;

  // change CRTC screen mode
  switch (mode) {
    
    case SCREEN_MODE_384x256:

      // 512x256(384x256),31kHz,65536 colors
      current_resolution = crtc_r20_ptr[0] & 0x013;
      if (current_resolution > 0x11) {
        crtc_r20_ptr[0] = 0x311;    // set first
        crtc_r00_ptr[1] = 0x0006;
        crtc_r00_ptr[2] = 0x000b;
        crtc_r00_ptr[3] = 0x003b; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r00_ptr[8] = 0x001b;
        crtc_r00_ptr[0] = 0x0045;   // set last
      } else {
        crtc_r00_ptr[0] = 0x0045;   // set first
        crtc_r00_ptr[1] = 0x0006;
        crtc_r00_ptr[2] = 0x000b;
        crtc_r00_ptr[3] = 0x003b; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r00_ptr[8] = 0x001b;
        crtc_r20_ptr[0] = 0x311;    // set last
      }

      sysp[0] |= 0x02;              // system port for dot clock change - Inside/Out p44

      vdc_r1_ptr[0] = 3;            // memory mode 3

      scon[1] = 0x000b + 4;         // R02 + 4

      WAIT_SCON;
      scon[0] = 0xff;               // 256 color mode: R00  else: 0xff
      scon[2] = 0x28;               // R06
      scon[3] = 0x11;               // R20 & 0xff

      vdc_r2_ptr[0] = 0x2f;         // graphic on (w:512 h:256)

      crtc_r12_ptr[0] = 0;          // scroll position X
      crtc_r12_ptr[1] = 0;          // scroll position Y
      crtc_r12_ptr[2] = 0;          // scroll position X
      crtc_r12_ptr[3] = 0;          // scroll position Y    
      crtc_r12_ptr[4] = 0;          // scroll position X
      crtc_r12_ptr[5] = 0;          // scroll position Y
      crtc_r12_ptr[6] = 0;          // scroll position X
      crtc_r12_ptr[7] = 0;          // scroll position Y

      rc = 0;
      break;

    case SCREEN_MODE_512x512:

      // 512x512(512x512),31kHz,65536 colors
      current_resolution = crtc_r20_ptr[0] & 0x013;
      if (current_resolution > 0x15) {
        crtc_r20_ptr[0] = 0x315;      // set last
        crtc_r00_ptr[1] = 0x0009;
        crtc_r00_ptr[2] = 0x0011;
        crtc_r00_ptr[3] = 0x0051; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r00_ptr[8] = 0x001b;
        crtc_r00_ptr[0] = 0x005b;     // set last
      } else {
        crtc_r00_ptr[0] = 0x005b;     // set first
        crtc_r00_ptr[1] = 0x0009;
        crtc_r00_ptr[2] = 0x0011;
        crtc_r00_ptr[3] = 0x0051; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r20_ptr[0] = 0x0315;     // set last, memory mode 3
      }

//      sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44

      vdc_r1_ptr[0] = 3;              // memory mode 3

//      scon[1] = 0x0011 + 4;           // R02 + 4

//      WAIT_SCON;
//      scon[0] = 0xff;                 // 256 color: R00  else: 0xff
//      scon[2] = 0x28;                 // R06
//      scon[3] = 0x15;                 // R20 & 0xff

      vdc_r2_ptr[0] = 0x2f;           // graphic on (w:512 h:512)

      crtc_r12_ptr[0] = 0;            // scroll position X
      crtc_r12_ptr[1] = 0;            // scroll position Y
      crtc_r12_ptr[2] = 0;            // scroll position X
      crtc_r12_ptr[3] = 0;            // scroll position Y    
      crtc_r12_ptr[4] = 0;            // scroll position X
      crtc_r12_ptr[5] = 0;            // scroll position Y
      crtc_r12_ptr[6] = 0;            // scroll position X
      crtc_r12_ptr[7] = 0;            // scroll position Y
  
      rc = 0;
      break;

    case SCREEN_MODE_768x512:

      // 512x512(768x512),31kHz,65536 colros
      int current_resolution = crtc_r20_ptr[0] & 0x013;
      if (current_resolution > 0x16) {
        crtc_r20_ptr[0] = 0x316;      // set first
        crtc_r00_ptr[1] = 0x000e;
        crtc_r00_ptr[2] = 0x001c;
        crtc_r00_ptr[3] = 0x007c; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r00_ptr[8] = 0x001b;
        crtc_r00_ptr[0] = 0x0089;     // set last
      } else {
        crtc_r00_ptr[0] = 0x0089;     // set first
        crtc_r00_ptr[1] = 0x000e;
        crtc_r00_ptr[2] = 0x001c;
        crtc_r00_ptr[3] = 0x007c; 
        crtc_r00_ptr[4] = 0x0237;
        crtc_r00_ptr[5] = 0x0005;
        crtc_r00_ptr[6] = 0x0028;
        crtc_r00_ptr[7] = 0x0228; 
        crtc_r00_ptr[8] = 0x001b;    
        crtc_r20_ptr[0] = 0x0316;     // set last, memory mode 3
      }

//      sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44

      vdc_r1_ptr[0] = 3;              // memory mode 3

//      scon[1] = 0x001c + 4;

//      WAIT_SCON;
//      scon[0] = 0xff;                 // 256 color: R00  else: 0xff
//      scon[2] = 0x28;                 // R06
//      scon[3] = 0x16;                 // R20 & 0xff

      vdc_r2_ptr[0] = 0x2f;           // graphic on (w:512 h:512)

      crtc_r12_ptr[0] = 0;            // scroll position X
      crtc_r12_ptr[1] = 0;            // scroll position Y
      crtc_r12_ptr[2] = 0;            // scroll position X
      crtc_r12_ptr[3] = 0;            // scroll position Y    
      crtc_r12_ptr[4] = 0;            // scroll position X
      crtc_r12_ptr[5] = 0;            // scroll position Y
      crtc_r12_ptr[6] = 0;            // scroll position X
      crtc_r12_ptr[7] = 0;            // scroll position Y

      rc = 0;
      break;

    case SCREEN_MODE_768x512_FULL:

      // 1024x1024(768x512),31kHz,65536 colros (for XEiJ only)
      crtc_r00_ptr[0] = 0x0089;
      crtc_r00_ptr[1] = 0x000e;
      crtc_r00_ptr[2] = 0x001c;
      crtc_r00_ptr[3] = 0x007c; 
      crtc_r00_ptr[4] = 0x0237;
      crtc_r00_ptr[5] = 0x0005;
      crtc_r00_ptr[6] = 0x0028;
      crtc_r00_ptr[7] = 0x0228; 
      crtc_r00_ptr[8] = 0x001b;

      crtc_r20_ptr[0] = 0x0716;       // memory mode 7 (for XEiJ only)

//      sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44

      vdc_r1_ptr[0] = 7;              // memory mode 7 (for XEiJ only)
  
//      scon[1] = 0x001c + 4;           // R02 + 0x04

//      WAIT_SCON;
//      scon[0] = 0xff;                 // 256 color: R00  else: 0xff
//      scon[2] = 0x28;                 // R06
//      scon[3] = 0x16;                 // R20 & 0xff

      vdc_r2_ptr[0] = 0x30;           // graphic on (w:1024 h:1024)

      crtc_r12_ptr[0] = 0;            // scroll position X
      crtc_r12_ptr[1] = 0;            // scroll position Y

      rc = 0;
      break;

    default:

      // unknown mode
      break;

  }

  return rc;
}

// initialize 65536 color pallet
int initialize_palette(int mode) {

  volatile unsigned short* palette_ptr  = (unsigned short*)PALETTE;
  int rc = -1;

  switch (mode) {
    case SCREEN_MODE_384x256:
    case SCREEN_MODE_512x512:
    case SCREEN_MODE_768x512:
    case SCREEN_MODE_768x512_FULL:
      for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
        *palette_ptr++ = (unsigned short)i;
        *palette_ptr++ = (unsigned short)i;
      }
      rc = 0;
      break;
    default:
      break;
  }
    
  return rc;
}