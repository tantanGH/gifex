* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"lzw.c"					*	.file	"lzw.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
	.text						*	.text
	.align	2					*	.align	2
	.globl	_initialize_lzw				*	.globl	initialize_lzw
							*	.type	initialize_lzw, @function
_initialize_lzw:					*initialize_lzw:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	|,
	move.l 8(sp),a0					*	move.l 8(%sp),%a0	| lzw, lzw
	move.l 12(sp),d0				*	move.l 12(%sp),%d0	| min_code_size, min_code_size
							*| lzw.c:9:   lzw->clear_code = 1 << min_code_size;
	moveq #1,d1					*	moveq #1,%d1	|, tmp46
	move.l d1,d3					*	move.l %d1,%d3	| tmp46, _1
	lsl.l d0,d3					*	lsl.l %d0,%d3	| min_code_size, _1
							*| lzw.c:9:   lzw->clear_code = 1 << min_code_size;
	move.l d3,(a0)					*	move.l %d3,(%a0)	| _1, lzw_12(D)->clear_code
							*| lzw.c:10:   lzw->end_code = lzw->clear_code + 1;
	move.l d3,d2					*	move.l %d3,%d2	| _1,
	addq.l #1,d2					*	addq.l #1,%d2	|,
	move.l d2,4(a0)					*	move.l %d2,4(%a0)	|, lzw_12(D)->end_code
							*| lzw.c:12:   lzw->data_size = min_code_size;
	move.l d0,8(a0)					*	move.l %d0,8(%a0)	| min_code_size, lzw_12(D)->data_size
							*| lzw.c:13:   lzw->available = lzw->clear_code + 2;
	addq.l #1,d2					*	addq.l #1,%d2	|,
	move.l d2,12(a0)				*	move.l %d2,12(%a0)	|, lzw_12(D)->available
							*| lzw.c:14:   lzw->old_code = -1;
	moveq #-1,d2					*	moveq #-1,%d2	|,
	move.l d2,16(a0)				*	move.l %d2,16(%a0)	|, lzw_12(D)->old_code
							*| lzw.c:15:   lzw->code_size = lzw->data_size + 1;
	addq.l #1,d0					*	addq.l #1,%d0	|, _4
							*| lzw.c:15:   lzw->code_size = lzw->data_size + 1;
	move.l d0,20(a0)				*	move.l %d0,20(%a0)	| _4, lzw_12(D)->code_size
							*| lzw.c:17:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	lsl.l d0,d1					*	lsl.l %d0,%d1	| _4, tmp47
							*| lzw.c:17:   lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	subq.l #1,d1					*	subq.l #1,%d1	|, tmp47
	move.l d1,24(a0)				*	move.l %d1,24(%a0)	| tmp47, lzw_12(D)->code_mask
							*| lzw.c:18:   lzw->first = 0;
	clr.l 28(a0)					*	clr.l 28(%a0)	| lzw_12(D)->first
							*| lzw.c:19:   lzw->pixel_sp = 0;
	clr.l 32(a0)					*	clr.l 32(%a0)	| lzw_12(D)->pixel_sp
							*| lzw.c:20:   lzw->datum = 0;
	clr.l 36(a0)					*	clr.l 36(%a0)	| lzw_12(D)->datum
							*| lzw.c:21:   lzw->bits = 0;
	clr.l 40(a0)					*	clr.l 40(%a0)	| lzw_12(D)->bits
							*| lzw.c:24:     lzw_prefix[i] = 0;
	move.l d3,d0					*	move.l %d3,%d0	| _1, _1
	jbpl _?L2					*	jpl .L2		|
	moveq #0,d0					*	moveq #0,%d0	| _1
