* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"memory.c"				*	.file	"memory.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
	.text						*	.text
	.align	2					*	.align	2
	.globl	_malloc_himem				*	.globl	malloc_himem
							*	.type	malloc_himem, @function
_malloc_himem:						*malloc_himem:
	link.w a6,#-112					*	link.w %fp,#-112	|,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| memory.c:8:     struct REGS in_regs = { 0 };
	pea 44.w					*	pea 44.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea -100(a6)					*	pea -100(%fp)		|
	lea _memset,a4					*	lea memset,%a4	|, tmp38
	jbsr (a4)					*	jsr (%a4)		| tmp38
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:9:     struct REGS out_regs = { 0 };
	lea (-56,a6),a3					*	lea (-56,%fp),%a3	|,, tmp40
	pea 56.w					*	pea 56.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp40,
	jbsr (a4)					*	jsr (%a4)		| tmp38
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:11:     in_regs.d0 = 0xF8;      // IOCS _HIMEM
	move.l #248,-112(a6)				*	move.l #248,-112(%fp)	|, in_regs.d0
							*| memory.c:12:     in_regs.d1 = 1;         // HIMEM_MALLOC
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	|, in_regs.d1
							*| memory.c:13:     in_regs.d2 = size;
	move.l 8(a6),-104(a6)				*	move.l 8(%fp),-104(%fp)	| size, in_regs.d2
							*| memory.c:15:     TRAP15(&in_regs, &out_regs);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp40,
	pea -112(a6)					*	pea -112(%fp)		|
	jbsr _TRAP15					*	jsr TRAP15		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| memory.c:19:     return (rc == 0) ? (void*)out_regs.a1 : NULL;
	tst.l -56(a6)					*	tst.l -56(%fp)	| out_regs.d0
	jbne _?L3					*	jne .L3		|
							*| memory.c:19:     return (rc == 0) ? (void*)out_regs.a1 : NULL;
	move.l -24(a6),d0				*	move.l -24(%fp),%d0	| out_regs.a1, <retval>
_?L1:							*.L1:
							*| memory.c:20: }
	move.l -120(a6),a3				*	move.l -120(%fp),%a3	|,
	move.l -116(a6),a4				*	move.l -116(%fp),%a4	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L3:							*.L3:
							*| memory.c:19:     return (rc == 0) ? (void*)out_regs.a1 : NULL;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
	jbra _?L1					*	jra .L1		|
							*	.size	malloc_himem, .-malloc_himem
	.align	2					*	.align	2
	.globl	_free_himem				*	.globl	free_himem
							*	.type	free_himem, @function
_free_himem:						*free_himem:
	link.w a6,#-112					*	link.w %fp,#-112	|,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| memory.c:24:     struct REGS in_regs = { 0 };
	pea 44.w					*	pea 44.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea -100(a6)					*	pea -100(%fp)		|
	lea _memset,a4					*	lea memset,%a4	|, tmp35
	jbsr (a4)					*	jsr (%a4)		| tmp35
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:25:     struct REGS out_regs = { 0 };
	lea (-56,a6),a3					*	lea (-56,%fp),%a3	|,, tmp37
	pea 56.w					*	pea 56.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp37,
	jbsr (a4)					*	jsr (%a4)		| tmp35
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:27:     in_regs.d0 = 0xF8;      // IOCS _HIMEM
	move.l #248,-112(a6)				*	move.l #248,-112(%fp)	|, in_regs.d0
							*| memory.c:28:     in_regs.d1 = 2;         // HIMEM_FREE
	moveq #2,d0					*	moveq #2,%d0	|,
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	|, in_regs.d1
							*| memory.c:29:     in_regs.d2 = (size_t)ptr;
	move.l 8(a6),-104(a6)				*	move.l 8(%fp),-104(%fp)	| ptr, in_regs.d2
							*| memory.c:31:     TRAP15(&in_regs, &out_regs);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp37,
	pea -112(a6)					*	pea -112(%fp)		|
	jbsr _TRAP15					*	jsr TRAP15		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| memory.c:32: }
	move.l -120(a6),a3				*	move.l -120(%fp),%a3	|,
	move.l -116(a6),a4				*	move.l -116(%fp),%a4	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
							*	.size	free_himem, .-free_himem
	.align	2					*	.align	2
	.globl	_getsize_himem				*	.globl	getsize_himem
							*	.type	getsize_himem, @function
