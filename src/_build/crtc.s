* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"crtc.c"				*	.file	"crtc.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
	.text						*	.text
	.align	2					*	.align	2
	.globl	_initialize_screen			*	.globl	initialize_screen
							*	.type	initialize_screen, @function
_initialize_screen:					*initialize_screen:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| mode, mode
_?L2:							*.L2:
							*| crtc.c:19:   while(!(*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _1
							*| crtc.c:19:   while(!(*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _1
	jbeq _?L2					*	jeq .L2		|
_?L3:							*.L3:
							*| crtc.c:20:   while( (*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _2
							*| crtc.c:20:   while( (*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _2
	jbne _?L3					*	jne .L3		|
							*| crtc.c:23:   if (mode == 0) {
	tst.l d0					*	tst.l %d0	| mode
	jbne _?L4					*	jne .L4		|
							*| crtc.c:26:     int current_resolution = crtc_r20_ptr[0] & 0x013;
	move.w 15204392,d0				*	move.w 15204392,%d0	| MEM[(volatile short unsigned int *)15204392B], _3
							*| crtc.c:27:     if (current_resolution > 0x11) {
	and.w #19,d0					*	and.w #19,%d0	|, tmp53
	cmp.w #17,d0					*	cmp.w #17,%d0	|, tmp53
	jbls _?L5					*	jls .L5		|
							*| crtc.c:28:         crtc_r20_ptr[0] = 0x311;    // set first
	move.w #785,15204392				*	move.w #785,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| crtc.c:29:         crtc_r00_ptr[1] = 0x0006;
	move.w #6,15204354				*	move.w #6,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| crtc.c:30:         crtc_r00_ptr[2] = 0x000b;
	move.w #11,15204356				*	move.w #11,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| crtc.c:31:         crtc_r00_ptr[3] = 0x003b;
	move.w #59,15204358				*	move.w #59,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| crtc.c:32:         crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| crtc.c:33:         crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| crtc.c:34:         crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| crtc.c:35:         crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| crtc.c:36:         crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| crtc.c:37:         crtc_r00_ptr[0] = 0x0045;   // set last
	move.w #69,15204352				*	move.w #69,15204352	|, MEM[(volatile short unsigned int *)15204352B]
_?L13:							*.L13:
							*| crtc.c:100:     sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44
	move.l #15261703,a0				*	move.l #15261703,%a0	|, tmp100
	move.b (a0),d0					*	move.b (%a0),%d0	|, _7
							*| crtc.c:100:     sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44
	or.b #2,d0					*	or.b #2,%d0	|, _8
	move.b d0,(a0)					*	move.b %d0,(%a0)	| _8,
							*| crtc.c:102:     vdc_r1_ptr[0]   = 3;          // memory mode 3
	move.w #3,15213568				*	move.w #3,15213568	|,
							*| crtc.c:104:     scon[1] = 0x000b + 4;
	move.b #15,15403019				*	move.b #15,15403019	|,
							*| crtc.c:106:     scon[0] = 0xff;
	move.b #-1,15403018				*	move.b #-1,15403018	|,
							*| crtc.c:107:     scon[2] = 0x28;
	move.b #40,15403020				*	move.b #40,15403020	|,
							*| crtc.c:108:     scon[3] = 0x11;
	move.b #17,15403021				*	move.b #17,15403021	|,
							*| crtc.c:110:     vdc_r2_ptr[0]   = 0x2f;       // graphic on (512x256)
	move.w #47,15214080				*	move.w #47,15214080	|,
							*| crtc.c:112:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|,
							*| crtc.c:113:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|,
							*| crtc.c:114:     crtc_r12_ptr[2] = 0;          // scroll position X
	move.w #0,15204380				*	move.w #0,15204380	|,
							*| crtc.c:115:     crtc_r12_ptr[3] = 0;          // scroll position Y
	move.w #0,15204382				*	move.w #0,15204382	|,
							*| crtc.c:116:     crtc_r12_ptr[4] = 0;          // scroll position X
	move.w #0,15204384				*	move.w #0,15204384	|,
							*| crtc.c:117:     crtc_r12_ptr[5] = 0;          // scroll position Y
	move.w #0,15204386				*	move.w #0,15204386	|,
							*| crtc.c:118:     crtc_r12_ptr[6] = 0;          // scroll position X
	move.w #0,15204388				*	move.w #0,15204388	|,
							*| crtc.c:119:     crtc_r12_ptr[7] = 0;          // scroll position Y
	move.w #0,15204390				*	move.w #0,15204390	|,
_?L1:							*.L1:
							*| crtc.c:201: }
	rts						*	rts
_?L5:							*.L5:
							*| crtc.c:39:         crtc_r00_ptr[0] = 0x0045;   // set first
	move.w #69,15204352				*	move.w #69,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| crtc.c:40:         crtc_r00_ptr[1] = 0x0006;
	move.w #6,15204354				*	move.w #6,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| crtc.c:41:         crtc_r00_ptr[2] = 0x000b;
	move.w #11,15204356				*	move.w #11,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| crtc.c:42:         crtc_r00_ptr[3] = 0x003b;
	move.w #59,15204358				*	move.w #59,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| crtc.c:43:         crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| crtc.c:44:         crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| crtc.c:45:         crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| crtc.c:46:         crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| crtc.c:47:         crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| crtc.c:48:         crtc_r20_ptr[0] = 0x311;    // set last
	move.w #785,15204392				*	move.w #785,15204392	|, MEM[(volatile short unsigned int *)15204392B]
	jbra _?L13					*	jra .L13		|
_?L4:							*.L4:
							*| crtc.c:72:   } else if (mode == 1) {
	moveq #1,d1					*	moveq #1,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| mode,
	jbne _?L8					*	jne .L8		|
							*| crtc.c:76:     int current_resolution = crtc_r20_ptr[0] & 0x013;
	move.w 15204392,d0				*	move.w 15204392,%d0	| MEM[(volatile short unsigned int *)15204392B], _6
							*| crtc.c:89:       crtc_r00_ptr[0] = 0x005b;     // set first
	move.w #91,15204352				*	move.w #91,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| crtc.c:90:       crtc_r00_ptr[1] = 0x0009;
	move.w #9,15204354				*	move.w #9,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| crtc.c:91:       crtc_r00_ptr[2] = 0x0011;
	move.w #17,15204356				*	move.w #17,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| crtc.c:92:       crtc_r00_ptr[3] = 0x0051;
	move.w #81,15204358				*	move.w #81,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| crtc.c:93:       crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| crtc.c:94:       crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| crtc.c:95:       crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| crtc.c:96:       crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| crtc.c:97:       crtc_r20_ptr[0] = 0x0315;     // set last, memory mode 3
	move.w #789,15204392				*	move.w #789,15204392	|, MEM[(volatile short unsigned int *)15204392B]
	jbra _?L13					*	jra .L13		|
_?L8:							*.L8:
							*| crtc.c:121:   } else if (mode == 2) {
	moveq #2,d1					*	moveq #2,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| mode,
	jbne _?L9					*	jne .L9		|
							*| crtc.c:124:     int current_resolution = crtc_r20_ptr[0] & 0x013;
	move.w 15204392,d0				*	move.w 15204392,%d0	| MEM[(volatile short unsigned int *)15204392B], _9
							*| crtc.c:137:       crtc_r00_ptr[0] = 0x0089;     // set first
	move.w #137,15204352				*	move.w #137,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| crtc.c:138:       crtc_r00_ptr[1] = 0x000e;
	move.w #14,15204354				*	move.w #14,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| crtc.c:139:       crtc_r00_ptr[2] = 0x001c;
	move.w #28,15204356				*	move.w #28,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| crtc.c:140:       crtc_r00_ptr[3] = 0x007c;
	move.w #124,15204358				*	move.w #124,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| crtc.c:141:       crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| crtc.c:142:       crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| crtc.c:143:       crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| crtc.c:144:       crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| crtc.c:145:       crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| crtc.c:146:       crtc_r20_ptr[0] = 0x0316;     // set last, memory mode 3
	move.w #790,15204392				*	move.w #790,15204392	|, MEM[(volatile short unsigned int *)15204392B]
	jbra _?L13					*	jra .L13		|
_?L9:							*.L9:
							*| crtc.c:170:   } else if (mode == 3) {
	subq.l #3,d0					*	subq.l #3,%d0	|, mode
	jbne _?L1					*	jne .L1		|
							*| crtc.c:173:     crtc_r00_ptr[0] = 0x0089;
	move.w #137,15204352				*	move.w #137,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| crtc.c:174:     crtc_r00_ptr[1] = 0x000e;
	move.w #14,15204354				*	move.w #14,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| crtc.c:175:     crtc_r00_ptr[2] = 0x001c;
	move.w #28,15204356				*	move.w #28,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| crtc.c:176:     crtc_r00_ptr[3] = 0x007c;
	move.w #124,15204358				*	move.w #124,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| crtc.c:177:     crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| crtc.c:178:     crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| crtc.c:179:     crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| crtc.c:180:     crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| crtc.c:181:     crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| crtc.c:183:     crtc_r20_ptr[0] = 0x0716;       // memory mode 7 (for XEiJ only)
	move.w #1814,15204392				*	move.w #1814,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| crtc.c:185:     sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44
	move.l #15261703,a0				*	move.l #15261703,%a0	|, tmp153
	move.b (a0),d0					*	move.b (%a0),%d0	| MEM[(volatile unsigned char *)15261703B], _12
							*| crtc.c:185:     sysp[0] |= 0x02;                // system port for dot clock change - Inside/Out p44
	or.b #2,d0					*	or.b #2,%d0	|, _13
	move.b d0,(a0)					*	move.b %d0,(%a0)	| _13, MEM[(volatile unsigned char *)15261703B]
							*| crtc.c:187:     vdc_r1_ptr[0]   = 7;            // memory mode 7 (for XEiJ only)
	move.w #7,15213568				*	move.w #7,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| crtc.c:189:     scon[1] = 0x000b + 4;
	move.b #15,15403019				*	move.b #15,15403019	|, MEM[(volatile unsigned char *)15403019B]
							*| crtc.c:191:     scon[0] = 0xff;
	move.b #-1,15403018				*	move.b #-1,15403018	|, MEM[(volatile unsigned char *)15403018B]
							*| crtc.c:192:     scon[2] = 0x28;
	move.b #40,15403020				*	move.b #40,15403020	|, MEM[(volatile unsigned char *)15403020B]
							*| crtc.c:193:     scon[3] = 0x11;
	move.b #17,15403021				*	move.b #17,15403021	|, MEM[(volatile unsigned char *)15403021B]
							*| crtc.c:195:     vdc_r2_ptr[0]   = 0x30;         // graphic on (1024x1024)
	move.w #48,15214080				*	move.w #48,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| crtc.c:197:     crtc_r12_ptr[0] = 0;            // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| crtc.c:198:     crtc_r12_ptr[1] = 0;            // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
							*| crtc.c:201: }
	jbra _?L1					*	jra .L1		|
							*	.size	initialize_screen, .-initialize_screen
	.align	2					*	.align	2
	.globl	_initialize_palette			*	.globl	initialize_palette
							*	.type	initialize_palette, @function
_initialize_palette:					*initialize_palette:
							*| crtc.c:208:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	moveq #1,d0					*	moveq #1,%d0	|, i
							*| crtc.c:206:   volatile unsigned short* palette_ptr  = (unsigned short*)PALETTE;
	move.l #15212544,a0				*	move.l #15212544,%a0	|, palette_ptr
_?L15:							*.L15:
							*| crtc.c:209:     *palette_ptr++ = (unsigned short)i;
	move.w d0,(a0)					*	move.w %d0,(%a0)	| i, *palette_ptr_13
	move.l a0,a1					*	move.l %a0,%a1	| palette_ptr, palette_ptr
							*| crtc.c:210:     *palette_ptr++ = (unsigned short)i;
	addq.l #4,a0					*	addq.l #4,%a0	|, palette_ptr
							*| crtc.c:210:     *palette_ptr++ = (unsigned short)i;
	move.w d0,2(a1)					*	move.w %d0,2(%a1)	| i, MEM[(volatile short unsigned int *)palette_ptr_1 + 2B]
							*| crtc.c:208:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	add.l #514,d0					*	add.l #514,%d0	|, i
							*| crtc.c:208:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	cmp.l #15213056,a0				*	cmp.l #15213056,%a0	|, palette_ptr
	jbne _?L15					*	jne .L15		|
							*| crtc.c:213: }
	rts						*	rts
							*	.size	initialize_palette, .-initialize_palette
							*	.ident	"GCC: (GNU) 12.2.0"
