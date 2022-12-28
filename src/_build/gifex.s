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
	.dc.b $41,$6e,$69,$6d,$61,$74,$65,$64
	.dc.b $20,$47,$49,$46,$20,$69,$6d,$61
	.dc.b $67,$65,$20,$6c,$6f,$61,$64,$65
	.dc.b $72,$20,$77,$69,$74,$68,$20,$58
	.dc.b $45,$69,$4a,$20,$67,$72,$61,$70
	.dc.b $68,$69,$63,$20,$65,$78,$74,$65
	.dc.b $6e,$73,$69,$6f,$6e,$20,$73,$75
	.dc.b $70,$70,$6f,$72,$74,$20,$76,$65
	.dc.b $72,$73,$69,$6f,$6e,$20,$30,$2e
	.dc.b $31,$2e,$30,$20,$62,$79,$20,$74
	.dc.b $61,$6e,$74,$61,$6e,$20,$32,$30
	.dc.b $32,$32
	.dc.b $00					*	.string	"GIFEX - Animated GIF image loader with XEiJ graphic extension support version 0.1.0 by tantan 2022"
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
	.dc.b $20,$20,$20,$2d,$65,$20,$2e,$2e
	.dc.b $2e,$20,$75,$73,$65,$20,$65,$78
	.dc.b $74,$65,$6e,$64,$65,$64,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$6d
	.dc.b $6f,$64,$65,$20,$66,$6f,$72,$20
	.dc.b $58,$45,$69,$4a,$20,$28,$31,$30
	.dc.b $32,$34,$78,$31,$30,$32,$34,$78
	.dc.b $36,$35,$35,$33,$36,$29
	.dc.b $00					*	.string	"   -e ... use extended graphic mode for XEiJ (1024x1024x65536)"
_?LC5:							*.LC5:
	.dc.b $20,$20,$20,$2d,$68,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$74
	.dc.b $68,$69,$73,$20,$68,$65,$6c,$70
	.dc.b $20,$6d,$65,$73,$73,$61,$67,$65
	.dc.b $00					*	.string	"   -h ... show this help message"
_?LC6:							*.LC6:
	.dc.b $20,$20,$20,$2d,$69,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$66
	.dc.b $69,$6c,$65,$20,$69,$6e,$66,$6f
	.dc.b $72,$6d,$61,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -i ... show file information"
_?LC7:							*.LC7:
	.dc.b $20,$20,$20,$2d,$6e,$20,$2e,$2e
	.dc.b $2e,$20,$69,$6d,$61,$67,$65,$20
	.dc.b $63,$65,$6e,$74,$65,$72,$69,$6e
	.dc.b $67
	.dc.b $00					*	.string	"   -n ... image centering"
_?LC8:							*.LC8:
	.dc.b $20,$20,$20,$2d,$6b,$20,$2e,$2e
	.dc.b $2e,$20,$77,$61,$69,$74,$20,$6b
	.dc.b $65,$79,$20,$69,$6e,$70,$75,$74
	.dc.b $00					*	.string	"   -k ... wait key input"
_?LC9:							*.LC9:
	.dc.b $20,$20,$20,$2d,$76,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$72,$69
	.dc.b $67,$68,$74,$6e,$65,$73,$73,$20
	.dc.b $28,$30,$2d,$31,$30,$30,$29
	.dc.b $00					*	.string	"   -v<n> ... brightness (0-100)"
_?LC10:							*.LC10:
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
							*| gifex.c:1169:   printf("GIFEX - Animated GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1170:   printf("usage: gifex.x [options] <image.gif>\n");
	pea _?LC1					*	pea .LC1		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1171:   printf("options:\n");
	pea _?LC2					*	pea .LC2		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1172:   printf("   -c ... clear graphic screen\n");
	pea _?LC3					*	pea .LC3		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1173:   printf("   -e ... use extended graphic mode for XEiJ (1024x1024x65536)\n");
	pea _?LC4					*	pea .LC4		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1174:   printf("   -h ... show this help message\n");
	pea _?LC5					*	pea .LC5		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1175:   printf("   -i ... show file information\n");
	pea _?LC6					*	pea .LC6		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1176:   printf("   -n ... image centering\n");
	pea _?LC7					*	pea .LC7		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1177:   printf("   -k ... wait key input\n");
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1178:   printf("   -v<n> ... brightness (0-100)\n");
	pea _?LC9					*	pea .LC9		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1179:   printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
	pea _?LC10					*	pea .LC10		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:1180: }
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	rts						*	rts
							*	.size	show_help_message, .-show_help_message
	.align	2					*	.align	2
							*	.type	ushort_from_file_buffer, @function
_ushort_from_file_buffer:				*ushort_from_file_buffer:
	movem.l d3/a3/a4,-(sp)				*	movem.l #4120,-(%sp)	|,
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| file_buffer_ptr, file_buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 24(sp),d0				*	move.l 24(%sp),%d0	| fp, fp
							*| gifex.c:190:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),d3					*	move.l (%a3),%d3	| *file_buffer_ofs_ptr_30(D), ofs
							*| gifex.c:193:   if (ofs < g_input_buffer_size - 1) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.41_1
	move.l d1,a1					*	move.l %d1,%a1	| g_input_buffer_size.41_1, _2
	subq.l #1,a1					*	subq.l #1,%a1	|, _2
							*| gifex.c:193:   if (ofs < g_input_buffer_size - 1) {
	cmp.l a1,d3					*	cmp.l %a1,%d3	| _2, ofs
	jbge _?L3					*	jge .L3		|
							*| gifex.c:195:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[ofs+1] << 8);
	tst.b (a4,d3.l)					*	tst.b (%a4,%d3.l)	| *_4
	jbne _?L9					*	jne .L9		|
							*| gifex.c:195:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[ofs+1] << 8);
	tst.b 1(a4,d3.l)				*	tst.b 1(%a4,%d3.l)	| *_7
	sne d0						*	sne %d0		| tmp68
	ext.w d0					*	ext.w %d0	| tmp69
	ext.l d0					*	ext.l %d0	| tmp67
	neg.l d0					*	neg.l %d0	| iftmp.42_25
_?L4:							*.L4:
							*| gifex.c:196:     ofs += 2;
	addq.l #2,d3					*	addq.l #2,%d3	|, ofs
_?L5:							*.L5:
							*| gifex.c:209:   *file_buffer_ofs_ptr = ofs;
	move.l d3,(a3)					*	move.l %d3,(%a3)	| ofs, *file_buffer_ofs_ptr_30(D)
							*| gifex.c:212: }
	movem.l (sp)+,d3/a3/a4				*	movem.l (%sp)+,#6152	|,
	rts						*	rts
_?L9:							*.L9:
							*| gifex.c:195:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[ofs+1] << 8);
	moveq #1,d0					*	moveq #1,%d0	|, iftmp.42_25
	jbra _?L4					*	jra .L4		|
_?L3:							*.L3:
	lea _fread,a0					*	lea fread,%a0	|, tmp86
							*| gifex.c:197:   } else if (ofs < g_input_buffer_size) {
	cmp.l d1,d3					*	cmp.l %d1,%d3	| g_input_buffer_size.41_1, ofs
	jbge _?L6					*	jge .L6		|
							*| gifex.c:199:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size - 1, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l a1,-(sp)					*	move.l %a1,-(%sp)	| _2,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp86
							*| gifex.c:200:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[0] << 8);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.b (a4,d3.l)					*	tst.b (%a4,%d3.l)	| *_13
	jbne _?L10					*	jne .L10		|
							*| gifex.c:200:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[0] << 8);
	tst.b (a4)					*	tst.b (%a4)	| *file_buffer_ptr_32(D)
	sne d0						*	sne %d0		| tmp75
	ext.w d0					*	ext.w %d0	| tmp76
	ext.l d0					*	ext.l %d0	| tmp74
	neg.l d0					*	neg.l %d0	| iftmp.47_26
_?L7:							*.L7:
							*| gifex.c:201:     ofs = 1;
	moveq #1,d3					*	moveq #1,%d3	|, ofs
	jbra _?L5					*	jra .L5		|
_?L10:							*.L10:
							*| gifex.c:200:     us = file_buffer_ptr[ofs] || (file_buffer_ptr[0] << 8);
	moveq #1,d0					*	moveq #1,%d0	|, iftmp.47_26
	jbra _?L7					*	jra .L7		|