_getsize_himem:						*getsize_himem:
	link.w a6,#-112					*	link.w %fp,#-112	|,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| memory.c:36:     struct REGS in_regs = { 0 };
	pea 48.w					*	pea 48.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea -104(a6)					*	pea -104(%fp)		|
	lea _memset,a4					*	lea memset,%a4	|, tmp35
	jbsr (a4)					*	jsr (%a4)		| tmp35
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:37:     struct REGS out_regs = { 0 };
	lea (-56,a6),a3					*	lea (-56,%fp),%a3	|,, tmp37
	pea 56.w					*	pea 56.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp37,
	jbsr (a4)					*	jsr (%a4)		| tmp35
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:39:     in_regs.d0 = 0xF8;      // IOCS _HIMEM
	move.l #248,-112(a6)				*	move.l #248,-112(%fp)	|, in_regs.d0
							*| memory.c:40:     in_regs.d1 = 3;         // HIMEM_GETSIZE
	moveq #3,d0					*	moveq #3,%d0	|,
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	|, in_regs.d1
							*| memory.c:42:     TRAP15(&in_regs, &out_regs);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp37,
	pea -112(a6)					*	pea -112(%fp)		|
	jbsr _TRAP15					*	jsr TRAP15		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| memory.c:44:     return (mode == 0) ? out_regs.d0 : out_regs.d1;
	tst.l 8(a6)					*	tst.l 8(%fp)	| mode
	jbne _?L6					*	jne .L6		|
							*| memory.c:44:     return (mode == 0) ? out_regs.d0 : out_regs.d1;
	move.l -56(a6),d0				*	move.l -56(%fp),%d0	| out_regs.d0, <retval>
_?L5:							*.L5:
							*| memory.c:45: }
	move.l -120(a6),a3				*	move.l -120(%fp),%a3	|,
	move.l -116(a6),a4				*	move.l -116(%fp),%a4	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L6:							*.L6:
							*| memory.c:44:     return (mode == 0) ? out_regs.d0 : out_regs.d1;
	move.l -52(a6),d0				*	move.l -52(%fp),%d0	| out_regs.d1, <retval>
	jbra _?L5					*	jra .L5		|
							*	.size	getsize_himem, .-getsize_himem
	.align	2					*	.align	2
	.globl	_resize_himem				*	.globl	resize_himem
							*	.type	resize_himem, @function
_resize_himem:						*resize_himem:
	link.w a6,#-112					*	link.w %fp,#-112	|,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	|,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| memory.c:49:     struct REGS in_regs = { 0 };
	pea 40.w					*	pea 40.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea -96(a6)					*	pea -96(%fp)		|
	lea _memset,a4					*	lea memset,%a4	|, tmp38
	jbsr (a4)					*	jsr (%a4)		| tmp38
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:50:     struct REGS out_regs = { 0 };
	lea (-56,a6),a3					*	lea (-56,%fp),%a3	|,, tmp40
	pea 56.w					*	pea 56.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp40,
	jbsr (a4)					*	jsr (%a4)		| tmp38
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| memory.c:52:     in_regs.d0 = 0xF8;          // IOCS _HIMEM
	move.l #248,-112(a6)				*	move.l #248,-112(%fp)	|, in_regs.d0
							*| memory.c:53:     in_regs.d1 = 4;             // HIMEM_RESIZE
	moveq #4,d0					*	moveq #4,%d0	|,
	move.l d0,-108(a6)				*	move.l %d0,-108(%fp)	|, in_regs.d1
							*| memory.c:54:     in_regs.d2 = (size_t)ptr;
	move.l 8(a6),-104(a6)				*	move.l 8(%fp),-104(%fp)	| ptr, in_regs.d2
							*| memory.c:55:     in_regs.d3 = size;
	move.l 12(a6),-100(a6)				*	move.l 12(%fp),-100(%fp)	| size, in_regs.d3
							*| memory.c:57:     TRAP15(&in_regs, &out_regs);
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp40,
	pea -112(a6)					*	pea -112(%fp)		|
	jbsr _TRAP15					*	jsr TRAP15		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| memory.c:60: }
	move.l -56(a6),d0				*	move.l -56(%fp),%d0	| out_regs.d0,
	move.l -120(a6),a3				*	move.l -120(%fp),%a3	|,
	move.l -116(a6),a4				*	move.l -116(%fp),%a4	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
							*	.size	resize_himem, .-resize_himem
	.align	2					*	.align	2
	.globl	_malloc_mainmem				*	.globl	malloc_mainmem
							*	.type	malloc_mainmem, @function
