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
	.dc.b $20,$20,$20,$2d,$76,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$72,$69
	.dc.b $67,$68,$74,$6e,$65,$73,$73,$20
	.dc.b $28,$30,$2d,$31,$30,$30,$29
	.dc.b $00					*	.string	"   -v<n> ... brightness (0-100)"
_?LC11:							*.LC11:
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
							*| gifex.c:970:   printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:971:   printf("usage: gifex.x [options] <image.gif>\n");
	pea _?LC1					*	pea .LC1		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:972:   printf("options:\n");
	pea _?LC2					*	pea .LC2		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:973:   printf("   -c ... clear graphic screen\n");
	pea _?LC3					*	pea .LC3		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:974:   printf("   -s<n> ... screen mode (0:384x256, 1:512x512, 2:768x512 (XEiJ only)\n");
	pea _?LC4					*	pea .LC4		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:975:   printf("   -e ... use extended graphic mode for XEiJ (same as -s2)\n");
	pea _?LC5					*	pea .LC5		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:976:   printf("   -h ... show this help message\n");
	pea _?LC6					*	pea .LC6		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:977:   printf("   -i ... show file information\n");
	pea _?LC7					*	pea .LC7		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:978:   printf("   -n ... image centering\n");
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:979:   printf("   -k ... wait key input\n");
	pea _?LC9					*	pea .LC9		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:980:   printf("   -v<n> ... brightness (0-100)\n");
	pea _?LC10					*	pea .LC10		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:981:   printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
	pea _?LC11					*	pea .LC11		|
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| gifex.c:982: }
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
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
							*| gifex.c:179:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),d3					*	move.l (%a3),%d3	| *file_buffer_ofs_ptr_30(D), ofs
							*| gifex.c:182:   if (ofs < ( g_input_buffer_size - 1)) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.41_1
	move.l d1,a1					*	move.l %d1,%a1	| g_input_buffer_size.41_1, _2
	subq.l #1,a1					*	subq.l #1,%a1	|, _2
							*| gifex.c:182:   if (ofs < ( g_input_buffer_size - 1)) {
	cmp.l a1,d3					*	cmp.l %a1,%d3	| _2, ofs
	jbge _?L3					*	jge .L3		|
							*| gifex.c:184:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_8
	move.b 1(a4,d3.l),d0				*	move.b 1(%a4,%d3.l),%d0	| *_8, *_8
							*| gifex.c:184:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d0					*	lsl.w #8,%d0	|, tmp59
							*| gifex.c:184:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *_4
	move.b (a4,d3.l),d1				*	move.b (%a4,%d3.l),%d1	| *_4, *_4
							*| gifex.c:184:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| *_4, <retval>
							*| gifex.c:185:     ofs += 2;
	addq.l #2,d3					*	addq.l #2,%d3	|, ofs
_?L4:							*.L4:
							*| gifex.c:198:   *file_buffer_ofs_ptr = ofs;
	move.l d3,(a3)					*	move.l %d3,(%a3)	| ofs, *file_buffer_ofs_ptr_30(D)
							*| gifex.c:201: }
	movem.l (sp)+,d3/a3/a4				*	movem.l (%sp)+,#6152	|,
	rts						*	rts
