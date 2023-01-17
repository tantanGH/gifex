* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"memory.c"			
						
						
						
						
						
	.text					
	.align	2				
	.globl	_malloc_himem			
						
_malloc_himem:					
	link.w a6,#-112				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
						
	pea 44.w				
	clr.l -(sp)				
	pea -100(a6)				
	lea _memset,a4				
	jbsr (a4)				
	lea (12,sp),sp				
						
	lea (-56,a6),a3				
	pea 56.w				
	clr.l -(sp)				
	move.l a3,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l #248,-112(a6)			
						
	moveq #1,d0				
	move.l d0,-108(a6)			
						
	move.l 8(a6),-104(a6)			
						
	move.l a3,-(sp)				
	pea -112(a6)				
	jbsr _TRAP15				
	addq.l #8,sp				
						
	tst.l -56(a6)				
	jbne _?L3				
						
	move.l -24(a6),d0			
_?L1:						
						
	move.l -120(a6),a3			
	move.l -116(a6),a4			
	unlk a6					
	rts					
_?L3:						
						
	moveq #0,d0				
	jbra _?L1				
						
	.align	2				
	.globl	_free_himem			
						
_free_himem:					
	link.w a6,#-112				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
						
	pea 44.w				
	clr.l -(sp)				
	pea -100(a6)				
	lea _memset,a4				
	jbsr (a4)				
	lea (12,sp),sp				
						
	lea (-56,a6),a3				
	pea 56.w				
	clr.l -(sp)				
	move.l a3,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l #248,-112(a6)			
						
	moveq #2,d0				
	move.l d0,-108(a6)			
						
	move.l 8(a6),-104(a6)			
						
	move.l a3,-(sp)				
	pea -112(a6)				
	jbsr _TRAP15				
	addq.l #8,sp				
						
	move.l -120(a6),a3			
	move.l -116(a6),a4			
	unlk a6					
	rts					
						
	.align	2				
	.globl	_resize_himem			
						
_resize_himem:					
	link.w a6,#-112				
	move.l a4,-(sp)				
	move.l a3,-(sp)				
						
	pea 40.w				
	clr.l -(sp)				
	pea -96(a6)				
	lea _memset,a4				
	jbsr (a4)				
	lea (12,sp),sp				
						
	lea (-56,a6),a3				
	pea 56.w				
	clr.l -(sp)				
	move.l a3,-(sp)				
	jbsr (a4)				
	lea (12,sp),sp				
						
	move.l #248,-112(a6)			
						
	moveq #4,d0				
	move.l d0,-108(a6)			
						
	move.l 8(a6),-104(a6)			
						
	move.l 12(a6),-100(a6)			
						
	move.l a3,-(sp)				
	pea -112(a6)				
	jbsr _TRAP15				
	addq.l #8,sp				
						
	move.l -56(a6),d0			
	move.l -120(a6),a3			
	move.l -116(a6),a4			
	unlk a6					
	rts					
						
	.align	2				
	.globl	_malloc_mainmem			
						
_malloc_mainmem:				
						
	move.l 4(sp),-(sp)			
	jbsr _MALLOC				
	addq.l #4,sp				
						
	cmp.l #-2130706433,d0			
	jbls _?L7				
	moveq #0,d0				
_?L7:						
						
	rts					
						
	.align	2				
	.globl	_free_mainmem			
						
_free_mainmem:					
	move.l 4(sp),d0				
						
	jbeq _?L9				
						
						
	jbra _MFREE				
_?L9:						
						
	rts					
						
	.align	2				
	.globl	_malloc__			
						
_malloc__:					
	move.l 4(sp),d0				
						
	tst.l 8(sp)				
	jbeq _?L12				
						
						
	jbra _malloc_himem			
_?L12:						
						
	move.l d0,4(sp)				
						
						
	jbra _malloc_mainmem			
						
	.align	2				
	.globl	_free__				
						
_free__:					
	move.l 4(sp),d0				
						
	tst.l 8(sp)				
	jbeq _?L14				
						
						
	jbra _free_himem			
_?L14:						
						
	move.l d0,4(sp)				
						
						
	jbra _free_mainmem			
						
						