_?L2:							*.L2:
	add.l d0,d0					*	add.l %d0,%d0	| _1, tmp50
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| tmp50,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _lzw_prefix					*	pea lzw_prefix		|
	jbsr _memset					*	jsr memset		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	lea _lzw_suffix,a0				*	lea lzw_suffix,%a0	|, ivtmp.16
							*| lzw.c:23:   for (int i = 0; i < lzw->clear_code; i++) {
	moveq #0,d0					*	moveq #0,%d0	| i
_?L3:							*.L3:
							*| lzw.c:23:   for (int i = 0; i < lzw->clear_code; i++) {
	cmp.l d3,d0					*	cmp.l %d3,%d0	| _1, i
	jblt _?L4					*	jlt .L4		|
							*| lzw.c:28: }
	move.l (sp)+,d3					*	move.l (%sp)+,%d3	|,
	rts						*	rts
_?L4:							*.L4:
							*| lzw.c:25:     lzw_suffix[i] = i;
	move.w d0,(a0)+					*	move.w %d0,(%a0)+	| i, MEM[(short int *)_34]
							*| lzw.c:23:   for (int i = 0; i < lzw->clear_code; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, i
	jbra _?L3					*	jra .L3		|
							*	.size	initialize_lzw, .-initialize_lzw
	.align	2					*	.align	2
	.globl	_decode_lzw				*	.globl	decode_lzw
							*	.type	decode_lzw, @function
_decode_lzw:						*decode_lzw:
	lea (-16,sp),sp					*	lea (-16,%sp),%sp	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	*	movem.l #7966,-(%sp)	|,
	move.l 56(sp),a0				*	move.l 56(%sp),%a0	| lzw, lzw
							*| lzw.c:33:   int input_buffer_ofs = 0;
	sub.l a6,a6					*	sub.l %a6,%a6	| input_buffer_ofs
							*| lzw.c:32:   int output_buffer_ofs = 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
	lea _lzw_pixel_stack,a1				*	lea lzw_pixel_stack,%a1	|, tmp111
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	lea _lzw_suffix,a4				*	lea lzw_suffix,%a4	|, tmp112
_?L6:							*.L6:
							*| lzw.c:39:   while (output_buffer_ofs < pixel_count) {
	cmp.l 72(sp),d0					*	cmp.l 72(%sp),%d0	| pixel_count, <retval>
	jbge _?L5					*	jge .L5		|
							*| lzw.c:47:     if (lzw->pixel_sp == 0) {
	tst.l 32(a0)					*	tst.l 32(%a0)	| lzw_73(D)->pixel_sp
	jbeq _?L7					*	jeq .L7		|
_?L20:							*.L20:
							*| lzw.c:120:     lzw->pixel_sp --;
	move.l 32(a0),d1				*	move.l 32(%a0),%d1	| lzw_73(D)->pixel_sp, _58
	subq.l #1,d1					*	subq.l #1,%d1	|, _58
	move.l d1,32(a0)				*	move.l %d1,32(%a0)	| _58, lzw_73(D)->pixel_sp
							*| lzw.c:121:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	move.l 68(sp),a2				*	move.l 68(%sp),%a2	| output_buffer,
	move.b (a1,d1.l),(a2,d0.l)			*	move.b (%a1,%d1.l),(%a2,%d0.l)	| lzw_pixel_stack[_58], *_60
							*| lzw.c:121:     output_buffer[ output_buffer_ofs ++ ] = lzw_pixel_stack[ lzw->pixel_sp ];
	addq.l #1,d0					*	addq.l #1,%d0	|, <retval>
	jbra _?L6					*	jra .L6		|
_?L7:							*.L7:
							*| lzw.c:49:       if (lzw->bits < lzw->code_size) {
	move.l 40(a0),d4				*	move.l 40(%a0),%d4	| lzw_73(D)->bits, _2
							*| lzw.c:49:       if (lzw->bits < lzw->code_size) {
	move.l 20(a0),d3				*	move.l 20(%a0),%d3	| lzw_73(D)->code_size, _3
							*| lzw.c:50:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	move.l 36(a0),d1				*	move.l 36(%a0),%d1	| lzw_73(D)->datum, pretmp_49
							*| lzw.c:49:       if (lzw->bits < lzw->code_size) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| _2, _3
	jble _?L9					*	jle .L9		|
							*| lzw.c:50:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	move.l 60(sp),a3				*	move.l 60(%sp),%a3	| input_buffer,
	moveq #0,d2					*	moveq #0,%d2	| *_5
	move.b (a3,a6.l),d2				*	move.b (%a3,%a6.l),%d2	| *_5, *_5
							*| lzw.c:50:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	lsl.l d4,d2					*	lsl.l %d4,%d2	| _2, tmp88
							*| lzw.c:50:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	add.l d1,d2					*	add.l %d1,%d2	| pretmp_49, tmp88
	move.l d2,36(a0)				*	move.l %d2,36(%a0)	| tmp88, lzw_73(D)->datum
							*| lzw.c:51:         lzw->bits += 8;
	addq.l #8,d4					*	addq.l #8,%d4	|, _2
	move.l d4,40(a0)				*	move.l %d4,40(%a0)	| _2, lzw_73(D)->bits
							*| lzw.c:50:         lzw->datum += input_buffer[ input_buffer_ofs ++ ] << lzw->bits;
	addq.l #1,a6					*	addq.l #1,%a6	|, input_buffer_ofs
							*| lzw.c:52:         continue;
	jbra _?L6					*	jra .L6		|
_?L9:							*.L9:
							*| lzw.c:55:       code = lzw->datum & lzw->code_mask;
	move.l 24(a0),36(sp)				*	move.l 24(%a0),36(%sp)	| lzw_73(D)->code_mask, %sfp
							*| lzw.c:55:       code = lzw->datum & lzw->code_mask;
	move.l 36(sp),d2				*	move.l 36(%sp),%d2	| %sfp, code
	and.l d1,d2					*	and.l %d1,%d2	| pretmp_49, code
							*| lzw.c:56:       lzw->datum >>= lzw->code_size;
	asr.l d3,d1					*	asr.l %d3,%d1	| _3, tmp89
	move.l d1,36(a0)				*	move.l %d1,36(%a0)	| tmp89, lzw_73(D)->datum
							*| lzw.c:57:       lzw->bits -= lzw->code_size;
	sub.l d3,d4					*	sub.l %d3,%d4	| _3, _2
	move.l d4,40(sp)				*	move.l %d4,40(%sp)	| _2, %sfp
	move.l d4,40(a0)				*	move.l %d4,40(%a0)	| _2, lzw_73(D)->bits
							*| lzw.c:61:       if (code > lzw->available || code == lzw->end_code) {
	move.l 12(a0),d1				*	move.l 12(%a0),%d1	| lzw_73(D)->available, _19
							*| lzw.c:61:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l d1,d2					*	cmp.l %d1,%d2	| _19, code
	jbgt _?L5					*	jgt .L5		|
							*| lzw.c:61:       if (code > lzw->available || code == lzw->end_code) {
	cmp.l 4(a0),d2					*	cmp.l 4(%a0),%d2	| lzw_73(D)->end_code, code
	jbeq _?L5					*	jeq .L5		|
							*| lzw.c:68:       if (code == lzw->clear_code) {
	move.l (a0),d6					*	move.l (%a0),%d6	| lzw_73(D)->clear_code, _21
							*| lzw.c:68:       if (code == lzw->clear_code) {
	cmp.l d6,d2					*	cmp.l %d6,%d2	| _21, code
	jbne _?L12					*	jne .L12		|
							*| lzw.c:69:         lzw->code_size = lzw->data_size + 1;
	move.l 8(a0),d1					*	move.l 8(%a0),%d1	| lzw_73(D)->data_size, _23
	addq.l #1,d1					*	addq.l #1,%d1	|, _23
							*| lzw.c:69:         lzw->code_size = lzw->data_size + 1;
	move.l d1,20(a0)				*	move.l %d1,20(%a0)	| _23, lzw_73(D)->code_size
							*| lzw.c:70:         lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	moveq #1,d2					*	moveq #1,%d2	|, tmp91
	lsl.l d1,d2					*	lsl.l %d1,%d2	| _23, tmp91
							*| lzw.c:70:         lzw->code_mask = ( 1 << lzw->code_size ) - 1;
	subq.l #1,d2					*	subq.l #1,%d2	|, tmp91
	move.l d2,24(a0)				*	move.l %d2,24(%a0)	| tmp91, lzw_73(D)->code_mask
							*| lzw.c:71:         lzw->available = lzw->clear_code + 2;
	addq.l #2,d6					*	addq.l #2,%d6	|, _21
	move.l d6,12(a0)				*	move.l %d6,12(%a0)	| _21, lzw_73(D)->available
							*| lzw.c:72:         lzw->old_code = -1;
	moveq #-1,d1					*	moveq #-1,%d1	|,
	move.l d1,16(a0)				*	move.l %d1,16(%a0)	|, lzw_73(D)->old_code
							*| lzw.c:73:         continue;
	jbra _?L6					*	jra .L6		|
_?L12:							*.L12:
							*| lzw.c:76:       if (lzw->old_code == -1) {
	move.l 16(a0),a5				*	move.l 16(%a0),%a5	| lzw_73(D)->old_code, _27
							*| lzw.c:76:       if (lzw->old_code == -1) {
	moveq #-1,d4					*	moveq #-1,%d4	|,
	cmp.l a5,d4					*	cmp.l %a5,%d4	| _27,
	jbne _?L13					*	jne .L13		|
							*| lzw.c:77:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.l d2,d1					*	move.l %d2,%d1	| code, tmp94
	add.l d2,d1					*	add.l %d2,%d1	| code, tmp94
	move.w (a4,d1.l),d1				*	move.w (%a4,%d1.l),%d1	| lzw_suffix[code_74], _28
							*| lzw.c:77:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	moveq #1,d7					*	moveq #1,%d7	|,
	move.l d7,32(a0)				*	move.l %d7,32(%a0)	|, lzw_73(D)->pixel_sp
							*| lzw.c:77:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.b d1,(a1)					*	move.b %d1,(%a1)	| _28, lzw_pixel_stack[0]
							*| lzw.c:78:         lzw->old_code = code;
	move.l d2,16(a0)				*	move.l %d2,16(%a0)	| code, lzw_73(D)->old_code
							*| lzw.c:79:         lzw->first = code;
	move.l d2,28(a0)				*	move.l %d2,28(%a0)	| code, lzw_73(D)->first
							*| lzw.c:80:         continue;
	jbra _?L6					*	jra .L6		|
_?L13:							*.L13:
							*| lzw.c:85:       if (code == lzw->available) {
	cmp.l d1,d2					*	cmp.l %d1,%d2	| _19, code
	jbne _?L22					*	jne .L22		|
							*| lzw.c:86:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	moveq #1,d4					*	moveq #1,%d4	|,
	move.l d4,32(a0)				*	move.l %d4,32(%a0)	|, lzw_73(D)->pixel_sp
							*| lzw.c:86:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.b 31(a0),(a1)				*	move.b 31(%a0),(%a1)	| lzw_73(D)->first, lzw_pixel_stack[0]
	move.l a5,a3					*	move.l %a5,%a3	| _27, code
_?L15:							*.L15:
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	lea (a3,a3.l),a2				*	lea (%a3,%a3.l),%a2	| code, code,
	move.l a2,48(sp)				*	move.l %a2,48(%sp)	|, %sfp
	move.w (a2,a4.l),d5				*	move.w (%a2,%a4.l),%d5	| lzw_suffix[code_64], pretmp_122
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.l 32(a0),d4				*	move.l 32(%a0),%d4	| lzw_73(D)->pixel_sp, pretmp_116
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.l d4,d7					*	move.l %d4,%d7	| pretmp_116,
	addq.l #1,d7					*	addq.l #1,%d7	|,
	move.l d7,44(sp)				*	move.l %d7,44(%sp)	|, %sfp
							*| lzw.c:90:       while (code > lzw->clear_code) {
	cmp.l d6,a3					*	cmp.l %d6,%a3	| _21, code
	jbgt _?L16					*	jgt .L16		|
	move.w d5,d6					*	move.w %d5,%d6	| pretmp_122, _70
	and.w #255,d6					*	and.w #255,%d6	|, _70
							*| lzw.c:95:       lzw->first = lzw_suffix[ code ] & 0xff;
	move.w d6,a2					*	move.w %d6,%a2	| _70,
	move.l a2,28(a0)				*	move.l %a2,28(%a0)	|, lzw_73(D)->first
							*| lzw.c:96:       lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.l d7,32(a0)				*	move.l %d7,32(%a0)	|, lzw_73(D)->pixel_sp
							*| lzw.c:96:       lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw->first;
	move.b d5,(a1,d4.l)				*	move.b %d5,(%a1,%d4.l)	| pretmp_122, lzw_pixel_stack[pretmp_116]
							*| lzw.c:98:       if (lzw->available < MAX_LZW_STACK_SIZE) {
	cmp.l #4095,d1					*	cmp.l #4095,%d1	|, _19
	jbgt _?L18					*	jgt .L18		|
							*| lzw.c:99:         lzw_prefix[ lzw->available ] = lzw->old_code;
	move.l d1,d4					*	move.l %d1,%d4	| _19, tmp104
	add.l d1,d4					*	add.l %d1,%d4	| _19, tmp104
	lea _lzw_prefix,a3				*	lea lzw_prefix,%a3	|,
	move.w a5,(a3,d4.l)				*	move.w %a5,(%a3,%d4.l)	| _27, lzw_prefix[_19]
							*| lzw.c:100:         lzw_suffix[ lzw->available ] = lzw->first;
	move.w d6,(a4,d4.l)				*	move.w %d6,(%a4,%d4.l)	| _70, lzw_suffix[_19]
							*| lzw.c:101:         lzw->available ++;
	addq.l #1,d1					*	addq.l #1,%d1	|, _50
	move.l d1,12(a0)				*	move.l %d1,12(%a0)	| _50, lzw_73(D)->available
							*| lzw.c:103:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_LZW_STACK_SIZE) {
	move.l 36(sp),d4				*	move.l 36(%sp),%d4	| %sfp, tmp107
	and.l d1,d4					*	and.l %d1,%d4	| _50, tmp107
							*| lzw.c:103:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_LZW_STACK_SIZE) {
	jbne _?L18					*	jne .L18		|
							*| lzw.c:103:         if ((lzw->available & lzw->code_mask) == 0 && lzw->available < MAX_LZW_STACK_SIZE) {
	cmp.l #4096,d1					*	cmp.l #4096,%d1	|, _50
	jbeq _?L18					*	jeq .L18		|
							*| lzw.c:104:           lzw->code_size ++;
	addq.l #1,d3					*	addq.l #1,%d3	|, _3
	move.l d3,20(a0)				*	move.l %d3,20(%a0)	| _3, lzw_73(D)->code_size
							*| lzw.c:105:           lzw->code_mask += lzw->available;
	add.l 36(sp),d1					*	add.l 36(%sp),%d1	| %sfp, _50
	move.l d1,24(a0)				*	move.l %d1,24(%a0)	| _50, lzw_73(D)->code_mask
_?L18:							*.L18:
							*| lzw.c:109:       lzw->old_code = in_code;
	move.l d2,16(a0)				*	move.l %d2,16(%a0)	| code, lzw_73(D)->old_code
							*| lzw.c:111:       if (lzw->bits <= 0 && input_buffer_ofs >= input_len) {
	tst.l 40(sp)					*	tst.l 40(%sp)	| %sfp
	jbne _?L20					*	jne .L20		|
							*| lzw.c:111:       if (lzw->bits <= 0 && input_buffer_ofs >= input_len) {
	cmp.l 64(sp),a6					*	cmp.l 64(%sp),%a6	| input_len, input_buffer_ofs
	jblt _?L20					*	jlt .L20		|
_?L5:							*.L5:
							*| lzw.c:129: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	rts						*	rts
_?L22:							*.L22:
	move.l d2,a3					*	move.l %d2,%a3	| code, code
	jbra _?L15					*	jra .L15		|
_?L16:							*.L16:
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.l 44(sp),32(a0)				*	move.l 44(%sp),32(%a0)	| %sfp, lzw_73(D)->pixel_sp
							*| lzw.c:91:         lzw_pixel_stack[ lzw->pixel_sp ++ ] = lzw_suffix[ code ];
	move.b d5,(a1,d4.l)				*	move.b %d5,(%a1,%d4.l)	| pretmp_122, lzw_pixel_stack[pretmp_116]
							*| lzw.c:92:         code = lzw_prefix[ code ];
	lea _lzw_prefix,a2				*	lea lzw_prefix,%a2	|,
	move.l 48(sp),d4				*	move.l 48(%sp),%d4	| %sfp,
	move.w (a2,d4.l),a3				*	move.w (%a2,%d4.l),%a3	| lzw_prefix[code_64], code
	jbra _?L15					*	jra .L15		|
							*	.size	decode_lzw, .-decode_lzw
							*	.local	lzw_pixel_stack
	.comm	_lzw_pixel_stack,4096			*	.comm	lzw_pixel_stack,4096,1
							*	.local	lzw_suffix
	.align 2	* workaround for 3 args .comm directive.
	.comm	_lzw_suffix,8192			*	.comm	lzw_suffix,8192,2
							*	.local	lzw_prefix
	.align 2	* workaround for 3 args .comm directive.
	.comm	_lzw_prefix,8192			*	.comm	lzw_prefix,8192,2
							*	.ident	"GCC: (GNU) 12.2.0"
