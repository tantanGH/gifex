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
	.globl	_decode_lzw				*	.globl	decode_lzw
							*	.type	decode_lzw, @function
_decode_lzw:						*decode_lzw:
	lea (-28,sp),sp					*	lea (-28,%sp),%sp	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	*	movem.l #7966,-(%sp)	|,
	move.l 80(sp),d1				*	move.l 80(%sp),%d1	| min_code_size, min_code_size
							*| lzw.c:9:   int clear_code = 1 << min_code_size;
	moveq #1,d0					*	moveq #1,%d0	|, tmp82
	move.l d0,d4					*	move.l %d0,%d4	| tmp82, clear_code
	lsl.l d1,d4					*	lsl.l %d1,%d4	| min_code_size, clear_code
							*| lzw.c:10:   int end_code = clear_code + 1;
	move.l d4,d2					*	move.l %d4,%d2	| clear_code,
	addq.l #1,d2					*	addq.l #1,%d2	|,
	move.l d2,60(sp)				*	move.l %d2,60(%sp)	|, %sfp
							*| lzw.c:13:   int available = clear_code + 2;
	move.l d4,d7					*	move.l %d4,%d7	| clear_code,
	addq.l #2,d7					*	addq.l #2,%d7	|,
	move.l d7,52(sp)				*	move.l %d7,52(%sp)	|, %sfp
							*| lzw.c:15:   int code_size = data_size + 1;
	addq.l #1,d1					*	addq.l #1,%d1	|, min_code_size
	move.l d1,48(sp)				*	move.l %d1,48(%sp)	| min_code_size, %sfp
							*| lzw.c:16:   int code_mask = ( 1 << code_size ) - 1;
	lsl.l d1,d0					*	lsl.l %d1,%d0	| min_code_size, tmp83
							*| lzw.c:16:   int code_mask = ( 1 << code_size ) - 1;
	subq.l #1,d0					*	subq.l #1,%d0	|, tmp83
	move.l d0,56(sp)				*	move.l %d0,56(%sp)	| tmp83, %sfp
							*| lzw.c:27:     prefix[i] = 0;
	move.l d4,d0					*	move.l %d4,%d0	| clear_code, clear_code
	jbpl _?L2					*	jpl .L2		|
	moveq #0,d0					*	moveq #0,%d0	| clear_code
