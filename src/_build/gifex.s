* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"gifex.c"				*	.file	"gifex.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -finput-charset=cp932 -fexec-charset=cp932
	.text						*	.text
	.data						*	.section	.rodata.str1.1,"aMS",@progbits,1
_?LC0:							*.LC0:
	.dc.b $47,$49,$46,$45,$58,$20,$2d,$20
	.dc.b $47,$49,$46,$20,$69,$6d,$61,$67
	.dc.b $65,$20,$6c,$6f,$61,$64,$65,$72
	.dc.b $20,$77,$69,$74,$68,$20,$58,$45
	.dc.b $69,$4a,$20,$67,$72,$61,$70,$68
	.dc.b $69,$63,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e,$20,$73,$75,$70
	.dc.b $70,$6f,$72,$74,$20,$76,$65,$72
	.dc.b $73,$69,$6f,$6e,$20,$30,$2e,$31
	.dc.b $2e,$30,$20,$62,$79,$20,$74,$61
	.dc.b $6e,$74,$61,$6e,$20,$32,$30,$32
	.dc.b $32
	.dc.b $00					*	.string	"GIFEX - GIF image loader with XEiJ graphic extension support version 0.1.0 by tantan 2022"
_?LC1:							*.LC1:
	.dc.b $75,$73,$61,$67,$65,$3a,$20,$67
	.dc.b $69,$66,$65,$78,$2e,$78,$20,$5b
	.dc.b $6f,$70,$74,$69,$6f,$6e,$73,$5d
	.dc.b $20,$3c,$69,$6d,$61,$67,$65,$2e
	.dc.b $67,$69,$66,$3e
	.dc.b $00					*	.string	"usage: gifex.x [options] <image.gif>"
_?LC2:							*.LC2:
	.dc.b $6f,$70,$74,$69,$6f,$6e,$73,$3a
	.dc.b $00					*	.string	"options:"
_?LC3:							*.LC3:
	.dc.b $20,$20,$20,$2d,$63,$20,$2e,$2e
	.dc.b $2e,$20,$63,$6c,$65,$61,$72,$20
	.dc.b $67,$72,$61,$70,$68,$69,$63,$20
	.dc.b $73,$63,$72,$65,$65,$6e
	.dc.b $00					*	.string	"   -c ... clear graphic screen"
_?LC4:							*.LC4:
	.dc.b $20,$20,$20,$2d,$73,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$73,$63,$72
	.dc.b $65,$65,$6e,$20,$6d,$6f,$64,$65
	.dc.b $20,$28,$30,$3a,$33,$38,$34,$78
	.dc.b $32,$35,$36,$2c,$20,$31,$3a,$35
	.dc.b $31,$32,$78,$35,$31,$32,$2c,$20
	.dc.b $32,$3a,$37,$36,$38,$78,$35,$31
	.dc.b $32,$20,$28,$58,$45,$69,$4a,$20
	.dc.b $6f,$6e,$6c,$79,$29
	.dc.b $00					*	.string	"   -s<n> ... screen mode (0:384x256, 1:512x512, 2:768x512 (XEiJ only)"
_?LC5:							*.LC5:
	.dc.b $20,$20,$20,$2d,$65,$20,$2e,$2e
	.dc.b $2e,$20,$75,$73,$65,$20,$65,$78
	.dc.b $74,$65,$6e,$64,$65,$64,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$6d
	.dc.b $6f,$64,$65,$20,$66,$6f,$72,$20
	.dc.b $58,$45,$69,$4a,$20,$28,$73,$61
	.dc.b $6d,$65,$20,$61,$73,$20,$2d,$73
	.dc.b $32,$29
	.dc.b $00					*	.string	"   -e ... use extended graphic mode for XEiJ (same as -s2)"
_?LC6:							*.LC6:
	.dc.b $20,$20,$20,$2d,$68,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$74
	.dc.b $68,$69,$73,$20,$68,$65,$6c,$70
	.dc.b $20,$6d,$65,$73,$73,$61,$67,$65
	.dc.b $00					*	.string	"   -h ... show this help message"
_?LC7:							*.LC7:
	.dc.b $20,$20,$20,$2d,$69,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$66
	.dc.b $69,$6c,$65,$20,$69,$6e,$66,$6f
	.dc.b $72,$6d,$61,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -i ... show file information"
_?LC8:							*.LC8:
	.dc.b $20,$20,$20,$2d,$6e,$20,$2e,$2e
	.dc.b $2e,$20,$69,$6d,$61,$67,$65,$20
	.dc.b $63,$65,$6e,$74,$65,$72,$69,$6e
	.dc.b $67
	.dc.b $00					*	.string	"   -n ... image centering"
_?LC9:							*.LC9:
	.dc.b $20,$20,$20,$2d,$6b,$20,$2e,$2e
	.dc.b $2e,$20,$77,$61,$69,$74,$20,$6b
	.dc.b $65,$79,$20,$69,$6e,$70,$75,$74
	.dc.b $00					*	.string	"   -k ... wait key input"
_?LC10:							*.LC10:
	.dc.b $20,$20,$20,$2d,$6f,$3c,$78,$2c
	.dc.b $79,$3e,$20,$2e,$2e,$2e,$20,$64
	.dc.b $69,$73,$70,$6c,$61,$79,$20,$70
	.dc.b $6f,$73,$69,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -o<x,y> ... display position"
_?LC11:							*.LC11:
	.dc.b $20,$20,$20,$2d,$76,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$72,$69
	.dc.b $67,$68,$74,$6e,$65,$73,$73,$20
	.dc.b $28,$30,$2d,$31,$30,$30,$29
	.dc.b $00					*	.string	"   -v<n> ... brightness (0-100)"
_?LC12:							*.LC12:
	.dc.b $20,$20,$20,$2d,$62,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$75,$66
	.dc.b $66,$65,$72,$20,$6d,$65,$6d,$6f
	.dc.b $72,$79,$20,$73,$69,$7a,$65,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$5b,$31
	.dc.b $2d,$31,$36,$5d,$20,$28,$64,$65
	.dc.b $66,$61,$75,$6c,$74,$3a,$38,$29
	.dc.b $00					*	.string	"   -b<n> ... buffer memory size factor[1-16] (default:8)"
	.text						*	.text
	.align	2					*	.align	2
							*	.type	show_help_message, @function
_show_help_message:					*show_help_message:
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| gifex.c:1107:   printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1108:   printf("usage: gifex.x [options] <image.gif>\n");
	pea _?LC1					*	pea .LC1		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1109:   printf("options:\n");
	pea _?LC2					*	pea .LC2		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1110:   printf("   -c ... clear graphic screen\n");
	pea _?LC3					*	pea .LC3		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1111:   printf("   -s<n> ... screen mode (0:384x256, 1:512x512, 2:768x512 (XEiJ only)\n");
	pea _?LC4					*	pea .LC4		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1112:   printf("   -e ... use extended graphic mode for XEiJ (same as -s2)\n");
	pea _?LC5					*	pea .LC5		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1113:   printf("   -h ... show this help message\n");
	pea _?LC6					*	pea .LC6		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1114:   printf("   -i ... show file information\n");
	pea _?LC7					*	pea .LC7		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1115:   printf("   -n ... image centering\n");
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1116:   printf("   -k ... wait key input\n");
	pea _?LC9					*	pea .LC9		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1117:   printf("   -o<x,y> ... display position\n");
	pea _?LC10					*	pea .LC10		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1118:   printf("   -v<n> ... brightness (0-100)\n");
	pea _?LC11					*	pea .LC11		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1119:   printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
	pea _?LC12					*	pea .LC12		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1120: }
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	rts						*	rts
							*	.size	show_help_message, .-show_help_message
	.align	2					*	.align	2
							*	.type	get_ushort_file_buffer, @function
_get_ushort_file_buffer:				*get_ushort_file_buffer:
	movem.l d3/a3/a4,-(sp)				*	movem.l #4120,-(%sp)	|,
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| file_buffer_ptr, file_buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 24(sp),d0				*	move.l 24(%sp),%d0	| fp, fp
							*| gifex.c:180:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),d3					*	move.l (%a3),%d3	| *file_buffer_ofs_ptr_30(D), ofs
							*| gifex.c:183:   if (ofs < ( g_input_buffer_size - 1)) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.44_1
	move.l d1,a1					*	move.l %d1,%a1	| g_input_buffer_size.44_1, _2
	subq.l #1,a1					*	subq.l #1,%a1	|, _2
							*| gifex.c:183:   if (ofs < ( g_input_buffer_size - 1)) {
	cmp.l a1,d3					*	cmp.l %a1,%d3	| _2, ofs
	jbge _?L3					*	jge .L3		|
							*| gifex.c:185:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_8
	move.b 1(a4,d3.l),d0				*	move.b 1(%a4,%d3.l),%d0	| *_8, *_8
							*| gifex.c:185:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d0					*	lsl.w #8,%d0	|, tmp59
							*| gifex.c:185:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *_4
	move.b (a4,d3.l),d1				*	move.b (%a4,%d3.l),%d1	| *_4, *_4
							*| gifex.c:185:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| *_4, <retval>
							*| gifex.c:186:     ofs += 2;
	addq.l #2,d3					*	addq.l #2,%d3	|, ofs
_?L4:							*.L4:
							*| gifex.c:199:   *file_buffer_ofs_ptr = ofs;
	move.l d3,(a3)					*	move.l %d3,(%a3)	| ofs, *file_buffer_ofs_ptr_30(D)
							*| gifex.c:202: }
	movem.l (sp)+,d3/a3/a4				*	movem.l (%sp)+,#6152	|,
	rts						*	rts
_?L3:							*.L3:
	lea _fread,a0					*	lea fread,%a0	|, tmp71
							*| gifex.c:187:   } else if (ofs < g_input_buffer_size) {
	cmp.l d1,d3					*	cmp.l %d1,%d3	| g_input_buffer_size.44_1, ofs
	jbge _?L5					*	jge .L5		|
							*| gifex.c:189:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size - 1, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l a1,-(sp)					*	move.l %a1,-(%sp)	| _2,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
							*| gifex.c:190:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_14
	move.b (a4,d3.l),d0				*	move.b (%a4,%d3.l),%d0	| *_14, *_14
							*| gifex.c:190:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *file_buffer_ptr_32(D)
	move.b (a4),d1					*	move.b (%a4),%d1	| *file_buffer_ptr_32(D), *file_buffer_ptr_32(D)
							*| gifex.c:190:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d1					*	lsl.w #8,%d1	|, tmp64
							*| gifex.c:190:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| tmp64, <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:191:     ofs = 1;
	moveq #1,d3					*	moveq #1,%d3	|, ofs
	jbra _?L4					*	jra .L4		|
_?L5:							*.L5:
							*| gifex.c:194:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.44_1,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
	moveq #0,d0					*	moveq #0,%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)]
	move.b (a4),d0					*	move.b (%a4),%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)], MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)]
	lsl.l #8,d0					*	lsl.l #8,%d0	|, tmp67
	or.b 1(a4),d0					*	or.b 1(%a4),%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)], tmp69
	ror.w #8,d0					*	ror.w #8,%d0	|, <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:196:     ofs = 2;
	moveq #2,d3					*	moveq #2,%d3	|, ofs
	jbra _?L4					*	jra .L4		|
							*	.size	get_ushort_file_buffer, .-get_ushort_file_buffer
	.align	2					*	.align	2
							*	.type	get_uchar_file_buffer, @function
_get_uchar_file_buffer:					*get_uchar_file_buffer:
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
	move.l 12(sp),a3				*	move.l 12(%sp),%a3	| file_buffer_ptr, file_buffer_ptr
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
							*| gifex.c:157:   int ofs = *file_buffer_ofs_ptr;
	move.l (a4),d0					*	move.l (%a4),%d0	| *file_buffer_ofs_ptr_9(D), ofs
							*| gifex.c:160:   if (ofs < g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.52_1
							*| gifex.c:160:   if (ofs < g_input_buffer_size) {
	cmp.l d1,d0					*	cmp.l %d1,%d0	| g_input_buffer_size.52_1, ofs
	jbge _?L7					*	jge .L7		|
							*| gifex.c:162:      uc = file_buffer_ptr[ofs++];
	move.l d0,d1					*	move.l %d0,%d1	| ofs, ofs
	addq.l #1,d1					*	addq.l #1,%d1	|, ofs
							*| gifex.c:162:      uc = file_buffer_ptr[ofs++];
	move.b (a3,d0.l),d0				*	move.b (%a3,%d0.l),%d0	| *_3, <retval>
_?L8:							*.L8:
							*| gifex.c:170:   *file_buffer_ofs_ptr = ofs;
	move.l d1,(a4)					*	move.l %d1,(%a4)	| ofs, *file_buffer_ofs_ptr_9(D)
							*| gifex.c:173: }
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	move.l (sp)+,a4					*	move.l (%sp)+,%a4	|,
	rts						*	rts
_?L7:							*.L7:
							*| gifex.c:164:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l 20(sp),-(sp)				*	move.l 20(%sp),-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.52_1,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:166:     uc = file_buffer_ptr[0];
	move.b (a3),d0					*	move.b (%a3),%d0	| *file_buffer_ptr_11(D), <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:167:     ofs = 1;
	moveq #1,d1					*	moveq #1,%d1	|, ofs
	jbra _?L8					*	jra .L8		|
							*	.size	get_uchar_file_buffer, .-get_uchar_file_buffer
	.align	2					*	.align	2
							*	.type	skip_file_buffer, @function
_skip_file_buffer:					*skip_file_buffer:
	movem.l d3/d4/a3,-(sp)				*	movem.l #6160,-(%sp)	|,
	move.l 16(sp),d2				*	move.l 16(%sp),%d2	| file_buffer_ptr, file_buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 24(sp),d3				*	move.l 24(%sp),%d3	| len, len
	move.l 28(sp),a2				*	move.l 28(%sp),%a2	| fp, fp
							*| gifex.c:237:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),a0					*	move.l (%a3),%a0	| *file_buffer_ofs_ptr_8(D), ofs
							*| gifex.c:239:   if ((ofs + len) <= g_input_buffer_size) {
	move.l a0,d0					*	move.l %a0,%d0	| ofs, _1
	add.l d3,d0					*	add.l %d3,%d0	| len, _1
							*| gifex.c:239:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.77_2
							*| gifex.c:239:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _1, g_input_buffer_size.77_2
	jbge _?L10					*	jge .L10		|
	lea _fread,a1					*	lea fread,%a1	|, tmp42
							*| gifex.c:242:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d1,a0					*	cmp.l %d1,%a0	| g_input_buffer_size.77_2, ofs
	jblt _?L11					*	jlt .L11		|
							*| gifex.c:244:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.77_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:245:     ofs = len;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
_?L10:							*.L10:
							*| gifex.c:253:   *file_buffer_ofs_ptr = ofs;
	move.l d0,(a3)					*	move.l %d0,(%a3)	| _1, *file_buffer_ofs_ptr_8(D)
							*| gifex.c:254: }
	movem.l (sp)+,d3/d4/a3				*	movem.l (%sp)+,#2072	|,
	rts						*	rts