_malloc_mainmem:					*malloc_mainmem:
							*| memory.c:66:   int addr = MALLOC(size);
	move.l 4(sp),-(sp)				*	move.l 4(%sp),-(%sp)	| size,
	jbsr _MALLOC					*	jsr MALLOC		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| memory.c:67:   return (addr >= 0x81000000) ? NULL : (char*)addr;
	cmp.l #-2130706433,d0				*	cmp.l #-2130706433,%d0	|, addr
	jbls _?L10					*	jls .L10		|
	moveq #0,d0					*	moveq #0,%d0	| addr
_?L10:							*.L10:
							*| memory.c:68: }
	rts						*	rts
							*	.size	malloc_mainmem, .-malloc_mainmem
	.align	2					*	.align	2
	.globl	_free_mainmem				*	.globl	free_mainmem
							*	.type	free_mainmem, @function
_free_mainmem:						*free_mainmem:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| ptr, ptr
							*| memory.c:71:   if (ptr == NULL) return;
	jbeq _?L12					*	jeq .L12		|
							*| memory.c:73: }
							*| memory.c:72:   MFREE((int)ptr);
	jbra _MFREE					*	jra MFREE		|
_?L12:							*.L12:
							*| memory.c:73: }
	rts						*	rts
							*	.size	free_mainmem, .-free_mainmem
	.align	2					*	.align	2
	.globl	_malloc__				*	.globl	malloc__
							*	.type	malloc__, @function
_malloc__:						*malloc__:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| size, size
							*| memory.c:79:     return himem ? malloc_himem(size) : malloc_mainmem(size);
	tst.l 8(sp)					*	tst.l 8(%sp)	| himem
	jbeq _?L15					*	jeq .L15		|
							*| memory.c:80: }
							*| memory.c:79:     return himem ? malloc_himem(size) : malloc_mainmem(size);
	jbra _malloc_himem				*	jra malloc_himem		|
_?L15:							*.L15:
							*| memory.c:79:     return himem ? malloc_himem(size) : malloc_mainmem(size);
	move.l d0,4(sp)					*	move.l %d0,4(%sp)	| size,
							*| memory.c:80: }
							*| memory.c:79:     return himem ? malloc_himem(size) : malloc_mainmem(size);
	jbra _malloc_mainmem				*	jra malloc_mainmem		|
							*	.size	malloc__, .-malloc__
	.align	2					*	.align	2
	.globl	_free__					*	.globl	free__
							*	.type	free__, @function
_free__:						*free__:
	move.l 4(sp),d0					*	move.l 4(%sp),%d0	| ptr, ptr
							*| memory.c:83:     if (himem) {
	tst.l 8(sp)					*	tst.l 8(%sp)	| himem
	jbeq _?L17					*	jeq .L17		|
							*| memory.c:88: }
							*| memory.c:84:         free_himem(ptr);
	jbra _free_himem				*	jra free_himem		|
_?L17:							*.L17:
							*| memory.c:86:         free_mainmem(ptr);
	move.l d0,4(sp)					*	move.l %d0,4(%sp)	| ptr,
							*| memory.c:88: }
							*| memory.c:86:         free_mainmem(ptr);
	jbra _free_mainmem				*	jra free_mainmem		|
							*	.size	free__, .-free__
							*	.ident	"GCC: (GNU) 12.2.0"
