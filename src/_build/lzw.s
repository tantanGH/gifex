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
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -finput-charset=cp932 -fexec-charset=cp932
	.text						*	.text
	.align	2					*	.align	2
	.globl	_initialize_lzw_dictionary		*	.globl	initialize_lzw_dictionary
							*	.type	initialize_lzw_dictionary, @function
_initialize_lzw_dictionary:				*initialize_lzw_dictionary:
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	|,
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	|,
	move.l 12(sp),a1				*	move.l 12(%sp),%a1	| dictionary, dictionary
							*| lzw.c:18:     int entry_length = (1 << (bit_length - 1)) + 2;     // 1 digits + clear code + end code
	moveq #0,d0					*	moveq #0,%d0	| bit_length
	move.w 18(sp),d0				*	move.w 18(%sp),%d0	| bit_length, bit_length
	subq.l #1,d0					*	subq.l #1,%d0	|, tmp52
							*| lzw.c:18:     int entry_length = (1 << (bit_length - 1)) + 2;     // 1 digits + clear code + end code
	moveq #1,d1					*	moveq #1,%d1	|, tmp54
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp52, tmp53
							*| lzw.c:18:     int entry_length = (1 << (bit_length - 1)) + 2;     // 1 digits + clear code + end code
	addq.l #2,d1					*	addq.l #2,%d1	|, entry_length
							*| lzw.c:22:     if (dictionary == NULL) return -1;
	cmp.w #0,a1					*	cmp.w #0,%a1	|, dictionary
	jbeq _?L7					*	jeq .L7		|
	lea (2,a1),a0					*	lea (2,%a1),%a0	|, dictionary, ivtmp.10
							*| lzw.c:25:     for (int i = 0; i < entry_length; i++) {
	moveq #0,d0					*	moveq #0,%d0	| i
							*| lzw.c:19:     int current_bit_length = 3;
	moveq #3,d2					*	moveq #3,%d2	|, current_bit_length
_?L3:							*.L3:
							*| lzw.c:25:     for (int i = 0; i < entry_length; i++) {
	cmp.l d0,d1					*	cmp.l %d0,%d1	| i, entry_length
	jbgt _?L6					*	jgt .L6		|
							*| lzw.c:33:     dictionary->size = entry_length;
	move.w d1,(a1)					*	move.w %d1,(%a1)	| entry_length, dictionary_15(D)->size
							*| lzw.c:35:     return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L1:							*.L1:
							*| lzw.c:36: }
	move.l (sp)+,d3					*	move.l (%sp)+,%d3	|,
	move.l (sp)+,d4					*	move.l (%sp)+,%d4	|,
	rts						*	rts
_?L6:							*.L6:
							*| lzw.c:26:         dictionary->pages[i].key = i;
	move.w d0,(a0)					*	move.w %d0,(%a0)	| i, MEM[(short unsigned int *)_27]
							*| lzw.c:27:         dictionary->pages[i].bit_length = current_bit_length;
	move.w d2,2(a0)					*	move.w %d2,2(%a0)	| current_bit_length, MEM[(short unsigned int *)_27 + 2B]
							*| lzw.c:28:         if (i == 8 || i == 24 || i == 56 || i == 120 || i == 248 ||
	moveq #-17,d3					*	moveq #-17,%d3	|, tmp55
	and.l d0,d3					*	and.l %d0,%d3	| i, tmp55
	subq.l #8,d3					*	subq.l #8,%d3	|, tmp55
	jbeq _?L4					*	jeq .L4		|
							*| lzw.c:28:         if (i == 8 || i == 24 || i == 56 || i == 120 || i == 248 ||
	moveq #-65,d3					*	moveq #-65,%d3	|, tmp56
	and.l d0,d3					*	and.l %d0,%d3	| i, tmp56
	moveq #56,d4					*	moveq #56,%d4	|,
	cmp.l d3,d4					*	cmp.l %d3,%d4	| tmp56,
	jbeq _?L4					*	jeq .L4		|
							*| lzw.c:28:         if (i == 8 || i == 24 || i == 56 || i == 120 || i == 248 ||
	move.l d0,d3					*	move.l %d0,%d3	| i, tmp57
	and.w #65279,d3					*	and.w #65279,%d3	|, tmp57
	cmp.l #248,d3					*	cmp.l #248,%d3	|, tmp57
	jbeq _?L4					*	jeq .L4		|
							*| lzw.c:29:             i == 504 || i == 1016 || i == 2040 || i == 4088) {
	move.l d0,d3					*	move.l %d0,%d3	| i, tmp58
	and.w #64511,d3					*	and.w #64511,%d3	|, tmp58
	cmp.l #1016,d3					*	cmp.l #1016,%d3	|, tmp58
	jbeq _?L4					*	jeq .L4		|
							*| lzw.c:29:             i == 504 || i == 1016 || i == 2040 || i == 4088) {
	cmp.l #4088,d0					*	cmp.l #4088,%d0	|, i
	jbne _?L5					*	jne .L5		|
_?L4:							*.L4:
							*| lzw.c:30:             current_bit_length++;
	addq.l #1,d2					*	addq.l #1,%d2	|, current_bit_length
_?L5:							*.L5:
							*| lzw.c:25:     for (int i = 0; i < entry_length; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, i
	addq.l #4,a0					*	addq.l #4,%a0	|, ivtmp.10
	jbra _?L3					*	jra .L3		|
_?L7:							*.L7:
							*| lzw.c:22:     if (dictionary == NULL) return -1;
	moveq #-1,d0					*	moveq #-1,%d0	|, <retval>
	jbra _?L1					*	jra .L1		|
							*	.size	initialize_lzw_dictionary, .-initialize_lzw_dictionary
	.data						*	.section	.rodata.str1.1,"aMS",@progbits,1
_?LC0:							*.LC0:
	.dc.b $6e,$75,$6d,$62,$65,$72,$20,$6f
	.dc.b $66,$20,$70,$61,$67,$65,$73,$20
	.dc.b $3d,$20,$25,$64,$0a
	.dc.b $00					*	.string	"number of pages = %d\n"
_?LC1:							*.LC1:
	.dc.b $70,$61,$67,$65,$20,$25,$64,$3a
	.dc.b $20,$6b,$65,$79,$3d,$25,$64,$2c
	.dc.b $20,$62,$69,$74,$3d,$25,$64,$0a
	.dc.b $00					*	.string	"page %d: key=%d, bit=%d\n"
	.text						*	.text
	.align	2					*	.align	2
	.globl	_show_lzw_dictionary			*	.globl	show_lzw_dictionary
							*	.type	show_lzw_dictionary, @function
_show_lzw_dictionary:					*show_lzw_dictionary:
	movem.l d3/a3/a4/a5,-(sp)			*	movem.l #4124,-(%sp)	|,
	move.l 20(sp),a4				*	move.l 20(%sp),%a4	| dictionary, dictionary
							*| lzw.c:41:     if (dictionary == NULL) return;
	cmp.w #0,a4					*	cmp.w #0,%a4	|, dictionary
	jbeq _?L20					*	jeq .L20		|
							*| lzw.c:43:     printf("number of pages = %d\n",dictionary->size);
	move.l a4,a3					*	move.l %a4,%a3	| dictionary, ivtmp.23
	moveq #0,d0					*	moveq #0,%d0	| dictionary_12(D)->size
	move.w (a3)+,d0					*	move.w (%a3)+,%d0	| dictionary_12(D)->size, dictionary_12(D)->size
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| dictionary_12(D)->size,
	pea _?LC0					*	pea .LC0		|
	lea _printf,a5					*	lea printf,%a5	|, tmp45
	jbsr (a5)					*	jsr (%a5)		| tmp45
							*| lzw.c:45:     for (int i = 0; i < dictionary->size; i++) {
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| lzw.c:45:     for (int i = 0; i < dictionary->size; i++) {
	moveq #0,d3					*	moveq #0,%d3	| i
_?L22:							*.L22:
							*| lzw.c:45:     for (int i = 0; i < dictionary->size; i++) {
	moveq #0,d0					*	moveq #0,%d0	| dictionary_12(D)->size
	move.w (a4),d0					*	move.w (%a4),%d0	| dictionary_12(D)->size, dictionary_12(D)->size
							*| lzw.c:45:     for (int i = 0; i < dictionary->size; i++) {
	cmp.l d0,d3					*	cmp.l %d0,%d3	| dictionary_12(D)->size, i
	jblt _?L23					*	jlt .L23		|
_?L20:							*.L20:
							*| lzw.c:48: }
	movem.l (sp)+,d3/a3/a4/a5			*	movem.l (%sp)+,#14344	|,
	rts						*	rts
_?L23:							*.L23:
							*| lzw.c:46:         printf("page %d: key=%d, bit=%d\n",i,dictionary->pages[i].key,dictionary->pages[i].bit_length);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(short unsigned int *)_22 + 2B]
	move.w 2(a3),d0					*	move.w 2(%a3),%d0	| MEM[(short unsigned int *)_22 + 2B], MEM[(short unsigned int *)_22 + 2B]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_22 + 2B],
	move.w (a3),d0					*	move.w (%a3),%d0	| MEM[(short unsigned int *)_22], MEM[(short unsigned int *)_22]
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(short unsigned int *)_22],
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| i,
	pea _?LC1					*	pea .LC1		|
	jbsr (a5)					*	jsr (%a5)		| tmp45
							*| lzw.c:45:     for (int i = 0; i < dictionary->size; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
	addq.l #4,a3					*	addq.l #4,%a3	|, ivtmp.23
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	jbra _?L22					*	jra .L22		|
							*	.size	show_lzw_dictionary, .-show_lzw_dictionary
	.align	2					*	.align	2
	.globl	_search_lzw_dictionary			*	.globl	search_lzw_dictionary
							*	.type	search_lzw_dictionary, @function
_search_lzw_dictionary:					*search_lzw_dictionary:
	move.l 4(sp),a0					*	move.l 4(%sp),%a0	| dictionary, dictionary
	move.w 10(sp),d2				*	move.w 10(%sp),%d2	| key, key
							*| lzw.c:55:     if (dictionary == NULL) return -1;
	cmp.w #0,a0					*	cmp.w #0,%a0	|, dictionary
	jbeq _?L29					*	jeq .L29		|
							*| lzw.c:57:     for (int i = 0; i < dictionary->size; i++) {
	moveq #0,d1					*	moveq #0,%d1	| _3
	move.w (a0)+,d1					*	move.w (%a0)+,%d1	| dictionary_6(D)->size, _3
							*| lzw.c:57:     for (int i = 0; i < dictionary->size; i++) {
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L27:							*.L27:
							*| lzw.c:57:     for (int i = 0; i < dictionary->size; i++) {
	cmp.l d1,d0					*	cmp.l %d1,%d0	| _3, <retval>
	jblt _?L28					*	jlt .L28		|
_?L29:							*.L29:
							*| lzw.c:55:     if (dictionary == NULL) return -1;
	moveq #-1,d0					*	moveq #-1,%d0	|, <retval>
_?L25:							*.L25:
							*| lzw.c:65: }
	rts						*	rts
_?L28:							*.L28:
							*| lzw.c:58:         if (dictionary->pages[i].key == key) {
	addq.l #4,a0					*	addq.l #4,%a0	|, ivtmp.37
	cmp.w -4(a0),d2					*	cmp.w -4(%a0),%d2	| MEM[(short unsigned int *)_15 + 4294967292B], key
	jbeq _?L25					*	jeq .L25		|
							*| lzw.c:57:     for (int i = 0; i < dictionary->size; i++) {
	addq.l #1,d0					*	addq.l #1,%d0	|, <retval>
	jbra _?L27					*	jra .L27		|
							*	.size	search_lzw_dictionary, .-search_lzw_dictionary
	.align	2					*	.align	2
	.globl	_add_page_lzw_dictionary		*	.globl	add_page_lzw_dictionary
							*	.type	add_page_lzw_dictionary, @function
_add_page_lzw_dictionary:				*add_page_lzw_dictionary:
	move.l 4(sp),a0					*	move.l 4(%sp),%a0	| dictionary, dictionary
							*| lzw.c:73:     if (dictionary == NULL) return -1;
	cmp.w #0,a0					*	cmp.w #0,%a0	|, dictionary
	jbeq _?L33					*	jeq .L33		|
							*| lzw.c:75:     if ((current_size = dictionary->size) >= LZW_DICT_MAX_SIZE) return -1;
	move.w (a0),d1					*	move.w (%a0),%d1	| dictionary_5(D)->size, _1
							*| lzw.c:75:     if ((current_size = dictionary->size) >= LZW_DICT_MAX_SIZE) return -1;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
	move.w d1,d0					*	move.w %d1,%d0	| _1, <retval>
							*| lzw.c:75:     if ((current_size = dictionary->size) >= LZW_DICT_MAX_SIZE) return -1;
	cmp.l #8183,d0					*	cmp.l #8183,%d0	|, <retval>
	jbgt _?L33					*	jgt .L33		|
							*| lzw.c:90:     dictionary->size = current_size + 1;
	addq.w #1,d1					*	addq.w #1,%d1	|, _1
	move.w d1,(a0)					*	move.w %d1,(%a0)	| _1, dictionary_5(D)->size
_?L30:							*.L30:
							*| lzw.c:93: }
	rts						*	rts
_?L33:							*.L33:
							*| lzw.c:73:     if (dictionary == NULL) return -1;
	moveq #-1,d0					*	moveq #-1,%d0	|, <retval>
	jbra _?L30					*	jra .L30		|
							*	.size	add_page_lzw_dictionary, .-add_page_lzw_dictionary
							*	.ident	"GCC: (GNU) 12.2.0"