_?L6:							*.L6:
							*| gifex.c:204:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.41_1,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp86
							*| gifex.c:205:     us = file_buffer_ptr[0] || (file_buffer_ptr[1] << 8);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.b (a4)					*	tst.b (%a4)	| *file_buffer_ptr_32(D)
	jbne _?L11					*	jne .L11		|
							*| gifex.c:205:     us = file_buffer_ptr[0] || (file_buffer_ptr[1] << 8);
	tst.b 1(a4)					*	tst.b 1(%a4)	| MEM[(unsigned char *)file_buffer_ptr_32(D) + 1B]
	sne d0						*	sne %d0		| tmp82
	ext.w d0					*	ext.w %d0	| tmp83
	ext.l d0					*	ext.l %d0	| tmp81
	neg.l d0					*	neg.l %d0	| iftmp.51_27
_?L8:							*.L8:
							*| gifex.c:206:     ofs = 2;
	moveq #2,d3					*	moveq #2,%d3	|, ofs
	jbra _?L5					*	jra .L5		|
_?L11:							*.L11:
							*| gifex.c:205:     us = file_buffer_ptr[0] || (file_buffer_ptr[1] << 8);
	moveq #1,d0					*	moveq #1,%d0	|, iftmp.51_27
	jbra _?L8					*	jra .L8		|
							*	.size	ushort_from_file_buffer, .-ushort_from_file_buffer
	.align	2					*	.align	2
							*	.type	uchar_from_file_buffer, @function
_uchar_from_file_buffer:				*uchar_from_file_buffer:
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
	move.l 12(sp),a3				*	move.l 12(%sp),%a3	| file_buffer_ptr, file_buffer_ptr
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
							*| gifex.c:170:   int ofs = *file_buffer_ofs_ptr;
	move.l (a4),d0					*	move.l (%a4),%d0	| *file_buffer_ofs_ptr_9(D), ofs
							*| gifex.c:173:   if (ofs < g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.52_1
							*| gifex.c:173:   if (ofs < g_input_buffer_size) {
	cmp.l d1,d0					*	cmp.l %d1,%d0	| g_input_buffer_size.52_1, ofs
	jbge _?L13					*	jge .L13		|
							*| gifex.c:175:      uc = file_buffer_ptr[ofs++];
	move.l d0,d1					*	move.l %d0,%d1	| ofs, ofs
	addq.l #1,d1					*	addq.l #1,%d1	|, ofs
							*| gifex.c:175:      uc = file_buffer_ptr[ofs++];
	move.b (a3,d0.l),d0				*	move.b (%a3,%d0.l),%d0	| *_3, <retval>
_?L14:							*.L14:
							*| gifex.c:183:   *file_buffer_ofs_ptr = ofs;
	move.l d1,(a4)					*	move.l %d1,(%a4)	| ofs, *file_buffer_ofs_ptr_9(D)
							*| gifex.c:186: }
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	move.l (sp)+,a4					*	move.l (%sp)+,%a4	|,
	rts						*	rts
_?L13:							*.L13:
							*| gifex.c:177:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l 20(sp),-(sp)				*	move.l 20(%sp),-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.52_1,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:179:     uc = file_buffer_ptr[0];
	move.b (a3),d0					*	move.b (%a3),%d0	| *file_buffer_ptr_11(D), <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:180:     ofs = 1;
	moveq #1,d1					*	moveq #1,%d1	|, ofs
	jbra _?L14					*	jra .L14		|
							*	.size	uchar_from_file_buffer, .-uchar_from_file_buffer
	.align	2					*	.align	2
							*	.type	skip_file_buffer, @function
_skip_file_buffer:					*skip_file_buffer:
	movem.l d3/d4/a3,-(sp)				*	movem.l #6160,-(%sp)	|,
	move.l 16(sp),d2				*	move.l 16(%sp),%d2	| file_buffer_ptr, file_buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 24(sp),d3				*	move.l 24(%sp),%d3	| len, len
	move.l 28(sp),a2				*	move.l 28(%sp),%a2	| fp, fp
							*| gifex.c:241:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),a0					*	move.l (%a3),%a0	| *file_buffer_ofs_ptr_8(D), ofs
							*| gifex.c:243:   if ((ofs + len) <= g_input_buffer_size) {
	move.l a0,d0					*	move.l %a0,%d0	| ofs, _1
	add.l d3,d0					*	add.l %d3,%d0	| len, _1
							*| gifex.c:243:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.66_2
							*| gifex.c:243:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _1, g_input_buffer_size.66_2
	jbge _?L16					*	jge .L16		|
	lea _fread,a1					*	lea fread,%a1	|, tmp42
							*| gifex.c:246:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d1,a0					*	cmp.l %d1,%a0	| g_input_buffer_size.66_2, ofs
	jblt _?L17					*	jlt .L17		|
							*| gifex.c:248:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.66_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:249:     ofs = len;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
_?L16:							*.L16:
							*| gifex.c:257:   *file_buffer_ofs_ptr = ofs;
	move.l d0,(a3)					*	move.l %d0,(%a3)	| _1, *file_buffer_ofs_ptr_8(D)
							*| gifex.c:258: }
	movem.l (sp)+,d3/d4/a3				*	movem.l (%sp)+,#2072	|,
	rts						*	rts
_?L17:							*.L17:
							*| gifex.c:252:     int available = g_input_buffer_size - ofs;
	move.l d1,d4					*	move.l %d1,%d4	| g_input_buffer_size.66_2, available
	sub.l a0,d4					*	sub.l %a0,%d4	| ofs, available
							*| gifex.c:253:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.66_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
							*| gifex.c:254:     ofs = len - available;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
	sub.l d4,d0					*	sub.l %d4,%d0	| available, _1
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L16					*	jra .L16		|
							*	.size	skip_file_buffer, .-skip_file_buffer
	.align	2					*	.align	2
							*	.type	copy_from_file_buffer, @function
_copy_from_file_buffer:					*copy_from_file_buffer:
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)		*	movem.l #7710,-(%sp)	|,
	move.l 36(sp),a4				*	move.l 36(%sp),%a4	| dest_ptr, dest_ptr
	move.l 40(sp),a3				*	move.l 40(%sp),%a3	| file_buffer_ptr, file_buffer_ptr
	move.l 44(sp),a5				*	move.l 44(%sp),%a5	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 48(sp),d5				*	move.l 48(%sp),%d5	| len, len
	move.l 52(sp),d6				*	move.l 52(%sp),%d6	| fp, fp
							*| gifex.c:216:   int ofs = *file_buffer_ofs_ptr;
	move.l (a5),d1					*	move.l (%a5),%d1	| *file_buffer_ofs_ptr_19(D), ofs
							*| gifex.c:218:   if ((ofs + len) <= g_input_buffer_size) {
	move.l d1,d4					*	move.l %d1,%d4	| ofs, _13
	add.l d5,d4					*	add.l %d5,%d4	| len, _13
							*| gifex.c:218:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d0			*	move.l g_input_buffer_size,%d0	| g_input_buffer_size, g_input_buffer_size.28_2
	lea _memcpy,a6					*	lea memcpy,%a6	|, tmp77
							*| gifex.c:218:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d4,d0					*	cmp.l %d4,%d0	| _13, g_input_buffer_size.28_2
	jblt _?L19					*	jlt .L19		|
							*| gifex.c:220:     memcpy(dest_ptr, file_buffer_ptr + ofs, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L20:							*.L20:
							*| gifex.c:236:   *file_buffer_ofs_ptr = ofs;
	move.l d4,(a5)					*	move.l %d4,(%a5)	| _13, *file_buffer_ofs_ptr_19(D)
							*| gifex.c:237: }
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6		*	movem.l (%sp)+,#30840	|,
	rts						*	rts
_?L19:							*.L19:
	move.l #_fread,d4				*	move.l #fread,%d4	|, tmp78
							*| gifex.c:222:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| g_input_buffer_size.28_2, ofs
	jblt _?L21					*	jlt .L21		|
							*| gifex.c:224:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| g_input_buffer_size.28_2,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:225:     memcpy(dest_ptr, file_buffer_ptr, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
							*| gifex.c:226:     ofs = len;
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	jbra _?L20					*	jra .L20		|
_?L21:							*.L21:
							*| gifex.c:229:     int available = g_input_buffer_size - ofs;
	move.l d0,d3					*	move.l %d0,%d3	| g_input_buffer_size.28_2, available
	sub.l d1,d3					*	sub.l %d1,%d3	| ofs, available
							*| gifex.c:230:     memcpy(dest_ptr, file_buffer_ptr + ofs, available);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| available,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
							*| gifex.c:231:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:232:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	sub.l d3,d4					*	sub.l %d3,%d4	| available, _13
							*| gifex.c:232:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| _13,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	pea (a4,d3.l)					*	pea (%a4,%d3.l)		|
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	jbra _?L20					*	jra .L20		|
							*	.size	copy_from_file_buffer, .-copy_from_file_buffer
	.align	2					*	.align	2
							*	.type	free__, @function
_free__:						*free__:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| ptr, ptr
							*| gifex.c:347:   if (ptr == NULL) return;
	jbeq _?L22					*	jeq .L22		|
							*| gifex.c:350: }
							*| gifex.c:349:   MFREE(addr);
	jbra _MFREE					*	jra MFREE		|
_?L22:							*.L22:
							*| gifex.c:350: }
	rts						*	rts
							*	.size	free__, .-free__
	.data						*	.section	.rodata.str1.1