_?L11:							*.L11:
							*| gifex.c:248:     int available = g_input_buffer_size - ofs;
	move.l d1,d4					*	move.l %d1,%d4	| g_input_buffer_size.77_2, available
	sub.l a0,d4					*	sub.l %a0,%d4	| ofs, available
							*| gifex.c:249:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.77_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
							*| gifex.c:250:     ofs = len - available;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
	sub.l d4,d0					*	sub.l %d4,%d0	| available, _1
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L10					*	jra .L10		|
							*	.size	skip_file_buffer, .-skip_file_buffer
	.align	2					*	.align	2
							*	.type	malloc__, @function
_malloc__:						*malloc__:
							*| gifex.c:498:   int addr = MALLOC(size);
	move.l 4(sp),-(sp)				*	move.l 4(%sp),-(%sp)	| size,
	jbsr _MALLOC					*	jsr MALLOC		|
							*| gifex.c:499:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbls _?L13					*	jls .L13		|
	moveq #0,d0					*	moveq #0,%d0	| addr
_?L13:							*.L13:
							*| gifex.c:500: }
	rts						*	rts
							*	.size	malloc__, .-malloc__
	.align	2					*	.align	2
							*	.type	memcpy_file_buffer, @function
_memcpy_file_buffer:					*memcpy_file_buffer:
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)		*	movem.l #7710,-(%sp)	|,
	move.l 36(sp),a4				*	move.l 36(%sp),%a4	| dest_ptr, dest_ptr
	move.l 40(sp),a3				*	move.l 40(%sp),%a3	| file_buffer_ptr, file_buffer_ptr
	move.l 44(sp),a5				*	move.l 44(%sp),%a5	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 48(sp),d5				*	move.l 48(%sp),%d5	| len, len
	move.l 52(sp),d6				*	move.l 52(%sp),%d6	| fp, fp
							*| gifex.c:209:   int ofs = *file_buffer_ofs_ptr;
	move.l (a5),d1					*	move.l (%a5),%d1	| *file_buffer_ofs_ptr_19(D), ofs
							*| gifex.c:211:   if ((ofs + len) <= g_input_buffer_size) {
	move.l d1,d4					*	move.l %d1,%d4	| ofs, _13
	add.l d5,d4					*	add.l %d5,%d4	| len, _13
							*| gifex.c:211:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d0			*	move.l g_input_buffer_size,%d0	| g_input_buffer_size, g_input_buffer_size.31_2
	lea _memcpy,a6					*	lea memcpy,%a6	|, tmp77
							*| gifex.c:211:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d4,d0					*	cmp.l %d4,%d0	| _13, g_input_buffer_size.31_2
	jblt _?L16					*	jlt .L16		|
							*| gifex.c:213:     memcpy(dest_ptr, file_buffer_ptr + ofs, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L17:							*.L17:
							*| gifex.c:229:   *file_buffer_ofs_ptr = ofs;
	move.l d4,(a5)					*	move.l %d4,(%a5)	| _13, *file_buffer_ofs_ptr_19(D)
							*| gifex.c:230: }
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6		*	movem.l (%sp)+,#30840	|,
	rts						*	rts
_?L16:							*.L16:
	move.l #_fread,d4				*	move.l #fread,%d4	|, tmp78
							*| gifex.c:215:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| g_input_buffer_size.31_2, ofs
	jblt _?L18					*	jlt .L18		|
							*| gifex.c:217:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| g_input_buffer_size.31_2,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:218:     memcpy(dest_ptr, file_buffer_ptr, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
							*| gifex.c:219:     ofs = len;
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	jbra _?L17					*	jra .L17		|
_?L18:							*.L18:
							*| gifex.c:222:     int available = g_input_buffer_size - ofs;
	move.l d0,d3					*	move.l %d0,%d3	| g_input_buffer_size.31_2, available
	sub.l d1,d3					*	sub.l %d1,%d3	| ofs, available
							*| gifex.c:223:     memcpy(dest_ptr, file_buffer_ptr + ofs, available);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| available,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
							*| gifex.c:224:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:225:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	sub.l d3,d4					*	sub.l %d3,%d4	| available, _13
							*| gifex.c:225:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| _13,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	pea (a4,d3.l)					*	pea (%a4,%d3.l)		|
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	jbra _?L17					*	jra .L17		|
							*	.size	memcpy_file_buffer, .-memcpy_file_buffer
	.align	2					*	.align	2
							*	.type	free__, @function
_free__:						*free__:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| ptr, ptr
							*| gifex.c:504:   if (ptr == NULL) return;
	jbeq _?L19					*	jeq .L19		|
							*| gifex.c:507: }
							*| gifex.c:506:   MFREE(addr);
	jbra _MFREE					*	jra MFREE		|
_?L19:							*.L19:
							*| gifex.c:507: }
	rts						*	rts
							*	.size	free__, .-free__
	.globl	___mulsi3				*	.globl	__mulsi3
	.align	2					*	.align	2
							*	.type	output_pixel, @function
