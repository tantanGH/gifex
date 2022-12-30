* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"buffer.c"				*	.file	"buffer.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
	.text						*	.text
	.align	2					*	.align	2
	.globl	_get_uchar_buffer			*	.globl	get_uchar_buffer
							*	.type	get_uchar_buffer, @function
_get_uchar_buffer:					*get_uchar_buffer:
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
	move.l 12(sp),a3				*	move.l 12(%sp),%a3	| buffer_ptr, buffer_ptr
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| buffer_ofs_ptr, buffer_ofs_ptr
	move.l 20(sp),d1				*	move.l 20(%sp),%d1	| buffer_size, buffer_size
							*| buffer.c:8:   int ofs = *buffer_ofs_ptr;
	move.l (a4),d0					*	move.l (%a4),%d0	| *buffer_ofs_ptr_8(D), ofs
							*| buffer.c:11:   if (ofs < buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| ofs, buffer_size
	jble _?L2					*	jle .L2		|
							*| buffer.c:13:      uc = buffer_ptr[ofs++];
	move.l d0,d1					*	move.l %d0,%d1	| ofs, ofs
	addq.l #1,d1					*	addq.l #1,%d1	|, ofs
							*| buffer.c:13:      uc = buffer_ptr[ofs++];
	move.b (a3,d0.l),d0				*	move.b (%a3,%d0.l),%d0	| *_2, <retval>
_?L3:							*.L3:
							*| buffer.c:21:   *buffer_ofs_ptr = ofs;
	move.l d1,(a4)					*	move.l %d1,(%a4)	| ofs, *buffer_ofs_ptr_8(D)
							*| buffer.c:24: }
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	move.l (sp)+,a4					*	move.l (%sp)+,%a4	|,
	rts						*	rts
_?L2:							*.L2:
							*| buffer.c:15:     int read_size = fread(buffer_ptr, 1, buffer_size, fp);
	move.l 24(sp),-(sp)				*	move.l 24(%sp),-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| buffer.c:17:     uc = buffer_ptr[0];
	move.b (a3),d0					*	move.b (%a3),%d0	| *buffer_ptr_11(D), <retval>
							*| buffer.c:18:     ofs = 1;
	moveq #1,d1					*	moveq #1,%d1	|, ofs
	jbra _?L3					*	jra .L3		|
							*	.size	get_uchar_buffer, .-get_uchar_buffer
	.align	2					*	.align	2
	.globl	_get_ushort_buffer			*	.globl	get_ushort_buffer
							*	.type	get_ushort_buffer, @function