_?L2:							*.L2:
	add.l d0,d0					*	add.l %d0,%d0	| clear_code, tmp86
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| tmp86,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea (_prefix?2)					*	pea (prefix.2)		|
	jbsr _memset					*	jsr memset		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	lea (_suffix?1),a0				*	lea (suffix.1),%a0	|, ivtmp.29
							*| lzw.c:26:   for (int i = 0; i < clear_code; i++) {
	moveq #0,d0					*	moveq #0,%d0	| i
_?L3:							*.L3:
							*| lzw.c:26:   for (int i = 0; i < clear_code; i++) {
	cmp.l d0,d4					*	cmp.l %d0,%d4	| i, clear_code
	jbgt _?L4					*	jgt .L4		|
							*| lzw.c:16:   int code_mask = ( 1 << code_size ) - 1;
	move.l 56(sp),d6				*	move.l 56(%sp),%d6	| %sfp, code_mask
							*| lzw.c:15:   int code_size = data_size + 1;
	move.l 48(sp),d5				*	move.l 48(%sp),%d5	| %sfp, code_size
							*| lzw.c:13:   int available = clear_code + 2;
	move.l 52(sp),d1				*	move.l 52(%sp),%d1	| %sfp, available
							*| lzw.c:24:   int input_buffer_ofs = 0;
	sub.l a4,a4					*	sub.l %a4,%a4	| input_buffer_ofs
							*| lzw.c:23:   int output_buffer_ofs = 0;
	sub.l a5,a5					*	sub.l %a5,%a5	| <retval>
							*| lzw.c:21:   int bits = 0;
	moveq #0,d3					*	moveq #0,%d3	| bits
							*| lzw.c:20:   int datum = 0;
	clr.l 42(sp)					*	clr.l 42(%sp)	| %sfp
							*| lzw.c:19:   int pixel_sp = 0;
	moveq #0,d0					*	moveq #0,%d0	| pixel_sp
							*| lzw.c:18:   int first = 0;
	clr.l 38(sp)					*	clr.l 38(%sp)	| %sfp
							*| lzw.c:14:   int old_code = -1;
	move.w #-1,a0					*	move.w #-1,%a0	|, old_code
							*| lzw.c:101:     output_buffer[ output_buffer_ofs ++ ] = pixel_stack[ pixel_sp ];
	lea (_pixel_stack?0),a2				*	lea (pixel_stack.0),%a2	|, tmp117
							*| lzw.c:74:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	lea (_suffix?1),a6				*	lea (suffix.1),%a6	|, tmp119
_?L5:							*.L5:
							*| lzw.c:31:   while (output_buffer_ofs < pixel_count) {
	cmp.l 84(sp),a5					*	cmp.l 84(%sp),%a5	| pixel_count, <retval>
	jbge _?L1					*	jge .L1		|
							*| lzw.c:35:     if (pixel_sp == 0) {
	tst.l d0					*	tst.l %d0	| pixel_sp
	jbne _?L17					*	jne .L17		|
							*| lzw.c:37:       if (bits < code_size) {
	cmp.l d5,d3					*	cmp.l %d5,%d3	| code_size, bits
	jbge _?L7					*	jge .L7		|
							*| lzw.c:38:         datum += input_buffer[ input_buffer_ofs ++ ] << bits;
	move.l 68(sp),a1				*	move.l 68(%sp),%a1	| input_buffer,
	moveq #0,d2					*	moveq #0,%d2	| *_4
	move.b (a1,a4.l),d2				*	move.b (%a1,%a4.l),%d2	| *_4, *_4
							*| lzw.c:38:         datum += input_buffer[ input_buffer_ofs ++ ] << bits;
	lsl.l d3,d2					*	lsl.l %d3,%d2	| bits, tmp93
							*| lzw.c:38:         datum += input_buffer[ input_buffer_ofs ++ ] << bits;
	add.l d2,42(sp)					*	add.l %d2,42(%sp)	| tmp93, %sfp
							*| lzw.c:39:         bits += 8;
	addq.l #8,d3					*	addq.l #8,%d3	|, bits
							*| lzw.c:38:         datum += input_buffer[ input_buffer_ofs ++ ] << bits;
	addq.l #1,a4					*	addq.l #1,%a4	|, input_buffer_ofs
							*| lzw.c:40:         continue;
	jbra _?L5					*	jra .L5		|
_?L4:							*.L4:
							*| lzw.c:28:     suffix[i] = i;
	move.w d0,(a0)+					*	move.w %d0,(%a0)+	| i, MEM[(short int *)_110]
							*| lzw.c:26:   for (int i = 0; i < clear_code; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, i
	jbra _?L3					*	jra .L3		|
_?L7:							*.L7:
							*| lzw.c:43:       code = datum & code_mask;
	move.l 42(sp),d2				*	move.l 42(%sp),%d2	| %sfp, old_code
	and.l d6,d2					*	and.l %d6,%d2	| code_mask, old_code
							*| lzw.c:44:       datum >>= code_size;
	move.l 42(sp),d7				*	move.l 42(%sp),%d7	| %sfp,
	asr.l d5,d7					*	asr.l %d5,%d7	| code_size,
	move.l d7,42(sp)				*	move.l %d7,42(%sp)	|, %sfp
							*| lzw.c:45:       bits -= code_size;
	sub.l d5,d3					*	sub.l %d5,%d3	| code_size, bits
							*| lzw.c:47:       if (code > available || code == end_code) {
	cmp.l d1,d2					*	cmp.l %d1,%d2	| available, old_code
	jbgt _?L1					*	jgt .L1		|
							*| lzw.c:47:       if (code > available || code == end_code) {
	cmp.l 60(sp),d2					*	cmp.l 60(%sp),%d2	| %sfp, old_code
	jbeq _?L1					*	jeq .L1		|
							*| lzw.c:51:       if (code == clear_code) {
	cmp.l d4,d2					*	cmp.l %d4,%d2	| clear_code, old_code
	jbeq _?L18					*	jeq .L18		|
							*| lzw.c:59:       if (old_code == -1) {
	moveq #-1,d7					*	moveq #-1,%d7	|,
	cmp.l a0,d7					*	cmp.l %a0,%d7	| old_code,
	jbne _?L11					*	jne .L11		|
							*| lzw.c:60:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	move.l d2,d0					*	move.l %d2,%d0	| old_code, tmp97
	add.l d2,d0					*	add.l %d2,%d0	| old_code, tmp97
							*| lzw.c:60:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	move.b 1(a6,d0.l),(a2)				*	move.b 1(%a6,%d0.l),(%a2)	| suffix[code_67], pixel_stack[0]
							*| lzw.c:63:         continue;
	move.l d2,38(sp)				*	move.l %d2,38(%sp)	| old_code, %sfp
	move.l d2,a0					*	move.l %d2,%a0	| old_code, old_code
							*| lzw.c:60:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	moveq #1,d0					*	moveq #1,%d0	|, pixel_sp
							*| lzw.c:63:         continue;
	jbra _?L5					*	jra .L5		|
_?L11:							*.L11:
							*| lzw.c:68:       if (code == available) {
	cmp.l d1,d2					*	cmp.l %d1,%d2	| available, old_code
	jbne _?L19					*	jne .L19		|
							*| lzw.c:69:         pixel_stack[ pixel_sp ++ ] = first;
	move.b 41(sp),(a2)				*	move.b 41(%sp),(%a2)	| %sfp, pixel_stack[0]
	move.l a0,a1					*	move.l %a0,%a1	| old_code, code
							*| lzw.c:69:         pixel_stack[ pixel_sp ++ ] = first;
	moveq #1,d0					*	moveq #1,%d0	|, pixel_sp
_?L23:							*.L23:
							*| lzw.c:74:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	move.l d0,a3					*	move.l %d0,%a3	| pixel_sp, pixel_sp
							*| lzw.c:74:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	move.l a1,d7					*	move.l %a1,%d7	| code, tmp103
	add.l a1,d7					*	add.l %a1,%d7	| code, tmp103
	move.w (a6,d7.l),46(sp)				*	move.w (%a6,%d7.l),46(%sp)	| suffix[code_51], %sfp
							*| lzw.c:74:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	addq.l #1,d0					*	addq.l #1,%d0	|, pixel_sp
							*| lzw.c:73:       while (code > clear_code) {
	cmp.l a1,d4					*	cmp.l %a1,%d4	| code, clear_code
	jblt _?L14					*	jlt .L14		|
	move.w 46(sp),d7				*	move.w 46(%sp),%d7	| %sfp,
	and.w #255,d7					*	and.w #255,%d7	|,
	move.w d7,a1					*	move.w %d7,%a1	|, _61
							*| lzw.c:78:       first = suffix[ code ] & 0xff;
	moveq #0,d7					*	moveq #0,%d7	|
	move.b 47(sp),d7				*	move.b 47(%sp),%d7	| %sfp,
	move.l d7,38(sp)				*	move.l %d7,38(%sp)	|, %sfp
							*| lzw.c:79:       pixel_stack[ pixel_sp ++ ] = first;
	move.b 47(sp),(a2,a3.l)				*	move.b 47(%sp),(%a2,%a3.l)	| %sfp, pixel_stack[pixel_sp_41]
							*| lzw.c:81:       if (available < MAX_LZW_STACK_SIZE) {
	cmp.l #4095,d1					*	cmp.l #4095,%d1	|, available
	jbgt _?L15					*	jgt .L15		|
							*| lzw.c:82:         prefix[ available ] = old_code;
	move.l d1,a3					*	move.l %d1,%a3	| available, tmp106
	add.l d1,a3					*	add.l %d1,%a3	| available, tmp106
	move.l #_prefix?2,d7				*	move.l #prefix.2,%d7	|,
	move.w a0,(a3,d7.l)				*	move.w %a0,(%a3,%d7.l)	| old_code, prefix[available_30]
							*| lzw.c:83:         suffix[ available ] = first;
	move.w a1,(a3,a6.l)				*	move.w %a1,(%a3,%a6.l)	| _61, suffix[available_30]
							*| lzw.c:84:         available ++;
	addq.l #1,d1					*	addq.l #1,%d1	|, available
							*| lzw.c:86:         if ((available & code_mask) == 0 && available < MAX_LZW_STACK_SIZE) {
	move.l d6,d7					*	move.l %d6,%d7	| code_mask,
	and.l d1,d7					*	and.l %d1,%d7	| available,
							*| lzw.c:86:         if ((available & code_mask) == 0 && available < MAX_LZW_STACK_SIZE) {
	jbne _?L15					*	jne .L15		|
							*| lzw.c:86:         if ((available & code_mask) == 0 && available < MAX_LZW_STACK_SIZE) {
	cmp.l #4096,d1					*	cmp.l #4096,%d1	|, available
	jbeq _?L15					*	jeq .L15		|
							*| lzw.c:87:           code_size ++;
	addq.l #1,d5					*	addq.l #1,%d5	|, code_size
							*| lzw.c:88:           code_mask += available;
	add.l d1,d6					*	add.l %d1,%d6	| available, code_mask
_?L15:							*.L15:
							*| lzw.c:94:       if (bits <= 0 && input_buffer_ofs >= input_len) {
	tst.l d3					*	tst.l %d3	| bits
	jbne _?L6					*	jne .L6		|
							*| lzw.c:94:       if (bits <= 0 && input_buffer_ofs >= input_len) {
	cmp.l 72(sp),a4					*	cmp.l 72(%sp),%a4	| input_len, input_buffer_ofs
	jblt _?L6					*	jlt .L6		|
_?L1:							*.L1:
							*| lzw.c:106: }
	move.l a5,d0					*	move.l %a5,%d0	| <retval>,
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	lea (28,sp),sp					*	lea (28,%sp),%sp	|,
	rts						*	rts
_?L19:							*.L19:
	move.l d2,a1					*	move.l %d2,%a1	| old_code, code
	jbra _?L23					*	jra .L23		|
_?L14:							*.L14:
							*| lzw.c:74:         pixel_stack[ pixel_sp ++ ] = suffix[ code ];
	lea _pixel_stack?0-1,a1				*	lea pixel_stack.0-1,%a1	|,
	move.b 47(sp),(a1,d0.l)				*	move.b 47(%sp),(%a1,%d0.l)	| %sfp, MEM[(unsigned char *)&pixel_stack + 4294967295B + _99 * 1]
							*| lzw.c:75:         code = prefix[ code ];
	lea (_prefix?2),a3				*	lea (prefix.2),%a3	|,
	move.w (a3,d7.l),a1				*	move.w (%a3,%d7.l),%a1	| prefix[code_51], code
	jbra _?L23					*	jra .L23		|
_?L17:							*.L17:
	move.l a0,d2					*	move.l %a0,%d2	| old_code, old_code
_?L6:							*.L6:
							*| lzw.c:100:     pixel_sp --;
	subq.l #1,d0					*	subq.l #1,%d0	|, pixel_sp
							*| lzw.c:101:     output_buffer[ output_buffer_ofs ++ ] = pixel_stack[ pixel_sp ];
	move.l 76(sp),a0				*	move.l 76(%sp),%a0	| output_buffer,
	move.b (a2,d0.l),(a0,a5.l)			*	move.b (%a2,%d0.l),(%a0,%a5.l)	| pixel_stack[pixel_sp_95], *_26
							*| lzw.c:101:     output_buffer[ output_buffer_ofs ++ ] = pixel_stack[ pixel_sp ];
	addq.l #1,a5					*	addq.l #1,%a5	|, <retval>
							*| lzw.c:101:     output_buffer[ output_buffer_ofs ++ ] = pixel_stack[ pixel_sp ];
	move.l d2,a0					*	move.l %d2,%a0	| old_code, old_code
	jbra _?L5					*	jra .L5		|
_?L18:							*.L18:
							*| lzw.c:53:         code_mask = ( 1 << code_size ) - 1;
	move.l 56(sp),d6				*	move.l 56(%sp),%d6	| %sfp, code_mask
							*| lzw.c:52:         code_size = data_size + 1;
	move.l 48(sp),d5				*	move.l 48(%sp),%d5	| %sfp, code_size
							*| lzw.c:54:         available = clear_code + 2;
	move.l 52(sp),d1				*	move.l 52(%sp),%d1	| %sfp, available
							*| lzw.c:55:         old_code = -1;
	move.w #-1,a0					*	move.w #-1,%a0	|, old_code
	jbra _?L5					*	jra .L5		|
							*	.size	decode_lzw, .-decode_lzw
							*	.local	pixel_stack.0
	.comm	_pixel_stack?0,4096			*	.comm	pixel_stack.0,4096,1
							*	.local	suffix.1
	.align 2	* workaround for 3 args .comm directive.
	.comm	_suffix?1,8192				*	.comm	suffix.1,8192,2
							*	.local	prefix.2
	.align 2	* workaround for 3 args .comm directive.
	.comm	_prefix?2,8192				*	.comm	prefix.2,8192,2
							*	.ident	"GCC: (GNU) 12.2.0"