_output_pixel:						*output_pixel:
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	*	movem.l #7966,-(%sp)	|,
	move.l 40(sp),d7				*	move.l 40(%sp),%d7	| left, left
	move.l 44(sp),d3				*	move.l 44(%sp),%d3	| top, top
	move.l 56(sp),a4				*	move.l 56(%sp),%a4	| buffer, buffer
							*| gifex.c:514:   unsigned char* buffer_end = buffer + buffer_size;
	move.l a4,d5					*	move.l %a4,%d5	| buffer, buffer_end
	add.l 60(sp),d5					*	add.l 60(%sp),%d5	| buffer_size, buffer_end
							*| gifex.c:515:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	lea ___mulsi3,a5				*	lea __mulsi3,%a5	|, tmp81
	move.l _g_actual_width,-(sp)			*	move.l g_actual_width,-(%sp)	| g_actual_width,
	move.l d3,d0					*	move.l %d3,%d0	| top,
	add.l _g_start_y,d0				*	add.l g_start_y,%d0	| g_start_y,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	|,
	jbsr (a5)					*	jsr (%a5)		| tmp81
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:515:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	move.l d7,d1					*	move.l %d7,%d1	| left, tmp83
	add.l _g_start_x,d1				*	add.l g_start_x,%d1	| g_start_x, tmp83
							*| gifex.c:515:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	move.l d0,a3					*	move.l %d0,%a3	| tmp97, tmp84
	add.l d1,a3					*	add.l %d1,%a3	| tmp83, tmp84
	add.l a3,a3					*	add.l %a3,%a3	| tmp84, tmp85
							*| gifex.c:515:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	add.l #12582912,a3				*	add.l #12582912,%a3	|, gvram
							*| gifex.c:525:   ssp = SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr _SUPER					*	jsr SUPER		|
							*| gifex.c:531:     if ((g_start_x + left + x) < g_actual_width) {
	add.l _g_start_x,d7				*	add.l g_start_x,%d7	| g_start_x, _65
							*| gifex.c:531:     if ((g_start_x + left + x) < g_actual_width) {
	move.l _g_actual_width,d4			*	move.l g_actual_width,%d4	| g_actual_width, g_actual_width.90_15
							*| gifex.c:546:       if ((g_start_y + top + y) >= g_actual_height) break;  // Y cropping
	add.l _g_start_y,d3				*	add.l g_start_y,%d3	| g_start_y, _22
							*| gifex.c:546:       if ((g_start_y + top + y) >= g_actual_height) break;  // Y cropping
	move.l _g_actual_height,d6			*	move.l g_actual_height,%d6	| g_actual_height, g_actual_height.93_24
							*| gifex.c:527:   while (buffer < buffer_end) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| gifex.c:517:   int y = 0;
	sub.l a6,a6					*	sub.l %a6,%a6	| y
_?L30:							*.L30:
							*| gifex.c:544:       x = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
_?L22:							*.L22:
							*| gifex.c:527:   while (buffer < buffer_end) {
	cmp.l a4,d5					*	cmp.l %a4,%d5	| buffer, buffer_end
	jbhi _?L29					*	jhi .L29		|
_?L21:							*.L21:
							*| gifex.c:554: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	rts						*	rts
_?L29:							*.L29:
							*| gifex.c:529:     unsigned char palette_code = *buffer++;
	addq.l #1,a4					*	addq.l #1,%a4	|, buffer
							*| gifex.c:531:     if ((g_start_x + left + x) < g_actual_width) {
	move.l d7,d0					*	move.l %d7,%d0	| _65, tmp87
	add.l d1,d0					*	add.l %d1,%d0	| x, tmp87
							*| gifex.c:531:     if ((g_start_x + left + x) < g_actual_width) {
	cmp.l d0,d4					*	cmp.l %d0,%d4	| tmp87, g_actual_width.90_15
	jble _?L23					*	jle .L23		|
							*| gifex.c:529:     unsigned char palette_code = *buffer++;
	move.b -1(a4),d0				*	move.b -1(%a4),%d0	| MEM[(unsigned char *)buffer_50 + 4294967295B], palette_code
							*| gifex.c:535:         gvram++;
	lea (2,a3),a1					*	lea (2,%a3),%a1	|, gvram, _68
							*| gifex.c:532:       if (transparent_index < 0 || palette_code != transparent_index) {
	tst.l 68(sp)					*	tst.l 68(%sp)	| transparent_index
	jblt _?L24					*	jlt .L24		|
							*| gifex.c:532:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #0,d2					*	moveq #0,%d2	| palette_code
	move.b d0,d2					*	move.b %d0,%d2	| palette_code, palette_code
							*| gifex.c:532:       if (transparent_index < 0 || palette_code != transparent_index) {
	cmp.l 68(sp),d2					*	cmp.l 68(%sp),%d2	| transparent_index, palette_code
	jbeq _?L25					*	jeq .L25		|
_?L24:							*.L24:
							*| gifex.c:533:         *gvram++ = palette[ palette_code ];
	and.l #255,d0					*	and.l #255,%d0	|, palette_code
	add.l d0,d0					*	add.l %d0,%d0	| palette_code, tmp91
							*| gifex.c:533:         *gvram++ = palette[ palette_code ];
	move.l 64(sp),a0				*	move.l 64(%sp),%a0	| palette,
	move.w (a0,d0.l),(a3)				*	move.w (%a0,%d0.l),(%a3)	| *_19, *gvram_36
_?L25:							*.L25:
							*| gifex.c:533:         *gvram++ = palette[ palette_code ];
	move.l a1,a3					*	move.l %a1,%a3	| _68, gvram
_?L23:							*.L23:
							*| gifex.c:540:     x++;
	addq.l #1,d1					*	addq.l #1,%d1	|, x
							*| gifex.c:543:     if (x >= width) {
	cmp.l 48(sp),d1					*	cmp.l 48(%sp),%d1	| width, x
	jblt _?L22					*	jlt .L22		|
							*| gifex.c:545:       if (++y >= height) break;
	addq.l #1,a6					*	addq.l #1,%a6	|, y
	cmp.l 52(sp),a6					*	cmp.l 52(%sp),%a6	| height, y
	jbge _?L21					*	jge .L21		|
							*| gifex.c:546:       if ((g_start_y + top + y) >= g_actual_height) break;  // Y cropping
	move.l d3,d0					*	move.l %d3,%d0	| _22, _23
	add.l a6,d0					*	add.l %a6,%d0	| y, _23
							*| gifex.c:546:       if ((g_start_y + top + y) >= g_actual_height) break;  // Y cropping
	cmp.l d0,d6					*	cmp.l %d0,%d6	| _23, g_actual_height.93_24
	jble _?L21					*	jle .L21		|
							*| gifex.c:547:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top + y) + (g_start_x + left);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _23,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| g_actual_width.90_15,
	jbsr (a5)					*	jsr (%a5)		| tmp81
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:547:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top + y) + (g_start_x + left);
	move.l d0,a3					*	move.l %d0,%a3	| tmp98, tmp94
	add.l d7,a3					*	add.l %d7,%a3	| _65, tmp94
	add.l a3,a3					*	add.l %a3,%a3	| tmp94, tmp95
							*| gifex.c:547:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top + y) + (g_start_x + left);
	add.l #12582912,a3				*	add.l #12582912,%a3	|, gvram
	jbra _?L30					*	jra .L30		|
							*	.size	output_pixel, .-output_pixel
	.data						*	.section	.rodata.str1.1
_?LC13:							*.LC13:
	.dc.b $79,$65,$73
	.dc.b $00					*	.string	"yes"
_?LC14:							*.LC14:
	.dc.b $6e,$6f
	.dc.b $00					*	.string	"no"
_?LC15:							*.LC15:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6c,$61,$72,$67,$65
	.dc.b $20,$6d,$65,$6d,$6f,$72,$79,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$2e
	.dc.b $00					*	.string	"error: too large memory factor."
_?LC16:							*.LC16:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$6f
	.dc.b $70,$74,$69,$6f,$6e,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown option (%s).\n"
_?LC17:							*.LC17:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6e
	.dc.b $6f,$20,$69,$6e,$70,$75,$74,$20
	.dc.b $66,$69,$6c,$65,$2e
	.dc.b $00					*	.string	"error: no input file."
_?LC18:							*.LC18:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: file read error (%s).\n"
_?LC19:							*.LC19:
	.dc.b $72,$62
	.dc.b $00					*	.string	"rb"
_?LC20:							*.LC20:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$20,$69,$6e,$70,$75,$74
	.dc.b $20,$66,$69,$6c,$65,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: cannot open input file (%s).\n"
_?LC21:							*.LC21:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$66,$69,$6c,$65,$20,$62
	.dc.b $75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for file buffer."
_?LC22:							*.LC22:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: file read error."
_?LC23:							*.LC23:
	.dc.b $47,$49,$46
	.dc.b $00					*	.string	"GIF"
_?LC24:							*.LC24:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $69,$67,$6e,$61,$74,$75,$72,$65
	.dc.b $20,$65,$72,$72,$6f,$72,$2e,$20
	.dc.b $6e,$6f,$74,$20,$61,$20,$47,$49
	.dc.b $46,$20,$66,$69,$6c,$65,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: signature error. not a GIF file (%s).\n"
_?LC25:							*.LC25:
	.dc.b $38,$39,$61
	.dc.b $00					*	.string	"89a"
_?LC26:							*.LC26:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$73,$75,$70,$70,$6f,$72,$74
	.dc.b $65,$64,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unsupported GIF version (%s).\n"
_?LC27:							*.LC27:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$6e,$61,$6d,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"     file name: %s\n"
_?LC28:							*.LC28:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     file size: %d\n"
_?LC29:							*.LC29:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$74,$69,$6d,$65,$3a,$20
	.dc.b $25,$30,$34,$64,$2d,$25,$30,$32
	.dc.b $64,$2d,$25,$30,$32,$64,$20,$25
	.dc.b $30,$32,$64,$3a,$25,$30,$32,$64
	.dc.b $3a,$25,$30,$32,$64,$0a
	.dc.b $00					*	.string	"     file time: %04d-%02d-%02d %02d:%02d:%02d\n"
_?LC30:							*.LC30:
	.dc.b $20,$20,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"   GIF version: %s\n"
_?LC31:							*.LC31:
	.dc.b $20,$20,$73,$63,$72,$65,$65,$6e
	.dc.b $20,$77,$69,$64,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  screen width: %d\n"
_?LC32:							*.LC32:
	.dc.b $20,$73,$63,$72,$65,$65,$6e,$20
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	" screen height: %d\n"
_?LC33:							*.LC33:
	.dc.b $20,$20,$20,$20,$20,$62,$69,$74
	.dc.b $20,$64,$65,$70,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     bit depth: %d\n"
_?LC34:							*.LC34:
	.dc.b $20,$47,$43,$54,$20,$61,$76,$61
	.dc.b $69,$6c,$61,$62,$6c,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	" GCT available: %s\n"
_?LC35:							*.LC35:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$6f,$72,$74,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"      GCT sort: %s\n"
_?LC36:							*.LC36:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"      GCT size: %d\n"
_?LC37:							*.LC37:
	.dc.b $42,$47,$20,$63,$6f,$6c,$6f,$72
	.dc.b $20,$69,$6e,$64,$65,$78,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"BG color index: %d\n"
_?LC38:							*.LC38:
	.dc.b $20,$20,$61,$73,$70,$65,$63,$74
	.dc.b $20,$72,$61,$74,$69,$6f,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  aspect ratio: %d\n"
	.globl	___divsi3				*	.globl	__divsi3
_?LC39:							*.LC39:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$69,$6e,$66,$6c,$61,$74
	.dc.b $65,$20,$62,$75,$66,$66,$65,$72
	.dc.b $2e
	.dc.b $00					*	.string	"error: cannot allocate memory for inflate buffer."
_?LC40:							*.LC40:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$69,$6f,$6e
	.dc.b $20,$66,$61,$69,$6c,$75,$72,$65
	.dc.b $2e
	.dc.b $00					*	.string	"error: memory allocation failure."
_?LC41:							*.LC41:
	.dc.b $64,$65,$63,$6f,$64,$65,$64,$20
	.dc.b $66,$72,$61,$6d,$65,$20,$25,$64
	.dc.b $0a
	.dc.b $00					*	.string	"decoded frame %d\n"
_?LC42:							*.LC42:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$63
	.dc.b $6f,$6e,$74,$72,$6f,$6c,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: graphic control extension read error."
_?LC43:							*.LC43:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $6f,$6d,$6d,$65,$6e,$74,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: comment extension read error."
_?LC44:							*.LC44:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$70
	.dc.b $6c,$61,$69,$6e,$20,$74,$65,$78
	.dc.b $74,$20,$65,$78,$74,$65,$6e,$73
	.dc.b $69,$6f,$6e,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: plain text extension read error."
_?LC45:							*.LC45:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$61
	.dc.b $70,$70,$6c,$69,$63,$61,$74,$69
	.dc.b $6f,$6e,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e,$20,$72,$65,$61
	.dc.b $64,$20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: application extension read error."
_?LC46:							*.LC46:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC47:							*.LC47:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$62
	.dc.b $6c,$6f,$63,$6b,$20,$28,$30,$78
	.dc.b $25,$30,$32,$58,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown block (0x%02X).\n"
	.text						*	.section	.text.startup,"ax",@progbits
	.align	2					*	.align	2
	.xref __main	* workaround for libc.
	.globl	_main					*	.globl	main
							*	.type	main, @function
_main:							*main:
	link.w a6,#-188					*	link.w %fp,#-188	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d4					*	move.l 8(%fp),%d4	| argc, argc
							*| gifex.c:1130:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L32					*	jlt .L32		|
							*| gifex.c:1131:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L33:							*.L33:
							*| gifex.c:1132:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L31					*	jra .L31		|
_?L32:							*.L32:
	move.l 12(a6),a4				*	move.l 12(%fp),%a4	| argv, ivtmp.247
	addq.l #4,a4					*	addq.l #4,%a4	|, ivtmp.247
							*| gifex.c:1135:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| gifex.c:1127:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L38,a5				*	move.l #.L38,%a5	|, tmp908
_?L50:							*.L50:
							*| gifex.c:1136:     if (argv[i][0] == '-') {
	move.l (a4)+,a0					*	move.l (%a4)+,%a0	| MEM[(char * *)_284], _4
							*| gifex.c:1136:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L125					*	jne .L125		|
							*| gifex.c:1137:       if (argv[i][1] == 'c') {
	move.b 1(a0),d1					*	move.b 1(%a0),%d1	| MEM[(char *)_4 + 1B], _6
							*| gifex.c:1137:       if (argv[i][1] == 'c') {
	cmp.b #99,d1					*	cmp.b #99,%d1	|, _6
	jbne _?L35					*	jne .L35		|
							*| gifex.c:1138:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L34:							*.L34:
							*| gifex.c:1135:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| gifex.c:1135:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L50					*	jne .L50		|
							*| gifex.c:1180:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L51					*	jne .L51		|
							*| gifex.c:1181:     printf("error: no input file.\n");
	pea _?LC17					*	pea .LC17		|
	jbra _?L169					*	jra .L169		|
_?L35:							*.L35:
	move.b d1,d0					*	move.b %d1,%d0	| _6, tmp332
	add.b #-98,d0					*	add.b #-98,%d0	|, tmp332
	cmp.b #20,d0					*	cmp.b #20,%d0	|, tmp332
	jbhi _?L36					*	jhi .L36		|
	and.l #255,d0					*	and.l #255,%d0	|, tmp333
	add.l d0,d0					*	add.l %d0,%d0	| tmp336
	move.w (a5,d0.l),d0				*	move.w (%a5,%d0.l),%d0	|, tmp337
	jmp 2(pc,d0.w)					*	jmp %pc@(2,%d0:w)	| tmp337
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&21
_?L38:							*.L38:
	.dc.w _?L45-_?L38				*	.word .L45-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L44-_?L38				*	.word .L44-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L43-_?L38				*	.word .L43-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L42-_?L38				*	.word .L42-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L41-_?L38				*	.word .L41-.L38
	.dc.w _?L40-_?L38				*	.word .L40-.L38
	.dc.w _?L39-_?L38				*	.word .L39-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L36-_?L38				*	.word .L36-.L38
	.dc.w _?L37-_?L38				*	.word .L37-.L38
_?L44:							*.L44:
							*| gifex.c:1140:         g_extended_graphic_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_extended_graphic_mode		*	move.l %d2,g_extended_graphic_mode	|, g_extended_graphic_mode
	jbra _?L34					*	jra .L34		|
_?L43:							*.L43:
							*| gifex.c:1142:         g_information_mode = 1;
	moveq #1,d6					*	moveq #1,%d6	|,
	move.l d6,_g_information_mode			*	move.l %d6,g_information_mode	|, g_information_mode
	jbra _?L34					*	jra .L34		|
_?L40:							*.L40:
							*| gifex.c:1144:         g_centering_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_centering_mode			*	move.l %d0,g_centering_mode	|, g_centering_mode
	jbra _?L34					*	jra .L34		|
_?L42:							*.L42:
							*| gifex.c:1146:         g_wait_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_wait_mode				*	move.l %d1,g_wait_mode	|, g_wait_mode
	jbra _?L34					*	jra .L34		|
_?L41:							*.L41:
							*| gifex.c:1148:         g_memory_cache_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_memory_cache_mode			*	move.l %d2,g_memory_cache_mode	|, g_memory_cache_mode
	jbra _?L34					*	jra .L34		|
_?L37:							*.L37:
							*| gifex.c:1150:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1150:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp909, g_brightness
_?L158:							*.L158:
							*| gifex.c:1160:           g_start_x = atoi(opt);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L34					*	jra .L34		|
_?L39:							*.L39:
							*| gifex.c:1153:         strcpy(opt,argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	pea (_opt?8)					*	pea (opt.8)		|
	jbsr _strcpy					*	jsr strcpy		|
							*| gifex.c:1154:         char* c = strchr(opt,',');
	pea 44.w					*	pea 44.w		|
	pea (_opt?8)					*	pea (opt.8)		|
	jbsr _strchr					*	jsr strchr		|
	move.l d0,a3					*	move.l %d0,%a3	| tmp910, c
							*| gifex.c:1155:         if (c != NULL) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| c
	jbeq _?L47					*	jeq .L47		|
							*| gifex.c:1156:           *c = '\0';
	clr.b (a3)+					*	clr.b (%a3)+	| *c_59
							*| gifex.c:1157:           g_start_x = atoi(opt);
	pea (_opt?8)					*	pea (opt.8)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1157:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp911, g_start_x
							*| gifex.c:1158:           g_start_y = atoi(c+1);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp344,
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1158:           g_start_y = atoi(c+1);
	move.l d0,_g_start_y				*	move.l %d0,g_start_y	| tmp912, g_start_y
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L34					*	jra .L34		|
_?L47:							*.L47:
							*| gifex.c:1160:           g_start_x = atoi(opt);
	pea (_opt?8)					*	pea (opt.8)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1160:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp913, g_start_x
	jbra _?L158					*	jra .L158		|
_?L45:							*.L45:
							*| gifex.c:1163:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1163:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _15, g_buffer_memory_size_factor
							*| gifex.c:1164:         if (g_buffer_memory_size_factor > 16) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	moveq #16,d6					*	moveq #16,%d6	|,
	cmp.l d0,d6					*	cmp.l %d0,%d6	| _15,
	jbge _?L34					*	jge .L34		|
							*| gifex.c:1165:           printf("error: too large memory factor.\n");
	pea _?LC15					*	pea .LC15		|
_?L169:							*.L169:
							*| gifex.c:1181:     printf("error: no input file.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1182:     return 1;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L33					*	jra .L33		|
_?L36:							*.L36:
							*| gifex.c:1168:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d1					*	cmp.b #104,%d1	|, _6
	jbne _?L48					*	jne .L48		|
							*| gifex.c:1169:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L49:							*.L49:
							*| gifex.c:1170:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L31:							*.L31:
							*| gifex.c:1237: }
	movem.l -220(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -220(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L48:							*.L48:
							*| gifex.c:1172:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC16					*	pea .LC16		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:1173:         return 1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L33					*	jra .L33		|
_?L125:							*.L125:
							*| gifex.c:1136:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L34					*	jra .L34		|
_?L51:							*.L51:
							*| gifex.c:1200:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.17_19
	move.l d0,d1					*	move.l %d0,%d1	| g_buffer_memory_size_factor.17_19, tmp353
	swap d1						*	swap %d1	| tmp353
	clr.w d1					*	clr.w %d1	| tmp353
							*| gifex.c:1200:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d1,_g_input_buffer_size			*	move.l %d1,g_input_buffer_size	| tmp353, g_input_buffer_size
							*| gifex.c:1203:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp354
	swap d0						*	swap %d0	| tmp354
	clr.w d0					*	clr.w %d0	| tmp354
							*| gifex.c:1203:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp354, g_output_buffer_size
							*| gifex.c:1206:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.19_30
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbeq _?L52					*	jeq .L52		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.19_30
_?L52:							*.L52:
							*| gifex.c:1206:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.19_30, g_actual_width
							*| gifex.c:1207:   g_actual_height = g_extended_graphic_mode != 0 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.19_30, g_actual_height
							*| gifex.c:1209:    if (g_information_mode == 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l _g_information_mode.l,d0			*	cmp.l g_information_mode.l,%d0	| g_information_mode,
	jbne _?L53					*	jne .L53		|
							*| gifex.c:1015:     int file_buffer_ofs = 0;
	clr.l -92(a6)					*	clr.l -92(%fp)	| MEM[(int *)_134]
							*| gifex.c:1018:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:1018:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp915
	jbeq _?L54					*	jeq .L54		|
							*| gifex.c:1019:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
_?L170:							*.L170:
							*| gifex.c:1026:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L160:							*.L160:
							*| gifex.c:1100:     return 0;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L49					*	jra .L49		|
_?L54:							*.L54:
							*| gifex.c:1024:     fp = fopen(gif_file_name, "rb");
	pea _?LC19					*	pea .LC19		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,d3					*	move.l %d0,%d3	| tmp916, fp
							*| gifex.c:1025:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L56					*	jne .L56		|
							*| gifex.c:1026:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC20					*	pea .LC20		|
	jbra _?L170					*	jra .L170		|
_?L56:							*.L56:
							*| gifex.c:1031:     file_buffer_ptr = malloc__(g_input_buffer_size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	move.l d0,d4					*	move.l %d0,%d4	| tmp917, file_buffer_ptr
							*| gifex.c:1032:     if (file_buffer_ptr == NULL) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	lea _fclose,a4					*	lea fclose,%a4	|, tmp882
	jbne _?L57					*	jne .L57		|
							*| gifex.c:1033:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC21					*	pea .LC21		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1034:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp882
	jbra _?L160					*	jra .L160		|
_?L57:							*.L57:
							*| gifex.c:1039:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:1040:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	lea _free__,a5					*	lea free__,%a5	|, tmp884
	tst.l d0					*	tst.l %d0	| tmp918
	jbgt _?L58					*	jgt .L58		|
							*| gifex.c:1041:       printf("error: file read error.\n");
	pea _?LC22					*	pea .LC22		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1042:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp882
							*| gifex.c:1043:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp884
							*| gifex.c:1044:       return -1;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L49					*	jra .L49		|
_?L58:							*.L58:
							*| gifex.c:1048:     memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	moveq #-92,d6					*	moveq #-92,%d6	|, tmp367
	add.l a6,d6					*	add.l %fp,%d6	|, tmp367
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea (-76,a6),a3					*	lea (-76,%fp),%a3	|,, tmp368
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp368,
	lea _memcpy_file_buffer,a0			*	lea memcpy_file_buffer,%a0	|, tmp369
	move.l a0,-172(a6)				*	move.l %a0,-172(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp369
							*| gifex.c:1049:     header.signature[3] = '\0';
	clr.b -73(a6)					*	clr.b -73(%fp)	| MEM[(struct  *)_210].signature[3]
							*| gifex.c:1050:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC23					*	pea .LC23		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp368,
	move.l #_strcmp,d7				*	move.l #strcmp,%d7	|, tmp371
	move.l d7,a1					*	move.l %d7,%a1	| tmp371,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1050:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp885
	move.l -172(a6),a0				*	move.l -172(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp919
	jbeq _?L59					*	jeq .L59		|
							*| gifex.c:1051:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC24					*	pea .LC24		|
_?L159:							*.L159:
							*| gifex.c:1061:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1062:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp882
							*| gifex.c:1063:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp884
							*| gifex.c:1064:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L49					*	jra .L49		|
_?L59:							*.L59:
							*| gifex.c:1058:     memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -72(a6)					*	pea -72(%fp)		|
	jbsr (a0)					*	jsr (%a0)		| tmp369
							*| gifex.c:1059:     header.version[3] = '\0';
	clr.b -69(a6)					*	clr.b -69(%fp)	| MEM[(struct  *)_210].version[3]
							*| gifex.c:1060:     if (strcmp(header.version, "89a") != 0 ) {
	pea _?LC25					*	pea .LC25		|
	pea -72(a6)					*	pea -72(%fp)		|
	move.l d7,a0					*	move.l %d7,%a0	| tmp371,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1060:     if (strcmp(header.version, "89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp920
	jbeq _?L60					*	jeq .L60		|
							*| gifex.c:1061:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea -72(a6)					*	pea -72(%fp)		|
	pea _?LC26					*	pea .LC26		|
	jbra _?L159					*	jra .L159		|
_?L60:							*.L60:
							*| gifex.c:1068:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l #_get_ushort_file_buffer,d7		*	move.l #get_ushort_file_buffer,%d7	|, tmp390
	move.l d7,a1					*	move.l %d7,%a1	| tmp390,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1068:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-68(a6)				*	move.w %d0,-68(%fp)	| tmp921, MEM[(struct  *)_210].screen_width
							*| gifex.c:1069:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp390,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1069:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-66(a6)				*	move.w %d0,-66(%fp)	| tmp922, MEM[(struct  *)_210].screen_height
							*| gifex.c:1070:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l #_get_uchar_file_buffer,d7		*	move.l #get_uchar_file_buffer,%d7	|, tmp394
	move.l d7,a1					*	move.l %d7,%a1	| tmp394,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1070:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-64(a6)				*	move.b %d0,-64(%fp)	| tmp923, MEM[(struct  *)_210].flag_code
							*| gifex.c:1071:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp394,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1071:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-63(a6)				*	move.b %d0,-63(%fp)	| tmp924, MEM[(struct  *)_210].bg_color_index
							*| gifex.c:1072:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp367,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l d7,a1					*	move.l %d7,%a1	| tmp394,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1072:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-62(a6)				*	move.b %d0,-62(%fp)	| tmp925, MEM[(struct  *)_210].aspect_ratio
							*| gifex.c:1075:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC27					*	pea .LC27		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1076:     printf("     file size: %d\n", inf.filelen);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| MEM[(struct FILBUF *)_208].filelen,
	pea _?LC28					*	pea .LC28		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1077:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| MEM[(struct FILBUF *)_208].time, _93
							*| gifex.c:1077:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| MEM[(struct FILBUF *)_208].date, _101
							*| gifex.c:1077:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _93,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _93, tmp403
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp403
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp403,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d6					*	moveq #11,%d6	|,
	lsr.w d6,d1					*	lsr.w %d6,%d1	|, tmp406
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp406,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d0,d5					*	and.l %d0,%d5	| _101,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _101, tmp410
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp410
	moveq #15,d6					*	moveq #15,%d6	|,
	and.l d1,d6					*	and.l %d1,%d6	| tmp410,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	|,
							*| gifex.c:1077:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #9,d1					*	moveq #9,%d1	|,
	lsr.w d1,d0					*	lsr.w %d1,%d0	|, tmp413
							*| gifex.c:1077:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp414
	move.l d0,d2					*	move.l %d0,%d2	|,
	and.l #4095,d2					*	and.l #4095,%d2	|,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	pea _?LC29					*	pea .LC29		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1078:     printf("   GIF version: %s\n", header.version);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	pea -72(a6)					*	pea -72(%fp)		|
	pea _?LC30					*	pea .LC30		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1079:     printf("  screen width: %d\n", header.screen_width);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_210].screen_width
	move.w -68(a6),d0				*	move.w -68(%fp),%d0	| MEM[(struct  *)_210].screen_width, MEM[(struct  *)_210].screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_210].screen_width,
	pea _?LC31					*	pea .LC31		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1080:     printf(" screen height: %d\n", header.screen_height);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_210].screen_height
	move.w -66(a6),d0				*	move.w -66(%fp),%d0	| MEM[(struct  *)_210].screen_height, MEM[(struct  *)_210].screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_210].screen_height,
	pea _?LC32					*	pea .LC32		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1081:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_210].flag_code
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_210].flag_code, MEM[(struct  *)_210].flag_code
							*| gifex.c:260:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #4,d0					*	asr.l #4,%d0	|, tmp425
							*| gifex.c:1081:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #7,d5					*	moveq #7,%d5	|,
	and.l d5,d0					*	and.l %d5,%d0	|, tmp429
	move.l d0,a0					*	move.l %d0,%a0	| tmp429,
	pea 1(a0)					*	pea 1(%a0)		|
	pea _?LC33					*	pea .LC33		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1082:     printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l #_?LC14,d0				*	move.l #.LC14,%d0	|, iftmp.27_124
	tst.b -64(a6)					*	tst.b -64(%fp)	| MEM[(struct  *)_210].flag_code
	jbpl _?L61					*	jpl .L61		|
	move.l #_?LC13,d0				*	move.l #.LC13,%d0	|, iftmp.27_124
_?L61:							*.L61:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.27_124,
	pea _?LC34					*	pea .LC34		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:260:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	moveq #0,d1					*	moveq #0,%d1	| _126
	move.b -64(a6),d1				*	move.b -64(%fp),%d1	| MEM[(struct  *)_210].flag_code, _126
							*| gifex.c:1083:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l #_?LC14,d0				*	move.l #.LC14,%d0	|, iftmp.28_131
	tst.b -64(a6)					*	tst.b -64(%fp)	| MEM[(struct  *)_210].flag_code
	jbpl _?L62					*	jpl .L62		|
							*| gifex.c:1083:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.w d1,ccr					*	move.w %d1,%ccr	| _126
	jbpl _?L62					*	jpl .L62		|
							*| gifex.c:1083:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC13,d0				*	move.l #.LC13,%d0	|, iftmp.28_131
_?L62:							*.L62:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.28_131,
	pea _?LC35					*	pea .LC35		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1084:     printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_210].flag_code, tmp438
	and.b #7,d0					*	and.b #7,%d0	|, tmp438
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp440
	move.l d0,a0					*	move.l %d0,%a0	| tmp440, tmp442
	add.l d0,a0					*	add.l %d0,%a0	| tmp440, tmp442
	pea (a0,d0.l)					*	pea (%a0,%d0.l)		|
	pea _?LC36					*	pea .LC36		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1085:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_210].bg_color_index
	move.b -63(a6),d0				*	move.b -63(%fp),%d0	| MEM[(struct  *)_210].bg_color_index, MEM[(struct  *)_210].bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_210].bg_color_index,
	pea _?LC37					*	pea .LC37		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1086:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_210].aspect_ratio
	move.b -62(a6),d0				*	move.b -62(%fp),%d0	| MEM[(struct  *)_210].aspect_ratio, MEM[(struct  *)_210].aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_210].aspect_ratio,
	pea _?LC38					*	pea .LC38		|
	jbsr (a3)					*	jsr (%a3)		| tmp885
							*| gifex.c:1090:       fclose(fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp882
							*| gifex.c:1096:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp884
	jbra _?L160					*	jra .L160		|
_?L53:							*.L53:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _671
							*| gifex.c:416:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.241
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.234
							*| gifex.c:416:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	lea ___divsi3,a3				*	lea __divsi3,%a3	|, tmp455
							*| gifex.c:419:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	lea _g_rgb555_b,a5				*	lea g_rgb555_b,%a5	|, tmp462
_?L64:							*.L64:
							*| gifex.c:416:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.234,
	jbsr (a3)					*	jsr (%a3)		| tmp455
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:416:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp457
							*| gifex.c:417:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp459
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp459
							*| gifex.c:417:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp459
	lea _g_rgb555_r,a0				*	lea g_rgb555_r,%a0	|,
	move.w d1,(a0,d4.l)				*	move.w %d1,(%a0,%d4.l)	| tmp459, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.241_287 * 1]
							*| gifex.c:418:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp461
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp461
							*| gifex.c:418:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp461
	lea _g_rgb555_g,a0				*	lea g_rgb555_g,%a0	|,
	move.w d1,(a0,d4.l)				*	move.w %d1,(%a0,%d4.l)	| tmp461, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.241_287 * 1]
							*| gifex.c:419:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp457, tmp463
							*| gifex.c:419:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp463
	move.w d0,(a5,d4.l)				*	move.w %d0,(%a5,%d4.l)	| tmp463, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.241_287 * 1]
							*| gifex.c:415:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _671, ivtmp.234
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.241
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.241
	jbne _?L64					*	jne .L64		|
							*| gifex.c:441:   if (g_clear_screen != 0) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L65					*	jeq .L65		|
							*| gifex.c:442:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L65:							*.L65:
							*| gifex.c:446:   ssp = SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	lea _SUPER,a3					*	lea SUPER,%a3	|, tmp465
	jbsr (a3)					*	jsr (%a3)		| tmp465
							*| gifex.c:449:   while(!(*gpip & 0x10));
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L66:							*.L66:
							*| gifex.c:449:   while(!(*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _292
							*| gifex.c:449:   while(!(*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _292
	jbeq _?L66					*	jeq .L66		|
_?L67:							*.L67:
							*| gifex.c:450:   while( (*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _294
							*| gifex.c:450:   while( (*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _294
	jbne _?L67					*	jne .L67		|
							*| gifex.c:453:   crtc_r00_ptr[0] = 0x0089;
	move.w #137,15204352				*	move.w #137,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| gifex.c:454:   crtc_r00_ptr[1] = 0x000e;
	move.w #14,15204354				*	move.w #14,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| gifex.c:455:   crtc_r00_ptr[2] = 0x001c;
	move.w #28,15204356				*	move.w #28,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| gifex.c:456:   crtc_r00_ptr[3] = 0x007c;
	move.w #124,15204358				*	move.w #124,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| gifex.c:457:   crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| gifex.c:458:   crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| gifex.c:459:   crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| gifex.c:460:   crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| gifex.c:461:   crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| gifex.c:464:   if (g_extended_graphic_mode == 0) {
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbne _?L68					*	jne .L68		|
							*| gifex.c:465:     *crtc_r20_ptr = 0x0316;   // memory mode 3
	move.w #790,15204392				*	move.w #790,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:466:     *vdc_r1_ptr = 3;          // memory mode 3
	move.w #3,15213568				*	move.w #3,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:467:     *vdc_r3_ptr = 0x2f;       // graphic on (512x512)
	move.w #47,15214080				*	move.w #47,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:468:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:469:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
							*| gifex.c:470:     crtc_r12_ptr[2] = 0;          // scroll position X
	move.w #0,15204380				*	move.w #0,15204380	|, MEM[(volatile short unsigned int *)15204380B]
							*| gifex.c:471:     crtc_r12_ptr[3] = 0;          // scroll position Y
	move.w #0,15204382				*	move.w #0,15204382	|, MEM[(volatile short unsigned int *)15204382B]
							*| gifex.c:472:     crtc_r12_ptr[4] = 0;          // scroll position X
	move.w #0,15204384				*	move.w #0,15204384	|, MEM[(volatile short unsigned int *)15204384B]
							*| gifex.c:473:     crtc_r12_ptr[5] = 0;          // scroll position Y
	move.w #0,15204386				*	move.w #0,15204386	|, MEM[(volatile short unsigned int *)15204386B]
							*| gifex.c:474:     crtc_r12_ptr[6] = 0;          // scroll position X
	move.w #0,15204388				*	move.w #0,15204388	|, MEM[(volatile short unsigned int *)15204388B]
							*| gifex.c:475:     crtc_r12_ptr[7] = 0;          // scroll position Y
	move.w #0,15204390				*	move.w #0,15204390	|, MEM[(volatile short unsigned int *)15204390B]
_?L69:							*.L69:
							*| gifex.c:416:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	move.l #15212544,a0				*	move.l #15212544,%a0	|, palette_ptr
	moveq #1,d1					*	moveq #1,%d1	|, i
_?L70:							*.L70:
							*| gifex.c:486:     *palette_ptr++ = (unsigned short)i;
	move.w d1,(a0)					*	move.w %d1,(%a0)	| i, *palette_ptr_140
							*| gifex.c:487:     *palette_ptr++ = (unsigned short)i;
	move.w d1,2(a0)					*	move.w %d1,2(%a0)	| i, MEM[(volatile short unsigned int *)palette_ptr_588 + 2B]
	addq.l #4,a0					*	addq.l #4,%a0	|, palette_ptr
							*| gifex.c:485:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	add.l #514,d1					*	add.l #514,%d1	|, i
							*| gifex.c:485:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	cmp.l #65793,d1					*	cmp.l #65793,%d1	|, i
	jbne _?L70					*	jne .L70		|
							*| gifex.c:491:   SUPER(ssp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| ssp,
	jbsr (a3)					*	jsr (%a3)		| tmp465
							*| gifex.c:1221:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| gifex.c:1224:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	lea _C_FNKMOD,a3				*	lea C_FNKMOD,%a3	|, tmp497
	jbsr (a3)					*	jsr (%a3)		| tmp497
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	| tmp928, %sfp
							*| gifex.c:1225:   C_FNKMOD(3);
	pea 3.w						*	pea 3.w		|
	jbsr (a3)					*	jsr (%a3)		| tmp497
							*| gifex.c:572:     int file_buffer_ofs = 0;
	clr.l -96(a6)					*	clr.l -96(%fp)	| file_buffer_ofs
							*| gifex.c:598:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:598:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp929
	jbeq _?L71					*	jeq .L71		|
							*| gifex.c:599:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
_?L171:							*.L171:
							*| gifex.c:606:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L165:							*.L165:
							*| gifex.c:673:       return -1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L72					*	jra .L72		|
_?L68:							*.L68:
							*| gifex.c:477:     *crtc_r20_ptr = 0x0716;   // memory mode 7 (for XEiJ only)
	move.w #1814,15204392				*	move.w #1814,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:478:     *vdc_r1_ptr = 7;          // memory mode 7 (for XEiJ only)
	move.w #7,15213568				*	move.w #7,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:479:     *vdc_r3_ptr = 0x30;       // graphic on (1024x1024)
	move.w #48,15214080				*	move.w #48,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:480:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:481:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
	jbra _?L69					*	jra .L69		|
_?L71:							*.L71:
							*| gifex.c:604:     fp = fopen(gif_file_name, "rb");
	pea _?LC19					*	pea .LC19		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,d3					*	move.l %d0,%d3	| tmp930, fp
							*| gifex.c:605:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L73					*	jne .L73		|
							*| gifex.c:606:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC20					*	pea .LC20		|
	jbra _?L171					*	jra .L171		|
_?L73:							*.L73:
							*| gifex.c:611:     file_buffer_ptr = malloc__(g_input_buffer_size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	move.l d0,d7					*	move.l %d0,%d7	| tmp931, file_buffer_ptr
							*| gifex.c:612:     if (file_buffer_ptr == NULL) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbne _?L74					*	jne .L74		|
							*| gifex.c:613:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC21					*	pea .LC21		|
_?L166:							*.L166:
							*| gifex.c:671:       printf("error: cannot allocate memory for inflate buffer.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:672:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L165					*	jra .L165		|
_?L74:							*.L74:
							*| gifex.c:619:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:620:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp932
	jbgt _?L75					*	jgt .L75		|
							*| gifex.c:621:       printf("error: file read error.\n");
	pea _?LC22					*	pea .LC22		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:622:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:623:       free__(file_buffer_ptr);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
_?L167:							*.L167:
							*| gifex.c:997:     return 0;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L72					*	jra .L72		|
_?L75:							*.L75:
							*| gifex.c:628:     memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	lea (-96,a6),a3					*	lea (-96,%fp),%a3	|,, tmp511
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea (-92,a6),a4					*	lea (-92,%fp),%a4	|,, tmp512
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp512,
	move.l #_memcpy_file_buffer,d6			*	move.l #memcpy_file_buffer,%d6	|, tmp513
	move.l d6,a1					*	move.l %d6,%a1	| tmp513,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:629:     header.signature[3] = '\0';
	clr.b -89(a6)					*	clr.b -89(%fp)	| MEM[(struct  *)_134].signature[3]
							*| gifex.c:630:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC23					*	pea .LC23		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp512,
	move.l #_strcmp,d4				*	move.l #strcmp,%d4	|, tmp515
	move.l d4,a4					*	move.l %d4,%a4	| tmp515,
	jbsr (a4)					*	jsr (%a4)		|
							*| gifex.c:630:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp933
	jbeq _?L76					*	jeq .L76		|
							*| gifex.c:631:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC24					*	pea .LC24		|
_?L168:							*.L168:
							*| gifex.c:641:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:642:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:643:       free__(file_buffer_ptr);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
							*| gifex.c:644:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
_?L72:							*.L72:
							*| gifex.c:1231:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| gifex.c:1234:   C_FNKMOD(func_key_display_mode);
	move.l -108(a6),-(sp)				*	move.l -108(%fp),-(%sp)	| %sfp,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
							*| gifex.c:1236:   return 0;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L49					*	jra .L49		|
_?L76:							*.L76:
							*| gifex.c:638:     memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea (-88,a6),a4					*	lea (-88,%fp),%a4	|,, tmp522
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp522,
	move.l d6,a0					*	move.l %d6,%a0	| tmp513,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:639:     header.version[3] = '\0';
	clr.b -85(a6)					*	clr.b -85(%fp)	| MEM[(struct  *)_134].version[3]
							*| gifex.c:640:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC25					*	pea .LC25		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp522,
	move.l d4,a1					*	move.l %d4,%a1	| tmp515,
	jbsr (a1)					*	jsr (%a1)		|
	move.l d0,-144(a6)				*	move.l %d0,-144(%fp)	| tmp934, %sfp
							*| gifex.c:640:     if (strcmp(header.version,"89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	jbeq _?L77					*	jeq .L77		|
							*| gifex.c:641:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp522,
	pea _?LC26					*	pea .LC26		|
	jbra _?L168					*	jra .L168		|
_?L77:							*.L77:
							*| gifex.c:648:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_file_buffer,a4			*	lea get_ushort_file_buffer,%a4	|, tmp534
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| gifex.c:648:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-84(a6)				*	move.w %d0,-84(%fp)	| tmp935, MEM[(struct  *)_134].screen_width
							*| gifex.c:649:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| gifex.c:649:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-82(a6)				*	move.w %d0,-82(%fp)	| tmp936, MEM[(struct  *)_134].screen_height
							*| gifex.c:650:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_file_buffer,a4			*	lea get_uchar_file_buffer,%a4	|, tmp538
	jbsr (a4)					*	jsr (%a4)		| tmp538
							*| gifex.c:650:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-80(a6)				*	move.b %d0,-80(%fp)	| tmp937, MEM[(struct  *)_134].flag_code
							*| gifex.c:651:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp538
							*| gifex.c:651:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-79(a6)				*	move.b %d0,-79(%fp)	| tmp938, MEM[(struct  *)_134].bg_color_index
							*| gifex.c:652:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp538
							*| gifex.c:652:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-78(a6)				*	move.b %d0,-78(%fp)	| tmp939, MEM[(struct  *)_134].aspect_ratio
							*| gifex.c:655:     if (read_bits(header.flag_code,7,1)) {
	move.b -80(a6),d0				*	move.b -80(%fp),%d0	| MEM[(struct  *)_134].flag_code, _156
							*| gifex.c:655:     if (read_bits(header.flag_code,7,1)) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| _156
	jbmi _?L78					*	jmi .L78		|
_?L82:							*.L82:
							*| gifex.c:669:     decode_buffer_ptr = malloc__(g_output_buffer_size);
	move.l _g_output_buffer_size,-(sp)		*	move.l g_output_buffer_size,-(%sp)	| g_output_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	move.l d0,-160(a6)				*	move.l %d0,-160(%fp)	| tmp940, %sfp
							*| gifex.c:670:     if (decode_buffer_ptr == NULL) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbne _?L156					*	jne .L156		|
							*| gifex.c:671:       printf("error: cannot allocate memory for inflate buffer.\n");
	pea _?LC39					*	pea .LC39		|
	jbra _?L166					*	jra .L166		|
_?L78:							*.L78:
							*| gifex.c:656:       int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp547
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp548
							*| gifex.c:656:       int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
	moveq #1,d6					*	moveq #1,%d6	|, tmp549
	lsl.l d0,d6					*	lsl.l %d0,%d6	| tmp548, gct_size
	lea (_global_palette?7),a0			*	lea (global_palette.7),%a0	|, ivtmp.216
							*| gifex.c:657:       for (int i = 0; i < gct_size; i++) {
	moveq #0,d1					*	moveq #0,%d1	| i
_?L81:							*.L81:
							*| gifex.c:658:         unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	move.l d1,-168(a6)				*	move.l %d1,-168(%fp)	|,
	move.l a0,-172(a6)				*	move.l %a0,-172(%fp)	|,
	jbsr (a4)					*	jsr (%a4)		| tmp538
	move.b d0,d5					*	move.b %d0,%d5	| tmp941, r
							*| gifex.c:659:         unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp538
	move.b d0,d4					*	move.b %d0,%d4	| tmp942, g
							*| gifex.c:660:         unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp511,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp538
							*| gifex.c:661:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, r
	add.l d5,d5					*	add.l %d5,%d5	| r, tmp558
							*| gifex.c:661:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d4					*	and.l #255,%d4	|, g
	add.l d4,d4					*	add.l %d4,%d4	| g, tmp561
							*| gifex.c:661:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_r,a1				*	lea g_rgb555_r,%a1	|,
	move.w (a1,d5.l),d2				*	move.w (%a1,%d5.l),%d2	| g_rgb555_r[_166], tmp562
	lea _g_rgb555_g,a1				*	lea g_rgb555_g,%a1	|,
	or.w (a1,d4.l),d2				*	or.w (%a1,%d4.l),%d2	| g_rgb555_g[_168], tmp562
							*| gifex.c:661:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp565
							*| gifex.c:661:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.l -172(a6),a0				*	move.l -172(%fp),%a0	|,
	or.w (a5,d0.l),d2				*	or.w (%a5,%d0.l),%d2	| g_rgb555_b[_171], tmp562
	move.w d2,(a0)+					*	move.w %d2,(%a0)+	| tmp562, MEM[(short unsigned int *)_680]
							*| gifex.c:657:       for (int i = 0; i < gct_size; i++) {
	move.l -168(a6),d1				*	move.l -168(%fp),%d1	|,
	addq.l #1,d1					*	addq.l #1,%d1	|, i
							*| gifex.c:657:       for (int i = 0; i < gct_size; i++) {
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	cmp.l d1,d6					*	cmp.l %d1,%d6	| i, gct_size
	jbne _?L81					*	jne .L81		|
	jbra _?L82					*	jra .L82		|
_?L156:							*.L156:
							*| gifex.c:678:       decode_buffer_ptrs[i] = NULL;
	move.l #800,d4					*	move.l #800,%d4	|, tmp570
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp570,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea (_decode_buffer_ptrs?6)			*	pea (decode_buffer_ptrs.6)		|
	lea _memset,a3					*	lea memset,%a3	|, tmp571
	jbsr (a3)					*	jsr (%a3)		| tmp571
							*| gifex.c:679:       decode_buffer_sizes[i] = 0;
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp570,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea (_decode_buffer_sizes?5)			*	pea (decode_buffer_sizes.5)		|
	jbsr (a3)					*	jsr (%a3)		| tmp571
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| gifex.c:586:     int image_index = 0;
	moveq #0,d4					*	moveq #0,%d4	| image_index
							*| gifex.c:686:       unsigned char block_type = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (-96,a6),a3					*	lea (-96,%fp),%a3	|,, tmp578
_?L83:							*.L83:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_file_buffer,a4			*	lea get_uchar_file_buffer,%a4	|, tmp579
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:688:       if (block_type == GIF_TRAILOR) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbeq _?L84					*	jeq .L84		|
							*| gifex.c:697:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L85					*	jne .L85		|
							*| gifex.c:716:         image_block->separator     = block_type;
	lea (_image_blocks?4),a5			*	lea (image_blocks.4),%a5	|, tmp580
	move.l d4,d0					*	move.l %d4,%d0	| image_index, tmp582
	add.l d4,d0					*	add.l %d4,%d0	| image_index, tmp582
	move.l d0,d5					*	move.l %d0,%d5	| tmp582, tmp583
	add.l d4,d5					*	add.l %d4,%d5	| image_index, tmp583
	add.l d5,d5					*	add.l %d5,%d5	| tmp583, tmp584
	add.l d5,d5					*	add.l %d5,%d5	| tmp584, tmp585
	sub.l d4,d5					*	sub.l %d4,%d5	| image_index, tmp586
	add.l d5,d5					*	add.l %d5,%d5	| tmp586, tmp587
	move.b #44,(a5,d5.l)				*	move.b #44,(%a5,%d5.l)	|, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].separator
							*| gifex.c:717:         image_block->left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:717:         image_block->left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	add.l d5,a5					*	add.l %d5,%a5	| tmp587, tmp598
	move.w d0,2(a5)					*	move.w %d0,2(%a5)	| tmp945, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].left_position
							*| gifex.c:718:         image_block->top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:718:         image_block->top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,4(a5)					*	move.w %d0,4(%a5)	| tmp946, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].top_position
							*| gifex.c:719:         image_block->width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:719:         image_block->width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,6(a5)					*	move.w %d0,6(%a5)	| tmp947, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].width
							*| gifex.c:720:         image_block->height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:720:         image_block->height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,8(a5)					*	move.w %d0,8(%a5)	| tmp948, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height
							*| gifex.c:721:         image_block->flag_code     = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:721:         image_block->flag_code     = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,10(a5)				*	move.b %d0,10(%a5)	| _186, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].flag_code
							*| gifex.c:732:         if ((use_local_palette = read_bits(image_block->flag_code,7,1)) != 0) {
	moveq #0,d1					*	moveq #0,%d1	| _186
	move.b d0,d1					*	move.b %d0,%d1	| _186, _186
							*| gifex.c:260:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #7,d1					*	asr.l #7,%d1	|, _186
	move.l d1,-120(a6)				*	move.l %d1,-120(%fp)	| _186, %sfp
							*| gifex.c:732:         if ((use_local_palette = read_bits(image_block->flag_code,7,1)) != 0) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	jbne _?L86					*	jne .L86		|
_?L90:							*.L90:
							*| gifex.c:747:         image_block->lzw_min_code_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_file_buffer			*	jsr get_uchar_file_buffer		|
							*| gifex.c:747:         image_block->lzw_min_code_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,d1					*	move.l %d4,%d1	| image_index, tmp653
	add.l d4,d1					*	add.l %d4,%d1	| image_index, tmp653
	move.l d1,a0					*	move.l %d1,%a0	| tmp653, tmp654
	add.l d4,a0					*	add.l %d4,%a0	| image_index, tmp654
	add.l a0,a0					*	add.l %a0,%a0	| tmp654, tmp655
	add.l a0,a0					*	add.l %a0,%a0	| tmp655, tmp656
	sub.l d4,a0					*	sub.l %d4,%a0	| image_index, tmp657
	add.l a0,a0					*	add.l %a0,%a0	| tmp657, tmp658
	add.l #_image_blocks?4,a0			*	add.l #image_blocks.4,%a0	|, tmp659
	move.b d0,16(a0)				*	move.b %d0,16(%a0)	| _206, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].lzw_min_code_size
							*| gifex.c:753:         pixel_count = image_block->width * image_block->height;
	move.w 6(a0),d1					*	move.w 6(%a0),%d1	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].width,
	mulu.w 8(a0),d1					*	mulu.w 8(%a0),%d1	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height,
	move.l d1,-104(a6)				*	move.l %d1,-104(%fp)	|, %sfp
							*| gifex.c:756:         initialize_lzw(&lzw, image_block->lzw_min_code_size);
	and.l #255,d0					*	and.l #255,%d0	|, _212
							*| gifex.c:289:   lzw->clear_code = 1 << min_code_size;
	moveq #1,d1					*	moveq #1,%d1	|, tmp681
	move.l d1,d2					*	move.l %d1,%d2	| tmp681,
	lsl.l d0,d2					*	lsl.l %d0,%d2	| _212,
	move.l d2,-176(a6)				*	move.l %d2,-176(%fp)	|, %sfp
							*| gifex.c:290:   lzw->end_code = lzw->clear_code + 1;
	addq.l #1,d2					*	addq.l #1,%d2	|,
	move.l d2,-100(a6)				*	move.l %d2,-100(%fp)	|, %sfp
							*| gifex.c:293:   lzw->available = lzw->clear_code + 2;
	move.l -176(a6),d5				*	move.l -176(%fp),%d5	| %sfp,
	addq.l #2,d5					*	addq.l #2,%d5	|,
	move.l d5,-116(a6)				*	move.l %d5,-116(%fp)	|, %sfp
							*| gifex.c:295:   lzw->code_size = lzw->data_size + 1;
	addq.l #1,d0					*	addq.l #1,%d0	|, _212
	move.l d0,-124(a6)				*	move.l %d0,-124(%fp)	| _212, %sfp
							*| gifex.c:297:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	lsl.l d0,d1					*	lsl.l %d0,%d1	| _212, tmp682
							*| gifex.c:297:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	subq.l #1,d1					*	subq.l #1,%d1	|, tmp682
	move.l d1,-112(a6)				*	move.l %d1,-112(%fp)	| tmp682, %sfp
							*| gifex.c:304:     lzw_prefix[i] = 0;
	move.l -176(a6),d0				*	move.l -176(%fp),%d0	| %sfp, _318
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbpl _?L87					*	jpl .L87		|
	moveq #0,d0					*	moveq #0,%d0	| _318
_?L87:							*.L87:
	add.l d0,d0					*	add.l %d0,%d0	| _318, tmp685
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| tmp685,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _lzw_prefix					*	pea lzw_prefix		|
	jbsr _memset					*	jsr memset		|
	lea _lzw_suffix,a0				*	lea lzw_suffix,%a0	|, ivtmp.205
							*| gifex.c:303:   for (int i = 0; i < lzw->clear_code; i++) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| gifex.c:303:   for (int i = 0; i < lzw->clear_code; i++) {
	moveq #0,d0					*	moveq #0,%d0	| i
_?L88:							*.L88:
							*| gifex.c:303:   for (int i = 0; i < lzw->clear_code; i++) {
	cmp.l -176(a6),d0				*	cmp.l -176(%fp),%d0	| %sfp, i
	jblt _?L91					*	jlt .L91		|
							*| gifex.c:758:         sub_block_data2 = malloc__(1024*1024);
	move.l #1048576,-(sp)				*	move.l #1048576,-(%sp)	|,
	jbsr _malloc__					*	jsr malloc__		|
	move.l d0,-132(a6)				*	move.l %d0,-132(%fp)	| tmp954, %sfp
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| gifex.c:713:         int sub_block_ofs2 = 0;
	clr.l -140(a6)					*	clr.l -140(%fp)	| %sfp
							*| gifex.c:763:           unsigned char sub_block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea _get_uchar_file_buffer,a5			*	lea get_uchar_file_buffer,%a5	|, tmp715
							*| gifex.c:778:             memcpy_file_buffer(sub_block_data2 + sub_block_ofs2, file_buffer_ptr, &file_buffer_ofs, sub_block_size, fp);
	lea _memcpy_file_buffer,a4			*	lea memcpy_file_buffer,%a4	|, tmp904
_?L93:							*.L93:
							*| gifex.c:763:           unsigned char sub_block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp715
							*| gifex.c:765:           if (sub_block_size == 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| sub_block_size
	jbeq _?L130					*	jeq .L130		|
							*| gifex.c:778:             memcpy_file_buffer(sub_block_data2 + sub_block_ofs2, file_buffer_ptr, &file_buffer_ofs, sub_block_size, fp);
	moveq #0,d5					*	moveq #0,%d5	| _215
	move.b d0,d5					*	move.b %d0,%d5	| sub_block_size, _215
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| _215,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	move.l -132(a6),a1				*	move.l -132(%fp),%a1	| %sfp,
	move.l -140(a6),d1				*	move.l -140(%fp),%d1	| %sfp,
	pea (a1,d1.l)					*	pea (%a1,%d1.l)		|
	jbsr (a4)					*	jsr (%a4)		| tmp904
							*| gifex.c:779:             sub_block_ofs2 += sub_block_size;
	add.l d5,-140(a6)				*	add.l %d5,-140(%fp)	| _215, %sfp
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	jbra _?L93					*	jra .L93		|
_?L86:							*.L86:
	move.l #_local_palette?3,-156(a6)		*	move.l #local_palette.3,-156(%fp)	|, %sfp
	move.l d4,d1					*	move.l %d4,%d1	| image_index, tmp691
	moveq #9,d6					*	moveq #9,%d6	|,
	lsl.l d6,d1					*	lsl.l %d6,%d1	|, tmp691
	move.l d1,a1					*	move.l %d1,%a1	| tmp691, ivtmp.211
	add.l #_local_palettes?2,a1			*	add.l #local_palettes.2,%a1	|, ivtmp.211
							*| gifex.c:733:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp693
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp694
	moveq #2,d1					*	moveq #2,%d1	|, tmp696
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp694, tmp695
	add.l -156(a6),d1				*	add.l -156(%fp),%d1	| %sfp, tmp695
	move.l d1,-164(a6)				*	move.l %d1,-164(%fp)	| tmp695, %sfp
							*| gifex.c:735:             unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (-96,a6),a5					*	lea (-96,%fp),%a5	|,, tmp697
_?L89:							*.L89:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp697,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	move.l a1,-168(a6)				*	move.l %a1,-168(%fp)	|,
	jbsr (a4)					*	jsr (%a4)		| tmp579
	move.b d0,d6					*	move.b %d0,%d6	| tmp951, r
							*| gifex.c:736:             unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp697,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
	move.b d0,d5					*	move.b %d0,%d5	| tmp952, g
							*| gifex.c:737:             unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp697,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d6					*	and.l #255,%d6	|, r
	add.l d6,d6					*	add.l %d6,%d6	| r, tmp705
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, g
	add.l d5,d5					*	add.l %d5,%d5	| g, tmp708
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_r,a0				*	lea g_rgb555_r,%a0	|,
	move.w (a0,d6.l),d1				*	move.w (%a0,%d6.l),%d1	| g_rgb555_r[_196], tmp709
	lea _g_rgb555_g,a0				*	lea g_rgb555_g,%a0	|,
	add.w (a0,d5.l),d1				*	add.w (%a0,%d5.l),%d1	| g_rgb555_g[_198], tmp709
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp712
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_b,a2				*	lea g_rgb555_b,%a2	|, tmp710
	add.w (a2,d0.l),d1				*	add.w (%a2,%d0.l),%d1	| g_rgb555_b[_201], tmp709
							*| gifex.c:738:             local_palette[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	move.l -156(a6),a0				*	move.l -156(%fp),%a0	| %sfp,
	addq.l #2,-156(a6)				*	addq.l #2,-156(%fp)	|, %sfp
	move.w d1,(a0)+					*	move.w %d1,(%a0)+	| _203, MEM[(short unsigned int *)_544]
							*| gifex.c:739:             local_palettes[image_index][i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	move.l -168(a6),a1				*	move.l -168(%fp),%a1	|,
	move.w d1,(a1)+					*	move.w %d1,(%a1)+	| _203, MEM[(short unsigned int *)_543]
							*| gifex.c:734:           for (int i = 0; i < lct_size; i++) {
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	cmp.l -164(a6),a0				*	cmp.l -164(%fp),%a0	| %sfp,
	jbne _?L89					*	jne .L89		|
	jbra _?L90					*	jra .L90		|
_?L91:							*.L91:
							*| gifex.c:305:     lzw_suffix[i] = i;
	move.w d0,(a0)+					*	move.w %d0,(%a0)+	| i, MEM[(short int *)_220]
							*| gifex.c:303:   for (int i = 0; i < lzw->clear_code; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, i
	jbra _?L88					*	jra .L88		|
_?L106:							*.L106:
							*| gifex.c:327:     if (lzw->pixel_sp == 0) {
	cmp.w #0,a0					*	cmp.w #0,%a0	|, lzw$pixel_sp
	jbne _?L131					*	jne .L131		|
							*| gifex.c:329:       if (lzw->bits < lzw->code_size) {
	cmp.l -164(a6),d2				*	cmp.l -164(%fp),%d2	| %sfp, lzw$bits
	jbge _?L95					*	jge .L95		|
							*| gifex.c:330:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	move.l -132(a6),a4				*	move.l -132(%fp),%a4	| %sfp,
	move.l -136(a6),d5				*	move.l -136(%fp),%d5	| %sfp,
	moveq #0,d0					*	moveq #0,%d0	| *_333
	move.b (a4,d5.l),d0				*	move.b (%a4,%d5.l),%d0	| *_333, *_333
							*| gifex.c:330:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	lsl.l d2,d0					*	lsl.l %d2,%d0	| lzw$bits, tmp720
							*| gifex.c:330:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	add.l d0,-156(a6)				*	add.l %d0,-156(%fp)	| tmp720, %sfp
							*| gifex.c:331:         lzw->bits += 8;
	addq.l #8,d2					*	addq.l #8,%d2	|, lzw$bits
							*| gifex.c:332:         continue;
	move.l a1,d0					*	move.l %a1,%d0	| lzw$old_code, lzw$old_code
							*| gifex.c:330:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	addq.l #1,-136(a6)				*	addq.l #1,-136(%fp)	|, %sfp
_?L96:							*.L96:
							*| gifex.c:401:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	move.l d0,a1					*	move.l %d0,%a1	| lzw$old_code, lzw$old_code
_?L92:							*.L92:
							*| gifex.c:319:   while (output_buffer_ofs < pixel_count) {
	move.l -104(a6),d5				*	move.l -104(%fp),%d5	| %sfp,
	cmp.l -180(a6),d5				*	cmp.l -180(%fp),%d5	| %sfp,
	jbgt _?L106					*	jgt .L106		|
	jbra _?L100					*	jra .L100		|
_?L95:							*.L95:
							*| gifex.c:335:       code = lzw->datum & lzw->code_mask;
	move.l -152(a6),d0				*	move.l -152(%fp),%d0	| %sfp, lzw$old_code
	and.l -156(a6),d0				*	and.l -156(%fp),%d0	| %sfp, lzw$old_code
							*| gifex.c:336:       lzw->datum >>= lzw->code_size;
	move.l -156(a6),d6				*	move.l -156(%fp),%d6	| %sfp,
	move.l -164(a6),d5				*	move.l -164(%fp),%d5	| %sfp,
	asr.l d5,d6					*	asr.l %d5,%d6	|,
	move.l d6,-156(a6)				*	move.l %d6,-156(%fp)	|, %sfp
							*| gifex.c:337:       lzw->bits -= lzw->code_size;
	sub.l d5,d2					*	sub.l %d5,%d2	|, lzw$bits
							*| gifex.c:341:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| lzw$old_code, lzw$available
	jbge _?L97					*	jge .L97		|
_?L100:							*.L100:
	move.l d4,d0					*	move.l %d4,%d0	| image_index, tmp887
	add.l d4,d0					*	add.l %d4,%d0	| image_index, tmp887
							*| gifex.c:786:         if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbeq _?L157					*	jeq .L157		|
							*| gifex.c:789:           decode_buffer_sizes[image_index] = size;
	move.l d0,d6					*	move.l %d0,%d6	| tmp887, tmp739
	add.l d0,d6					*	add.l %d0,%d6	| tmp887, tmp739
	lea (_decode_buffer_sizes?5),a0			*	lea (decode_buffer_sizes.5),%a0	|, tmp737
	move.l -180(a6),(a0,d6.l)			*	move.l -180(%fp),(%a0,%d6.l)	| %sfp, decode_buffer_sizes[image_index_181]
							*| gifex.c:790:           if ((decode_buffer_ptrs[image_index] = malloc__(size)) == NULL) {
	move.l -180(a6),-(sp)				*	move.l -180(%fp),-(%sp)	| %sfp,
	jbsr _malloc__					*	jsr malloc__		|
							*| gifex.c:790:           if ((decode_buffer_ptrs[image_index] = malloc__(size)) == NULL) {
	lea (_decode_buffer_ptrs?6),a0			*	lea (decode_buffer_ptrs.6),%a0	|, tmp741
	move.l d0,(a0,d6.l)				*	move.l %d0,(%a0,%d6.l)	| _224, decode_buffer_ptrs[image_index_181]
							*| gifex.c:790:           if ((decode_buffer_ptrs[image_index] = malloc__(size)) == NULL) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbne _?L107					*	jne .L107		|
							*| gifex.c:791:             printf("error: memory allocation failure.\n");
	pea _?LC40					*	pea .LC40		|
_?L163:							*.L163:
							*| gifex.c:852:             printf("error: graphic control extension read error.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L84					*	jra .L84		|
_?L97:							*.L97:
							*| gifex.c:341:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l -100(a6),d0				*	cmp.l -100(%fp),%d0	| %sfp, lzw$old_code
	jbeq _?L100					*	jeq .L100		|
							*| gifex.c:348:       if (code == lzw->clear_code) {
	cmp.l -176(a6),d0				*	cmp.l -176(%fp),%d0	| %sfp, lzw$old_code
	jbeq _?L132					*	jeq .L132		|
							*| gifex.c:356:       if (lzw->old_code == -1) {
	moveq #-1,d6					*	moveq #-1,%d6	|,
	cmp.l a1,d6					*	cmp.l %a1,%d6	| lzw$old_code,
	jbne _?L101					*	jne .L101		|
							*| gifex.c:357:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	lea _lzw_suffix,a1				*	lea lzw_suffix,%a1	|, tmp722
	move.l d0,a0					*	move.l %d0,%a0	| lzw$old_code, tmp723
	add.l d0,a0					*	add.l %d0,%a0	| lzw$old_code, tmp723
	move.b 1(a0,a1.l),(a2)				*	move.b 1(%a0,%a1.l),(%a2)	| lzw_suffix[code_342], lzw_pixel_stack[0]
							*| gifex.c:359:         lzw->first = code;
	move.l d0,a5					*	move.l %d0,%a5	| lzw$old_code, lzw$first
							*| gifex.c:357:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.w #1,a0					*	move.w #1,%a0	|, lzw$pixel_sp
							*| gifex.c:360:         continue;
	jbra _?L96					*	jra .L96		|
_?L101:							*.L101:
							*| gifex.c:365:       if (code == lzw->available) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| lzw$old_code, lzw$available
	jbne _?L133					*	jne .L133		|
							*| gifex.c:366:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.w a5,d5					*	move.w %a5,%d5	|,
	move.b d5,(a2)					*	move.b %d5,(%a2)	|, lzw_pixel_stack[0]
	move.l a1,a4					*	move.l %a1,%a4	| lzw$old_code, code
							*| gifex.c:366:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.w #1,a0					*	move.w #1,%a0	|, lzw$pixel_sp
_?L161:							*.L161:
							*| gifex.c:372:         code = lzw_prefix[ code ];
	move.l a0,-148(a6)				*	move.l %a0,-148(%fp)	| lzw$pixel_sp, %sfp
							*| gifex.c:371:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	lea (a4,a4.l),a5				*	lea (%a4,%a4.l),%a5	| code, code,
	move.l a5,-186(a6)				*	move.l %a5,-186(%fp)	|, %sfp
	move.l #_lzw_suffix,d5				*	move.l #lzw_suffix,%d5	|,
	move.w (a5,d5.l),d6				*	move.w (%a5,%d5.l),%d6	| lzw_suffix[code_359], pretmp_695
	addq.l #1,a0					*	addq.l #1,%a0	|, lzw$pixel_sp
							*| gifex.c:370:       while (code > lzw->clear_code) {
	cmp.l -176(a6),a4				*	cmp.l -176(%fp),%a4	| %sfp, code
	jbgt _?L104					*	jgt .L104		|
	move.w d6,d5					*	move.w %d6,%d5	| pretmp_695,
	and.w #255,d5					*	and.w #255,%d5	|,
	move.w d5,-182(a6)				*	move.w %d5,-182(%fp)	|, %sfp
							*| gifex.c:375:       lzw->first = lzw_suffix[ code ] & 0xff;
	moveq #0,d5					*	moveq #0,%d5	|
	move.b d6,d5					*	move.b %d6,%d5	| pretmp_695,
	move.l d5,a5					*	move.l %d5,%a5	|, lzw$first
							*| gifex.c:376:       lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.l -148(a6),a4				*	move.l -148(%fp),%a4	| %sfp,
	move.b d6,(a2,a4.l)				*	move.b %d6,(%a2,%a4.l)	| pretmp_695, lzw_pixel_stack[lzw$pixel_sp_409]
							*| gifex.c:378:       if (lzw->available < MAX_STACK_SIZE) {
	cmp.l #4095,d1					*	cmp.l #4095,%d1	|, lzw$available
	jbgt _?L105					*	jgt .L105		|
							*| gifex.c:379:         lzw_prefix[ lzw->available ] = lzw->old_code;
	move.l d1,d6					*	move.l %d1,%d6	| lzw$available, tmp732
	add.l d1,d6					*	add.l %d1,%d6	| lzw$available, tmp732
	lea _lzw_prefix,a4				*	lea lzw_prefix,%a4	|,
	move.w a1,(a4,d6.l)				*	move.w %a1,(%a4,%d6.l)	| lzw$old_code, lzw_prefix[lzw$available_402]
							*| gifex.c:380:         lzw_suffix[ lzw->available ] = lzw->first;
	lea _lzw_suffix,a1				*	lea lzw_suffix,%a1	|,
	move.w -182(a6),(a1,d6.l)			*	move.w -182(%fp),(%a1,%d6.l)	| %sfp, lzw_suffix[lzw$available_402]
							*| gifex.c:381:         lzw->available ++;
	addq.l #1,d1					*	addq.l #1,%d1	|, lzw$available
							*| gifex.c:383:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	move.l -152(a6),d6				*	move.l -152(%fp),%d6	| %sfp, tmp735
	and.l d1,d6					*	and.l %d1,%d6	| lzw$available, tmp735
							*| gifex.c:383:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	jbne _?L105					*	jne .L105		|
							*| gifex.c:383:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	cmp.l #4096,d1					*	cmp.l #4096,%d1	|, lzw$available
	jbeq _?L105					*	jeq .L105		|
							*| gifex.c:384:           lzw->code_size ++;
	addq.l #1,-164(a6)				*	addq.l #1,-164(%fp)	|, %sfp
							*| gifex.c:385:           lzw->code_mask += lzw->available;
	add.l d1,-152(a6)				*	add.l %d1,-152(%fp)	| lzw$available, %sfp
_?L105:							*.L105:
							*| gifex.c:391:       if (lzw->bits <= 0 && input_buffer_ofs >= input_len) {
	tst.l d2					*	tst.l %d2	| lzw$bits
	jbne _?L94					*	jne .L94		|
							*| gifex.c:391:       if (lzw->bits <= 0 && input_buffer_ofs >= input_len) {
	move.l -140(a6),a4				*	move.l -140(%fp),%a4	| %sfp,
	cmp.l -136(a6),a4				*	cmp.l -136(%fp),%a4	| %sfp,
	jble _?L100					*	jle .L100		|
_?L94:							*.L94:
							*| gifex.c:400:     lzw->pixel_sp --;
	subq.l #1,a0					*	subq.l #1,%a0	|, lzw$pixel_sp
							*| gifex.c:401:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	move.l -160(a6),a1				*	move.l -160(%fp),%a1	| %sfp,
	move.l -180(a6),a4				*	move.l -180(%fp),%a4	| %sfp,
	move.b (a2,a0.l),(a1,a4.l)			*	move.b (%a2,%a0.l),(%a1,%a4.l)	| lzw_pixel_stack[_387], *_391
							*| gifex.c:401:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	addq.l #1,-180(a6)				*	addq.l #1,-180(%fp)	|, %sfp
	jbra _?L96					*	jra .L96		|
_?L133:							*.L133:
	move.l d0,a4					*	move.l %d0,%a4	| lzw$old_code, code
	jbra _?L161					*	jra .L161		|
_?L104:							*.L104:
							*| gifex.c:371:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.l -148(a6),a4				*	move.l -148(%fp),%a4	| %sfp,
	move.b d6,(a2,a4.l)				*	move.b %d6,(%a2,%a4.l)	| pretmp_695, MEM[(unsigned char *)&lzw_pixel_stack + ivtmp.191_573 * 1]
							*| gifex.c:372:         code = lzw_prefix[ code ];
	lea _lzw_prefix,a5				*	lea lzw_prefix,%a5	|,
	move.l -186(a6),d5				*	move.l -186(%fp),%d5	| %sfp,
	move.w (a5,d5.l),a4				*	move.w (%a5,%d5.l),%a4	| lzw_prefix[code_359], code
	jbra _?L161					*	jra .L161		|
_?L131:							*.L131:
	move.l a1,d0					*	move.l %a1,%d0	| lzw$old_code, lzw$old_code
	jbra _?L94					*	jra .L94		|
_?L132:							*.L132:
							*| gifex.c:350:         lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	move.l -112(a6),-152(a6)			*	move.l -112(%fp),-152(%fp)	| %sfp, %sfp
							*| gifex.c:349:         lzw->code_size = lzw->data_size + 1;
	move.l -124(a6),-164(a6)			*	move.l -124(%fp),-164(%fp)	| %sfp, %sfp
							*| gifex.c:351:         lzw->available = lzw->clear_code + 2;
	move.l -116(a6),d1				*	move.l -116(%fp),%d1	| %sfp, lzw$available
							*| gifex.c:352:         lzw->old_code = -1;
	moveq #-1,d0					*	moveq #-1,%d0	|, lzw$old_code
	jbra _?L96					*	jra .L96		|
_?L130:							*.L130:
							*| gifex.c:301:   lzw->bits = 0;
	moveq #0,d2					*	moveq #0,%d2	| lzw$bits
							*| gifex.c:300:   lzw->datum = 0;
	clr.l -156(a6)					*	clr.l -156(%fp)	| %sfp
							*| gifex.c:299:   lzw->pixel_sp = 0;
	sub.l a0,a0					*	sub.l %a0,%a0	| lzw$pixel_sp
							*| gifex.c:298:   lzw->first = 0;
	sub.l a5,a5					*	sub.l %a5,%a5	| lzw$first
							*| gifex.c:297:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	move.l -112(a6),-152(a6)			*	move.l -112(%fp),-152(%fp)	| %sfp, %sfp
							*| gifex.c:295:   lzw->code_size = lzw->data_size + 1;
	move.l -124(a6),-164(a6)			*	move.l -124(%fp),-164(%fp)	| %sfp, %sfp
							*| gifex.c:293:   lzw->available = lzw->clear_code + 2;
	move.l -116(a6),d1				*	move.l -116(%fp),%d1	| %sfp, lzw$available
							*| gifex.c:313:   int input_buffer_ofs = 0;
	clr.l -136(a6)					*	clr.l -136(%fp)	| %sfp
							*| gifex.c:312:   int output_buffer_ofs = 0;
	clr.l -180(a6)					*	clr.l -180(%fp)	| %sfp
							*| gifex.c:294:   lzw->old_code = -1;
	move.w #-1,a1					*	move.w #-1,%a1	|, lzw$old_code
							*| gifex.c:401:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	lea _lzw_pixel_stack,a2				*	lea lzw_pixel_stack,%a2	|, tmp900
	jbra _?L92					*	jra .L92		|
_?L107:							*.L107:
							*| gifex.c:796:           memcpy(decode_buffer_ptrs[image_index],decode_buffer_ptr,size);
	move.l -180(a6),-(sp)				*	move.l -180(%fp),-(%sp)	| %sfp,
	move.l -160(a6),-(sp)				*	move.l -160(%fp),-(%sp)	| %sfp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _224,
	jbsr _memcpy					*	jsr memcpy		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L109:							*.L109:
							*| gifex.c:818:         free__(sub_block_data2);
	move.l -132(a6),-(sp)				*	move.l -132(%fp),-(%sp)	| %sfp,
	jbsr _free__					*	jsr free__		|
							*| gifex.c:820:         printf("decoded frame %d\n",image_index);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| image_index,
	pea _?LC41					*	pea .LC41		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:821:         image_index++;
	addq.l #1,d4					*	addq.l #1,%d4	|, image_index
							*| gifex.c:823:         if (image_index >= MAX_IMAGES) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.l #199,d4					*	cmp.l #199,%d4	|, image_index
	jble _?L83					*	jle .L83		|
_?L84:							*.L84:
	lea _free__,a3					*	lea free__,%a3	|, tmp886
							*| gifex.c:960:     if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbeq _?L122					*	jeq .L122		|
	lea (_transparent_color_indexes?0),a0		*	lea (transparent_color_indexes.0),%a0	|, ivtmp.171
	move.l #_decode_buffer_sizes?5,d6		*	move.l #decode_buffer_sizes.5,%d6	|, ivtmp.174
	lea (_decode_buffer_ptrs?6),a4			*	lea (decode_buffer_ptrs.6),%a4	|, ivtmp.177
	move.l #_image_blocks?4+2,-164(a6)		*	move.l #image_blocks.4+2,-164(%fp)	|, %sfp
	move.l #_local_palettes?2,d5			*	move.l #local_palettes.2,%d5	|, ivtmp.183
							*| gifex.c:965:         output_pixel(image_blocks[i].left_position,
	lea _output_pixel,a5				*	lea output_pixel,%a5	|, tmp898
_?L123:							*.L123:
							*| gifex.c:962:       for (int i = 0; i < image_index; i++) {
	cmp.l -144(a6),d4				*	cmp.l -144(%fp),%d4	| %sfp, image_index
	jbne _?L124					*	jne .L124		|
_?L122:							*.L122:
							*| gifex.c:981:       free__(decode_buffer_ptr);
	move.l -160(a6),-(sp)				*	move.l -160(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp886
							*| gifex.c:987:       free__(file_buffer_ptr);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a3)					*	jsr (%a3)		| tmp886
							*| gifex.c:993:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L167					*	jra .L167		|
_?L157:							*.L157:
							*| gifex.c:807:           output_pixel(image_block->left_position,
	move.l #_global_palette?7,d1			*	move.l #global_palette.7,%d1	|, iftmp.69_234
	tst.l -120(a6)					*	tst.l -120(%fp)	| %sfp
	jbeq _?L110					*	jeq .L110		|
	move.l #_local_palette?3,d1			*	move.l #local_palette.3,%d1	|, iftmp.69_234
_?L110:							*.L110:
	move.l -128(a6),-(sp)				*	move.l -128(%fp),-(%sp)	| %sfp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| iftmp.69_234,
	move.l -180(a6),-(sp)				*	move.l -180(%fp),-(%sp)	| %sfp,
	move.l -160(a6),-(sp)				*	move.l -160(%fp),-(%sp)	| %sfp,
							*| gifex.c:810:                       image_block->height,
	move.l d0,a0					*	move.l %d0,%a0	| tmp887, tmp753
	add.l d4,a0					*	add.l %d4,%a0	| image_index, tmp753
	add.l a0,a0					*	add.l %a0,%a0	| tmp753, tmp754
	add.l a0,a0					*	add.l %a0,%a0	| tmp754, tmp755
	sub.l d4,a0					*	sub.l %d4,%a0	| image_index, tmp756
	add.l a0,a0					*	add.l %a0,%a0	| tmp756, tmp757
	add.l #_image_blocks?4,a0			*	add.l #image_blocks.4,%a0	|, tmp758
							*| gifex.c:807:           output_pixel(image_block->left_position,
	moveq #0,d0					*	moveq #0,%d0	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height
	move.w 8(a0),d0					*	move.w 8(%a0),%d0	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].height,
	move.w 6(a0),d0					*	move.w 6(%a0),%d0	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].width, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].width,
	move.w 4(a0),d0					*	move.w 4(%a0),%d0	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].top_position, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].top_position
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].top_position,
	move.w 2(a0),d0					*	move.w 2(%a0),%d0	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].left_position, MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].left_position
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM <struct GIF_IMAGE_BLOCK[200]> [(struct GIF_IMAGE_BLOCK *)&image_blocks][image_index_181].left_position,
	jbsr _output_pixel				*	jsr output_pixel		|
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	jbra _?L109					*	jra .L109		|
_?L85:							*.L85:
							*| gifex.c:828:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L112					*	jne .L112		|
							*| gifex.c:830:         unsigned char extension_label = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:832:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L113					*	jne .L113		|
							*| gifex.c:844:           graphic_ctrl_ext.block_size        = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:845:           graphic_ctrl_ext.flag_code         = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
	move.b d0,d5					*	move.b %d0,%d5	| tmp958, _238
							*| gifex.c:846:           graphic_ctrl_ext.delay_time        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:847:           graphic_ctrl_ext.transparent_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
	move.b d0,d6					*	move.b %d0,%d6	| tmp959, _240
							*| gifex.c:850:           graphic_ctrl_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:851:           if (graphic_ctrl_ext.terminator != 0x00) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp960
	jbeq _?L114					*	jeq .L114		|
							*| gifex.c:852:             printf("error: graphic control extension read error.\n");
	pea _?LC42					*	pea .LC42		|
	jbra _?L163					*	jra .L163		|
_?L114:							*.L114:
							*| gifex.c:859:           transparent_color_index = (graphic_ctrl_ext.flag_code & 0x01) ? graphic_ctrl_ext.transparent_index : -1;
	btst #0,d5					*	btst #0,%d5	|, _238
	jbeq _?L135					*	jeq .L135		|
	and.l #255,d6					*	and.l #255,%d6	|,
_?L162:							*.L162:
	move.l d6,-128(a6)				*	move.l %d6,-128(%fp)	|, %sfp
							*| gifex.c:862:           transparent_color_indexes[image_index] = transparent_color_index;
	move.l d4,d0					*	move.l %d4,%d0	| image_index, tmp812
	add.l d4,d0					*	add.l %d4,%d0	| image_index, tmp812
	add.l d0,d0					*	add.l %d0,%d0	| tmp812, tmp813
	lea (_transparent_color_indexes?0),a0		*	lea (transparent_color_indexes.0),%a0	|, tmp811
	move.l -128(a6),(a0,d0.l)			*	move.l -128(%fp),(%a0,%d0.l)	| %sfp, transparent_color_indexes[image_index_181]
	jbra _?L83					*	jra .L83		|
_?L135:							*.L135:
							*| gifex.c:859:           transparent_color_index = (graphic_ctrl_ext.flag_code & 0x01) ? graphic_ctrl_ext.transparent_index : -1;
	moveq #-1,d6					*	moveq #-1,%d6	|,
	jbra _?L162					*	jra .L162		|
_?L113:							*.L113:
							*| gifex.c:864:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L116					*	jne .L116		|
							*| gifex.c:876:           comment_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:877:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, comment_ext.block_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _246
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _246,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:880:           comment_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:881:           if (comment_ext.terminator != 0x00) {
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp962
	jbeq _?L83					*	jeq .L83		|
							*| gifex.c:882:             printf("error: comment extension read error.\n");
	pea _?LC43					*	pea .LC43		|
	jbra _?L163					*	jra .L163		|
_?L116:							*.L116:
							*| gifex.c:887:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L118					*	jne .L118		|
							*| gifex.c:899:           plain_text_ext.block_size              = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:900:           plain_text_ext.text_grid_left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_file_buffer,a5			*	lea get_ushort_file_buffer,%a5	|, tmp825
	jbsr (a5)					*	jsr (%a5)		| tmp825
							*| gifex.c:901:           plain_text_ext.text_grid_top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp825
							*| gifex.c:902:           plain_text_ext.text_grid_width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp825
							*| gifex.c:903:           plain_text_ext.text_grid_height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp825
							*| gifex.c:904:           plain_text_ext.character_cell_width    = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:905:           plain_text_ext.character_cell_height   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:907:           plain_text_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:908:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, plain_text_ext.block_size2, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _249
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _249,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:910:           plain_text_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:911:           if (plain_text_ext.terminator != 0x00) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp964
	jbeq _?L83					*	jeq .L83		|
							*| gifex.c:912:             printf("error: plain text extension read error.\n");
	pea _?LC44					*	pea .LC44		|
	jbra _?L163					*	jra .L163		|
_?L118:							*.L118:
							*| gifex.c:917:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L120					*	jne .L120		|
							*| gifex.c:924:           app_ext.introducer = block_type;
	move.w #8703,-76(a6)				*	move.w #8703,-76(%fp)	|, MEM <unsigned short> [(unsigned char *)_210]
							*| gifex.c:927:           app_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:927:           app_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-74(a6)				*	move.b %d0,-74(%fp)	| tmp965, MEM[(struct  *)_210].block_size
							*| gifex.c:929:           memcpy_file_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, 8, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 8.w						*	pea 8.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	pea -73(a6)					*	pea -73(%fp)		|
	lea _memcpy_file_buffer,a5			*	lea memcpy_file_buffer,%a5	|, tmp849
	jbsr (a5)					*	jsr (%a5)		| tmp849
							*| gifex.c:930:           memcpy_file_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, 3, fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	pea -65(a6)					*	pea -65(%fp)		|
	jbsr (a5)					*	jsr (%a5)		| tmp849
							*| gifex.c:932:           app_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:933:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, app_ext.block_size2, fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _253
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _253,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:935:           app_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp578,
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp579
							*| gifex.c:936:           if (app_ext.terminator != 0x00) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp967
	jbeq _?L83					*	jeq .L83		|
							*| gifex.c:937:             printf("error: application extension read error.\n");
	pea _?LC45					*	pea .LC45		|
	jbra _?L163					*	jra .L163		|
_?L120:							*.L120:
							*| gifex.c:944:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC46					*	pea .LC46		|
_?L164:							*.L164:
							*| gifex.c:952:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:954:         break;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L84					*	jra .L84		|
_?L112:							*.L112:
							*| gifex.c:952:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC47					*	pea .LC47		|
	jbra _?L164					*	jra .L164		|
_?L124:							*.L124:
							*| gifex.c:965:         output_pixel(image_blocks[i].left_position,
	move.l (a0)+,-(sp)				*	move.l (%a0)+,-(%sp)	| MEM[(int *)_347],
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| ivtmp.183,
	move.l d6,a1					*	move.l %d6,%a1	| ivtmp.174,
	move.l (a1)+,-(sp)				*	move.l (%a1)+,-(%sp)	| MEM[(int *)_160],
	move.l a1,d6					*	move.l %a1,%d6	|, ivtmp.174
	move.l (a4),-(sp)				*	move.l (%a4),-(%sp)	| MEM[(unsigned char * *)_576],
	move.l -164(a6),a1				*	move.l -164(%fp),%a1	| %sfp,
	moveq #0,d0					*	moveq #0,%d0	| MEM[(short unsigned int *)_572 + 6B]
	move.w 6(a1),d0					*	move.w 6(%a1),%d0	| MEM[(short unsigned int *)_572 + 6B], MEM[(short unsigned int *)_572 + 6B]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_572 + 6B],
	move.w 4(a1),d0					*	move.w 4(%a1),%d0	| MEM[(short unsigned int *)_572 + 4B], MEM[(short unsigned int *)_572 + 4B]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_572 + 4B],
	move.w 2(a1),d0					*	move.w 2(%a1),%d0	| MEM[(short unsigned int *)_572 + 2B], MEM[(short unsigned int *)_572 + 2B]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_572 + 2B],
	move.w (a1),d0					*	move.w (%a1),%d0	| MEM[(short unsigned int *)_572], MEM[(short unsigned int *)_572]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_572],
	move.l a0,-172(a6)				*	move.l %a0,-172(%fp)	|,
	jbsr (a5)					*	jsr (%a5)		| tmp898
							*| gifex.c:974:         free__(decode_buffer_ptrs[i]);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l (a4)+,(sp)				*	move.l (%a4)+,(%sp)	| MEM[(unsigned char * *)_566 + 4294967292B],
	jbsr (a3)					*	jsr (%a3)		| tmp886
							*| gifex.c:962:       for (int i = 0; i < image_index; i++) {
	addq.l #1,-144(a6)				*	addq.l #1,-144(%fp)	|, %sfp
	moveq #22,d0					*	moveq #22,%d0	|,
	add.l d0,-164(a6)				*	add.l %d0,-164(%fp)	|, %sfp
	add.l #512,d5					*	add.l #512,%d5	|, ivtmp.183
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l -172(a6),a0				*	move.l -172(%fp),%a0	|,
	jbra _?L123					*	jra .L123		|
							*	.size	main, .-main
							*	.local	transparent_color_indexes.0
	.align 2	* workaround for 3 args .comm directive.
	.comm	_transparent_color_indexes?0,800	*	.comm	transparent_color_indexes.0,800,2
							*	.local	local_palettes.2
	.align 2	* workaround for 3 args .comm directive.
	.comm	_local_palettes?2,102400		*	.comm	local_palettes.2,102400,2
							*	.local	local_palette.3
	.align 2	* workaround for 3 args .comm directive.
	.comm	_local_palette?3,512			*	.comm	local_palette.3,512,2
							*	.local	image_blocks.4
	.align 2	* workaround for 3 args .comm directive.
	.comm	_image_blocks?4,4400			*	.comm	image_blocks.4,4400,2
							*	.local	decode_buffer_sizes.5
	.align 2	* workaround for 3 args .comm directive.
	.comm	_decode_buffer_sizes?5,800		*	.comm	decode_buffer_sizes.5,800,2
							*	.local	decode_buffer_ptrs.6
	.align 2	* workaround for 3 args .comm directive.
	.comm	_decode_buffer_ptrs?6,800		*	.comm	decode_buffer_ptrs.6,800,2
							*	.local	global_palette.7
	.align 2	* workaround for 3 args .comm directive.
	.comm	_global_palette?7,512			*	.comm	global_palette.7,512,2
							*	.local	opt.8
	.comm	_opt?8,64				*	.comm	opt.8,64,1
							*	.local	lzw_pixel_stack
	.comm	_lzw_pixel_stack,4096			*	.comm	lzw_pixel_stack,4096,1
							*	.local	lzw_suffix
	.align 2	* workaround for 3 args .comm directive.
	.comm	_lzw_suffix,8192			*	.comm	lzw_suffix,8192,2
							*	.local	lzw_prefix
	.align 2	* workaround for 3 args .comm directive.
	.comm	_lzw_prefix,8192			*	.comm	lzw_prefix,8192,2
	.globl	_g_rgb555_b				*	.globl	g_rgb555_b
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_rgb555_b, @object
							*	.size	g_rgb555_b, 512
_g_rgb555_b:						*g_rgb555_b:
	.ds.b	512					*	.zero	512
	.globl	_g_rgb555_g				*	.globl	g_rgb555_g
	.align	2					*	.align	2
							*	.type	g_rgb555_g, @object
							*	.size	g_rgb555_g, 512
_g_rgb555_g:						*g_rgb555_g:
	.ds.b	512					*	.zero	512
	.globl	_g_rgb555_r				*	.globl	g_rgb555_r
	.align	2					*	.align	2
							*	.type	g_rgb555_r, @object
							*	.size	g_rgb555_r, 512
_g_rgb555_r:						*g_rgb555_r:
	.ds.b	512					*	.zero	512
	.globl	_g_start_y				*	.globl	g_start_y
	.align	2					*	.align	2
							*	.type	g_start_y, @object
							*	.size	g_start_y, 4
_g_start_y:						*g_start_y:
	.ds.b	4					*	.zero	4
	.globl	_g_start_x				*	.globl	g_start_x
	.align	2					*	.align	2
							*	.type	g_start_x, @object
							*	.size	g_start_x, 4
_g_start_x:						*g_start_x:
	.ds.b	4					*	.zero	4
	.globl	_g_actual_height			*	.globl	g_actual_height
	.align	2					*	.align	2
							*	.type	g_actual_height, @object
							*	.size	g_actual_height, 4
_g_actual_height:					*g_actual_height:
	.ds.b	4					*	.zero	4
	.globl	_g_actual_width				*	.globl	g_actual_width
	.align	2					*	.align	2
							*	.type	g_actual_width, @object
							*	.size	g_actual_width, 4
_g_actual_width:					*g_actual_width:
	.ds.b	4					*	.zero	4
	.globl	_g_output_buffer_size			*	.globl	g_output_buffer_size
	.data						*	.data
	.align	2					*	.align	2
							*	.type	g_output_buffer_size, @object
							*	.size	g_output_buffer_size, 4
_g_output_buffer_size:					*g_output_buffer_size:
	.dc.l	1048576					*	.long	1048576
	.globl	_g_input_buffer_size			*	.globl	g_input_buffer_size
	.align	2					*	.align	2
							*	.type	g_input_buffer_size, @object
							*	.size	g_input_buffer_size, 4
_g_input_buffer_size:					*g_input_buffer_size:
	.dc.l	524288					*	.long	524288
	.globl	_g_buffer_memory_size_factor		*	.globl	g_buffer_memory_size_factor
	.align	2					*	.align	2
							*	.type	g_buffer_memory_size_factor, @object
							*	.size	g_buffer_memory_size_factor, 4
_g_buffer_memory_size_factor:				*g_buffer_memory_size_factor:
	.dc.l	8					*	.long	8
	.globl	_g_memory_cache_mode			*	.globl	g_memory_cache_mode
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_memory_cache_mode, @object
							*	.size	g_memory_cache_mode, 4
_g_memory_cache_mode:					*g_memory_cache_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_brightness				*	.globl	g_brightness
	.data						*	.data
	.align	2					*	.align	2
							*	.type	g_brightness, @object
							*	.size	g_brightness, 4
_g_brightness:						*g_brightness:
	.dc.l	100					*	.long	100
	.globl	_g_random_mode				*	.globl	g_random_mode
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_random_mode, @object
							*	.size	g_random_mode, 4
_g_random_mode:						*g_random_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_reversed_scroll			*	.globl	g_reversed_scroll
	.align	2					*	.align	2
							*	.type	g_reversed_scroll, @object
							*	.size	g_reversed_scroll, 4
_g_reversed_scroll:					*g_reversed_scroll:
	.ds.b	4					*	.zero	4
	.globl	_g_wait_mode				*	.globl	g_wait_mode
	.align	2					*	.align	2
							*	.type	g_wait_mode, @object
							*	.size	g_wait_mode, 4
_g_wait_mode:						*g_wait_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_centering_mode			*	.globl	g_centering_mode
	.align	2					*	.align	2
							*	.type	g_centering_mode, @object
							*	.size	g_centering_mode, 4
_g_centering_mode:					*g_centering_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_information_mode			*	.globl	g_information_mode
	.align	2					*	.align	2
							*	.type	g_information_mode, @object
							*	.size	g_information_mode, 4
_g_information_mode:					*g_information_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_extended_graphic_mode		*	.globl	g_extended_graphic_mode
	.align	2					*	.align	2
							*	.type	g_extended_graphic_mode, @object
							*	.size	g_extended_graphic_mode, 4
_g_extended_graphic_mode:				*g_extended_graphic_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_clear_screen				*	.globl	g_clear_screen
	.align	2					*	.align	2
							*	.type	g_clear_screen, @object
							*	.size	g_clear_screen, 4
_g_clear_screen:					*g_clear_screen:
	.ds.b	4					*	.zero	4
							*	.ident	"GCC: (GNU) 12.2.0"