_?L3:							*.L3:
	lea _fread,a0					*	lea fread,%a0	|, tmp71
							*| gifex.c:186:   } else if (ofs < g_input_buffer_size) {
	cmp.l d1,d3					*	cmp.l %d1,%d3	| g_input_buffer_size.41_1, ofs
	jbge _?L5					*	jge .L5		|
							*| gifex.c:188:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size - 1, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l a1,-(sp)					*	move.l %a1,-(%sp)	| _2,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
							*| gifex.c:189:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_14
	move.b (a4,d3.l),d0				*	move.b (%a4,%d3.l),%d0	| *_14, *_14
							*| gifex.c:189:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *file_buffer_ptr_32(D)
	move.b (a4),d1					*	move.b (%a4),%d1	| *file_buffer_ptr_32(D), *file_buffer_ptr_32(D)
							*| gifex.c:189:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d1					*	lsl.w #8,%d1	|, tmp64
							*| gifex.c:189:     us = file_buffer_ptr[ofs] + (file_buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| tmp64, <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:190:     ofs = 1;
	moveq #1,d3					*	moveq #1,%d3	|, ofs
	jbra _?L4					*	jra .L4		|
_?L5:							*.L5:
							*| gifex.c:193:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.41_1,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| file_buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
	moveq #0,d0					*	moveq #0,%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)]
	move.b (a4),d0					*	move.b (%a4),%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)], MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)]
	lsl.l #8,d0					*	lsl.l #8,%d0	|, tmp67
	or.b 1(a4),d0					*	or.b 1(%a4),%d0	| MEM <short unsigned int> [(unsigned char *)file_buffer_ptr_32(D)], tmp69
	ror.w #8,d0					*	ror.w #8,%d0	|, <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:195:     ofs = 2;
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
							*| gifex.c:156:   int ofs = *file_buffer_ofs_ptr;
	move.l (a4),d0					*	move.l (%a4),%d0	| *file_buffer_ofs_ptr_9(D), ofs
							*| gifex.c:159:   if (ofs < g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.49_1
							*| gifex.c:159:   if (ofs < g_input_buffer_size) {
	cmp.l d1,d0					*	cmp.l %d1,%d0	| g_input_buffer_size.49_1, ofs
	jbge _?L7					*	jge .L7		|
							*| gifex.c:161:      uc = file_buffer_ptr[ofs++];
	move.l d0,d1					*	move.l %d0,%d1	| ofs, ofs
	addq.l #1,d1					*	addq.l #1,%d1	|, ofs
							*| gifex.c:161:      uc = file_buffer_ptr[ofs++];
	move.b (a3,d0.l),d0				*	move.b (%a3,%d0.l),%d0	| *_3, <retval>
_?L8:							*.L8:
							*| gifex.c:169:   *file_buffer_ofs_ptr = ofs;
	move.l d1,(a4)					*	move.l %d1,(%a4)	| ofs, *file_buffer_ofs_ptr_9(D)
							*| gifex.c:172: }
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	move.l (sp)+,a4					*	move.l (%sp)+,%a4	|,
	rts						*	rts
_?L7:							*.L7:
							*| gifex.c:163:     int read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l 20(sp),-(sp)				*	move.l 20(%sp),-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.49_1,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:165:     uc = file_buffer_ptr[0];
	move.b (a3),d0					*	move.b (%a3),%d0	| *file_buffer_ptr_11(D), <retval>
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:166:     ofs = 1;
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
							*| gifex.c:236:   int ofs = *file_buffer_ofs_ptr;
	move.l (a3),a0					*	move.l (%a3),%a0	| *file_buffer_ofs_ptr_8(D), ofs
							*| gifex.c:238:   if ((ofs + len) <= g_input_buffer_size) {
	move.l a0,d0					*	move.l %a0,%d0	| ofs, _1
	add.l d3,d0					*	add.l %d3,%d0	| len, _1
							*| gifex.c:238:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d1			*	move.l g_input_buffer_size,%d1	| g_input_buffer_size, g_input_buffer_size.87_2
							*| gifex.c:238:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _1, g_input_buffer_size.87_2
	jbge _?L10					*	jge .L10		|
	lea _fread,a1					*	lea fread,%a1	|, tmp42
							*| gifex.c:241:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d1,a0					*	cmp.l %d1,%a0	| g_input_buffer_size.87_2, ofs
	jblt _?L11					*	jlt .L11		|
							*| gifex.c:243:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.87_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| gifex.c:244:     ofs = len;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
_?L10:							*.L10:
							*| gifex.c:252:   *file_buffer_ofs_ptr = ofs;
	move.l d0,(a3)					*	move.l %d0,(%a3)	| _1, *file_buffer_ofs_ptr_8(D)
							*| gifex.c:253: }
	movem.l (sp)+,d3/d4/a3				*	movem.l (%sp)+,#2072	|,
	rts						*	rts
_?L11:							*.L11:
							*| gifex.c:247:     int available = g_input_buffer_size - ofs;
	move.l d1,d4					*	move.l %d1,%d4	| g_input_buffer_size.87_2, available
	sub.l a0,d4					*	sub.l %a0,%d4	| ofs, available
							*| gifex.c:248:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_input_buffer_size.87_2,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| file_buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
							*| gifex.c:249:     ofs = len - available;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
	sub.l d4,d0					*	sub.l %d4,%d0	| available, _1
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L10					*	jra .L10		|
							*	.size	skip_file_buffer, .-skip_file_buffer
	.align	2					*	.align	2
							*	.type	memcpy_file_buffer, @function
_memcpy_file_buffer:					*memcpy_file_buffer:
	movem.l d3/d4/d5/d6/a3/a4/a5/a6,-(sp)		*	movem.l #7710,-(%sp)	|,
	move.l 36(sp),a4				*	move.l 36(%sp),%a4	| dest_ptr, dest_ptr
	move.l 40(sp),a3				*	move.l 40(%sp),%a3	| file_buffer_ptr, file_buffer_ptr
	move.l 44(sp),a5				*	move.l 44(%sp),%a5	| file_buffer_ofs_ptr, file_buffer_ofs_ptr
	move.l 48(sp),d5				*	move.l 48(%sp),%d5	| len, len
	move.l 52(sp),d6				*	move.l 52(%sp),%d6	| fp, fp
							*| gifex.c:208:   int ofs = *file_buffer_ofs_ptr;
	move.l (a5),d1					*	move.l (%a5),%d1	| *file_buffer_ofs_ptr_19(D), ofs
							*| gifex.c:210:   if ((ofs + len) <= g_input_buffer_size) {
	move.l d1,d4					*	move.l %d1,%d4	| ofs, _13
	add.l d5,d4					*	add.l %d5,%d4	| len, _13
							*| gifex.c:210:   if ((ofs + len) <= g_input_buffer_size) {
	move.l _g_input_buffer_size,d0			*	move.l g_input_buffer_size,%d0	| g_input_buffer_size, g_input_buffer_size.28_2
	lea _memcpy,a6					*	lea memcpy,%a6	|, tmp77
							*| gifex.c:210:   if ((ofs + len) <= g_input_buffer_size) {
	cmp.l d4,d0					*	cmp.l %d4,%d0	| _13, g_input_buffer_size.28_2
	jblt _?L13					*	jlt .L13		|
							*| gifex.c:212:     memcpy(dest_ptr, file_buffer_ptr + ofs, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L14:							*.L14:
							*| gifex.c:228:   *file_buffer_ofs_ptr = ofs;
	move.l d4,(a5)					*	move.l %d4,(%a5)	| _13, *file_buffer_ofs_ptr_19(D)
							*| gifex.c:229: }
	movem.l (sp)+,d3/d4/d5/d6/a3/a4/a5/a6		*	movem.l (%sp)+,#30840	|,
	rts						*	rts
_?L13:							*.L13:
	move.l #_fread,d4				*	move.l #fread,%d4	|, tmp78
							*| gifex.c:214:   } else if (ofs >= g_input_buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| g_input_buffer_size.28_2, ofs
	jblt _?L15					*	jlt .L15		|
							*| gifex.c:216:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| g_input_buffer_size.28_2,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:217:     memcpy(dest_ptr, file_buffer_ptr, len);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| len,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
							*| gifex.c:218:     ofs = len;
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	jbra _?L14					*	jra .L14		|
_?L15:							*.L15:
							*| gifex.c:221:     int available = g_input_buffer_size - ofs;
	move.l d0,d3					*	move.l %d0,%d3	| g_input_buffer_size.28_2, available
	sub.l d1,d3					*	sub.l %d1,%d3	| ofs, available
							*| gifex.c:222:     memcpy(dest_ptr, file_buffer_ptr + ofs, available);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| available,
	pea (a3,d1.l)					*	pea (%a3,%d1.l)		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| dest_ptr,
	jbsr (a6)					*	jsr (%a6)		| tmp77
							*| gifex.c:223:     fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	move.l d4,a0					*	move.l %d4,%a0	| tmp78,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:224:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d5,d4					*	move.l %d5,%d4	| len, _13
	sub.l d3,d4					*	sub.l %d3,%d4	| available, _13
							*| gifex.c:224:     memcpy(dest_ptr + available, file_buffer_ptr, len - available);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| _13,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| file_buffer_ptr,
	pea (a4,d3.l)					*	pea (%a4,%d3.l)		|
	jbsr (a6)					*	jsr (%a6)		| tmp77
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	jbra _?L14					*	jra .L14		|
							*	.size	memcpy_file_buffer, .-memcpy_file_buffer
	.align	2					*	.align	2
							*	.type	free__, @function
_free__:						*free__:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| ptr, ptr
							*| gifex.c:483:   if (ptr == NULL) return;
	jbeq _?L16					*	jeq .L16		|
							*| gifex.c:486: }
							*| gifex.c:485:   MFREE(addr);
	jbra _MFREE					*	jra MFREE		|
_?L16:							*.L16:
							*| gifex.c:486: }
	rts						*	rts
							*	.size	free__, .-free__
	.data						*	.section	.rodata.str1.1
_?LC12:							*.LC12:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: file read error (%s).\n"
_?LC13:							*.LC13:
	.dc.b $72,$62
	.dc.b $00					*	.string	"rb"
_?LC14:							*.LC14:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$20,$69,$6e,$70,$75,$74
	.dc.b $20,$66,$69,$6c,$65,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: cannot open input file (%s).\n"
_?LC15:							*.LC15:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$66,$69,$6c,$65,$20,$62
	.dc.b $75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for file buffer."
_?LC16:							*.LC16:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: file read error."
_?LC17:							*.LC17:
	.dc.b $47,$49,$46
	.dc.b $00					*	.string	"GIF"
_?LC18:							*.LC18:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $69,$67,$6e,$61,$74,$75,$72,$65
	.dc.b $20,$65,$72,$72,$6f,$72,$2e,$20
	.dc.b $6e,$6f,$74,$20,$61,$20,$47,$49
	.dc.b $46,$20,$66,$69,$6c,$65,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: signature error. not a GIF file (%s).\n"
_?LC19:							*.LC19:
	.dc.b $38,$39,$61
	.dc.b $00					*	.string	"89a"
_?LC20:							*.LC20:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$73,$75,$70,$70,$6f,$72,$74
	.dc.b $65,$64,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unsupported GIF version (%s).\n"
_?LC21:							*.LC21:
	.dc.b $6c,$6f,$61,$64,$65,$64,$20,$67
	.dc.b $6c,$6f,$62,$61,$6c,$20,$70,$61
	.dc.b $6c,$65,$74,$74,$65,$2e,$20,$28
	.dc.b $25,$64,$20,$63,$6f,$6c,$6f,$72
	.dc.b $73,$29,$0a
	.dc.b $00					*	.string	"loaded global palette. (%d colors)\n"
_?LC22:							*.LC22:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$69,$6e,$66,$6c,$61,$74
	.dc.b $65,$20,$62,$75,$66,$66,$65,$72
	.dc.b $2e
	.dc.b $00					*	.string	"error: cannot allocate memory for inflate buffer."
_?LC23:							*.LC23:
	.dc.b $45,$4f,$47
	.dc.b $00					*	.string	"EOG"
_?LC24:							*.LC24:
	.dc.b $69,$6d,$61,$67,$65,$20,$62,$6c
	.dc.b $6f,$63,$6b,$20,$2d,$20,$6c,$65
	.dc.b $66,$74,$3a,$25,$64,$2c,$74,$6f
	.dc.b $70,$3a,$25,$64,$2c,$77,$69,$64
	.dc.b $74,$68,$3a,$25,$64,$2c,$68,$65
	.dc.b $69,$67,$68,$74,$3a,$25,$64,$0a
	.dc.b $00					*	.string	"image block - left:%d,top:%d,width:%d,height:%d\n"
_?LC25:							*.LC25:
	.dc.b $6c,$6f,$61,$64,$65,$64,$20,$6c
	.dc.b $6f,$63,$61,$6c,$20,$70,$61,$6c
	.dc.b $65,$74,$74,$65,$2e,$20,$28,$25
	.dc.b $64,$20,$63,$6f,$6c,$6f,$72,$73
	.dc.b $29,$0a
	.dc.b $00					*	.string	"loaded local palette. (%d colors)\n"
_?LC26:							*.LC26:
	.dc.b $6c,$7a,$77,$20,$6d,$69,$6e,$20
	.dc.b $63,$6f,$64,$65,$20,$73,$69,$7a
	.dc.b $65,$3d,$25,$64,$0a
	.dc.b $00					*	.string	"lzw min code size=%d\n"
_?LC27:							*.LC27:
	.dc.b $64,$65,$63,$6f,$64,$65,$5f,$62
	.dc.b $75,$66,$66,$65,$72,$5f,$6f,$66
	.dc.b $73,$20,$3d,$20,$25,$64,$0a
	.dc.b $00					*	.string	"decode_buffer_ofs = %d\n"
	.globl	___mulsi3				*	.globl	__mulsi3
_?LC28:							*.LC28:
	.dc.b $67,$72,$61,$70,$68,$69,$63,$20
	.dc.b $63,$6f,$6e,$74,$72,$6f,$6c,$20
	.dc.b $65,$78,$74,$65,$6e,$73,$69,$6f
	.dc.b $6e
	.dc.b $00					*	.string	"graphic control extension"
_?LC29:							*.LC29:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: extension read error."
_?LC30:							*.LC30:
	.dc.b $63,$6f,$6d,$6d,$65,$6e,$74,$20
	.dc.b $65,$78,$74,$65,$6e,$73,$69,$6f
	.dc.b $6e
	.dc.b $00					*	.string	"comment extension"
_?LC31:							*.LC31:
	.dc.b $70,$6c,$61,$69,$6e,$20,$74,$65
	.dc.b $78,$74,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e
	.dc.b $00					*	.string	"plain text extension"
_?LC32:							*.LC32:
	.dc.b $61,$70,$70,$6c,$69,$63,$61,$74
	.dc.b $69,$6f,$6e,$20,$65,$78,$74,$65
	.dc.b $6e,$73,$69,$6f,$6e
	.dc.b $00					*	.string	"application extension"
_?LC33:							*.LC33:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC34:							*.LC34:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$62
	.dc.b $6c,$6f,$63,$6b,$20,$28,$30,$78
	.dc.b $25,$30,$32,$58,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown block (0x%02X).\n"
	.text						*	.text
	.align	2					*	.align	2
							*	.type	load_gif_image.isra.0, @function
_load_gif_image?isra?0:					*load_gif_image.isra.0:
	link.w a6,#-668					*	link.w %fp,#-668	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d5					*	move.l 8(%fp),%d5	| gif_file_name, gif_file_name
							*| gifex.c:542:     int file_buffer_ofs = 0;
	clr.l -586(a6)					*	clr.l -586(%fp)	| file_buffer_ofs
							*| gifex.c:548:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -566(a6)					*	pea -566(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:548:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp480
	jbeq _?L19					*	jeq .L19		|
							*| gifex.c:549:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC12					*	pea .LC12		|
_?L95:							*.L95:
							*| gifex.c:556:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L96:							*.L96:
							*| gifex.c:557:       return -1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L18:							*.L18:
							*| gifex.c:866: }
	movem.l -700(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -700(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L19:							*.L19:
							*| gifex.c:554:     fp = fopen(gif_file_name, "rb");
	pea _?LC13					*	pea .LC13		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,-662(a6)				*	move.l %d0,-662(%fp)	| tmp481, %sfp
							*| gifex.c:555:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L21					*	jne .L21		|
							*| gifex.c:556:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC14					*	pea .LC14		|
	jbra _?L95					*	jra .L95		|
_?L21:							*.L21:
							*| gifex.c:477:   int addr = MALLOC(size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	lea _MALLOC,a4					*	lea MALLOC,%a4	|, tmp227
	jbsr (a4)					*	jsr (%a4)		| tmp227
	move.l d0,d6					*	move.l %d0,%d6	| tmp482, addr
							*| gifex.c:478:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbhi _?L22					*	jhi .L22		|
							*| gifex.c:562:     if (file_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| addr
	jbne _?L23					*	jne .L23		|
_?L22:							*.L22:
							*| gifex.c:563:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC15					*	pea .LC15		|
_?L99:							*.L99:
							*| gifex.c:621:       printf("error: cannot allocate memory for inflate buffer.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:622:       fclose(fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L96					*	jra .L96		|
_?L23:							*.L23:
							*| gifex.c:569:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| addr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:570:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp483
	jbgt _?L24					*	jgt .L24		|
							*| gifex.c:571:       printf("error: file read error.\n");
	pea _?LC16					*	pea .LC16		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:572:       fclose(fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:573:       free__(file_buffer_ptr);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _free__					*	jsr free__		|
_?L98:							*.L98:
							*| gifex.c:865:     return 0;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L18					*	jra .L18		|
_?L24:							*.L24:
							*| gifex.c:578:     memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	pea 3.w						*	pea 3.w		|
	move.l a6,d3					*	move.l %fp,%d3	|, tmp234
	add.l #-586,d3					*	add.l #-586,%d3	|, tmp234
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	move.l a6,d4					*	move.l %fp,%d4	|, tmp235
	add.l #-582,d4					*	add.l #-582,%d4	|, tmp235
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp235,
	lea _memcpy_file_buffer,a5			*	lea memcpy_file_buffer,%a5	|, tmp236
	jbsr (a5)					*	jsr (%a5)		| tmp236
							*| gifex.c:579:     header.signature[3] = '\0';
	clr.b -579(a6)					*	clr.b -579(%fp)	| header.signature[3]
							*| gifex.c:580:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC17					*	pea .LC17		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp235,
	lea _strcmp,a3					*	lea strcmp,%a3	|, tmp238
	jbsr (a3)					*	jsr (%a3)		| tmp238
							*| gifex.c:580:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp484
	jbeq _?L25					*	jeq .L25		|
							*| gifex.c:581:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
_?L97:							*.L97:
							*| gifex.c:591:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:592:       fclose(fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	jbsr _fclose					*	jsr fclose		|
							*| gifex.c:593:       free__(file_buffer_ptr);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _free__					*	jsr free__		|
							*| gifex.c:594:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L18					*	jra .L18		|
_?L25:							*.L25:
							*| gifex.c:588:     memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	pea 3.w						*	pea 3.w		|
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	addq.l #4,d4					*	addq.l #4,%d4	|, tmp245
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp245,
	jbsr (a5)					*	jsr (%a5)		| tmp236
							*| gifex.c:589:     header.version[3] = '\0';
	clr.b -575(a6)					*	clr.b -575(%fp)	| header.version[3]
							*| gifex.c:590:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC19					*	pea .LC19		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp245,
	jbsr (a3)					*	jsr (%a3)		| tmp238
							*| gifex.c:590:     if (strcmp(header.version,"89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp485
	jbeq _?L26					*	jeq .L26		|
							*| gifex.c:591:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| tmp245,
	pea _?LC20					*	pea .LC20		|
	jbra _?L97					*	jra .L97		|
_?L26:							*.L26:
							*| gifex.c:598:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _get_ushort_file_buffer,a3			*	lea get_ushort_file_buffer,%a3	|, tmp257
	jbsr (a3)					*	jsr (%a3)		| tmp257
							*| gifex.c:598:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-574(a6)				*	move.w %d0,-574(%fp)	| tmp486, header.screen_width
							*| gifex.c:599:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp257
							*| gifex.c:599:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-572(a6)				*	move.w %d0,-572(%fp)	| tmp487, header.screen_height
							*| gifex.c:600:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _get_uchar_file_buffer,a3			*	lea get_uchar_file_buffer,%a3	|, tmp261
	jbsr (a3)					*	jsr (%a3)		| tmp261
							*| gifex.c:600:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-570(a6)				*	move.b %d0,-570(%fp)	| tmp488, header.flag_code
							*| gifex.c:601:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp261
							*| gifex.c:601:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-569(a6)				*	move.b %d0,-569(%fp)	| tmp489, header.bg_color_index
							*| gifex.c:602:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp261
							*| gifex.c:602:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-568(a6)				*	move.b %d0,-568(%fp)	| tmp490, header.aspect_ratio
							*| gifex.c:605:     if (read_bits(header.flag_code,7,1)) {
	move.b -570(a6),d0				*	move.b -570(%fp),%d0	| header.flag_code, _17
							*| gifex.c:605:     if (read_bits(header.flag_code,7,1)) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| _17
	jbpl _?L27					*	jpl .L27		|
							*| gifex.c:606:       int gct_size = (1 << (1 + read_bits(header.flag_code,0,3)));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp269
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp270
							*| gifex.c:606:       int gct_size = (1 << (1 + read_bits(header.flag_code,0,3)));
	moveq #1,d1					*	moveq #1,%d1	|, tmp271
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp270, tmp271
	move.l d1,-654(a6)				*	move.l %d1,-654(%fp)	| tmp271, %sfp
	lea (_global_palette?1),a5			*	lea (global_palette.1),%a5	|, ivtmp.181
							*| gifex.c:607:       for (int i = 0; i < gct_size; i++) {
	moveq #0,d7					*	moveq #0,%d7	| i
_?L28:							*.L28:
							*| gifex.c:608:         unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp261
	move.b d0,d5					*	move.b %d0,%d5	| tmp491, r
							*| gifex.c:609:         unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp261
	move.b d0,d4					*	move.b %d0,%d4	| tmp492, g
							*| gifex.c:610:         unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp234,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp261
							*| gifex.c:611:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, r
	add.l d5,d5					*	add.l %d5,%d5	| r, tmp280
							*| gifex.c:611:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d4					*	and.l #255,%d4	|, g
	add.l d4,d4					*	add.l %d4,%d4	| g, tmp283
							*| gifex.c:611:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_r,a0				*	lea g_rgb555_r,%a0	|,
	move.w (a0,d5.l),d2				*	move.w (%a0,%d5.l),%d2	| g_rgb555_r[_27], tmp284
	lea _g_rgb555_g,a0				*	lea g_rgb555_g,%a0	|,
	or.w (a0,d4.l),d2				*	or.w (%a0,%d4.l),%d2	| g_rgb555_g[_29], tmp284
							*| gifex.c:611:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp287
							*| gifex.c:611:         global_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_b,a1				*	lea g_rgb555_b,%a1	|,
	or.w (a1,d0.l),d2				*	or.w (%a1,%d0.l),%d2	| g_rgb555_b[_32], tmp284
	move.w d2,(a5)+					*	move.w %d2,(%a5)+	| tmp284, MEM[(short unsigned int *)_443]
							*| gifex.c:607:       for (int i = 0; i < gct_size; i++) {
	addq.l #1,d7					*	addq.l #1,%d7	|, i
							*| gifex.c:607:       for (int i = 0; i < gct_size; i++) {
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	cmp.l -654(a6),d7				*	cmp.l -654(%fp),%d7	| %sfp, i
	jbne _?L28					*	jne .L28		|
							*| gifex.c:614:       printf("loaded global palette. (%d colors)\n",gct_size);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| i,
	pea _?LC21					*	pea .LC21		|
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L27:							*.L27:
							*| gifex.c:477:   int addr = MALLOC(size);
	move.l _g_output_buffer_size,-(sp)		*	move.l g_output_buffer_size,-(%sp)	| g_output_buffer_size,
	jbsr (a4)					*	jsr (%a4)		| tmp227
	move.l d0,-646(a6)				*	move.l %d0,-646(%fp)	| tmp494, %sfp
							*| gifex.c:478:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, tmp494
	jbhi _?L29					*	jhi .L29		|
							*| gifex.c:620:     if (decode_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| tmp494
	jbne _?L30					*	jne .L30		|
_?L29:							*.L29:
							*| gifex.c:621:       printf("error: cannot allocate memory for inflate buffer.\n");
	pea _?LC22					*	pea .LC22		|
	jbra _?L99					*	jra .L99		|
_?L31:							*.L31:
							*| gifex.c:645:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L33					*	jne .L33		|
							*| gifex.c:655:         image_block.left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _get_ushort_file_buffer,a4			*	lea get_ushort_file_buffer,%a4	|, tmp296
	jbsr (a4)					*	jsr (%a4)		| tmp296
	move.w d0,-626(a6)				*	move.w %d0,-626(%fp)	| tmp496, %sfp
							*| gifex.c:656:         image_block.top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp296
	move.w d0,d5					*	move.w %d0,%d5	| tmp497, _41
							*| gifex.c:657:         image_block.width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp296
	move.w d0,-638(a6)				*	move.w %d0,-638(%fp)	| tmp498, %sfp
							*| gifex.c:658:         image_block.height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp296
	move.w d0,d7					*	move.w %d0,%d7	| tmp499, _43
							*| gifex.c:659:         image_block.flag_code     = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
	move.b d0,d4					*	move.b %d0,%d4	| tmp500, _44
							*| gifex.c:662:         printf("image block - left:%d,top:%d,width:%d,height:%d\n",
	moveq #0,d1					*	moveq #0,%d1	|
	move.w d7,d1					*	move.w %d7,%d1	| _43,
	move.l d1,-624(a6)				*	move.l %d1,-624(%fp)	|, %sfp
	move.w -638(a6),d1				*	move.w -638(%fp),%d1	| %sfp,
	move.l d1,-620(a6)				*	move.l %d1,-620(%fp)	|, %sfp
	and.l #65535,d5					*	and.l #65535,%d5	|,
	move.l d5,-642(a6)				*	move.l %d5,-642(%fp)	|, %sfp
	move.w -626(a6),d1				*	move.w -626(%fp),%d1	| %sfp,
	move.l d1,-616(a6)				*	move.l %d1,-616(%fp)	|, %sfp
	move.l -624(a6),-(sp)				*	move.l -624(%fp),-(%sp)	| %sfp,
	move.l -620(a6),-(sp)				*	move.l -620(%fp),-(%sp)	| %sfp,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC24					*	pea .LC24		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:670:         if ((use_local_palette = read_bits(image_block.flag_code,7,1)) != 0) {
	moveq #0,d0					*	moveq #0,%d0	| _44
	move.b d4,d0					*	move.b %d4,%d0	| _44, _44
							*| gifex.c:259:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #7,d0					*	asr.l #7,%d0	|, _44
	move.l d0,-612(a6)				*	move.l %d0,-612(%fp)	| _44, %sfp
							*| gifex.c:670:         if ((use_local_palette = read_bits(image_block.flag_code,7,1)) != 0) {
	lea (44,sp),sp					*	lea (44,%sp),%sp	|,
	jbeq _?L34					*	jeq .L34		|
							*| gifex.c:671:           int lct_size = 1 << (1 + (read_bits(image_block.flag_code,0,3)));
	moveq #7,d0					*	moveq #7,%d0	|,
	and.l d0,d4					*	and.l %d0,%d4	|, tmp308
	addq.l #1,d4					*	addq.l #1,%d4	|, tmp309
							*| gifex.c:671:           int lct_size = 1 << (1 + (read_bits(image_block.flag_code,0,3)));
	moveq #1,d0					*	moveq #1,%d0	|, tmp310
	lsl.l d4,d0					*	lsl.l %d4,%d0	| tmp309, tmp310
	move.l d0,-654(a6)				*	move.l %d0,-654(%fp)	| tmp310, %sfp
	lea (-512,a6),a5				*	lea (-512,%fp),%a5	|,, ivtmp.177
							*| gifex.c:672:           for (int i = 0; i < lct_size; i++) {
	sub.l a4,a4					*	sub.l %a4,%a4	| i
_?L35:							*.L35:
							*| gifex.c:673:             unsigned char r = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
	move.b d0,d5					*	move.b %d0,%d5	| tmp501, r
							*| gifex.c:674:             unsigned char g = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
	move.b d0,d4					*	move.b %d0,%d4	| tmp502, g
							*| gifex.c:675:             unsigned char b = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:676:             local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, r
	add.l d5,d5					*	add.l %d5,%d5	| r, tmp319
							*| gifex.c:676:             local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d4					*	and.l #255,%d4	|, g
	add.l d4,d4					*	add.l %d4,%d4	| g, tmp322
							*| gifex.c:676:             local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_r,a0				*	lea g_rgb555_r,%a0	|,
	move.w (a0,d5.l),d2				*	move.w (%a0,%d5.l),%d2	| g_rgb555_r[_58], tmp323
	lea _g_rgb555_g,a0				*	lea g_rgb555_g,%a0	|,
	or.w (a0,d4.l),d2				*	or.w (%a0,%d4.l),%d2	| g_rgb555_g[_60], tmp323
							*| gifex.c:676:             local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp326
							*| gifex.c:676:             local_palette[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_b,a1				*	lea g_rgb555_b,%a1	|, tmp324
	or.w (a1,d0.l),d2				*	or.w (%a1,%d0.l),%d2	| g_rgb555_b[_63], tmp323
	move.w d2,(a5)+					*	move.w %d2,(%a5)+	| tmp323, MEM[(short unsigned int *)_392]
							*| gifex.c:672:           for (int i = 0; i < lct_size; i++) {
	addq.l #1,a4					*	addq.l #1,%a4	|, i
							*| gifex.c:672:           for (int i = 0; i < lct_size; i++) {
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	cmp.l -654(a6),a4				*	cmp.l -654(%fp),%a4	| %sfp, i
	jbne _?L35					*	jne .L35		|
							*| gifex.c:679:           printf("loaded local palette. (%d colors)\n",lct_size);
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| i,
	pea _?LC25					*	pea .LC25		|
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L34:							*.L34:
							*| gifex.c:684:         image_block.lzw_min_code_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	pea -586(a6)					*	pea -586(%fp)		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _get_uchar_file_buffer			*	jsr get_uchar_file_buffer		|
							*| gifex.c:686:         printf("lzw min code size=%d\n",image_block.lzw_min_code_size);
	moveq #0,d3					*	moveq #0,%d3	| _69
	move.b d0,d3					*	move.b %d0,%d3	| tmp504, _69
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| _69,
	pea _?LC26					*	pea .LC26		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:689:         int pixel_count = image_block.width * image_block.height;
	mulu.w -638(a6),d7				*	mulu.w -638(%fp),%d7	| %sfp,
	move.l d7,-638(a6)				*	move.l %d7,-638(%fp)	|, %sfp
							*| gifex.c:286:   lzw->clear_code = 1 << min_code_size;
	moveq #1,d0					*	moveq #1,%d0	|, tmp331
	move.l d0,d5					*	move.l %d0,%d5	| tmp331, _229
	lsl.l d3,d5					*	lsl.l %d3,%d5	| _69, _229
							*| gifex.c:287:   lzw->end_code = lzw->clear_code + 1;
	move.l d5,d1					*	move.l %d5,%d1	| _229,
	addq.l #1,d1					*	addq.l #1,%d1	|,
	move.l d1,-590(a6)				*	move.l %d1,-590(%fp)	|, %sfp
							*| gifex.c:290:   lzw->available = lzw->clear_code + 2;
	move.l d5,d7					*	move.l %d5,%d7	| _229,
	addq.l #2,d7					*	addq.l #2,%d7	|,
	move.l d7,-608(a6)				*	move.l %d7,-608(%fp)	|, %sfp
							*| gifex.c:292:   lzw->code_size = lzw->data_size + 1;
	addq.l #1,d3					*	addq.l #1,%d3	|, _69
	move.l d3,-630(a6)				*	move.l %d3,-630(%fp)	| _69, %sfp
							*| gifex.c:294:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	lsl.l d3,d0					*	lsl.l %d3,%d0	| _69, tmp332
							*| gifex.c:294:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	subq.w #1,d0					*	subq.w #1,%d0	|,
	move.w d0,-604(a6)				*	move.w %d0,-604(%fp)	|, %sfp
							*| gifex.c:299:     lzw_prefix[i] = 0;
	move.l d5,d0					*	move.l %d5,%d0	| _229, _229
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	jbpl _?L36					*	jpl .L36		|
	moveq #0,d0					*	moveq #0,%d0	| _229
_?L36:							*.L36:
	add.l d0,d0					*	add.l %d0,%d0	| _229, tmp335
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| tmp335,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _lzw_prefix					*	pea lzw_prefix		|
	jbsr _memset					*	jsr memset		|
	lea _lzw_suffix,a0				*	lea lzw_suffix,%a0	|, ivtmp.173
							*| gifex.c:298:   for (int i = 0; i < lzw->clear_code; i++) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| gifex.c:298:   for (int i = 0; i < lzw->clear_code; i++) {
	moveq #0,d0					*	moveq #0,%d0	| i
_?L37:							*.L37:
							*| gifex.c:298:   for (int i = 0; i < lzw->clear_code; i++) {
	cmp.l d5,d0					*	cmp.l %d5,%d0	| _229, i
	jblt _?L38					*	jlt .L38		|
							*| gifex.c:296:   lzw->top = 0;
	moveq #0,d4					*	moveq #0,%d4	| lzw$top
							*| gifex.c:295:   lzw->first = 0;
	sub.l a4,a4					*	sub.l %a4,%a4	| lzw$first
							*| gifex.c:294:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	move.w -604(a6),-650(a6)			*	move.w -604(%fp),-650(%fp)	| %sfp, %sfp
							*| gifex.c:292:   lzw->code_size = lzw->data_size + 1;
	move.l -630(a6),-654(a6)			*	move.l -630(%fp),-654(%fp)	| %sfp, %sfp
							*| gifex.c:290:   lzw->available = lzw->clear_code + 2;
	move.l -608(a6),d3				*	move.l -608(%fp),%d3	| %sfp, lzw$available
							*| gifex.c:692:         int decode_buffer_ofs = 0;
	sub.l a3,a3					*	sub.l %a3,%a3	| decode_buffer_ofs
							*| gifex.c:291:   lzw->old_code = -1;
	move.w #-1,a5					*	move.w #-1,%a5	|, lzw$old_code
_?L51:							*.L51:
							*| gifex.c:699:           unsigned char sub_block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	pea -586(a6)					*	pea -586(%fp)		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _get_uchar_file_buffer			*	jsr get_uchar_file_buffer		|
							*| gifex.c:700:           if (sub_block_size == 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| sub_block_size
	jbne _?L39					*	jne .L39		|
							*| gifex.c:712:         printf("decode_buffer_ofs = %d\n",decode_buffer_ofs);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| decode_buffer_ofs,
	pea _?LC27					*	pea .LC27		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:718:         output_pixel(image_block.left_position,
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea (_global_palette?1),a4			*	lea (global_palette.1),%a4	|, iftmp.64_81
	tst.l -612(a6)					*	tst.l -612(%fp)	| %sfp
	jbeq _?L40					*	jeq .L40		|
	lea (-512,a6),a4				*	lea (-512,%fp),%a4	|,, iftmp.64_81
_?L40:							*.L40:
							*| gifex.c:493:   unsigned char* buffer_end = buffer + buffer_size;
	add.l -646(a6),a3				*	add.l -646(%fp),%a3	| %sfp, buffer_end
							*| gifex.c:494:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	lea ___mulsi3,a5				*	lea __mulsi3,%a5	|, tmp370
	move.l _g_actual_width,-(sp)			*	move.l g_actual_width,-(%sp)	| g_actual_width,
	move.l -642(a6),d1				*	move.l -642(%fp),%d1	| %sfp,
	add.l _g_start_y,d1				*	add.l g_start_y,%d1	| g_start_y,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	jbsr (a5)					*	jsr (%a5)		| tmp370
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:494:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	move.l -616(a6),d1				*	move.l -616(%fp),%d1	| %sfp, tmp372
	add.l _g_start_x,d1				*	add.l g_start_x,%d1	| g_start_x, tmp372
							*| gifex.c:494:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	move.l d0,d7					*	move.l %d0,%d7	| tmp506, tmp373
	add.l d1,d7					*	add.l %d1,%d7	| tmp372, tmp373
	add.l d7,d7					*	add.l %d7,%d7	| tmp373, tmp374
							*| gifex.c:494:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + top) + (g_start_x + left);
	add.l #12582912,d7				*	add.l #12582912,%d7	|, gvram
							*| gifex.c:504:   ssp = SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr _SUPER					*	jsr SUPER		|
	move.l d0,-654(a6)				*	move.l %d0,-654(%fp)	| tmp507, %sfp
							*| gifex.c:510:     if ((g_start_x + left + x) < g_actual_width) {
	moveq #0,d4					*	moveq #0,%d4	| _40
	move.w -626(a6),d4				*	move.w -626(%fp),%d4	| %sfp, _40
	add.l _g_start_x,d4				*	add.l g_start_x,%d4	| g_start_x, _438
							*| gifex.c:510:     if ((g_start_x + left + x) < g_actual_width) {
	move.l _g_actual_width,d3			*	move.l g_actual_width,%d3	| g_actual_width, g_actual_width.80_350
							*| gifex.c:522:       if ((g_start_y + y) >= g_actual_height) break;  // Y cropping
	move.l _g_start_y,-638(a6)			*	move.l g_start_y,-638(%fp)	| g_start_y, %sfp
							*| gifex.c:522:       if ((g_start_y + y) >= g_actual_height) break;  // Y cropping
	move.l _g_actual_height,d5			*	move.l g_actual_height,%d5	| g_actual_height, g_actual_height.83_362
							*| gifex.c:506:   while (buffer < buffer_end) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| gifex.c:495:   int x = 0;
	moveq #0,d0					*	moveq #0,%d0	| x
							*| gifex.c:506:   while (buffer < buffer_end) {
	move.l -646(a6),a1				*	move.l -646(%fp),%a1	| %sfp, buffer
_?L52:							*.L52:
							*| gifex.c:506:   while (buffer < buffer_end) {
	cmp.l a3,a1					*	cmp.l %a3,%a1	| buffer_end, buffer
	jbcc _?L57					*	jcc .L57		|
							*| gifex.c:508:     unsigned char palette_code = *buffer++;
	lea (1,a1),a0					*	lea (1,%a1),%a0	|, buffer,
	move.l a0,-650(a6)				*	move.l %a0,-650(%fp)	|, %sfp
							*| gifex.c:510:     if ((g_start_x + left + x) < g_actual_width) {
	move.l d4,a0					*	move.l %d4,%a0	| _438, tmp377
	add.l d0,a0					*	add.l %d0,%a0	| x, tmp377
							*| gifex.c:510:     if ((g_start_x + left + x) < g_actual_width) {
	cmp.l a0,d3					*	cmp.l %a0,%d3	| tmp377, g_actual_width.80_350
	jble _?L53					*	jle .L53		|
							*| gifex.c:512:       *gvram++ = palette[ palette_code ];
	move.l d7,a0					*	move.l %d7,%a0	| gvram, gvram
							*| gifex.c:512:       *gvram++ = palette[ palette_code ];
	moveq #0,d2					*	moveq #0,%d2	| *buffer_343
	move.b (a1),d2					*	move.b (%a1),%d2	| *buffer_343, *buffer_343
	add.l d2,d2					*	add.l %d2,%d2	| *buffer_343, tmp380
							*| gifex.c:512:       *gvram++ = palette[ palette_code ];
	move.w (a4,d2.l),(a0)+				*	move.w (%a4,%d2.l),(%a0)+	| *_353, *gvram_354
							*| gifex.c:512:       *gvram++ = palette[ palette_code ];
	move.l a0,d7					*	move.l %a0,%d7	| gvram, gvram
_?L53:							*.L53:
							*| gifex.c:516:     x++;
	addq.l #1,d0					*	addq.l #1,%d0	|, x
							*| gifex.c:519:     if (x >= width) {
	cmp.l -620(a6),d0				*	cmp.l -620(%fp),%d0	| %sfp, x
	jblt _?L54					*	jlt .L54		|
							*| gifex.c:521:       if (++y >= height) break;
	addq.l #1,-642(a6)				*	addq.l #1,-642(%fp)	|, %sfp
	move.l -624(a6),d1				*	move.l -624(%fp),%d1	| %sfp,
	cmp.l -642(a6),d1				*	cmp.l -642(%fp),%d1	| %sfp,
	jbgt _?L55					*	jgt .L55		|
_?L57:							*.L57:
							*| gifex.c:528:   SUPER(ssp);
	move.l -654(a6),-(sp)				*	move.l -654(%fp),-(%sp)	| %sfp,
	jbsr _SUPER					*	jsr SUPER		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L30:							*.L30:
							*| gifex.c:634:       unsigned char block_type = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l a6,d3					*	move.l %fp,%d3	|, tmp292
	add.l #-586,d3					*	add.l #-586,%d3	|, tmp292
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _get_uchar_file_buffer,a3			*	lea get_uchar_file_buffer,%a3	|, tmp293
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:636:       if (block_type == GIF_TRAILOR) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbne _?L31					*	jne .L31		|
							*| gifex.c:640:         printf("EOG\n");
	pea _?LC23					*	pea .LC23		|
_?L101:							*.L101:
							*| gifex.c:747:             printf("error: extension read error.\n");
	jbsr _puts					*	jsr puts		|
_?L93:							*.L93:
							*| gifex.c:826:             break;
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L32:							*.L32:
							*| gifex.c:849:       free__(decode_buffer_ptr);
	move.l -646(a6),-(sp)				*	move.l -646(%fp),-(%sp)	| %sfp,
	lea _free__,a3					*	lea free__,%a3	|, tmp453
	jbsr (a3)					*	jsr (%a3)		| tmp453
							*| gifex.c:855:       free__(file_buffer_ptr);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp453
							*| gifex.c:861:       fclose(fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	jbsr _fclose					*	jsr fclose		|
	jbra _?L98					*	jra .L98		|
_?L38:							*.L38:
							*| gifex.c:300:     lzw_suffix[i] = i;
	move.w d0,(a0)+					*	move.w %d0,(%a0)+	| i, MEM[(short int *)_5]
							*| gifex.c:298:   for (int i = 0; i < lzw->clear_code; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, i
	jbra _?L37					*	jra .L37		|
_?L39:							*.L39:
							*| gifex.c:704:             memcpy_file_buffer(sub_block_data, file_buffer_ptr, &file_buffer_ofs, sub_block_size, fp);
	and.l #255,d0					*	and.l #255,%d0	|,
	move.l d0,-598(a6)				*	move.l %d0,-598(%fp)	|, %sfp
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	|,
	pea -586(a6)					*	pea -586(%fp)		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	pea (_sub_block_data?0)				*	pea (sub_block_data.0)		|
	jbsr _memcpy_file_buffer			*	jsr memcpy_file_buffer		|
							*| gifex.c:705:             decoded = decode_lzw(&lzw, sub_block_data, sub_block_size, decode_buffer_ptr + decode_buffer_ofs, pixel_count - decode_buffer_ofs);
	move.l -638(a6),d1				*	move.l -638(%fp),%d1	| %sfp,
	sub.l a3,d1					*	sub.l %a3,%d1	| decode_buffer_ofs,
	move.l d1,-594(a6)				*	move.l %d1,-594(%fp)	|, %sfp
							*| gifex.c:315:   while (input_buffer_ofs < input_len && output_buffer_ofs < pixel_count) {
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	jble _?L68					*	jle .L68		|
							*| gifex.c:312:   int output_buffer_ofs = 0;
	moveq #0,d1					*	moveq #0,%d1	| output_buffer_ofs
							*| gifex.c:313:   int input_buffer_ofs = 0;
	clr.l -634(a6)					*	clr.l -634(%fp)	| %sfp
							*| gifex.c:308:   int bits = 0;
	moveq #0,d2					*	moveq #0,%d2	| bits
							*| gifex.c:307:   short datum = 0;
	clr.w -664(a6)					*	clr.w -664(%fp)	| %sfp
							*| gifex.c:381:     output_buffer[ output_buffer_ofs++ ] = lzw_pixel_stack[ top ];
	lea _lzw_pixel_stack,a2				*	lea lzw_pixel_stack,%a2	|, tmp466
_?L50:							*.L50:
							*| gifex.c:319:     if (top == 0) {
	tst.l d4					*	tst.l %d4	| lzw$top
	jbne _?L42					*	jne .L42		|
							*| gifex.c:321:       if (bits < lzw->code_size) {
	cmp.l -654(a6),d2				*	cmp.l -654(%fp),%d2	| %sfp, bits
	jbge _?L43					*	jge .L43		|
							*| gifex.c:322:         datum += input_buffer[ input_buffer_ofs++ ] << bits;
	lea (_sub_block_data?0),a0			*	lea (sub_block_data.0),%a0	|,
	move.l -634(a6),a1				*	move.l -634(%fp),%a1	| %sfp,
	moveq #0,d7					*	moveq #0,%d7	| *_247
	move.b (a0,a1.l),d7				*	move.b (%a0,%a1.l),%d7	| *_247, *_247
							*| gifex.c:322:         datum += input_buffer[ input_buffer_ofs++ ] << bits;
	lsl.l d2,d7					*	lsl.l %d2,%d7	| bits, tmp348
							*| gifex.c:322:         datum += input_buffer[ input_buffer_ofs++ ] << bits;
	add.w d7,-664(a6)				*	add.w %d7,-664(%fp)	| tmp348, %sfp
							*| gifex.c:323:         bits += 8;
	addq.l #8,d2					*	addq.l #8,%d2	|, bits
							*| gifex.c:322:         datum += input_buffer[ input_buffer_ofs++ ] << bits;
	addq.l #1,-634(a6)				*	addq.l #1,-634(%fp)	|, %sfp
_?L44:							*.L44:
							*| gifex.c:315:   while (input_buffer_ofs < input_len && output_buffer_ofs < pixel_count) {
	move.l -634(a6),d0				*	move.l -634(%fp),%d0	| %sfp,
	cmp.l -598(a6),d0				*	cmp.l -598(%fp),%d0	| %sfp,
	jbge _?L41					*	jge .L41		|
	cmp.l -594(a6),d1				*	cmp.l -594(%fp),%d1	| %sfp, output_buffer_ofs
	jblt _?L50					*	jlt .L50		|
_?L41:							*.L41:
							*| gifex.c:706:             decode_buffer_ofs += decoded;
	add.l d1,a3					*	add.l %d1,%a3	| output_buffer_ofs, decode_buffer_ofs
	jbra _?L51					*	jra .L51		|
_?L43:							*.L43:
							*| gifex.c:327:       code = datum & lzw->code_mask;
	move.w -650(a6),d7				*	move.w -650(%fp),%d7	| %sfp,
	and.w -664(a6),d7				*	and.w -664(%fp),%d7	| %sfp,
	move.w d7,a1					*	move.w %d7,%a1	|, code
							*| gifex.c:328:       datum >>= lzw->code_size;
	move.w -664(a6),a0				*	move.w -664(%fp),%a0	| %sfp, datum
	move.l a0,d0					*	move.l %a0,%d0	| datum,
	move.l -654(a6),d7				*	move.l -654(%fp),%d7	| %sfp,
	asr.l d7,d0					*	asr.l %d7,%d0	|,
	move.w d0,-664(a6)				*	move.w %d0,-664(%fp)	|, %sfp
							*| gifex.c:329:       bits -= lzw->code_size;
	sub.l d7,d2					*	sub.l %d7,%d2	|, bits
							*| gifex.c:331:       if (code > lzw->available || code == lzw->end_code) {
	move.w a1,a0					*	move.w %a1,%a0	| code, _263
							*| gifex.c:331:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l d3,a0					*	cmp.l %d3,%a0	| lzw$available, _263
	jbgt _?L41					*	jgt .L41		|
							*| gifex.c:331:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l -590(a6),a0				*	cmp.l -590(%fp),%a0	| %sfp, _263
	jbeq _?L41					*	jeq .L41		|
							*| gifex.c:335:       if (code == lzw->clear_code) {
	cmp.l d5,a0					*	cmp.l %d5,%a0	| _229, _263
	jbeq _?L69					*	jeq .L69		|
							*| gifex.c:343:       if (lzw->old_code == -1) {
	moveq #-1,d0					*	moveq #-1,%d0	|,
	cmp.l a5,d0					*	cmp.l %a5,%d0	| lzw$old_code,
	jbne _?L45					*	jne .L45		|
							*| gifex.c:344:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	lea (a0,a0.l),a1				*	lea (%a0,%a0.l),%a1	| _263, _263, tmp352
							*| gifex.c:344:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	move.l #_lzw_suffix,d7				*	move.l #lzw_suffix,%d7	|,
	move.b 1(a1,d7.l),(a2)				*	move.b 1(%a1,%d7.l),(%a2)	| lzw_suffix[_263], lzw_pixel_stack[0]
							*| gifex.c:346:         lzw->first = code;
	move.l a0,a4					*	move.l %a0,%a4	| _263, lzw$first
							*| gifex.c:345:         lzw->old_code = code;
	move.l a0,a5					*	move.l %a0,%a5	| lzw$first, lzw$old_code
							*| gifex.c:344:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	moveq #1,d4					*	moveq #1,%d4	|, lzw$top
							*| gifex.c:347:         continue;
	jbra _?L44					*	jra .L44		|
_?L45:							*.L45:
							*| gifex.c:352:       if (code == lzw->available) {
	cmp.l d3,a0					*	cmp.l %d3,%a0	| lzw$available, _263
	jbne _?L89					*	jne .L89		|
							*| gifex.c:353:         lzw_pixel_stack[ top++ ] = lzw->first;
	move.w a4,d0					*	move.w %a4,%d0	|,
	move.b d0,_lzw_pixel_stack			*	move.b %d0,lzw_pixel_stack	|, lzw_pixel_stack[0]
							*| gifex.c:354:         code = lzw->old_code;
	move.w a5,a1					*	move.w %a5,%a1	| lzw$old_code, code
							*| gifex.c:353:         lzw_pixel_stack[ top++ ] = lzw->first;
	moveq #1,d4					*	moveq #1,%d4	|, lzw$top
_?L89:							*.L89:
							*| gifex.c:358:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	move.l d4,-602(a6)				*	move.l %d4,-602(%fp)	| lzw$top, %sfp
							*| gifex.c:357:       while (code > lzw->clear_code) {
	move.w a1,a1					*	move.w %a1,%a1	| code, _281
							*| gifex.c:358:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	lea (a1,a1.l),a4				*	lea (%a1,%a1.l),%a4	| _281, _281, tmp358
	move.l #_lzw_suffix,d0				*	move.l #lzw_suffix,%d0	|,
	move.w (a4,d0.l),d7				*	move.w (%a4,%d0.l),%d7	| lzw_suffix[_281], pretmp_324
							*| gifex.c:358:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	addq.l #1,d4					*	addq.l #1,%d4	|, lzw$top
							*| gifex.c:357:       while (code > lzw->clear_code) {
	cmp.l d5,a1					*	cmp.l %d5,%a1	| _229, _281
	jbgt _?L48					*	jgt .L48		|
	move.w d7,d0					*	move.w %d7,%d0	| pretmp_324,
	and.w #255,d0					*	and.w #255,%d0	|,
	move.w d0,-668(a6)				*	move.w %d0,-668(%fp)	|, %sfp
							*| gifex.c:362:       lzw->first = lzw_suffix[ code ] & 0xff;
	moveq #0,d0					*	moveq #0,%d0	|
	move.b d7,d0					*	move.b %d7,%d0	| pretmp_324,
	move.l d0,a4					*	move.l %d0,%a4	|, lzw$first
							*| gifex.c:363:       lzw_pixel_stack[ top ++ ] = lzw->first;
	move.l -602(a6),a1				*	move.l -602(%fp),%a1	| %sfp,
	move.b d7,(a2,a1.l)				*	move.b %d7,(%a2,%a1.l)	| pretmp_324, lzw_pixel_stack[top_283]
							*| gifex.c:365:       if (lzw->available < MAX_STACK_SIZE) {
	cmp.l #4095,d3					*	cmp.l #4095,%d3	|, lzw$available
	jbgt _?L49					*	jgt .L49		|
							*| gifex.c:366:         lzw_prefix[ lzw->available ] = lzw->old_code;
	move.l d3,d7					*	move.l %d3,%d7	| lzw$available, tmp361
	add.l d3,d7					*	add.l %d3,%d7	| lzw$available, tmp361
	lea _lzw_prefix,a1				*	lea lzw_prefix,%a1	|,
	move.w a5,(a1,d7.l)				*	move.w %a5,(%a1,%d7.l)	| lzw$old_code, lzw_prefix[lzw$available_244]
							*| gifex.c:367:         lzw_suffix[ lzw->available ] = lzw->first;
	lea _lzw_suffix,a1				*	lea lzw_suffix,%a1	|,
	move.w -668(a6),(a1,d7.l)			*	move.w -668(%fp),(%a1,%d7.l)	| %sfp, lzw_suffix[lzw$available_244]
							*| gifex.c:368:         lzw->available++;
	addq.l #1,d3					*	addq.l #1,%d3	|, lzw$available
							*| gifex.c:370:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	move.w -650(a6),a1				*	move.w -650(%fp),%a1	| %sfp, lzw$code_mask
							*| gifex.c:370:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	move.l a1,d7					*	move.l %a1,%d7	| lzw$code_mask, tmp365
	and.l d3,d7					*	and.l %d3,%d7	| lzw$available, tmp365
							*| gifex.c:370:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	jbne _?L49					*	jne .L49		|
							*| gifex.c:370:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_STACK_SIZE) {
	cmp.l #4096,d3					*	cmp.l #4096,%d3	|, lzw$available
	jbeq _?L49					*	jeq .L49		|
							*| gifex.c:371:           lzw->code_size++;
	addq.l #1,-654(a6)				*	addq.l #1,-654(%fp)	|, %sfp
							*| gifex.c:372:           lzw->code_mask += lzw->available;
	add.w d3,-650(a6)				*	add.w %d3,-650(%fp)	| lzw$available, %sfp
_?L49:							*.L49:
							*| gifex.c:376:       lzw->old_code = in_code;
	move.l a0,a5					*	move.l %a0,%a5	| _263, lzw$old_code
_?L42:							*.L42:
							*| gifex.c:380:     top--;
	subq.l #1,d4					*	subq.l #1,%d4	|, lzw$top
							*| gifex.c:381:     output_buffer[ output_buffer_ofs++ ] = lzw_pixel_stack[ top ];
	move.l -646(a6),a0				*	move.l -646(%fp),%a0	| %sfp, tmp367
	add.l d1,a0					*	add.l %d1,%a0	| output_buffer_ofs, tmp367
	move.b (a2,d4.l),(a0,a3.l)			*	move.b (%a2,%d4.l),(%a0,%a3.l)	| lzw_pixel_stack[top_312], *_316
							*| gifex.c:381:     output_buffer[ output_buffer_ofs++ ] = lzw_pixel_stack[ top ];
	addq.l #1,d1					*	addq.l #1,%d1	|, output_buffer_ofs
	jbra _?L44					*	jra .L44		|
_?L48:							*.L48:
							*| gifex.c:358:         lzw_pixel_stack[ top++ ] = lzw_suffix[ code ];
	lea _lzw_pixel_stack-1,a1			*	lea lzw_pixel_stack-1,%a1	|,
	move.b d7,(a1,d4.l)				*	move.b %d7,(%a1,%d4.l)	| pretmp_324, MEM[(unsigned char *)&lzw_pixel_stack + 4294967295B + _420 * 1]
							*| gifex.c:359:         code = lzw_prefix[ code ];
	move.l #_lzw_prefix,d0				*	move.l #lzw_prefix,%d0	|,
	move.w (a4,d0.l),a1				*	move.w (%a4,%d0.l),%a1	| lzw_prefix[_281], code
	jbra _?L89					*	jra .L89		|
_?L69:							*.L69:
							*| gifex.c:337:         lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	move.w -604(a6),-650(a6)			*	move.w -604(%fp),-650(%fp)	| %sfp, %sfp
							*| gifex.c:336:         lzw->code_size = lzw->data_size + 1;
	move.l -630(a6),-654(a6)			*	move.l -630(%fp),-654(%fp)	| %sfp, %sfp
							*| gifex.c:338:         lzw->available = lzw->clear_code + 2;
	move.l -608(a6),d3				*	move.l -608(%fp),%d3	| %sfp, lzw$available
							*| gifex.c:339:         lzw->old_code = -1;
	move.w #-1,a5					*	move.w #-1,%a5	|, lzw$old_code
	jbra _?L44					*	jra .L44		|
_?L68:							*.L68:
							*| gifex.c:312:   int output_buffer_ofs = 0;
	moveq #0,d1					*	moveq #0,%d1	| output_buffer_ofs
	jbra _?L41					*	jra .L41		|
_?L55:							*.L55:
							*| gifex.c:522:       if ((g_start_y + y) >= g_actual_height) break;  // Y cropping
	move.l -642(a6),d0				*	move.l -642(%fp),%d0	| %sfp, _361
	add.l -638(a6),d0				*	add.l -638(%fp),%d0	| %sfp, _361
							*| gifex.c:522:       if ((g_start_y + y) >= g_actual_height) break;  // Y cropping
	cmp.l d0,d5					*	cmp.l %d0,%d5	| _361, g_actual_height.83_362
	jble _?L57					*	jle .L57		|
							*| gifex.c:523:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + y) + (g_start_x + left);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _361,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| g_actual_width.80_350,
	jbsr (a5)					*	jsr (%a5)		| tmp370
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:523:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + y) + (g_start_x + left);
	move.l d0,d7					*	move.l %d0,%d7	| tmp508, tmp384
	add.l d4,d7					*	add.l %d4,%d7	| _438, tmp384
	add.l d7,d7					*	add.l %d7,%d7	| tmp384, tmp385
							*| gifex.c:523:       gvram = (unsigned short*)GVRAM + g_actual_width * (g_start_y + y) + (g_start_x + left);
	add.l #12582912,d7				*	add.l #12582912,%d7	|, gvram
							*| gifex.c:520:       x = 0;
	moveq #0,d0					*	moveq #0,%d0	| x
_?L54:							*.L54:
	move.l -650(a6),a1				*	move.l -650(%fp),%a1	| %sfp, buffer
	jbra _?L52					*	jra .L52		|
_?L33:							*.L33:
							*| gifex.c:726:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L59					*	jne .L59		|
							*| gifex.c:728:         unsigned char extension_label = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:730:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L60					*	jne .L60		|
							*| gifex.c:735:           printf("graphic control extension\n");
	pea _?LC28					*	pea .LC28		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:740:           graphic_ctrl_ext.block_size        = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:741:           graphic_ctrl_ext.flag_code         = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:742:           graphic_ctrl_ext.delay_time        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _get_ushort_file_buffer			*	jsr get_ushort_file_buffer		|
							*| gifex.c:743:           graphic_ctrl_ext.transparent_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:745:           graphic_ctrl_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:746:           if (graphic_ctrl_ext.terminator != 0x00) {
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
_?L91:							*.L91:
	tst.b d0					*	tst.b %d0	| tmp510
	jbeq _?L30					*	jeq .L30		|
							*| gifex.c:747:             printf("error: extension read error.\n");
	pea _?LC29					*	pea .LC29		|
	jbra _?L101					*	jra .L101		|
_?L60:							*.L60:
							*| gifex.c:756:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L62					*	jne .L62		|
							*| gifex.c:761:           printf("comment extension\n");
	pea _?LC30					*	pea .LC30		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:766:           comment_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:767:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, comment_ext.block_size, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	and.l #255,d0					*	and.l #255,%d0	|, _84
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _84,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:769:           comment_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
_?L100:							*.L100:
							*| gifex.c:797:           plain_text_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:798:           if (plain_text_ext.terminator != 0x00) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L91					*	jra .L91		|
_?L62:							*.L62:
							*| gifex.c:776:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L64					*	jne .L64		|
							*| gifex.c:781:           printf("plain text extension\n");
	pea _?LC31					*	pea .LC31		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:786:           plain_text_ext.block_size              = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:787:           plain_text_ext.text_grid_left_position = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea _get_ushort_file_buffer,a4			*	lea get_ushort_file_buffer,%a4	|, tmp412
	jbsr (a4)					*	jsr (%a4)		| tmp412
							*| gifex.c:788:           plain_text_ext.text_grid_top_position  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp412
							*| gifex.c:789:           plain_text_ext.text_grid_width         = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp412
							*| gifex.c:790:           plain_text_ext.text_grid_height        = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a4)					*	jsr (%a4)		| tmp412
							*| gifex.c:791:           plain_text_ext.character_cell_width    = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:792:           plain_text_ext.character_cell_height   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:794:           plain_text_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:795:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, plain_text_ext.block_size2, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	and.l #255,d0					*	and.l #255,%d0	|, _87
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _87,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:797:           plain_text_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (40,sp),sp					*	lea (40,%sp),%sp	|,
	jbra _?L100					*	jra .L100		|
_?L64:							*.L64:
							*| gifex.c:804:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L65					*	jne .L65		|
							*| gifex.c:809:           printf("application extension\n");
	pea _?LC32					*	pea .LC32		|
	lea _puts,a4					*	lea puts,%a4	|, tmp430
	jbsr (a4)					*	jsr (%a4)		| tmp430
							*| gifex.c:811:           app_ext.introducer = block_type;
	move.w #8703,-512(a6)				*	move.w #8703,-512(%fp)	|, MEM <unsigned short> [(unsigned char *)_198]
							*| gifex.c:814:           app_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:814:           app_ext.block_size = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-510(a6)				*	move.b %d0,-510(%fp)	| tmp515, MEM[(struct  *)_198].block_size
							*| gifex.c:816:           memcpy_file_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, 8, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	pea 8.w						*	pea 8.w		|
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	lea (-512,a6),a0				*	lea (-512,%fp),%a0	|,, tmp434
	pea 3(a0)					*	pea 3(%a0)		|
	lea _memcpy_file_buffer,a5			*	lea memcpy_file_buffer,%a5	|, tmp436
	move.l a0,-658(a6)				*	move.l %a0,-658(%fp)	|,
	jbsr (a5)					*	jsr (%a5)		| tmp436
							*| gifex.c:817:           memcpy_file_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, 3, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	pea 3.w						*	pea 3.w		|
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	move.l -658(a6),a0				*	move.l -658(%fp),%a0	|,
	pea 11(a0)					*	pea 11(%a0)		|
	jbsr (a5)					*	jsr (%a5)		| tmp436
							*| gifex.c:819:           app_ext.block_size2 = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:820:           skip_file_buffer(file_buffer_ptr, &file_buffer_ofs, app_ext.block_size2, fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l -662(a6),(sp)				*	move.l -662(%fp),(%sp)	| %sfp,
	and.l #255,d0					*	and.l #255,%d0	|, _91
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _91,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr _skip_file_buffer				*	jsr skip_file_buffer		|
							*| gifex.c:822:           app_ext.terminator = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l -662(a6),-(sp)				*	move.l -662(%fp),-(%sp)	| %sfp,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| tmp292,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| addr,
	jbsr (a3)					*	jsr (%a3)		| tmp293
							*| gifex.c:823:           if (app_ext.terminator != 0x00) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.b d0					*	tst.b %d0	| tmp517
	jbeq _?L30					*	jeq .L30		|
							*| gifex.c:824:             printf("error: extension read error.\n");
	pea _?LC29					*	pea .LC29		|
	jbsr (a4)					*	jsr (%a4)		| tmp430
	jbra _?L93					*	jra .L93		|
_?L65:							*.L65:
							*| gifex.c:831:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC33					*	pea .LC33		|
_?L94:							*.L94:
							*| gifex.c:839:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
							*| gifex.c:841:         break;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L32					*	jra .L32		|
_?L59:							*.L59:
							*| gifex.c:839:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC34					*	pea .LC34		|
	jbra _?L94					*	jra .L94		|
							*	.size	load_gif_image.isra.0, .-load_gif_image.isra.0
	.data						*	.section	.rodata.str1.1
_?LC35:							*.LC35:
	.dc.b $79,$65,$73
	.dc.b $00					*	.string	"yes"
_?LC36:							*.LC36:
	.dc.b $6e,$6f
	.dc.b $00					*	.string	"no"
_?LC37:							*.LC37:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6c,$61,$72,$67,$65
	.dc.b $20,$6d,$65,$6d,$6f,$72,$79,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$2e
	.dc.b $00					*	.string	"error: too large memory factor."
_?LC38:							*.LC38:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$6f
	.dc.b $70,$74,$69,$6f,$6e,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown option (%s).\n"
_?LC39:							*.LC39:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6e
	.dc.b $6f,$20,$69,$6e,$70,$75,$74,$20
	.dc.b $66,$69,$6c,$65,$2e
	.dc.b $00					*	.string	"error: no input file."
_?LC40:							*.LC40:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$6e,$61,$6d,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"     file name: %s\n"
_?LC41:							*.LC41:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     file size: %d\n"
_?LC42:							*.LC42:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$74,$69,$6d,$65,$3a,$20
	.dc.b $25,$30,$34,$64,$2d,$25,$30,$32
	.dc.b $64,$2d,$25,$30,$32,$64,$20,$25
	.dc.b $30,$32,$64,$3a,$25,$30,$32,$64
	.dc.b $3a,$25,$30,$32,$64,$0a
	.dc.b $00					*	.string	"     file time: %04d-%02d-%02d %02d:%02d:%02d\n"
_?LC43:							*.LC43:
	.dc.b $20,$20,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"   GIF version: %s\n"
_?LC44:							*.LC44:
	.dc.b $20,$20,$73,$63,$72,$65,$65,$6e
	.dc.b $20,$77,$69,$64,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  screen width: %d\n"
_?LC45:							*.LC45:
	.dc.b $20,$73,$63,$72,$65,$65,$6e,$20
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	" screen height: %d\n"
_?LC46:							*.LC46:
	.dc.b $20,$20,$20,$20,$20,$62,$69,$74
	.dc.b $20,$64,$65,$70,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     bit depth: %d\n"
_?LC47:							*.LC47:
	.dc.b $20,$47,$43,$54,$20,$61,$76,$61
	.dc.b $69,$6c,$61,$62,$6c,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	" GCT available: %s\n"
_?LC48:							*.LC48:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$6f,$72,$74,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"      GCT sort: %s\n"
_?LC49:							*.LC49:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"      GCT size: %d\n"
_?LC50:							*.LC50:
	.dc.b $42,$47,$20,$63,$6f,$6c,$6f,$72
	.dc.b $20,$69,$6e,$64,$65,$78,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"BG color index: %d\n"
_?LC51:							*.LC51:
	.dc.b $20,$20,$61,$73,$70,$65,$63,$74
	.dc.b $20,$72,$61,$74,$69,$6f,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  aspect ratio: %d\n"
	.globl	___divsi3				*	.globl	__divsi3
	.text						*	.section	.text.startup,"ax",@progbits
	.align	2					*	.align	2
	.xref __main	* workaround for libc.
	.globl	_main					*	.globl	main
							*	.type	main, @function
_main:							*main:
	link.w a6,#-80					*	link.w %fp,#-80	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d4					*	move.l 8(%fp),%d4	| argc, argc
							*| gifex.c:992:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L103					*	jlt .L103		|
							*| gifex.c:993:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L104:							*.L104:
							*| gifex.c:994:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L102					*	jra .L102		|
_?L103:							*.L103:
	move.l 12(a6),a3				*	move.l 12(%fp),%a3	| argv, ivtmp.218
	addq.l #4,a3					*	addq.l #4,%a3	|, ivtmp.218
							*| gifex.c:997:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| gifex.c:989:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L111,a4				*	move.l #.L111,%a4	|, tmp314
_?L119:							*.L119:
							*| gifex.c:998:     if (argv[i][0] == '-') {
	move.l (a3)+,a0					*	move.l (%a3)+,%a0	| MEM[(char * *)_104], _4
							*| gifex.c:998:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L141					*	jne .L141		|
							*| gifex.c:999:       if (argv[i][1] == 'c') {
	move.b 1(a0),d0					*	move.b 1(%a0),%d0	| MEM[(char *)_4 + 1B], _6
							*| gifex.c:999:       if (argv[i][1] == 'c') {
	cmp.b #99,d0					*	cmp.b #99,%d0	|, _6
	jbne _?L106					*	jne .L106		|
							*| gifex.c:1000:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L105:							*.L105:
							*| gifex.c:997:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| gifex.c:997:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L119					*	jne .L119		|
							*| gifex.c:1029:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L120					*	jne .L120		|
							*| gifex.c:1030:     printf("error: no input file.\n");
	pea _?LC39					*	pea .LC39		|
	jbra _?L154					*	jra .L154		|
_?L106:							*.L106:
	cmp.b #110,d0					*	cmp.b #110,%d0	|, _6
	jbgt _?L107					*	jgt .L107		|
	cmp.b #97,d0					*	cmp.b #97,%d0	|, _6
	jble _?L108					*	jle .L108		|
	move.b d0,d1					*	move.b %d0,%d1	| _6, tmp146
	add.b #-98,d1					*	add.b #-98,%d1	|, tmp146
	cmp.b #12,d1					*	cmp.b #12,%d1	|, tmp146
	jbhi _?L109					*	jhi .L109		|
	and.l #255,d1					*	and.l #255,%d1	|, tmp147
	add.l d1,d1					*	add.l %d1,%d1	| tmp150
	move.w (a4,d1.l),d1				*	move.w (%a4,%d1.l),%d1	|, tmp151
	jmp 2(pc,d1.w)					*	jmp %pc@(2,%d1:w)	| tmp151
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&13
_?L111:							*.L111:
	.dc.w _?L115-_?L111				*	.word .L115-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L114-_?L111				*	.word .L114-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L113-_?L111				*	.word .L113-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L112-_?L111				*	.word .L112-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L109-_?L111				*	.word .L109-.L111
	.dc.w _?L110-_?L111				*	.word .L110-.L111
_?L107:							*.L107:
	cmp.b #118,d0					*	cmp.b #118,%d0	|, _6
	jbeq _?L116					*	jeq .L116		|
_?L108:							*.L108:
							*| gifex.c:1021:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC38					*	pea .LC38		|
	jbsr _printf					*	jsr printf		|
							*| gifex.c:1022:         return 1;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L104					*	jra .L104		|
_?L114:							*.L114:
							*| gifex.c:1002:         g_extended_graphic_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_extended_graphic_mode		*	move.l %d2,g_extended_graphic_mode	|, g_extended_graphic_mode
	jbra _?L105					*	jra .L105		|
_?L113:							*.L113:
							*| gifex.c:1004:         g_information_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_information_mode			*	move.l %d0,g_information_mode	|, g_information_mode
	jbra _?L105					*	jra .L105		|
_?L110:							*.L110:
							*| gifex.c:1006:         g_centering_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_centering_mode			*	move.l %d1,g_centering_mode	|, g_centering_mode
	jbra _?L105					*	jra .L105		|
_?L112:							*.L112:
							*| gifex.c:1008:         g_wait_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_wait_mode				*	move.l %d2,g_wait_mode	|, g_wait_mode
	jbra _?L105					*	jra .L105		|
_?L116:							*.L116:
							*| gifex.c:1010:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1010:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp315, g_brightness
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L105					*	jra .L105		|
_?L115:							*.L115:
							*| gifex.c:1012:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
							*| gifex.c:1012:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _10, g_buffer_memory_size_factor
							*| gifex.c:1013:         if (g_buffer_memory_size_factor > 16) {
	addq.l #4,sp					*	addq.l #4,%sp	|,
	moveq #16,d1					*	moveq #16,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _10,
	jbge _?L105					*	jge .L105		|
							*| gifex.c:1014:           printf("error: too large memory factor.\n");
	pea _?LC37					*	pea .LC37		|
_?L154:							*.L154:
							*| gifex.c:1030:     printf("error: no input file.\n");
	jbsr _puts					*	jsr puts		|
							*| gifex.c:1031:     return 1;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L104					*	jra .L104		|
_?L109:							*.L109:
							*| gifex.c:1017:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d0					*	cmp.b #104,%d0	|, _6
	jbne _?L108					*	jne .L108		|
							*| gifex.c:1018:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L118:							*.L118:
							*| gifex.c:1019:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L102:							*.L102:
							*| gifex.c:1072: }
	movem.l -112(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -112(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L141:							*.L141:
							*| gifex.c:998:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L105					*	jra .L105		|
_?L120:							*.L120:
							*| gifex.c:1035:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.14_14
	move.l d0,d1					*	move.l %d0,%d1	| g_buffer_memory_size_factor.14_14, tmp160
	swap d1						*	swap %d1	| tmp160
	clr.w d1					*	clr.w %d1	| tmp160
							*| gifex.c:1035:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d1,_g_input_buffer_size			*	move.l %d1,g_input_buffer_size	| tmp160, g_input_buffer_size
							*| gifex.c:1038:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp161
	swap d0						*	swap %d0	| tmp161
	clr.w d0					*	clr.w %d0	| tmp161
							*| gifex.c:1038:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp161, g_output_buffer_size
							*| gifex.c:1041:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.16_25
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbeq _?L121					*	jeq .L121		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.16_25
_?L121:							*.L121:
							*| gifex.c:1041:   g_actual_width = g_extended_graphic_mode != 0 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.16_25, g_actual_width
							*| gifex.c:1042:   g_actual_height = g_extended_graphic_mode != 0 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.16_25, g_actual_height
							*| gifex.c:1044:    if (g_information_mode == 1) {
	moveq #1,d2					*	moveq #1,%d2	|,
	cmp.l _g_information_mode.l,d2			*	cmp.l g_information_mode.l,%d2	| g_information_mode,
	jbne _?L122					*	jne .L122		|
							*| gifex.c:877:     int file_buffer_ofs = 0;
	clr.l -74(a6)					*	clr.l -74(%fp)	| file_buffer_ofs
							*| gifex.c:881:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
							*| gifex.c:881:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp317
	jbeq _?L123					*	jeq .L123		|
							*| gifex.c:882:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC12					*	pea .LC12		|
_?L155:							*.L155:
							*| gifex.c:889:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L153:							*.L153:
							*| gifex.c:963:     return 0;
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L118					*	jra .L118		|
_?L123:							*.L123:
							*| gifex.c:887:     fp = fopen(gif_file_name, "rb");
	pea _?LC13					*	pea .LC13		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	move.l d0,d4					*	move.l %d0,%d4	| tmp318, fp
							*| gifex.c:888:     if (fp == NULL) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbne _?L125					*	jne .L125		|
							*| gifex.c:889:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC14					*	pea .LC14		|
	jbra _?L155					*	jra .L155		|
_?L125:							*.L125:
							*| gifex.c:477:   int addr = MALLOC(size);
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	jbsr _MALLOC					*	jsr MALLOC		|
	move.l d0,d3					*	move.l %d0,%d3	| tmp319, addr
							*| gifex.c:478:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	addq.l #4,sp					*	addq.l #4,%sp	|,
	lea _fclose,a4					*	lea fclose,%a4	|, tmp310
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbhi _?L126					*	jhi .L126		|
							*| gifex.c:895:     if (file_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| addr
	jbne _?L127					*	jne .L127		|
_?L126:							*.L126:
							*| gifex.c:896:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC15					*	pea .LC15		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:897:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp310
	jbra _?L153					*	jra .L153		|
_?L127:							*.L127:
							*| gifex.c:902:     read_size = fread(file_buffer_ptr, 1, g_input_buffer_size, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l _g_input_buffer_size,-(sp)		*	move.l g_input_buffer_size,-(%sp)	| g_input_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| addr,
	jbsr _fread					*	jsr fread		|
							*| gifex.c:903:     if (read_size <= 0) {
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	lea _free__,a5					*	lea free__,%a5	|, tmp312
	tst.l d0					*	tst.l %d0	| tmp320
	jbgt _?L128					*	jgt .L128		|
							*| gifex.c:904:       printf("error: file read error.\n");
	pea _?LC16					*	pea .LC16		|
	jbsr _puts					*	jsr puts		|
							*| gifex.c:905:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp310
							*| gifex.c:906:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp312
							*| gifex.c:907:       return -1;
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L118					*	jra .L118		|
_?L128:							*.L128:
							*| gifex.c:911:     memcpy_file_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	moveq #-74,d6					*	moveq #-74,%d6	|, tmp174
	add.l a6,d6					*	add.l %fp,%d6	|, tmp174
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	lea (-70,a6),a3					*	lea (-70,%fp),%a3	|,, tmp175
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp175,
	lea _memcpy_file_buffer,a0			*	lea memcpy_file_buffer,%a0	|, tmp176
	move.l a0,-78(a6)				*	move.l %a0,-78(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp176
							*| gifex.c:912:     header.signature[3] = '\0';
	clr.b -67(a6)					*	clr.b -67(%fp)	| header.signature[3]
							*| gifex.c:913:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC17					*	pea .LC17		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp175,
	move.l #_strcmp,d7				*	move.l #strcmp,%d7	|, tmp178
	move.l d7,a1					*	move.l %d7,%a1	| tmp178,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:913:     if (strcmp(header.signature, "GIF") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp313
	move.l -78(a6),a0				*	move.l -78(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp321
	jbeq _?L129					*	jeq .L129		|
							*| gifex.c:914:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC18					*	pea .LC18		|
_?L152:							*.L152:
							*| gifex.c:924:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:925:       fclose(fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp310
							*| gifex.c:926:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp312
							*| gifex.c:927:       return -1;
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L118					*	jra .L118		|
_?L129:							*.L129:
							*| gifex.c:921:     memcpy_file_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, 3, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	pea -66(a6)					*	pea -66(%fp)		|
	jbsr (a0)					*	jsr (%a0)		| tmp176
							*| gifex.c:922:     header.version[3] = '\0';
	clr.b -63(a6)					*	clr.b -63(%fp)	| header.version[3]
							*| gifex.c:923:     if (strcmp(header.version, "89a") != 0 ) {
	pea _?LC19					*	pea .LC19		|
	pea -66(a6)					*	pea -66(%fp)		|
	move.l d7,a0					*	move.l %d7,%a0	| tmp178,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:923:     if (strcmp(header.version, "89a") != 0 ) {
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	tst.l d0					*	tst.l %d0	| tmp322
	jbeq _?L130					*	jeq .L130		|
							*| gifex.c:924:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea -66(a6)					*	pea -66(%fp)		|
	pea _?LC20					*	pea .LC20		|
	jbra _?L152					*	jra .L152		|
_?L130:							*.L130:
							*| gifex.c:931:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l #_get_ushort_file_buffer,d7		*	move.l #get_ushort_file_buffer,%d7	|, tmp197
	move.l d7,a1					*	move.l %d7,%a1	| tmp197,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:931:     header.screen_width   = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-62(a6)				*	move.w %d0,-62(%fp)	| tmp323, header.screen_width
							*| gifex.c:932:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp197,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:932:     header.screen_height  = get_ushort_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.w d0,-60(a6)				*	move.w %d0,-60(%fp)	| tmp324, header.screen_height
							*| gifex.c:933:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l #_get_uchar_file_buffer,d7		*	move.l #get_uchar_file_buffer,%d7	|, tmp201
	move.l d7,a1					*	move.l %d7,%a1	| tmp201,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:933:     header.flag_code      = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-58(a6)				*	move.b %d0,-58(%fp)	| tmp325, header.flag_code
							*| gifex.c:934:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l d4,(sp)					*	move.l %d4,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a0					*	move.l %d7,%a0	| tmp201,
	jbsr (a0)					*	jsr (%a0)		|
							*| gifex.c:934:     header.bg_color_index = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-57(a6)				*	move.b %d0,-57(%fp)	| tmp326, header.bg_color_index
							*| gifex.c:935:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| tmp174,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	move.l d7,a1					*	move.l %d7,%a1	| tmp201,
	jbsr (a1)					*	jsr (%a1)		|
							*| gifex.c:935:     header.aspect_ratio   = get_uchar_file_buffer(file_buffer_ptr, &file_buffer_ofs, fp);
	move.b d0,-56(a6)				*	move.b %d0,-56(%fp)	| tmp327, header.aspect_ratio
							*| gifex.c:938:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC40					*	pea .LC40		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:939:     printf("     file size: %d\n", inf.filelen);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| inf.filelen,
	pea _?LC41					*	pea .LC41		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:940:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| inf.time, _78
							*| gifex.c:940:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| inf.date, _86
							*| gifex.c:940:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _78,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _78, tmp210
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp210
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp210,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d2					*	moveq #11,%d2	|,
	lsr.w d2,d1					*	lsr.w %d2,%d1	|, tmp213
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d1,d5					*	and.l %d1,%d5	| tmp213,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #31,d1					*	moveq #31,%d1	|,
	and.l d0,d1					*	and.l %d0,%d1	| _86,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _86, tmp217
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp217
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp217,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
							*| gifex.c:940:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #9,d5					*	moveq #9,%d5	|,
	lsr.w d5,d0					*	lsr.w %d5,%d0	|, tmp220
							*| gifex.c:940:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp221
	move.l d0,d1					*	move.l %d0,%d1	|,
	and.l #4095,d1					*	and.l #4095,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC42					*	pea .LC42		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:941:     printf("   GIF version: %s\n", header.version);
	lea (36,sp),sp					*	lea (36,%sp),%sp	|,
	pea -66(a6)					*	pea -66(%fp)		|
	pea _?LC43					*	pea .LC43		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:942:     printf("  screen width: %d\n", header.screen_width);
	moveq #0,d0					*	moveq #0,%d0	| header.screen_width
	move.w -62(a6),d0				*	move.w -62(%fp),%d0	| header.screen_width, header.screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| header.screen_width,
	pea _?LC44					*	pea .LC44		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:943:     printf(" screen height: %d\n", header.screen_height);
	moveq #0,d0					*	moveq #0,%d0	| header.screen_height
	move.w -60(a6),d0				*	move.w -60(%fp),%d0	| header.screen_height, header.screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| header.screen_height,
	pea _?LC45					*	pea .LC45		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:944:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #0,d0					*	moveq #0,%d0	| header.flag_code
	move.b -58(a6),d0				*	move.b -58(%fp),%d0	| header.flag_code, header.flag_code
							*| gifex.c:259:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #4,d0					*	asr.l #4,%d0	|, tmp232
							*| gifex.c:944:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp236
	move.l d0,a0					*	move.l %d0,%a0	| tmp236,
	pea 1(a0)					*	pea 1(%a0)		|
	pea _?LC46					*	pea .LC46		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:945:     printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
	lea (32,sp),sp					*	lea (32,%sp),%sp	|,
	move.l #_?LC36,d0				*	move.l #.LC36,%d0	|, iftmp.24_109
	tst.b -58(a6)					*	tst.b -58(%fp)	| header.flag_code
	jbpl _?L131					*	jpl .L131		|
	move.l #_?LC35,d0				*	move.l #.LC35,%d0	|, iftmp.24_109
_?L131:							*.L131:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.24_109,
	pea _?LC47					*	pea .LC47		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:259:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	moveq #0,d1					*	moveq #0,%d1	| _111
	move.b -58(a6),d1				*	move.b -58(%fp),%d1	| header.flag_code, _111
							*| gifex.c:946:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l #_?LC36,d0				*	move.l #.LC36,%d0	|, iftmp.25_116
	tst.b -58(a6)					*	tst.b -58(%fp)	| header.flag_code
	jbpl _?L132					*	jpl .L132		|
							*| gifex.c:946:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.w d1,ccr					*	move.w %d1,%ccr	| _111
	jbpl _?L132					*	jpl .L132		|
							*| gifex.c:946:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC35,d0				*	move.l #.LC35,%d0	|, iftmp.25_116
_?L132:							*.L132:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.25_116,
	pea _?LC48					*	pea .LC48		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:947:     printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
	move.b -58(a6),d0				*	move.b -58(%fp),%d0	| header.flag_code, tmp245
	and.b #7,d0					*	and.b #7,%d0	|, tmp245
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp247
	move.l d0,a0					*	move.l %d0,%a0	| tmp247, tmp249
	add.l d0,a0					*	add.l %d0,%a0	| tmp247, tmp249
	pea (a0,d0.l)					*	pea (%a0,%d0.l)		|
	pea _?LC49					*	pea .LC49		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:948:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| header.bg_color_index
	move.b -57(a6),d0				*	move.b -57(%fp),%d0	| header.bg_color_index, header.bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| header.bg_color_index,
	pea _?LC50					*	pea .LC50		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:949:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| header.aspect_ratio
	move.b -56(a6),d0				*	move.b -56(%fp),%d0	| header.aspect_ratio, header.aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| header.aspect_ratio,
	pea _?LC51					*	pea .LC51		|
	jbsr (a3)					*	jsr (%a3)		| tmp313
							*| gifex.c:953:       fclose(fp);
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	move.l d4,(sp)					*	move.l %d4,(%sp)	| fp,
	jbsr (a4)					*	jsr (%a4)		| tmp310
							*| gifex.c:959:       free__(file_buffer_ptr);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| addr,
	jbsr (a5)					*	jsr (%a5)		| tmp312
	jbra _?L153					*	jra .L153		|
_?L122:							*.L122:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _259
							*| gifex.c:395:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.212
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.205
							*| gifex.c:396:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	lea _g_rgb555_r,a5				*	lea g_rgb555_r,%a5	|, tmp265
							*| gifex.c:397:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	lea _g_rgb555_g,a4				*	lea g_rgb555_g,%a4	|, tmp267
							*| gifex.c:398:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	lea _g_rgb555_b,a3				*	lea g_rgb555_b,%a3	|, tmp269
_?L134:							*.L134:
							*| gifex.c:395:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.205,
	jbsr ___divsi3					*	jsr __divsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| gifex.c:395:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp264
							*| gifex.c:396:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp266
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp266
							*| gifex.c:396:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp266
	move.w d1,(a5,d4.l)				*	move.w %d1,(%a5,%d4.l)	| tmp266, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.212_158 * 1]
							*| gifex.c:397:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp268
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp268
							*| gifex.c:397:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp268
	move.w d1,(a4,d4.l)				*	move.w %d1,(%a4,%d4.l)	| tmp268, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.212_158 * 1]
							*| gifex.c:398:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp264, tmp270
							*| gifex.c:398:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp270
	move.w d0,(a3,d4.l)				*	move.w %d0,(%a3,%d4.l)	| tmp270, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.212_158 * 1]
							*| gifex.c:394:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _259, ivtmp.205
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.212
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.212
	jbne _?L134					*	jne .L134		|
							*| gifex.c:420:   if (g_clear_screen != 0) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L135					*	jeq .L135		|
							*| gifex.c:421:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L135:							*.L135:
							*| gifex.c:425:   ssp = SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	lea _SUPER,a3					*	lea SUPER,%a3	|, tmp272
	jbsr (a3)					*	jsr (%a3)		| tmp272
							*| gifex.c:428:   while(!(*gpip & 0x10));
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L136:							*.L136:
							*| gifex.c:428:   while(!(*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _132
							*| gifex.c:428:   while(!(*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _132
	jbeq _?L136					*	jeq .L136		|
_?L137:							*.L137:
							*| gifex.c:429:   while( (*gpip & 0x10));
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _134
							*| gifex.c:429:   while( (*gpip & 0x10));
	btst #4,d1					*	btst #4,%d1	|, _134
	jbne _?L137					*	jne .L137		|
							*| gifex.c:432:   crtc_r00_ptr[0] = 0x0089;
	move.w #137,15204352				*	move.w #137,15204352	|, MEM[(volatile short unsigned int *)15204352B]
							*| gifex.c:433:   crtc_r00_ptr[1] = 0x000e;
	move.w #14,15204354				*	move.w #14,15204354	|, MEM[(volatile short unsigned int *)15204354B]
							*| gifex.c:434:   crtc_r00_ptr[2] = 0x001c;
	move.w #28,15204356				*	move.w #28,15204356	|, MEM[(volatile short unsigned int *)15204356B]
							*| gifex.c:435:   crtc_r00_ptr[3] = 0x007c;
	move.w #124,15204358				*	move.w #124,15204358	|, MEM[(volatile short unsigned int *)15204358B]
							*| gifex.c:436:   crtc_r00_ptr[4] = 0x0237;
	move.w #567,15204360				*	move.w #567,15204360	|, MEM[(volatile short unsigned int *)15204360B]
							*| gifex.c:437:   crtc_r00_ptr[5] = 0x0005;
	move.w #5,15204362				*	move.w #5,15204362	|, MEM[(volatile short unsigned int *)15204362B]
							*| gifex.c:438:   crtc_r00_ptr[6] = 0x0028;
	move.w #40,15204364				*	move.w #40,15204364	|, MEM[(volatile short unsigned int *)15204364B]
							*| gifex.c:439:   crtc_r00_ptr[7] = 0x0228;
	move.w #552,15204366				*	move.w #552,15204366	|, MEM[(volatile short unsigned int *)15204366B]
							*| gifex.c:440:   crtc_r00_ptr[8] = 0x001b;
	move.w #27,15204368				*	move.w #27,15204368	|, MEM[(volatile short unsigned int *)15204368B]
							*| gifex.c:443:   if (g_extended_graphic_mode == 0) {
	tst.l _g_extended_graphic_mode			*	tst.l g_extended_graphic_mode	| g_extended_graphic_mode
	jbne _?L138					*	jne .L138		|
							*| gifex.c:444:     *crtc_r20_ptr = 0x0316;   // memory mode 3
	move.w #790,15204392				*	move.w #790,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:445:     *vdc_r1_ptr = 3;          // memory mode 3
	move.w #3,15213568				*	move.w #3,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:446:     *vdc_r3_ptr = 0x2f;       // graphic on (512x512)
	move.w #47,15214080				*	move.w #47,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:447:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:448:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
							*| gifex.c:449:     crtc_r12_ptr[2] = 0;          // scroll position X
	move.w #0,15204380				*	move.w #0,15204380	|, MEM[(volatile short unsigned int *)15204380B]
							*| gifex.c:450:     crtc_r12_ptr[3] = 0;          // scroll position Y
	move.w #0,15204382				*	move.w #0,15204382	|, MEM[(volatile short unsigned int *)15204382B]
							*| gifex.c:451:     crtc_r12_ptr[4] = 0;          // scroll position X
	move.w #0,15204384				*	move.w #0,15204384	|, MEM[(volatile short unsigned int *)15204384B]
							*| gifex.c:452:     crtc_r12_ptr[5] = 0;          // scroll position Y
	move.w #0,15204386				*	move.w #0,15204386	|, MEM[(volatile short unsigned int *)15204386B]
							*| gifex.c:453:     crtc_r12_ptr[6] = 0;          // scroll position X
	move.w #0,15204388				*	move.w #0,15204388	|, MEM[(volatile short unsigned int *)15204388B]
							*| gifex.c:454:     crtc_r12_ptr[7] = 0;          // scroll position Y
	move.w #0,15204390				*	move.w #0,15204390	|, MEM[(volatile short unsigned int *)15204390B]
_?L139:							*.L139:
							*| gifex.c:395:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	move.l #15212544,a0				*	move.l #15212544,%a0	|, palette_ptr
	moveq #1,d1					*	moveq #1,%d1	|, i
_?L140:							*.L140:
							*| gifex.c:465:     *palette_ptr++ = (unsigned short)i;
	move.w d1,(a0)					*	move.w %d1,(%a0)	| i, *palette_ptr_248
	move.l a0,a1					*	move.l %a0,%a1	| palette_ptr, palette_ptr
							*| gifex.c:466:     *palette_ptr++ = (unsigned short)i;
	addq.l #4,a0					*	addq.l #4,%a0	|, palette_ptr
							*| gifex.c:466:     *palette_ptr++ = (unsigned short)i;
	move.w d1,2(a1)					*	move.w %d1,2(%a1)	| i, MEM[(volatile short unsigned int *)palette_ptr_119 + 2B]
							*| gifex.c:464:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	add.l #514,d1					*	add.l #514,%d1	|, i
							*| gifex.c:464:   for (int i = 0x0001; i <= 0x10000; i += 0x0202) {
	cmp.l #15213056,a0				*	cmp.l #15213056,%a0	|, palette_ptr
	jbne _?L140					*	jne .L140		|
							*| gifex.c:470:   SUPER(ssp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| ssp,
	jbsr (a3)					*	jsr (%a3)		| tmp272
							*| gifex.c:1056:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| gifex.c:1059:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	lea _C_FNKMOD,a3				*	lea C_FNKMOD,%a3	|, tmp304
	jbsr (a3)					*	jsr (%a3)		| tmp304
	move.l d0,d3					*	move.l %d0,%d3	| tmp330, func_key_display_mode
							*| gifex.c:1060:   C_FNKMOD(3);
	pea 3.w						*	pea 3.w		|
	jbsr (a3)					*	jsr (%a3)		| tmp304
							*| gifex.c:1063:   load_gif_image(gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr (_load_gif_image?isra?0)			*	jsr (load_gif_image.isra.0)		|
							*| gifex.c:1066:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| gifex.c:1069:   C_FNKMOD(func_key_display_mode);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| func_key_display_mode,
	jbsr (a3)					*	jsr (%a3)		| tmp304
							*| gifex.c:1071:   return 0;
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	jbra _?L118					*	jra .L118		|
_?L138:							*.L138:
							*| gifex.c:456:     *crtc_r20_ptr = 0x0716;   // memory mode 7 (for XEiJ only)
	move.w #1814,15204392				*	move.w #1814,15204392	|, MEM[(volatile short unsigned int *)15204392B]
							*| gifex.c:457:     *vdc_r1_ptr = 7;          // memory mode 7 (for XEiJ only)
	move.w #7,15213568				*	move.w #7,15213568	|, MEM[(volatile short unsigned int *)15213568B]
							*| gifex.c:458:     *vdc_r3_ptr = 0x30;       // graphic on (1024x1024)
	move.w #48,15214080				*	move.w #48,15214080	|, MEM[(volatile short unsigned int *)15214080B]
							*| gifex.c:459:     crtc_r12_ptr[0] = 0;          // scroll position X
	move.w #0,15204376				*	move.w #0,15204376	|, MEM[(volatile short unsigned int *)15204376B]
							*| gifex.c:460:     crtc_r12_ptr[1] = 0;          // scroll position Y
	move.w #0,15204378				*	move.w #0,15204378	|, MEM[(volatile short unsigned int *)15204378B]
	jbra _?L139					*	jra .L139		|
							*	.size	main, .-main
							*	.local	sub_block_data.0
	.comm	_sub_block_data?0,256			*	.comm	sub_block_data.0,256,1
							*	.local	global_palette.1
	.align 2	* workaround for 3 args .comm directive.
	.comm	_global_palette?1,512			*	.comm	global_palette.1,512,2
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