_?LC11:							*.LC11:
	.dc.b $79,$65,$73
	.dc.b $00					*	.string	"yes"
_?LC12:							*.LC12:
	.dc.b $6e,$6f
	.dc.b $00					*	.string	"no"
_?LC13:							*.LC13:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6c,$61,$72,$67,$65
	.dc.b $20,$6d,$65,$6d,$6f,$72,$79,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$2e
	.dc.b $00					*	.string	"error: too large memory factor."
_?LC14:							*.LC14:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$6f
	.dc.b $70,$74,$69,$6f,$6e,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown option (%s).\n"
_?LC15:							*.LC15:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6e
	.dc.b $6f,$20,$69,$6e,$70,$75,$74,$20
	.dc.b $66,$69,$6c,$65,$2e
	.dc.b $00					*	.string	"error: no input file."
_?LC16:							*.LC16:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: file read error (%s).\n"
_?LC17:							*.LC17:
	.dc.b $72,$62
	.dc.b $00					*	.string	"rb"
_?LC18:							*.LC18:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$20,$69,$6e,$70,$75,$74
	.dc.b $20,$66,$69,$6c,$65,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: cannot open input file (%s).\n"
_?LC19:							*.LC19:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$66,$69,$6c,$65,$20,$62
	.dc.b $75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for file buffer."
_?LC20:							*.LC20:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: file read error."
_?LC21:							*.LC21:
	.dc.b $47,$49,$46
	.dc.b $00					*	.string	"GIF"
_?LC22:							*.LC22:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $69,$67,$6e,$61,$74,$75,$72,$65
	.dc.b $20,$65,$72,$72,$6f,$72,$2e,$20
	.dc.b $6e,$6f,$74,$20,$61,$20,$47,$49
	.dc.b $46,$20,$66,$69,$6c,$65,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: signature error. not a GIF file (%s).\n"
_?LC23:							*.LC23:
	.dc.b $38,$39,$61
	.dc.b $00					*	.string	"89a"
_?LC24:							*.LC24:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$73,$75,$70,$70,$6f,$72,$74
	.dc.b $65,$64,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unsupported GIF version (%s).\n"
_?LC25:							*.LC25:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$6e,$61,$6d,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"     file name: %s\n"
_?LC26:							*.LC26:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     file size: %d\n"
_?LC27:							*.LC27:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$74,$69,$6d,$65,$3a,$20
	.dc.b $25,$30,$34,$64,$2d,$25,$30,$32
	.dc.b $64,$2d,$25,$30,$32,$64,$20,$25
	.dc.b $30,$32,$64,$3a,$25,$30,$32,$64
	.dc.b $3a,$25,$30,$32,$64,$0a
	.dc.b $00					*	.string	"     file time: %04d-%02d-%02d %02d:%02d:%02d\n"
_?LC28:							*.LC28:
	.dc.b $20,$20,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"   GIF version: %s\n"
_?LC29:							*.LC29:
	.dc.b $20,$20,$73,$63,$72,$65,$65,$6e
	.dc.b $20,$77,$69,$64,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  screen width: %d\n"
_?LC30:							*.LC30:
	.dc.b $20,$73,$63,$72,$65,$65,$6e,$20
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	" screen height: %d\n"
_?LC31:							*.LC31:
	.dc.b $20,$20,$20,$20,$20,$62,$69,$74
	.dc.b $20,$64,$65,$70,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     bit depth: %d\n"
_?LC32:							*.LC32:
	.dc.b $20,$47,$43,$54,$20,$61,$76,$61
	.dc.b $69,$6c,$61,$62,$6c,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	" GCT available: %s\n"
_?LC33:							*.LC33:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$6f,$72,$74,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"      GCT sort: %s\n"
_?LC34:							*.LC34:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"      GCT size: %d\n"
_?LC35:							*.LC35:
	.dc.b $42,$47,$20,$63,$6f,$6c,$6f,$72
	.dc.b $20,$69,$6e,$64,$65,$78,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"BG color index: %d\n"
_?LC36:							*.LC36:
	.dc.b $20,$20,$61,$73,$70,$65,$63,$74
	.dc.b $20,$72,$61,$74,$69,$6f,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  aspect ratio: %d\n"
	.globl	___divsi3				*	.globl	__divsi3
_?LC37:							*.LC37:
	.dc.b $67,$63,$74,$5f,$73,$69,$7a,$65
	.dc.b $3d,$25,$64,$0a
	.dc.b $00					*	.string	"gct_size=%d\n"
_?LC38:							*.LC38:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$69,$6e,$66,$6c,$61,$74
	.dc.b $65,$20,$62,$75,$66,$66,$65,$72
	.dc.b $2e
	.dc.b $00					*	.string	"error: cannot allocate memory for inflate buffer."
_?LC39:							*.LC39:
	.dc.b $45,$4f,$47
	.dc.b $00					*	.string	"EOG"
_?LC40:							*.LC40:
	.dc.b $49,$6d,$61,$67,$65,$20,$62,$6c
	.dc.b $6f,$63,$6b
	.dc.b $00					*	.string	"Image block"
_?LC41:							*.LC41:
	.dc.b $6c,$65,$66,$74,$3a,$25,$64,$2c
	.dc.b $74,$6f,$70,$3a,$25,$64,$2c,$77
	.dc.b $69,$64,$74,$68,$3a,$25,$64,$2c
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$25
	.dc.b $64,$0a
	.dc.b $00					*	.string	"left:%d,top:%d,width:%d,height:%d\n"
_?LC42:							*.LC42:
	.dc.b $6c,$6f,$63,$61,$6c,$20,$63,$6f
	.dc.b $6c,$6f,$72,$20,$74,$61,$62,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3d,$25
	.dc.b $64,$0a
	.dc.b $00					*	.string	"local color table size=%d\n"
_?LC43:							*.LC43:
	.dc.b $6c,$7a,$77,$20,$6d,$69,$6e,$20
	.dc.b $63,$6f,$64,$65,$20,$73,$69,$7a
	.dc.b $65,$3d,$25,$64,$0a
	.dc.b $00					*	.string	"lzw min code size=%d\n"
_?LC44:							*.LC44:
	.dc.b $67,$72,$61,$70,$68,$69,$63,$20
	.dc.b $63,$6f,$6e,$74,$72,$6f,$6c,$20
	.dc.b $65,$78,$74,$65,$6e,$73,$69,$6f
	.dc.b $6e
	.dc.b $00					*	.string	"graphic control extension"
_?LC45:							*.LC45:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: extension read error."
_?LC46:							*.LC46:
	.dc.b $63,$6f,$6d,$6d,$65,$6e,$74,$20
	.dc.b $65,$78,$74,$65,$6e,$73,$69,$6f
	.dc.b $6e
	.dc.b $00					*	.string	"comment extension"
_?LC47:							*.LC47:
	.dc.b $70,$6c,$61,$69,$6e,$20,$74,$65
	.dc.b $78,$74,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e
	.dc.b $00					*	.string	"plain text extension"
_?LC48:							*.LC48:
	.dc.b $61,$70,$70,$6c,$69,$63,$61,$74
	.dc.b $69,$6f,$6e,$20,$65,$78,$74,$65
	.dc.b $6e,$73,$69,$6f,$6e
	.dc.b $00					*	.string	"application extension"
_?LC49:							*.LC49:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC50:							*.LC50:
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
	link.w a6,#-112					*	link.w %fp,#-112	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d4					*	move.l 8(%fp),%d4	| argc, argc
							*| gifex.c:1188:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L25					*	jlt .L25		|
							*| gifex.c:1189:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L26:							*.L26:
							*| gifex.c:1190:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L24					*	jra .L24		|
_?L25:							*.L25:
	move.l 12(a6),a3				*	move.l 12(%fp),%a3	| argv, ivtmp.150
	addq.l #4,a3					*	addq.l #4,%a3	|, ivtmp.150
							*| gifex.c:1193:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| gifex.c:1185:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L33,a4				*	move.l #.L33,%a4	|, tmp529