_get_ushort_buffer:					*get_ushort_buffer:
	movem.l d3/a3/a4,-(sp)				*	movem.l #4120,-(%sp)	|,
	move.l 16(sp),a4				*	move.l 16(%sp),%a4	| buffer_ptr, buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| buffer_ofs_ptr, buffer_ofs_ptr
	move.l 24(sp),d1				*	move.l 24(%sp),%d1	| buffer_size, buffer_size
	move.l 28(sp),d0				*	move.l 28(%sp),%d0	| fp, fp
							*| buffer.c:31:   int ofs = *buffer_ofs_ptr;
	move.l (a3),d3					*	move.l (%a3),%d3	| *buffer_ofs_ptr_29(D), ofs
							*| buffer.c:34:   if (ofs < ( buffer_size - 1)) {
	move.l d1,a1					*	move.l %d1,%a1	| buffer_size, _1
	subq.l #1,a1					*	subq.l #1,%a1	|, _1
							*| buffer.c:34:   if (ofs < ( buffer_size - 1)) {
	cmp.l a1,d3					*	cmp.l %a1,%d3	| _1, ofs
	jbge _?L5					*	jge .L5		|
							*| buffer.c:36:     us = buffer_ptr[ofs] + (buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_7
	move.b 1(a4,d3.l),d0				*	move.b 1(%a4,%d3.l),%d0	| *_7, *_7
							*| buffer.c:36:     us = buffer_ptr[ofs] + (buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d0					*	lsl.w #8,%d0	|, tmp59
							*| buffer.c:36:     us = buffer_ptr[ofs] + (buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *_3
	move.b (a4,d3.l),d1				*	move.b (%a4,%d3.l),%d1	| *_3, *_3
							*| buffer.c:36:     us = buffer_ptr[ofs] + (buffer_ptr[ofs+1] << 8);    // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| *_3, <retval>
							*| buffer.c:37:     ofs += 2;
	addq.l #2,d3					*	addq.l #2,%d3	|, ofs
_?L6:							*.L6:
							*| buffer.c:50:   *buffer_ofs_ptr = ofs;
	move.l d3,(a3)					*	move.l %d3,(%a3)	| ofs, *buffer_ofs_ptr_29(D)
							*| buffer.c:53: }
	movem.l (sp)+,d3/a3/a4				*	movem.l (%sp)+,#6152	|,
	rts						*	rts
_?L5:							*.L5:
	lea _fread,a0					*	lea fread,%a0	|, tmp71
							*| buffer.c:38:   } else if (ofs < buffer_size) {
	cmp.l d3,d1					*	cmp.l %d3,%d1	| ofs, buffer_size
	jble _?L7					*	jle .L7		|
							*| buffer.c:40:     int read_size = fread(buffer_ptr, 1, buffer_size - 1, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l a1,-(sp)					*	move.l %a1,-(%sp)	| _1,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| buffer.c:41:     us = buffer_ptr[ofs] + (buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d0					*	clr.w %d0	| *_13
	move.b (a4,d3.l),d0				*	move.b (%a4,%d3.l),%d0	| *_13, *_13
							*| buffer.c:41:     us = buffer_ptr[ofs] + (buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	clr.w d1					*	clr.w %d1	| *buffer_ptr_32(D)
	move.b (a4),d1					*	move.b (%a4),%d1	| *buffer_ptr_32(D), *buffer_ptr_32(D)
							*| buffer.c:41:     us = buffer_ptr[ofs] + (buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	lsl.w #8,d1					*	lsl.w #8,%d1	|, tmp64
							*| buffer.c:41:     us = buffer_ptr[ofs] + (buffer_ptr[0] << 8);        // must not use bit or (|) here, not to discard upper bits
	add.w d1,d0					*	add.w %d1,%d0	| tmp64, <retval>
							*| buffer.c:42:     ofs = 1;
	moveq #1,d3					*	moveq #1,%d3	|, ofs
	jbra _?L6					*	jra .L6		|
_?L7:							*.L7:
							*| buffer.c:45:     int read_size = fread(buffer_ptr, 1, buffer_size, fp);
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| buffer_ptr,
	jbsr (a0)					*	jsr (%a0)		| tmp71
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	moveq #0,d0					*	moveq #0,%d0	| MEM <short unsigned int> [(unsigned char *)buffer_ptr_32(D)]
	move.b (a4),d0					*	move.b (%a4),%d0	| MEM <short unsigned int> [(unsigned char *)buffer_ptr_32(D)], MEM <short unsigned int> [(unsigned char *)buffer_ptr_32(D)]
	lsl.l #8,d0					*	lsl.l #8,%d0	|, tmp67
	or.b 1(a4),d0					*	or.b 1(%a4),%d0	| MEM <short unsigned int> [(unsigned char *)buffer_ptr_32(D)], tmp69
	ror.w #8,d0					*	ror.w #8,%d0	|, <retval>
							*| buffer.c:47:     ofs = 2;
	moveq #2,d3					*	moveq #2,%d3	|, ofs
	jbra _?L6					*	jra .L6		|
							*	.size	get_ushort_buffer, .-get_ushort_buffer
	.align	2					*	.align	2
	.globl	_memcpy_buffer				*	.globl	memcpy_buffer
							*	.type	memcpy_buffer, @function
_memcpy_buffer:						*memcpy_buffer:
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	*	movem.l #7966,-(%sp)	|,
	move.l 40(sp),a5				*	move.l 40(%sp),%a5	| dest_ptr, dest_ptr
	move.l 44(sp),a3				*	move.l 44(%sp),%a3	| buffer_ptr, buffer_ptr
	move.l 48(sp),a6				*	move.l 48(%sp),%a6	| buffer_ofs_ptr, buffer_ofs_ptr
	move.l 52(sp),d5				*	move.l 52(%sp),%d5	| buffer_size, buffer_size
	move.l 56(sp),d4				*	move.l 56(%sp),%d4	| len, len
	move.l 60(sp),d6				*	move.l 60(%sp),%d6	| fp, fp
							*| buffer.c:60:   int ofs = *buffer_ofs_ptr;
	move.l (a6),d0					*	move.l (%a6),%d0	| *buffer_ofs_ptr_17(D), ofs
							*| buffer.c:62:   if ((ofs + len) <= buffer_size) {
	move.l d0,d3					*	move.l %d0,%d3	| ofs, _11
	add.l d4,d3					*	add.l %d4,%d3	| len, _11
	lea _memcpy,a4					*	lea memcpy,%a4	|, tmp75
							*| buffer.c:62:   if ((ofs + len) <= buffer_size) {
	cmp.l d3,d5					*	cmp.l %d3,%d5	| _11, buffer_size
	jblt _?L9					*	jlt .L9		|
							*| buffer.c:64:     memcpy(dest_ptr, buffer_ptr + ofs, len);
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| len,
	pea (a3,d0.l)					*	pea (%a3,%d0.l)		|
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| dest_ptr,
_?L12:							*.L12:
							*| buffer.c:76:     memcpy(dest_ptr + available, buffer_ptr, len - available);
	jbsr (a4)					*	jsr (%a4)		| tmp75
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	jbra _?L10					*	jra .L10		|
_?L9:							*.L9:
	move.l #_fread,d3				*	move.l #fread,%d3	|, tmp76
							*| buffer.c:66:   } else if (ofs >= buffer_size) {
	cmp.l d0,d5					*	cmp.l %d0,%d5	| ofs, buffer_size
	jbgt _?L11					*	jgt .L11		|
							*| buffer.c:68:     fread(buffer_ptr, 1, buffer_size, fp);
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| fp,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| buffer_ptr,
	move.l d3,a0					*	move.l %d3,%a0	| tmp76,
	jbsr (a0)					*	jsr (%a0)		|
							*| buffer.c:69:     memcpy(dest_ptr, buffer_ptr, len);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d4,(sp)					*	move.l %d4,(%sp)	| len,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| buffer_ptr,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| dest_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp75
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| buffer.c:70:     ofs = len;
	move.l d4,d3					*	move.l %d4,%d3	| len, _11
_?L10:							*.L10:
							*| buffer.c:80:   *buffer_ofs_ptr = ofs;
	move.l d3,(a6)					*	move.l %d3,(%a6)	| _11, *buffer_ofs_ptr_17(D)
							*| buffer.c:81: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	rts						*	rts
_?L11:							*.L11:
							*| buffer.c:73:     int available = buffer_size - ofs;
	move.l d5,d7					*	move.l %d5,%d7	| buffer_size, available
	sub.l d0,d7					*	sub.l %d0,%d7	| ofs, available
							*| buffer.c:74:     memcpy(dest_ptr, buffer_ptr + ofs, available);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| available,
	pea (a3,d0.l)					*	pea (%a3,%d0.l)		|
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| dest_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp75
							*| buffer.c:75:     fread(buffer_ptr, 1, buffer_size, fp);
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d6,(sp)					*	move.l %d6,(%sp)	| fp,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| buffer_ptr,
	move.l d3,a0					*	move.l %d3,%a0	| tmp76,
	jbsr (a0)					*	jsr (%a0)		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| buffer.c:76:     memcpy(dest_ptr + available, buffer_ptr, len - available);
	move.l d4,d3					*	move.l %d4,%d3	| len, _11
	sub.l d7,d3					*	sub.l %d7,%d3	| available, _11
							*| buffer.c:76:     memcpy(dest_ptr + available, buffer_ptr, len - available);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| _11,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| buffer_ptr,
	pea (a5,d7.l)					*	pea (%a5,%d7.l)		|
	jbra _?L12					*	jra .L12		|
							*	.size	memcpy_buffer, .-memcpy_buffer
	.align	2					*	.align	2
	.globl	_skip_buffer				*	.globl	skip_buffer
							*	.type	skip_buffer, @function
_skip_buffer:						*skip_buffer:
	movem.l d3/d4/a3,-(sp)				*	movem.l #6160,-(%sp)	|,
	move.l 16(sp),d2				*	move.l 16(%sp),%d2	| buffer_ptr, buffer_ptr
	move.l 20(sp),a3				*	move.l 20(%sp),%a3	| buffer_ofs_ptr, buffer_ofs_ptr
	move.l 24(sp),d1				*	move.l 24(%sp),%d1	| buffer_size, buffer_size
	move.l 28(sp),d3				*	move.l 28(%sp),%d3	| len, len
	move.l 32(sp),a2				*	move.l 32(%sp),%a2	| fp, fp
							*| buffer.c:88:   int ofs = *buffer_ofs_ptr;
	move.l (a3),a0					*	move.l (%a3),%a0	| *buffer_ofs_ptr_7(D), ofs
							*| buffer.c:90:   if ((ofs + len) <= buffer_size) {
	move.l a0,d0					*	move.l %a0,%d0	| ofs, _1
	add.l d3,d0					*	add.l %d3,%d0	| len, _1
							*| buffer.c:90:   if ((ofs + len) <= buffer_size) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _1, buffer_size
	jbge _?L14					*	jge .L14		|
	lea _fread,a1					*	lea fread,%a1	|, tmp42
							*| buffer.c:93:   } else if (ofs >= buffer_size) {
	cmp.l a0,d1					*	cmp.l %a0,%d1	| ofs, buffer_size
	jbgt _?L15					*	jgt .L15		|
							*| buffer.c:95:     fread(buffer_ptr, 1, buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| buffer.c:96:     ofs = len;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
_?L14:							*.L14:
							*| buffer.c:104:   *buffer_ofs_ptr = ofs;
	move.l d0,(a3)					*	move.l %d0,(%a3)	| _1, *buffer_ofs_ptr_7(D)
							*| buffer.c:105: }
	movem.l (sp)+,d3/d4/a3				*	movem.l (%sp)+,#2072	|,
	rts						*	rts
_?L15:							*.L15:
							*| buffer.c:99:     int available = buffer_size - ofs;
	move.l d1,d4					*	move.l %d1,%d4	| buffer_size, available
	sub.l a0,d4					*	sub.l %a0,%d4	| ofs, available
							*| buffer.c:100:     fread(buffer_ptr, 1, buffer_size, fp);
	move.l a2,-(sp)					*	move.l %a2,-(%sp)	| fp,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	| buffer_ptr,
	jbsr (a1)					*	jsr (%a1)		| tmp42
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| buffer.c:101:     ofs = len - available;
	move.l d3,d0					*	move.l %d3,%d0	| len, _1
	sub.l d4,d0					*	sub.l %d4,%d0	| available, _1
	jbra _?L14					*	jra .L14		|
							*	.size	skip_buffer, .-skip_buffer
							*	.ident	"GCC: (GNU) 12.2.0"
