#include "crtc.h"

//
//  initialize screen
//
int32_t initialize_screen(int32_t mode) {

  // return code
  int32_t rc = -1;

  // wait vblank
  WAIT_VSYNC;
  WAIT_VBLANK;

  // change CRTC screen mode
  switch (mode) {
    
    case SCREEN_MODE_384x256: {

      // 512x256(384x256),31kHz,65536 colors
      int32_t current_resolution = CRTC_R20[0] & 0x013;
      if (current_resolution > 0x11) {

        CRTC_R20[0] = 0x311;    // set first

        CRTC_R00[1] = 0x0006;
        CRTC_R00[2] = 0x000b;
        CRTC_R00[3] = 0x003b; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 
        CRTC_R00[8] = 0x001b;

        CRTC_R00[0] = 0x0045;   // set last

      } else {

        CRTC_R00[0] = 0x0045;   // set first

        CRTC_R00[1] = 0x0006;
        CRTC_R00[2] = 0x000b;
        CRTC_R00[3] = 0x003b; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 
        CRTC_R00[8] = 0x001b;

        CRTC_R20[0] = 0x311;    // set last

      }

      SET_SYSP;                 // system port for dot clock change - Inside/Out p44

      VDC_R0[0] = 3;            // memory mode 3

      REG_SCON[1] = 0x000b + 4;   // HDISP R02 + 4
      WAIT_SCON;
      REG_SCON[0] = 0x00ff;       // H-TOTAL 256 color mode: R00  else: 0xff
      REG_SCON[2] = 0x0028;       // VDISP R06
      REG_SCON[3] = 0x0011;       // 31kHz, V 256, H 512 (= R20 & 0xff)

      VDC_R2[0] = 0x2f;         // test/graphic on, sprite off (w:512 h:512)

      CRTC_R12[0] = 0;          // scroll position X
      CRTC_R12[1] = 0;          // scroll position Y
      CRTC_R12[2] = 0;          // scroll position X
      CRTC_R12[3] = 0;          // scroll position Y    
      CRTC_R12[4] = 0;          // scroll position X
      CRTC_R12[5] = 0;          // scroll position Y
      CRTC_R12[6] = 0;          // scroll position X
      CRTC_R12[7] = 0;          // scroll position Y

      rc = 0;
      break;
    }

    case SCREEN_MODE_512x512: {

      // 512x512(512x512),31kHz,65536 colors
      int32_t current_resolution = CRTC_R20[0] & 0x013;
      if (current_resolution > 0x15) {

        CRTC_R20[0] = 0x315;      // set last

        CRTC_R00[1] = 0x0009;
        CRTC_R00[2] = 0x0011;
        CRTC_R00[3] = 0x0051; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 
        CRTC_R00[8] = 0x001b;

        CRTC_R00[0] = 0x005b;     // set last

      } else {

        CRTC_R00[0] = 0x005b;     // set first

        CRTC_R00[1] = 0x0009;
        CRTC_R00[2] = 0x0011;
        CRTC_R00[3] = 0x0051; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 

        CRTC_R20[0] = 0x0315;     // set last, memory mode 3

      }

      RESET_SYSP;                 // system port for dot clock change - Inside/Out p44

      VDC_R0[0] = 3;              // memory mode 3

      REG_SCON[1] = 0x0011 + 4;   // HDISP = R02 + 4
      WAIT_SCON;
      REG_SCON[0] = 0x00ff;       // H-TOTAL = 256 color: R00  else: 0xff
      REG_SCON[2] = 0x0028;       // VDISP = R06
      REG_SCON[3] = 0x0015;       // 31kHz, V512, H512 (= R20 & 0xff)

      VDC_R2[0] = 0x2f;           // text/graphic on, sprite off (w:512 h:512)

      CRTC_R12[0] = 0;            // scroll position X
      CRTC_R12[1] = 0;            // scroll position Y
      CRTC_R12[2] = 0;            // scroll position X
      CRTC_R12[3] = 0;            // scroll position Y    
      CRTC_R12[4] = 0;            // scroll position X
      CRTC_R12[5] = 0;            // scroll position Y
      CRTC_R12[6] = 0;            // scroll position X
      CRTC_R12[7] = 0;            // scroll position Y
  
      rc = 0;
      break;
    }

    case SCREEN_MODE_768x512: {

      // 512x512(768x512),31kHz,65536 colros
      int32_t current_resolution = CRTC_R20[0] & 0x013;
      if (current_resolution > 0x16) {

        CRTC_R20[0] = 0x316;      // set first

        CRTC_R00[1] = 0x000e;
        CRTC_R00[2] = 0x001c;
        CRTC_R00[3] = 0x007c; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 
        CRTC_R00[8] = 0x001b;

        CRTC_R00[0] = 0x0089;     // set last

      } else {

        CRTC_R00[0] = 0x0089;     // set first

        CRTC_R00[1] = 0x000e;
        CRTC_R00[2] = 0x001c;
        CRTC_R00[3] = 0x007c; 
        CRTC_R00[4] = 0x0237;
        CRTC_R00[5] = 0x0005;
        CRTC_R00[6] = 0x0028;
        CRTC_R00[7] = 0x0228; 
        CRTC_R00[8] = 0x001b;    

        CRTC_R20[0] = 0x0316;     // set last, memory mode 3

      }

      RESET_SYSP;                 // system port for dot clock change - Inside/Out p44

      VDC_R0[0] = 3;              // memory mode 3

      REG_SCON[1] = 0x001c + 4;       // H-DISP
      WAIT_SCON;
      REG_SCON[0] = 0x00ff;           // H-TOTAL = 256 color: R00  else: 0xff
      REG_SCON[2] = 0x0028;           // V-DISP = R06
      REG_SCON[3] = 0x0016;           // 31kHz, V 512, H 768 (= R20 & 0xff)

      VDC_R2[0] = 0x2f;           // text/graphic on, sprite off (w:512 h:512)

      CRTC_R12[0] = 0;            // scroll position X
      CRTC_R12[1] = 0;            // scroll position Y
      CRTC_R12[2] = 0;            // scroll position X
      CRTC_R12[3] = 0;            // scroll position Y    
      CRTC_R12[4] = 0;            // scroll position X
      CRTC_R12[5] = 0;            // scroll position Y
      CRTC_R12[6] = 0;            // scroll position X
      CRTC_R12[7] = 0;            // scroll position Y

      rc = 0;
      break;
    }

    case SCREEN_MODE_768x512_FULL: {

      // 1024x1024(768x512),31kHz,65536 colros (for XEiJ only)
      CRTC_R00[0] = 0x0089;

      CRTC_R00[1] = 0x000e;
      CRTC_R00[2] = 0x001c;
      CRTC_R00[3] = 0x007c; 
      CRTC_R00[4] = 0x0237;
      CRTC_R00[5] = 0x0005;
      CRTC_R00[6] = 0x0028;
      CRTC_R00[7] = 0x0228; 
      CRTC_R00[8] = 0x001b;

      CRTC_R20[0] = 0x0716;       // memory mode 7 (for XEiJ only)

      RESET_SYSP;                 // system port for dot clock change - Inside/Out p44

      VDC_R0[0] = 7;              // memory mode 7 (for XEiJ only)
  
      REG_SCON[1] = 0x001c + 4;       // R02 + 0x04
      WAIT_SCON;
      REG_SCON[0] = 0x00ff;           // 256 color: R00  else: 0xff
      REG_SCON[2] = 0x0028;           // R06
      REG_SCON[3] = 0x0016;           // R20 & 0xff

      VDC_R2[0] = 0x30;           // text/graphic on (w:1024 h:1024)

      CRTC_R12[0] = 0;            // scroll position X
      CRTC_R12[1] = 0;            // scroll position Y

      rc = 0;
      break;
    }

    default:
      // unknown mode
      break;

  }

  return rc;
}

// initialize 65536 color pallet
int32_t initialize_palette(int32_t mode) {

  volatile uint16_t* palette_ptr = PALETTE;
  int32_t rc = -1;

  switch (mode) {
    case SCREEN_MODE_384x256:
    case SCREEN_MODE_512x512:
    case SCREEN_MODE_768x512:
    case SCREEN_MODE_768x512_FULL:
      for (int32_t i = 0x0001; i <= 0x10000; i += 0x0202) {
        *palette_ptr++ = (uint16_t)i;
        *palette_ptr++ = (uint16_t)i;
      }
      rc = 0;
      break;
    default:
      break;
  }
    
  return rc;
}