_?L41:							*.L41:
							*| gifex.c:1194:     if (argv[i][0] == '-') {
	move.l (a3)+,a0					*	move.l (%a3)+,%a0	| MEM[(char * *)_429], _4
							*| gifex.c:1194:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L88					*	jne .L88		|
							*| gifex.c:1195:       if (argv[i][1] == 'c') {
	move.b 1(a0),d0					*	move.b 1(%a0),%d0	| MEM[(char *)_4 + 1B], _6
							*| gifex.c:1195:       if (argv[i][1] == 'c') {
	cmp.b #99,d0					*	cmp.b #99,%d0	|, _6
	jbne _?L28					*	jne .L28		|
							*| gifex.c:1196:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L27:							*.L27:
							*| gifex.c:1193:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| gifex.c:1193:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L41					*	jne .L41		|
							*| gifex.c:1225:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L42					*	jne .L42		|
							*| gifex.c:1226:     printf("error: no input file.\n");
	pea _?LC15					*	pea .LC15		|
	jbra _?L119					*	jra .L119		|
_?L28:							*.L28:
	cmp.b #110,d0					*	cmp.b #110,%d0	|, _6
	jbgt _?L29					*	jgt .L29		|
	cmp.b #97,d0					*	cmp.b #97,%d0	|, _6
	jble _?L30					*	jle .L30		|
	move.b d0,d1					*	move.b %d0,%d1	| _6, tmp197
	add.b #-98,d1					*	add.b #-98,%d1	|, tmp197
	cmp.b #12,d1					*	cmp.b #12,%d1	|, tmp197
	jbhi _?L31					*	jhi .L31		|
	and.l #255,d1					*	and.l #255,%d1	|, tmp198
	add.l d1,d1					*	add.l %d1,%d1	| tmp201
	move.w (a4,d1.l),d1				*	move.w (%a4,%d1.l),%d1	|, tmp202
	jmp 2(pc,d1.w)					*	jmp %pc@(2,%d1:w)	| tmp202
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&13
_?L33:							*.L33:
	.dc.w _?L37-_?L33				*	.word .L37-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L36-_?L33				*	.word .L36-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L35-_?L33				*	.word .L35-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L34-_?L33				*	.word .L34-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L31-_?L33				*	.word .L31-.L33
	.dc.w _?L32-_?L33				*	.word .L32-.L33
_?L29:							*.L29:
	cmp.b #118,d0					*	cmp.b #118,%d0	|, _6
	jbeq _?L38					*	jeq .L38		|
_?L30:							*.L30:
							*| gifex.c:1217:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC14					*	pea .LC14		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:1218:         return 1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L26					*	jra .L26		|
_?L36:							*.L36:
							*| gifex.c:1198:         g_extended_graphic_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_extended_graphic_mode		*	move.l %d2,g_extended_graphic_mode	|, g_extended_graphic_mode
	jbra _?L27					*	jra .L27		|
_?L35:							*.L35:
							*| gifex.c:1200:         g_information_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_information_mode			*	move.l %d0,g_information_mode	|, g_information_mode
	jbra _?L27					*	jra .L27		|
_?L32:							*.L32:
							*| gifex.c:1202:         g_centering_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_centering_mode			*	move.l %d1,g_centering_mode	|, g_centering_mode
	jbra _?L27					*	jra .L27		|
_?L34:							*.L34:
							*| gifex.c:1204:         g_wait_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_wait_mode				*	move.l %d2,g_wait_mode	|, g_wait_mode
	jbra _?L27					*	jra .L27		|
_?L38:							*.L38:
							*| gifex.c:1206:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1206:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp530, g_brightness
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L27					*	jra .L27		|
_?L37:							*.L37:
							*| gifex.c:1208:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1208:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _10, g_buffer_memory_size_factor
							*| gifex.c:1209:         if (g_buffer_memory_size_factor > 16) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	moveq #16,d1					*	moveq #16,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _10,
	jbge _?L27					*	jge .L27		|
							*| gifex.c:1210:           printf("error: too large memory factor.\n");
	pea _?LC13					*	pea .LC13		|
_?L119:							*.L119:
							*| gifex.c:1226:     printf("error: no input file.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1227:     return 1;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L26					*	jra .L26		|
_?L31:							*.L31:
							*| gifex.c:1213:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d0					*	cmp.b #104,%d0	|, _6
	jbne _?L30					*	jne .L30		|
							*| gifex.c:1214:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L40:							*.L40:
							*| gifex.c:1215:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L24:							*.L24:
							*| gifex.c:1274: }
	movem.l -144(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -144(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L88:							*.L88:
							*| gifex.c:1194:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L27					*	jra .L27		|
_?L42:							*.L42:
							*| gifex.c:1233:   initialize_lzw_dictionary(&dict,5);
	pea 5.w						*	pea 5.w		|
	lea (-98,a6),a3					*	lea (-98,%fp),%a3	|,, tmp211
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp211,
	jbsr _initialize_lzw_dictionary			*	jsr initialize_lzw_dictionary		|
							*| gifex.c:1234:   show_lzw_dictionary(&dict);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp211,
	jbsr _show_lzw_dictionary			*	jsr show_lzw_dictionary		|
							*| gifex.c:1237:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.14_14
	move.l d0,d1					*	move.l %d0,%d1	| g_buffer_memory_size_factor.14_14, tmp215
	swap d1						*	swap %d1	| tmp215
	clr.w d1					*	clr.w %d1	| tmp215
							*| gifex.c:1237:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d1,_g_input_buffer_size			*	move.l %d1,g_input_buffer_size	| tmp215, g_input_buffer_size
							*| gifex.c:1240:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp216
	swap d0						*	swap %d0	| tmp216
	clr.w d0					*	clr.w %d0	| tmp216
							*| gifex.c:1240:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp216, g_output_buffer_size
							*| gifex.c:1243:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.16_25
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbeq _?L43					*	jeq .L43		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.16_25
_?L43:							*.L43:
							*| gifex.c:1243:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.16_25, g_actual_width
							*| gifex.c:1244:   g_actual_height = g_extended_graphic_mode != 0 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.16_25, g_actual_height
							*| gifex.c:1246:    if (g_information_mode == 1) {
	moveq #1,d2					*	moveq #1,%d2	|,
	cmp.l _g_information_mode.l,d2			*	cmp.l g_information_mode.l,%d2	| g_information_mode,
	jbne _?L44					*	jne .L44		|
							*| gifex.c:1078:     int file_buffer_ofs = 0;
	clr.l -92(a6)					*	clr.l -92(%fp)	| MEM[(int *)_433]
							*| gifex.c:1082:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:1082:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp532
	jbeq _?L45					*	jeq .L45		|
							*| gifex.c:1083:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC16					*	pea .LC16		|
_?L120:							*.L120:
							*| gifex.c:1090:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L109:							*.L109:
							*| gifex.c:1164:     return 0;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L40					*	jra .L40		|
_?L45:							*.L45:
							*| gifex.c:1088:     fp = fopen(gif_file_name, "rb");
	pea _?LC17					*	pea .LC17		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,d4					*	move.l %d0,%d4	| tmp533, fp
							*| gifex.c:1089:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L47					*	jne .L47		|
							*| gifex.c:1090:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
	jbra _?L120					*	jra .L120		|
_?L47:							*.L47:
							*| gifex.c:341:   int addr = MALLOC(size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	jbsr _MALLOC					*	jsr MALLOC		|
	move.l d0,d3					*	move.l %d0,%d3	| tmp534, addr
							*| gifex.c:342:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	lea _fclose,a4					*	lea fclose,%a4	|, tmp513
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbhi _?L48					*	jhi .L48		|
							*| gifex.c:1096:     if (file_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| addr
	jbne _?L49					*	jne .L49		|
_?L48:							*.L48:
							*| gifex.c:1097:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC19					*	pea .LC19		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1098:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp513
	jbra _?L109					*	jra .L109		|
_?L49:							*.L49:
							*| gifex.c:1103:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| addr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:1104:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	lea _free__,a5					*	lea free__,%a5	|, tmp515
	tst.l d0					*	tst.l %d0	| tmp535
	jbgt _?L50					*	jgt .L50		|
							*| gifex.c:1105:       printf("error: file read error.\n");
	pea _?LC20					*	pea .LC20		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1106:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp513
							*| gifex.c:1107:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp515
							*| gifex.c:1108:       return -1;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L40					*	jra .L40		|
_?L50:							*.L50:
							*| gifex.c:1112:     header.signature[3] = '\0';
	clr.b -73(a6)					*	clr.b -73(%fp)	| MEM[(struct  *)_235].signature[3]
							*| gifex.c:1113:     copy_from_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	moveq #-92,d6					*	moveq #-92,%d6	|, tmp229
	add.l a6,d6					*	add.l %fp,%d6	|, tmp229
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	lea (-76,a6),a3					*	lea (-76,%fp),%a3	|,, tmp230
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp230,
	lea _copy_from_file_buffer,a0			*	lea copy_from_file_buffer,%a0	|, tmp231
	move.l a0,-112(a6)				*	move.l %a0,-112(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp231
							*| gifex.c:1114:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC21					*	pea .LC21		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp230,
	move.l #_strcmp,d7				*	move.l #strcmp,%d7	|, tmp233
	move.l d7,a1					*	move.l %d7,%a1	| tmp233,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1114:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp516
	move.l -112(a6),a0				*	move.l -112(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp536
	jbeq _?L51					*	jeq .L51		|
							*| gifex.c:1115:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC22					*	pea .LC22		|
_?L108:							*.L108:
							*| gifex.c:1125:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1126:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp513
							*| gifex.c:1127:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp515
							*| gifex.c:1128:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L40					*	jra .L40		|
_?L51:							*.L51:
							*| gifex.c:1122:     header.version[3] = '\0';
	clr.b -69(a6)					*	clr.b -69(%fp)	| MEM[(struct  *)_235].version[3]
							*| gifex.c:1123:     copy_from_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	pea -72(a6)					*	pea -72(%fp)		|
	jbsr (a0)					*	jsr (%a0)		| tmp231
							*| gifex.c:1124:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC23					*	pea .LC23		|
	pea -72(a6)					*	pea -72(%fp)		|
	move.l d7,a0					*	move.l %d7,%a0	| tmp233,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1124:     if (strcmp(header.version,"89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp537
	jbeq _?L52					*	jeq .L52		|
							*| gifex.c:1125:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea -72(a6)					*	pea -72(%fp)		|
	pea _?LC24					*	pea .LC24		|
	jbra _?L108					*	jra .L108		|
_?L52:							*.L52:
							*| gifex.c:1132:     header.logical_screen_width  = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l #_ushort_from_file_buffer,d7		*	move.l #ushort_from_file_buffer,%d7	|, tmp252
	move.l d7,a1					*	move.l %d7,%a1	| tmp252,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1132:     header.logical_screen_width  = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-68(a6)				*	move.w %d0,-68(%fp)	| tmp538, MEM[(struct  *)_235].logical_screen_width
							*| gifex.c:1133:     header.logical_screen_height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp252,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1133:     header.logical_screen_height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-66(a6)				*	move.w %d0,-66(%fp)	| tmp539, MEM[(struct  *)_235].logical_screen_height
							*| gifex.c:1134:     header.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l #_uchar_from_file_buffer,d7		*	move.l #uchar_from_file_buffer,%d7	|, tmp256
	move.l d7,a1					*	move.l %d7,%a1	| tmp256,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1134:     header.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-64(a6)				*	move.b %d0,-64(%fp)	| tmp540, MEM[(struct  *)_235].flag_code
							*| gifex.c:1135:     header.bg_color_index = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d4,(sp)					*	move.l %d4,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp256,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1135:     header.bg_color_index = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-63(a6)				*	move.b %d0,-63(%fp)	| tmp541, MEM[(struct  *)_235].bg_color_index
							*| gifex.c:1136:     header.aspect_ratio = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp229,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a1					*	move.l %d7,%a1	| tmp256,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:1136:     header.aspect_ratio = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-62(a6)				*	move.b %d0,-62(%fp)	| tmp542, MEM[(struct  *)_235].aspect_ratio
							*| gifex.c:1139:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC25					*	pea .LC25		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1140:     printf("     file size: %d\n", inf.filelen);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| MEM[(struct FILBUF *)_434].filelen,
	pea _?LC26					*	pea .LC26		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1141:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| MEM[(struct FILBUF *)_434].time, _81
							*| gifex.c:1141:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| MEM[(struct FILBUF *)_434].date, _89
							*| gifex.c:1141:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _81,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _81, tmp265
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp265
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp265,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d2					*	moveq #11,%d2	|,
	lsr.w d2,d1					*	lsr.w %d2,%d1	|, tmp268
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d1,d5					*	and.l %d1,%d5	| tmp268,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #31,d1					*	moveq #31,%d1	|,
	and.l d0,d1					*	and.l %d0,%d1	| _89,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _89, tmp272
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp272
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp272,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
							*| gifex.c:1141:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
	moveq #9,d5					*	moveq #9,%d5	|,
	lsr.w d5,d0					*	lsr.w %d5,%d0	|, tmp275
							*| gifex.c:1141:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f,inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp276
	move.l d0,d1					*	move.l %d0,%d1	|,
	and.l #4095,d1					*	and.l #4095,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC27					*	pea .LC27		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1142:     printf("   GIF version: %s\n", header.version);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	pea -72(a6)					*	pea -72(%fp)		|
	pea _?LC28					*	pea .LC28		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1143:     printf("  screen width: %d\n", header.logical_screen_width);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_235].logical_screen_width
	move.w -68(a6),d0				*	move.w -68(%fp),%d0	| MEM[(struct  *)_235].logical_screen_width, MEM[(struct  *)_235].logical_screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_235].logical_screen_width,
	pea _?LC29					*	pea .LC29		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1144:     printf(" screen height: %d\n", header.logical_screen_height);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_235].logical_screen_height
	move.w -66(a6),d0				*	move.w -66(%fp),%d0	| MEM[(struct  *)_235].logical_screen_height, MEM[(struct  *)_235].logical_screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_235].logical_screen_height,
	pea _?LC30					*	pea .LC30		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1145:     printf("     bit depth: %d\n", 1 + (header.flag_code & 0x70) >> 4);
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_235].flag_code, tmp286
	and.b #112,d0					*	and.b #112,%d0	|, tmp286
	addq.b #1,d0					*	addq.b #1,%d0	|, tmp287
							*| gifex.c:1145:     printf("     bit depth: %d\n", 1 + (header.flag_code & 0x70) >> 4);
	lsr.l #4,d0					*	lsr.l #4,%d0	|, tmp289
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d0,d2					*	and.l %d0,%d2	| tmp289,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	pea _?LC31					*	pea .LC31		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1146:     printf(" GCT available: %s\n", header.flag_code & 0x80 ? "yes" : "no");
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l #_?LC12,d0				*	move.l #.LC12,%d0	|, iftmp.24_109
	tst.b -64(a6)					*	tst.b -64(%fp)	| MEM[(struct  *)_235].flag_code
	jbge _?L53					*	jge .L53		|
	move.l #_?LC11,d0				*	move.l #.LC11,%d0	|, iftmp.24_109
_?L53:							*.L53:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.24_109,
	pea _?LC32					*	pea .LC32		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1147:     printf("      GCT sort: %s\n", header.flag_code & 0x88 == 0x88 ? "yes" : "no");
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l #_?LC12,d0				*	move.l #.LC12,%d0	|, iftmp.25_112
	btst #0,-64(a6)					*	btst #0,-64(%fp)	|, MEM[(struct  *)_235].flag_code
	jbeq _?L54					*	jeq .L54		|
	move.l #_?LC11,d0				*	move.l #.LC11,%d0	|, iftmp.25_112
_?L54:							*.L54:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.25_112,
	pea _?LC33					*	pea .LC33		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1148:     printf("      GCT size: %d\n", header.flag_code & 0x07);
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_235].flag_code, tmp294
	and.b #7,d0					*	and.b #7,%d0	|, tmp294
	moveq #7,d5					*	moveq #7,%d5	|,
	and.l d0,d5					*	and.l %d0,%d5	| tmp294,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	pea _?LC34					*	pea .LC34		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1149:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_235].bg_color_index
	move.b -63(a6),d0				*	move.b -63(%fp),%d0	| MEM[(struct  *)_235].bg_color_index, MEM[(struct  *)_235].bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_235].bg_color_index,
	pea _?LC35					*	pea .LC35		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1150:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_235].aspect_ratio
	move.b -62(a6),d0				*	move.b -62(%fp),%d0	| MEM[(struct  *)_235].aspect_ratio, MEM[(struct  *)_235].aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_235].aspect_ratio,
	pea _?LC36					*	pea .LC36		|
	jbsr (a3)					*	jsr (%a3)		| tmp516
							*| gifex.c:1154:       fclose(fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d4,(sp)					*	move.l %d4,(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp513
							*| gifex.c:1160:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp515
	jbra _?L109					*	jra .L109		|
_?L44:							*.L44:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _200
							*| gifex.c:263:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.144
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.137
							*| gifex.c:264:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	lea _g_rgb555_r,a5				*	lea g_rgb555_r,%a5	|, tmp310
							*| gifex.c:265:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	lea _g_rgb555_g,a4				*	lea g_rgb555_g,%a4	|, tmp312
							*| gifex.c:266:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	lea _g_rgb555_b,a3				*	lea g_rgb555_b,%a3	|, tmp314
_?L56:							*.L56:
							*| gifex.c:263:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.137,
	jbsr ___divsi3					*	jsr __divsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:263:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp309
							*| gifex.c:264:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp311
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp311
							*| gifex.c:264:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp311
	move.w d1,(a5,d4.l)				*	move.w %d1,(%a5,%d4.l)	| tmp311, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.144_143 * 1]
							*| gifex.c:265:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp313
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp313
							*| gifex.c:265:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp313
	move.w d1,(a4,d4.l)				*	move.w %d1,(%a4,%d4.l)	| tmp313, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.144_143 * 1]
							*| gifex.c:266:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp309, tmp315
							*| gifex.c:266:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp315
	move.w d0,(a3,d4.l)				*	move.w %d0,(%a3,%d4.l)	| tmp315, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.144_143 * 1]
							*| gifex.c:262:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _200, ivtmp.137
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.144
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.144
	jbne _?L56					*	jne .L56		|
							*| gifex.c:286:   if (g_clear_screen != 0) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L57					*	jeq .L57		|
							*| gifex.c:287:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L57:							*.L57:
							*| gifex.c:291:   ssp = SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	lea _SUPER,a3					*	lea SUPER,%a3	|, tmp317
	jbsr (a3)					*	jsr (%a3)		| tmp317
							*| gifex.c:294:   while(!(*gpip & 0x10));
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L58:							*.L58:
							*| gifex.c:294:   while(!(*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _187
							*| gifex.c:294:   while(!(*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _187
	jbeq _?L58					*	jeq .L58		|
_?L59:							*.L59:
							*| gifex.c:295:   while( (*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _189
							*| gifex.c:295:   while( (*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _189
	jbne _?L59					*	jne .L59		|
							*| gifex.c:298:   crtc_r00_ptr[0] = 0x0089;
	move.w #137,15204352				*	move.w #137,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| gifex.c:299:   crtc_r00_ptr[1] = 0x000e;
	move.w #14,15204354				*	move.w #14,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| gifex.c:300:   crtc_r00_ptr[2] = 0x001c;
	move.w #28,15204356				*	move.w #28,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| gifex.c:301:   crtc_r00_ptr[3] = 0x007c;
	move.w #124,15204358				*	move.w #124,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| gifex.c:302:   crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| gifex.c:303:   crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| gifex.c:304:   crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| gifex.c:305:   crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| gifex.c:306:   crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| gifex.c:309:   if (g_extended_graphic_mode == 0) {
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbne _?L60					*	jne .L60		|
							*| gifex.c:310:     *crtc_r20_ptr = 0x0316;   // memory mode 3
	move.w #790,15204392				*	move.w #790,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:311:     *vdc_r1_ptr = 3;          // memory mode 3
	move.w #3,15213568				*	move.w #3,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:312:     *vdc_r3_ptr = 0x2f;       // graphic on (512x512)
	move.w #47,15214080				*	move.w #47,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:313:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:314:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
							*| gifex.c:315:     crtc_r12_ptr[2] = 0;          // scroll position X
	move.w #0,15204380				*	move.w #0,15204380	|, MEM[(volatile short unsigned int *)15204380B]
							*| gifex.c:316:     crtc_r12_ptr[3] = 0;          // scroll position Y
	move.w #0,15204382				*	move.w #0,15204382	|, MEM[(volatile short unsigned int *)15204382B]
							*| gifex.c:317:     crtc_r12_ptr[4] = 0;          // scroll position X
	move.w #0,15204384				*	move.w #0,15204384	|, MEM[(volatile short unsigned int *)15204384B]
							*| gifex.c:318:     crtc_r12_ptr[5] = 0;          // scroll position Y
	move.w #0,15204386				*	move.w #0,15204386	|, MEM[(volatile short unsigned int *)15204386B]
							*| gifex.c:319:     crtc_r12_ptr[6] = 0;          // scroll position X
	move.w #0,15204388				*	move.w #0,15204388	|, MEM[(volatile short unsigned int *)15204388B]
							*| gifex.c:320:     crtc_r12_ptr[7] = 0;          // scroll position Y
	move.w #0,15204390				*	move.w #0,15204390	|, MEM[(volatile short unsigned int *)15204390B]
_?L61:							*.L61:
							*| gifex.c:263:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	move.l #15212544,a0				*	move.l #15212544,%a0	|, palette_ptr
	moveq #1,d1					*	moveq #1,%d1	|, i
_?L62:							*.L62:
							*| gifex.c:331:     *palette_ptr++ = (unsigned short)i;
	move.w d1,(a0)					*	move.w %d1,(%a0)	| i, *palette_ptr_437
							*| gifex.c:332:     *palette_ptr++ = (unsigned short)i;
	move.w d1,2(a0)					*	move.w %d1,2(%a0)	| i, MEM[(volatile short unsigned int *)palette_ptr_293 + 2B]
	addq.l #4,a0					*	addq.l #4,%a0	|, palette_ptr
							*| gifex.c:330:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	add.l #514,d1					*	add.l #514,%d1	|, i
							*| gifex.c:330:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	cmp.l #65793,d1					*	cmp.l #65793,%d1	|, i
	jbne _?L62					*	jne .L62		|
							*| gifex.c:336:   SUPER(ssp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| ssp,
	jbsr (a3)					*	jsr (%a3)		| tmp317
							*| gifex.c:1258:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| gifex.c:1261:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	| tmp545, %sfp
							*| gifex.c:1262:   C_FNKMOD(3);
	pea 3.w						*	pea 3.w		|
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
							*| gifex.c:792:     int file_buffer_ofs = 0;
	clr.l -96(a6)					*	clr.l -96(%fp)	| file_buffer_ofs
							*| gifex.c:797:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:797:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp546
	jbeq _?L63					*	jeq .L63		|
							*| gifex.c:798:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC16					*	pea .LC16		|
_?L115:							*.L115:
							*| gifex.c:805:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L116:							*.L116:
							*| gifex.c:806:       return -1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L64:							*.L64:
							*| gifex.c:1268:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| gifex.c:1271:   C_FNKMOD(func_key_display_mode);
	move.l -108(a6),-(sp)				*	move.l -108(%fp),-(%sp)	| %sfp,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
							*| gifex.c:1273:   return 0;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L40					*	jra .L40		|
_?L60:							*.L60:
							*| gifex.c:322:     *crtc_r20_ptr = 0x0716;   // memory mode 7 (for XEiJ only)
	move.w #1814,15204392				*	move.w #1814,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:323:     *vdc_r1_ptr = 7;          // memory mode 7 (for XEiJ only)
	move.w #7,15213568				*	move.w #7,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:324:     *vdc_r3_ptr = 0x30;       // graphic on (1024x1024)
	move.w #48,15214080				*	move.w #48,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:325:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:326:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
	jbra _?L61					*	jra .L61		|
_?L63:							*.L63:
							*| gifex.c:803:     fp = fopen(gif_file_name, "rb");
	pea _?LC17					*	pea .LC17		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,d3					*	move.l %d0,%d3	| tmp547, fp
							*| gifex.c:804:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L65					*	jne .L65		|
							*| gifex.c:805:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
	jbra _?L115					*	jra .L115		|
_?L65:							*.L65:
							*| gifex.c:341:   int addr = MALLOC(size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	jbsr _MALLOC					*	jsr MALLOC		|
	move.l d0,d4					*	move.l %d0,%d4	| tmp548, addr
							*| gifex.c:342:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbhi _?L66					*	jhi .L66		|
							*| gifex.c:811:     if (file_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| addr
	jbne _?L67					*	jne .L67		|
_?L66:							*.L66:
							*| gifex.c:812:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC19					*	pea .LC19		|
_?L121:							*.L121:
							*| gifex.c:863:       printf("error: cannot allocate memory for inflate buffer.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:864:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L116					*	jra .L116		|
_?L67:							*.L67:
							*| gifex.c:818:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| addr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:819:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp549
	jbgt _?L68					*	jgt .L68		|
							*| gifex.c:820:       printf("error: file read error.\n");
	pea _?LC20					*	pea .LC20		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:821:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:822:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _free__					*	jsr free__		|
_?L117:							*.L117:
							*| gifex.c:1068:     return 0;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L64					*	jra .L64		|
_?L68:							*.L68:
							*| gifex.c:827:     header.signature[3] = '\0';
	clr.b -89(a6)					*	clr.b -89(%fp)	| MEM[(struct  *)_433].signature[3]
							*| gifex.c:828:     copy_from_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	lea (-96,a6),a3					*	lea (-96,%fp),%a3	|,, tmp363
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	lea (-92,a6),a4					*	lea (-92,%fp),%a4	|,, tmp364
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp364,
	move.l #_copy_from_file_buffer,d7		*	move.l #copy_from_file_buffer,%d7	|, tmp365
	move.l d7,a0					*	move.l %d7,%a0	| tmp365,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:829:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC21					*	pea .LC21		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp364,
	lea _strcmp,a4					*	lea strcmp,%a4	|, tmp367
	jbsr (a4)					*	jsr (%a4)		| tmp367
							*| gifex.c:829:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp550
	jbeq _?L69					*	jeq .L69		|
							*| gifex.c:830:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC22					*	pea .LC22		|
_?L118:							*.L118:
							*| gifex.c:840:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:841:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:842:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _free__					*	jsr free__		|
							*| gifex.c:843:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L64					*	jra .L64		|
_?L69:							*.L69:
							*| gifex.c:837:     header.version[3] = '\0';
	clr.b -85(a6)					*	clr.b -85(%fp)	| MEM[(struct  *)_433].version[3]
							*| gifex.c:838:     copy_from_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	lea (-88,a6),a5					*	lea (-88,%fp),%a5	|,, tmp374
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp374,
	move.l d7,a1					*	move.l %d7,%a1	| tmp365,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:839:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC23					*	pea .LC23		|
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp374,
	jbsr (a4)					*	jsr (%a4)		| tmp367
							*| gifex.c:839:     if (strcmp(header.version,"89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp551
	jbeq _?L70					*	jeq .L70		|
							*| gifex.c:840:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp374,
	pea _?LC24					*	pea .LC24		|
	jbra _?L118					*	jra .L118		|
_?L70:							*.L70:
							*| gifex.c:847:     header.logical_screen_width  = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	lea _ushort_from_file_buffer,a5			*	lea ushort_from_file_buffer,%a5	|, tmp386
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:847:     header.logical_screen_width  = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-84(a6)				*	move.w %d0,-84(%fp)	| tmp552, MEM[(struct  *)_433].logical_screen_width
							*| gifex.c:848:     header.logical_screen_height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:848:     header.logical_screen_height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-82(a6)				*	move.w %d0,-82(%fp)	| tmp553, MEM[(struct  *)_433].logical_screen_height
							*| gifex.c:849:     header.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	lea _uchar_from_file_buffer,a4			*	lea uchar_from_file_buffer,%a4	|, tmp390
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:849:     header.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-80(a6)				*	move.b %d0,-80(%fp)	| tmp554, MEM[(struct  *)_433].flag_code
							*| gifex.c:850:     header.bg_color_index = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:850:     header.bg_color_index = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-79(a6)				*	move.b %d0,-79(%fp)	| tmp555, MEM[(struct  *)_433].bg_color_index
							*| gifex.c:851:     header.aspect_ratio = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:851:     header.aspect_ratio = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-78(a6)				*	move.b %d0,-78(%fp)	| tmp556, MEM[(struct  *)_433].aspect_ratio
							*| gifex.c:854:     if (header.flag_code & 0x80) {
	move.b -80(a6),d0				*	move.b -80(%fp),%d0	| MEM[(struct  *)_433].flag_code, _140
							*| gifex.c:854:     if (header.flag_code & 0x80) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	jbpl _?L71					*	jpl .L71		|
							*| gifex.c:855:       int gct_size = 3 * (1 << (1 + (header.flag_code & 0x07)));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp396
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp397
							*| gifex.c:855:       int gct_size = 3 * (1 << (1 + (header.flag_code & 0x07)));
	moveq #3,d5					*	moveq #3,%d5	|, tmp398
	lsl.l d0,d5					*	lsl.l %d0,%d5	| tmp397, gct_size
							*| gifex.c:856:       printf("gct_size=%d\n",gct_size);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gct_size,
	pea _?LC37					*	pea .LC37		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:857:       skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, gct_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gct_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
_?L71:							*.L71:
							*| gifex.c:341:   int addr = MALLOC(size);
	move.l _g_output_buffer_size,-(sp)		*	move.l g_output_buffer_size,-(%sp)	| g_output_buffer_size,
	jbsr _MALLOC					*	jsr MALLOC		|
	move.l d0,d6					*	move.l %d0,%d6	| tmp557, addr
							*| gifex.c:342:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbhi _?L72					*	jhi .L72		|
							*| gifex.c:862:     if (decode_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| addr
	jbne _?L73					*	jne .L73		|
_?L72:							*.L72:
							*| gifex.c:863:       printf("error: cannot allocate memory for inflate buffer.\n");
	pea _?LC38					*	pea .LC38		|
	jbra _?L121					*	jra .L121		|
_?L73:							*.L73:
							*| gifex.c:872:       unsigned char block_type = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:874:       if (block_type == GIF_TRAILOR) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbne _?L74					*	jne .L74		|
							*| gifex.c:878:         printf("EOG\n");
	pea _?LC39					*	pea .LC39		|
_?L123:							*.L123:
							*| gifex.c:962:             printf("error: extension read error.\n");
	jbsr _puts					*	jsr puts		|
_?L113:							*.L113:
							*| gifex.c:1029:             break;
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L75:							*.L75:
							*| gifex.c:1052:       free__(decode_buffer_ptr);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _free__,a3					*	lea free__,%a3	|, tmp507
	jbsr (a3)					*	jsr (%a3)		| tmp507
							*| gifex.c:1058:       free__(file_buffer_ptr);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp507
							*| gifex.c:1064:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L117					*	jra .L117		|
_?L74:							*.L74:
							*| gifex.c:883:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L76					*	jne .L76		|
							*| gifex.c:890:         printf("Image block\n");
	pea _?LC40					*	pea .LC40		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:895:         image_block.left_position = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
	move.w d0,-104(a6)				*	move.w %d0,-104(%fp)	| tmp559, %sfp
							*| gifex.c:896:         image_block.top_position = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
	move.w d0,-102(a6)				*	move.w %d0,-102(%fp)	| tmp560, %sfp
							*| gifex.c:897:         image_block.width = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
	move.w d0,-100(a6)				*	move.w %d0,-100(%fp)	| tmp561, %sfp
							*| gifex.c:898:         image_block.height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
	move.w d0,d7					*	move.w %d0,%d7	| tmp562, _152
							*| gifex.c:899:         image_block.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
	move.b d0,d5					*	move.b %d0,%d5	| tmp563, _153
							*| gifex.c:902:         printf("left:%d,top:%d,width:%d,height:%d\n",
	move.w d7,-(sp)					*	move.w %d7,-(%sp)	| _152,
	clr.w -(sp)					*	clr.w -(%sp)	|
	move.w -100(a6),-(sp)				*	move.w -100(%fp),-(%sp)	| %sfp,
	clr.w -(sp)					*	clr.w -(%sp)	|
	move.w -102(a6),-(sp)				*	move.w -102(%fp),-(%sp)	| %sfp,
	clr.w -(sp)					*	clr.w -(%sp)	|
	move.w -104(a6),-(sp)				*	move.w -104(%fp),-(%sp)	| %sfp,
	clr.w -(sp)					*	clr.w -(%sp)	|
	pea _?LC41					*	pea .LC41		|
	move.l #_printf,d7				*	move.l #printf,%d7	|, tmp423
	move.l d7,a0					*	move.l %d7,%a0	| tmp423,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:910:         if (image_block.flag_code & 0x80) {
	lea (44,sp),sp					*	lea (44,%sp),%sp	|,
	tst.b d5					*	tst.b %d5	| _153
	jbge _?L77					*	jge .L77		|
							*| gifex.c:911:           int local_color_table_size = 3 * (1 << (1 + (image_block.flag_code & 0x07)));
	moveq #7,d0					*	moveq #7,%d0	|,
	and.l d0,d5					*	and.l %d0,%d5	|, tmp425
	addq.l #1,d5					*	addq.l #1,%d5	|, tmp426
							*| gifex.c:911:           int local_color_table_size = 3 * (1 << (1 + (image_block.flag_code & 0x07)));
	moveq #3,d0					*	moveq #3,%d0	|, tmp427
	lsl.l d5,d0					*	lsl.l %d5,%d0	| tmp426, local_color_table_size
							*| gifex.c:912:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, local_color_table_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| local_color_table_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	move.l d0,-112(a6)				*	move.l %d0,-112(%fp)	|,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:914:           printf("local color table size=%d\n",local_color_table_size);
	move.l -112(a6),d0				*	move.l -112(%fp),%d0	|,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| local_color_table_size,
	pea _?LC42					*	pea .LC42		|
	move.l d7,a0					*	move.l %d7,%a0	| tmp423,
	jbsr (a0)					*	jsr (%a0)		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
_?L77:							*.L77:
							*| gifex.c:919:         image_block.lzw_min_code_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:921:         printf("lzw min code size=%d\n",image_block.lzw_min_code_size);
	and.l #255,d0					*	and.l #255,%d0	|, _163
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _163,
	pea _?LC43					*	pea .LC43		|
	move.l d7,a1					*	move.l %d7,%a1	| tmp423,
	jbsr (a1)					*	jsr (%a1)		|
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
_?L79:							*.L79:
							*| gifex.c:929:           unsigned char data_chunk_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:933:           if (data_chunk_size == 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| data_chunk_size
	jbeq _?L73					*	jeq .L73		|
							*| gifex.c:936:             skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, data_chunk_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, data_chunk_size
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| data_chunk_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L79					*	jra .L79		|
_?L76:							*.L76:
							*| gifex.c:943:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L80					*	jne .L80		|
							*| gifex.c:945:         unsigned char extension_label = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:947:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L81					*	jne .L81		|
							*| gifex.c:952:           printf("graphic control extension\n");
	pea _?LC44					*	pea .LC44		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:956:           graphic_ctrl_ext.block_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:957:           graphic_ctrl_ext.flag_code = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:958:           graphic_ctrl_ext.delay_time = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:959:           graphic_ctrl_ext.transparent_color_index = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:960:           graphic_ctrl_ext.terminator = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:961:           if (graphic_ctrl_ext.terminator != 0x00) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
_?L111:							*.L111:
	tst.b d0					*	tst.b %d0	| tmp567
	jbeq _?L73					*	jeq .L73		|
							*| gifex.c:962:             printf("error: extension read error.\n");
	pea _?LC45					*	pea .LC45		|
	jbra _?L123					*	jra .L123		|
_?L81:							*.L81:
							*| gifex.c:967:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L82					*	jne .L82		|
							*| gifex.c:972:           printf("comment extension\n");
	pea _?LC46					*	pea .LC46		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:976:           comment_ext.block_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:977:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, comment_ext.block_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _170
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _170,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:978:           comment_ext.terminator = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
_?L122:							*.L122:
							*| gifex.c:1003:           plain_text_ext.terminator = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1005:           if (plain_text_ext.terminator != 0x00) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L111					*	jra .L111		|
_?L82:							*.L82:
							*| gifex.c:985:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L84					*	jne .L84		|
							*| gifex.c:990:           printf("plain text extension\n");
	pea _?LC47					*	pea .LC47		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:994:           plain_text_ext.block_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:995:           plain_text_ext.text_grid_left_position = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:996:           plain_text_ext.text_grid_top_position = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:997:           plain_text_ext.text_grid_width = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:998:           plain_text_ext.text_grid_height = ushort_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp386
							*| gifex.c:999:           plain_text_ext.character_cell_width = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1000:           plain_text_ext.character_cell_height = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1001:           plain_text_ext.block_size2 = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1002:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, plain_text_ext.block_size2, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _173
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _173,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:1003:           plain_text_ext.terminator = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	jbra _?L122					*	jra .L122		|
_?L84:							*.L84:
							*| gifex.c:1011:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L85					*	jne .L85		|
							*| gifex.c:1016:           printf("application extension\n");
	pea _?LC48					*	pea .LC48		|
	move.l #_puts,d5				*	move.l #puts,%d5	|, tmp484
	move.l d5,a0					*	move.l %d5,%a0	| tmp484,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:1018:           app_ext.introducer = block_type;
	move.w #8703,-76(a6)				*	move.w #8703,-76(%fp)	|, MEM <unsigned short> [(unsigned char *)_235]
							*| gifex.c:1020:           app_ext.block_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1020:           app_ext.block_size = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-74(a6)				*	move.b %d0,-74(%fp)	| tmp572, MEM[(struct  *)_235].block_size
							*| gifex.c:1021:           copy_from_file_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, 8, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 8.w						*	pea 8.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	pea -73(a6)					*	pea -73(%fp)		|
	jbsr _copy_from_file_buffer			*	jsr copy_from_file_buffer		|
							*| gifex.c:1022:           copy_from_file_buffer(app_ext.auth_code, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	pea -65(a6)					*	pea -65(%fp)		|
	jbsr _copy_from_file_buffer			*	jsr copy_from_file_buffer		|
							*| gifex.c:1023:           app_ext.block_size2 = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1024:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, app_ext.block_size2, fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _177
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _177,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:1025:           app_ext.terminator = uchar_from_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp363,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp390
							*| gifex.c:1026:           if (app_ext.terminator != 0x00) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp574
	jbeq _?L73					*	jeq .L73		|
							*| gifex.c:1027:             printf("error: extension read error.\n");
	pea _?LC45					*	pea .LC45		|
	move.l d5,a1					*	move.l %d5,%a1	| tmp484,
	jbsr (a1)					*	jsr (%a1)		|
	jbra _?L113					*	jra .L113		|
_?L85:							*.L85:
							*| gifex.c:1034:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC49					*	pea .LC49		|
_?L114:							*.L114:
							*| gifex.c:1042:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:1044:         break;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L75					*	jra .L75		|
_?L80:							*.L80:
							*| gifex.c:1042:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC50					*	pea .LC50		|
	jbra _?L114					*	jra .L114		|
							*	.size	main, .-main
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
	.globl	_g_up_bf_ptr				*	.globl	g_up_bf_ptr
	.align	2					*	.align	2
							*	.type	g_up_bf_ptr, @object
							*	.size	g_up_bf_ptr, 4
_g_up_bf_ptr:						*g_up_bf_ptr:
	.ds.b	4					*	.zero	4
	.globl	_g_up_gf_ptr				*	.globl	g_up_gf_ptr
	.align	2					*	.align	2
							*	.type	g_up_gf_ptr, @object
							*	.size	g_up_gf_ptr, 4
_g_up_gf_ptr:						*g_up_gf_ptr:
	.ds.b	4					*	.zero	4
	.globl	_g_up_rf_ptr				*	.globl	g_up_rf_ptr
	.align	2					*	.align	2
							*	.type	g_up_rf_ptr, @object
							*	.size	g_up_rf_ptr, 4
_g_up_rf_ptr:						*g_up_rf_ptr:
	.ds.b	4					*	.zero	4
	.globl	_g_left_bf				*	.globl	g_left_bf
							*	.type	g_left_bf, @object
							*	.size	g_left_bf, 1
_g_left_bf:						*g_left_bf:
	.ds.b	1					*	.zero	1
	.globl	_g_left_gf				*	.globl	g_left_gf
							*	.type	g_left_gf, @object
							*	.size	g_left_gf, 1
_g_left_gf:						*g_left_gf:
	.ds.b	1					*	.zero	1
	.globl	_g_left_rf				*	.globl	g_left_rf
							*	.type	g_left_rf, @object
							*	.size	g_left_rf, 1
_g_left_rf:						*g_left_rf:
	.ds.b	1					*	.zero	1
	.globl	_g_current_filter			*	.globl	g_current_filter
	.align	2					*	.align	2
							*	.type	g_current_filter, @object
							*	.size	g_current_filter, 4
_g_current_filter:					*g_current_filter:
	.ds.b	4					*	.zero	4
	.globl	_g_current_y				*	.globl	g_current_y
	.align	2					*	.align	2
							*	.type	g_current_y, @object
							*	.size	g_current_y, 4
_g_current_y:						*g_current_y:
	.ds.b	4					*	.zero	4
	.globl	_g_current_x				*	.globl	g_current_x
	.data						*	.data
	.align	2					*	.align	2
							*	.type	g_current_x, @object
							*	.size	g_current_x, 4
_g_current_x:						*g_current_x:
	.dc.l	-1					*	.long	-1
	.globl	_g_start_y				*	.globl	g_start_y
	.bss						*	.section	.bss
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
	.globl	_g_brightness				*	.globl	g_brightness
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
