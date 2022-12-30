* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"vdisp.c"				*	.file	"vdisp.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
	.text						*	.text
							*	.local	s_mfpBackup
	.comm	_s_mfpBackup,24				*	.comm	s_mfpBackup,24,1
							*	.local	s_vector118Backup
	.align 2	* workaround for 3 args .comm directive.
	.comm	_s_vector118Backup,4			*	.comm	s_vector118Backup,4,2
							*	.local	s_uspBackup
	.align 2	* workaround for 3 args .comm directive.
	.comm	_s_uspBackup,4				*	.comm	s_uspBackup,4,2
	.align	2					*	.align	2
	.globl	_waitForMfp				*	.globl	waitForMfp
							*	.type	waitForMfp, @function
_waitForMfp:						*waitForMfp:
	link.w a6,#0					*	link.w %fp,#0	|,
							*| vdisp.c:21: }
	nop						*	nop
	unlk a6						*	unlk %fp		|
	rts						*	rts
							*	.size	waitForMfp, .-waitForMfp
	.align	2					*	.align	2
	.globl	_initVsyncInterrupt			*	.globl	initVsyncInterrupt
							*	.type	initVsyncInterrupt, @function
_initVsyncInterrupt:					*initVsyncInterrupt:
	link.w a6,#0					*	link.w %fp,#0	|,
							*| vdisp.c:25: 	register uint32_t reg_a2 asm ("a2") = (uint32_t)func;
	move.l 8(a6),d0					*	move.l 8(%fp),%d0	| func, func.0_1
							*| vdisp.c:25: 	register uint32_t reg_a2 asm ("a2") = (uint32_t)func;
	move.l d0,a2					*	move.l %d0,%a2	| func.0_1, reg_a2
							*| vdisp.c:33: 	asm volatile (
* APP ON (APP) asm_mode=has				*#APP
							*| 33 "vdisp.c" 1
							*
AER		= $003					*AER		= $003
IERA		= $007					*IERA		= $007
IERB		= $009					*IERB		= $009
ISRA		= $00F					*ISRA		= $00F
ISRB		= $011					*ISRB		= $011
IMRA		= $013					*IMRA		= $013
IMRB		= $015					*IMRB		= $015
							*
	suba.l	a1,a1					*	suba.l	a1,a1
	iocs	__B_SUPER				*	iocs	__B_SUPER
	move.l	d0,_s_uspBackup				*	move.l	d0,_s_uspBackup
	ori.w	#$0700,sr				*	ori.w	#$0700,sr
	movea.l	#$e88000,a0				*	movea.l	#$e88000,a0
	lea.l	_s_mfpBackup(pc),a1			*	lea.l	_s_mfpBackup(pc),a1
	move.b	AER(a0),AER(a1)				*	move.b	AER(a0),AER(a1)
	move.b	IERB(a0),IERB(a1)			*	move.b	IERB(a0),IERB(a1)
	move.b	IMRB(a0),IMRB(a1)			*	move.b	IMRB(a0),IMRB(a1)
	move.l	$118,_s_vector118Backup			*	move.l	$118,_s_vector118Backup
	move.l	a2,$118					*	move.l	a2,$118
	bclr.b	#4,AER(a0)				*	bclr.b	#4,AER(a0)
	bset.b	#6,IMRB(a0)				*	bset.b	#6,IMRB(a0)
	bset.b	#6,IERB(a0)				*	bset.b	#6,IERB(a0)
	andi.w	#$f8ff,sr				*	andi.w	#$f8ff,sr
	move.l	_s_uspBackup(pc),d0			*	move.l	_s_uspBackup(pc),d0
	bmi.b	@F					*	bmi.b	@F
		movea.l	d0,a1				*		movea.l	d0,a1
		iocs	__B_SUPER			*		iocs	__B_SUPER
@@:							*@@:
							*
							*| 0 "" 2
							*| vdisp.c:84: }
* APP OFF (NO_APP) asm_mode=gas				*#NO_APP
	nop						*	nop
	unlk a6						*	unlk %fp		|
	rts						*	rts
							*	.size	initVsyncInterrupt, .-initVsyncInterrupt
	.align	2					*	.align	2
	.globl	_termVsyncInterrupt			*	.globl	termVsyncInterrupt
							*	.type	termVsyncInterrupt, @function
_termVsyncInterrupt:					*termVsyncInterrupt:
	link.w a6,#0					*	link.w %fp,#0	|,
							*| vdisp.c:91: 	asm volatile (
* APP ON (APP) asm_mode=has				*#APP
							*| 91 "vdisp.c" 1
		suba.l	a1,a1				*		suba.l	a1,a1
	iocs	__B_SUPER				*	iocs	__B_SUPER
	move.l	d0,_s_uspBackup				*	move.l	d0,_s_uspBackup
	ori.w	#$0700,sr				*	ori.w	#$0700,sr
	movea.l	#$e88000,a0				*	movea.l	#$e88000,a0
	lea.l	_s_mfpBackup(pc),a1			*	lea.l	_s_mfpBackup(pc),a1
	move.b	AER(a1),d0				*	move.b	AER(a1),d0
	andi.b	#%0101_0000,d0				*	andi.b	#%0101_0000,d0
	andi.b	#%1010_1111,AER(a0)			*	andi.b	#%1010_1111,AER(a0)
	or.b	d0,AER(a0)				*	or.b	d0,AER(a0)
	move.b	IERB(a1),d0				*	move.b	IERB(a1),d0
	andi.b	#%0100_0000,d0				*	andi.b	#%0100_0000,d0
	andi.b	#%1011_1111,IERB(a0)			*	andi.b	#%1011_1111,IERB(a0)
	or.b	d0,IERB(a0)				*	or.b	d0,IERB(a0)
	move.b	IMRB(a1),d0				*	move.b	IMRB(a1),d0
	andi.b	#%0100_0000,d0				*	andi.b	#%0100_0000,d0
	andi.b	#%1011_1111,IMRB(a0)			*	andi.b	#%1011_1111,IMRB(a0)
	or.b	d0,IMRB(a0)				*	or.b	d0,IMRB(a0)
	move.l	_s_vector118Backup(pc),$118		*	move.l	_s_vector118Backup(pc),$118
	andi.w	#$f8ff,sr				*	andi.w	#$f8ff,sr
	move.l	_s_uspBackup(pc),d0			*	move.l	_s_uspBackup(pc),d0
	bmi.b	@F					*	bmi.b	@F
		movea.l	d0,a1				*		movea.l	d0,a1
		iocs	__B_SUPER			*		iocs	__B_SUPER
@@:							*@@:
							*
							*| 0 "" 2
							*| vdisp.c:139: }
* APP OFF (NO_APP) asm_mode=gas				*#NO_APP
	nop						*	nop
	unlk a6						*	unlk %fp		|
	rts						*	rts
							*	.size	termVsyncInterrupt, .-termVsyncInterrupt
							*	.ident	"GCC: (GNU) 12.2.0"
