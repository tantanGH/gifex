* NO_APP
RUNS_HUMAN_VERSION	equ	3
	.cpu 68000
	.include doscall.inc
	.include iocscall.inc
* X68 GCC Develop
	.file	"main.c"				*	.file	"main.c"
							*| GNU C17 (GCC) version 12.2.0 (m68k-elf)
							*|	compiled by GNU C version Apple LLVM 14.0.0 (clang-1400.0.29.202), GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP
							*
							*| GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
							*| options passed: -mcpu=68000 -Os -fcall-used-d2 -fcall-used-a2 -fexec-charset=cp932 -fno-defer-pop
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
	.dc.b $73,$69,$6f,$6e,$20,$30,$2e,$33
	.dc.b $2e,$30,$20,$62,$79,$20,$74,$61
	.dc.b $6e,$74,$61,$6e,$20,$32,$30,$32
	.dc.b $33
	.dc.b $00					*	.string	"GIFEX - GIF image loader with XEiJ graphic extension support version 0.3.0 by tantan 2023"
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
	.dc.b $20,$20,$20,$2d,$62,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$75,$66
	.dc.b $66,$65,$72,$20,$6d,$65,$6d,$6f
	.dc.b $72,$79,$20,$73,$69,$7a,$65,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$5b,$31
	.dc.b $2d,$33,$32,$5d,$20,$28,$64,$65
	.dc.b $66,$61,$75,$6c,$74,$3a,$38,$29
	.dc.b $00					*	.string	"   -b<n> ... buffer memory size factor[1-32] (default:8)"
_?LC4:							*.LC4:
	.dc.b $20,$20,$20,$2d,$63,$20,$2e,$2e
	.dc.b $2e,$20,$63,$6c,$65,$61,$72,$20
	.dc.b $67,$72,$61,$70,$68,$69,$63,$20
	.dc.b $73,$63,$72,$65,$65,$6e
	.dc.b $00					*	.string	"   -c ... clear graphic screen"
_?LC5:							*.LC5:
	.dc.b $20,$20,$20,$2d,$66,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$6d,$61,$78
	.dc.b $20,$6e,$75,$6d,$62,$65,$72,$20
	.dc.b $6f,$66,$20,$66,$72,$61,$6d,$65
	.dc.b $73,$20,$28,$64,$65,$66,$61,$75
	.dc.b $6c,$74,$3a,$6e,$6f,$20,$6c,$69
	.dc.b $6d,$69,$74,$29
	.dc.b $00					*	.string	"   -f<n> ... max number of frames (default:no limit)"
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
	.dc.b $20,$20,$20,$2d,$6b,$20,$2e,$2e
	.dc.b $2e,$20,$77,$61,$69,$74,$20,$6b
	.dc.b $65,$79,$20,$69,$6e,$70,$75,$74
	.dc.b $00					*	.string	"   -k ... wait key input"
_?LC9:							*.LC9:
	.dc.b $20,$20,$20,$2d,$6d,$20,$2e,$2e
	.dc.b $2e,$20,$6d,$65,$6d,$6f,$72,$79
	.dc.b $20,$63,$61,$63,$68,$65,$20,$6d
	.dc.b $6f,$64,$65
	.dc.b $00					*	.string	"   -m ... memory cache mode"
_?LC10:							*.LC10:
	.dc.b $20,$20,$20,$2d,$6e,$20,$2e,$2e
	.dc.b $2e,$20,$69,$6d,$61,$67,$65,$20
	.dc.b $63,$65,$6e,$74,$65,$72,$69,$6e
	.dc.b $67
	.dc.b $00					*	.string	"   -n ... image centering"
_?LC11:							*.LC11:
	.dc.b $20,$20,$20,$2d,$6f,$3c,$78,$2c
	.dc.b $79,$3e,$20,$2e,$2e,$2e,$20,$64
	.dc.b $69,$73,$70,$6c,$61,$79,$20,$6f
	.dc.b $66,$66,$73,$65,$74,$20,$70,$6f
	.dc.b $73,$69,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -o<x,y> ... display offset position"
_?LC12:							*.LC12:
	.dc.b $20,$20,$20,$2d,$73,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$73,$63,$72
	.dc.b $65,$65,$6e,$20,$6d,$6f,$64,$65
	.dc.b $20,$30,$3a,$33,$38,$34,$78,$32
	.dc.b $35,$36,$2c,$20,$31,$3a,$35,$31
	.dc.b $32,$78,$35,$31,$32,$2c,$20,$32
	.dc.b $3a,$37,$36,$38,$78,$35,$31,$32
	.dc.b $2c,$20,$33,$3a,$37,$36,$38,$78
	.dc.b $35,$31,$32,$28,$66,$75,$6c,$6c
	.dc.b $20,$2d,$20,$58,$45,$69,$4a,$20
	.dc.b $6f,$6e,$6c,$79,$29
	.dc.b $00					*	.string	"   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512, 3:768x512(full - XEiJ only)"
_?LC13:							*.LC13:
	.dc.b $20,$20,$20,$2d,$75,$20,$2e,$2e
	.dc.b $2e,$20,$75,$73,$65,$20,$68,$69
	.dc.b $67,$68,$20,$6d,$65,$6d,$6f,$72
	.dc.b $79
	.dc.b $00					*	.string	"   -u ... use high memory"
_?LC14:							*.LC14:
	.dc.b $20,$20,$20,$2d,$76,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$72,$69
	.dc.b $67,$68,$74,$6e,$65,$73,$73,$20
	.dc.b $28,$30,$2d,$31,$30,$30,$29
	.dc.b $00					*	.string	"   -v<n> ... brightness (0-100)"
_?LC15:							*.LC15:
	.dc.b $20,$20,$20,$2d,$77,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$66,$72,$61
	.dc.b $6d,$65,$20,$72,$61,$74,$65,$20
	.dc.b $28,$30,$3a,$6e,$6f,$20,$77,$61
	.dc.b $69,$74,$2c,$20,$6e,$3a,$6e,$20
	.dc.b $66,$72,$61,$6d,$65,$73,$2f,$73
	.dc.b $65,$63,$2c,$20,$64,$65,$66,$61
	.dc.b $75,$6c,$74,$3a,$61,$75,$74,$6f
	.dc.b $29
	.dc.b $00					*	.string	"   -w<n> ... frame rate (0:no wait, n:n frames/sec, default:auto)"
	.text						*	.text
	.align	2					*	.align	2
							*	.type	show_help_message, @function
_show_help_message:					*show_help_message:
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	|,
							*| main.c:717:   printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2023\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:718:   printf("usage: gifex.x [options] <image.gif>\n");
	move.l #_?LC1,(sp)				*	move.l #.LC1,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:719:   printf("options:\n");
	move.l #_?LC2,(sp)				*	move.l #.LC2,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:720:   printf("   -b<n> ... buffer memory size factor[1-32] (default:8)\n");
	move.l #_?LC3,(sp)				*	move.l #.LC3,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:721:   printf("   -c ... clear graphic screen\n");
	move.l #_?LC4,(sp)				*	move.l #.LC4,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:722:   printf("   -f<n> ... max number of frames (default:no limit)\n");
	move.l #_?LC5,(sp)				*	move.l #.LC5,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:723:   printf("   -h ... show this help message\n");
	move.l #_?LC6,(sp)				*	move.l #.LC6,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:724:   printf("   -i ... show file information\n");
	move.l #_?LC7,(sp)				*	move.l #.LC7,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:725:   printf("   -k ... wait key input\n");
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:726:   printf("   -m ... memory cache mode\n");
	move.l #_?LC9,(sp)				*	move.l #.LC9,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:727:   printf("   -n ... image centering\n");
	move.l #_?LC10,(sp)				*	move.l #.LC10,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:728:   printf("   -o<x,y> ... display offset position\n");
	move.l #_?LC11,(sp)				*	move.l #.LC11,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:729:   printf("   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512, 3:768x512(full - XEiJ only)\n");
	move.l #_?LC12,(sp)				*	move.l #.LC12,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:730:   printf("   -u ... use high memory\n");
	move.l #_?LC13,(sp)				*	move.l #.LC13,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:731:   printf("   -v<n> ... brightness (0-100)\n");
	move.l #_?LC14,(sp)				*	move.l #.LC14,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:732:   printf("   -w<n> ... frame rate (0:no wait, n:n frames/sec, default:auto)\n");
	move.l #_?LC15,(sp)				*	move.l #.LC15,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:733: }
	move.l (sp)+,a3					*	move.l (%sp)+,%a3	|,
	rts						*	rts
							*	.size	show_help_message, .-show_help_message
	.globl	___mulsi3				*	.globl	__mulsi3
	.align	2					*	.align	2
	.globl	_output_image				*	.globl	output_image
							*	.type	output_image, @function
_output_image:						*output_image:
	lea (-24,sp),sp					*	lea (-24,%sp),%sp	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5/a6,-(sp)	*	movem.l #7966,-(%sp)	|,
	move.l 64(sp),a3				*	move.l 64(%sp),%a3	| image_frame, image_frame
							*| main.c:91:   unsigned char* buffer = image_frame->frame_data_ptr;
	move.l 548(a3),d7				*	move.l 548(%a3),%d7	| image_frame_52(D)->frame_data_ptr, buffer
							*| main.c:92:   unsigned char* buffer_end = buffer + image_frame->frame_data_size;
	move.l d7,d2					*	move.l %d7,%d2	| buffer,
	add.l 544(a3),d2				*	add.l 544(%a3),%d2	| image_frame_52(D)->frame_data_size,
	move.l d2,48(sp)				*	move.l %d2,48(%sp)	|, %sfp
							*| main.c:93:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l 8(a3),a4					*	move.l 8(%a3),%a4	| image_frame_52(D)->global_color_table_ptr, global_palette
							*| main.c:97:   int width = image_block->width, height = image_block->height;
	moveq #0,d2					*	moveq #0,%d2	|
	move.w 26(a3),d2				*	move.w 26(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].width,
	move.l d2,52(sp)				*	move.l %d2,52(%sp)	|, %sfp
							*| main.c:97:   int width = image_block->width, height = image_block->height;
	move.w 28(a3),d2				*	move.w 28(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].height,
	move.l d2,56(sp)				*	move.l %d2,56(%sp)	|, %sfp
							*| main.c:98:   int offset_x = g_start_x + image_block->left_position;
	moveq #0,d3					*	moveq #0,%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position
	move.w 22(a3),d3				*	move.w 22(%a3),%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position
							*| main.c:98:   int offset_x = g_start_x + image_block->left_position;
	add.l _g_start_x,d3				*	add.l g_start_x,%d3	| g_start_x, offset_x
							*| main.c:99:   int offset_y = g_start_y + image_block->top_position;
	moveq #0,d4					*	moveq #0,%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position
	move.w 24(a3),d4				*	move.w 24(%a3),%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position
							*| main.c:99:   int offset_y = g_start_y + image_block->top_position;
	add.l _g_start_y,d4				*	add.l g_start_y,%d4	| g_start_y, offset_y
							*| main.c:101:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	btst #0,30(a3)					*	btst #0,30(%a3)	|, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].flag_code
	jbeq _?L14					*	jeq .L14		|
							*| main.c:101:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	lea (32,a3),a5					*	lea (32,%a3),%a5	|, image_frame, iftmp.2_46
_?L3:							*.L3:
							*| main.c:105:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	btst #0,15(a3)					*	btst #0,15(%a3)	|, MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_52(D) + 12B].flag_code
	jbeq _?L15					*	jeq .L15		|
							*| main.c:105:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #0,d6					*	moveq #0,%d6	| iftmp.3_47
	move.b 18(a3),d6				*	move.b 18(%a3),%d6	| MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_52(D) + 12B].transparent_index, iftmp.3_47
_?L4:							*.L4:
							*| main.c:108:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l _g_actual_width,d5			*	move.l g_actual_width,%d5	| g_actual_width, g_actual_width.4_18
	lea ___mulsi3,a6				*	lea __mulsi3,%a6	|, tmp89
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| offset_y,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	jbsr (a6)					*	jsr (%a6)		| tmp89
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:108:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp105, tmp91
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp91
	add.l a0,a0					*	add.l %a0,%a0	| tmp91, tmp92
							*| main.c:108:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	add.l #12582912,a0				*	add.l #12582912,%a0	|, gvram
							*| main.c:131:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	move.l _g_actual_height,44(sp)			*	move.l g_actual_height,44(%sp)	| g_actual_height, %sfp
							*| main.c:100:   int x = 0, y = 0;
	sub.l a1,a1					*	sub.l %a1,%a1	| y
							*| main.c:100:   int x = 0, y = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
_?L5:							*.L5:
							*| main.c:110:   while (buffer < buffer_end) {
	cmp.l 48(sp),d7					*	cmp.l 48(%sp),%d7	| %sfp, buffer
	jbcs _?L13					*	jcs .L13		|
_?L2:							*.L2:
							*| main.c:137: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	rts						*	rts
_?L14:							*.L14:
							*| main.c:93:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l a4,a5					*	move.l %a4,%a5	| global_palette, iftmp.2_46
	jbra _?L3					*	jra .L3		|
_?L15:							*.L15:
							*| main.c:105:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #-1,d6					*	moveq #-1,%d6	|, iftmp.3_47
	jbra _?L4					*	jra .L4		|
_?L13:							*.L13:
							*| main.c:112:     unsigned char palette_code = *buffer++;
	addq.l #1,d7					*	addq.l #1,%d7	|, buffer
							*| main.c:114:     if ((offset_x + x) < g_actual_width) {
	move.l d1,d0					*	move.l %d1,%d0	| x, tmp93
	add.l d3,d0					*	add.l %d3,%d0	| offset_x, tmp93
							*| main.c:114:     if ((offset_x + x) < g_actual_width) {
	cmp.l d5,d0					*	cmp.l %d5,%d0	| g_actual_width.4_18, tmp93
	jbge _?L6					*	jge .L6		|
							*| main.c:112:     unsigned char palette_code = *buffer++;
	move.l d7,a2					*	move.l %d7,%a2	| buffer,
	move.b -1(a2),d0				*	move.b -1(%a2),%d0	| MEM[(unsigned char *)buffer_65 + 4294967295B], palette_code
							*| main.c:118:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	lea (2,a0),a2					*	lea (2,%a0),%a2	|, gvram,
	move.l a2,36(sp)				*	move.l %a2,36(%sp)	|, %sfp
							*| main.c:115:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #-1,d2					*	moveq #-1,%d2	|,
	cmp.l d6,d2					*	cmp.l %d6,%d2	| iftmp.3_47,
	jbeq _?L7					*	jeq .L7		|
							*| main.c:115:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #0,d2					*	moveq #0,%d2	|
	move.b d0,d2					*	move.b %d0,%d2	| palette_code,
	move.l d2,a2					*	move.l %d2,%a2	|, palette_code
							*| main.c:115:       if (transparent_index < 0 || palette_code != transparent_index) {
	cmp.l a2,d6					*	cmp.l %a2,%d6	| palette_code, iftmp.3_47
	jbeq _?L8					*	jeq .L8		|
_?L7:							*.L7:
							*| main.c:116:         *gvram++ = palette[ palette_code ];
	and.l #255,d0					*	and.l #255,%d0	|, palette_code
	add.l d0,d0					*	add.l %d0,%d0	| palette_code, tmp97
							*| main.c:116:         *gvram++ = palette[ palette_code ];
	move.w (a5,d0.l),(a0)				*	move.w (%a5,%d0.l),(%a0)	| *_28, *gvram_45
_?L9:							*.L9:
							*| main.c:116:         *gvram++ = palette[ palette_code ];
	move.l 36(sp),a0				*	move.l 36(%sp),%a0	| %sfp, gvram
_?L6:							*.L6:
							*| main.c:125:     x++;
	addq.l #1,d1					*	addq.l #1,%d1	|, x
							*| main.c:128:     if (x >= width) {
	cmp.l 52(sp),d1					*	cmp.l 52(%sp),%d1	| %sfp, x
	jblt _?L5					*	jlt .L5		|
							*| main.c:130:       if (++y >= height) break;
	addq.l #1,a1					*	addq.l #1,%a1	|, y
	cmp.l 56(sp),a1					*	cmp.l 56(%sp),%a1	| %sfp, y
	jbge _?L2					*	jge .L2		|
							*| main.c:131:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	move.l d4,d0					*	move.l %d4,%d0	| offset_y, _35
	add.l a1,d0					*	add.l %a1,%d0	| y, _35
							*| main.c:131:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	cmp.l 44(sp),d0					*	cmp.l 44(%sp),%d0	| %sfp, _35
	jbge _?L2					*	jge .L2		|
							*| main.c:132:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _35,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	move.l a1,48(sp)				*	move.l %a1,48(%sp)	|,
	jbsr (a6)					*	jsr (%a6)		| tmp89
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:132:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp106, tmp102
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp102
	add.l a0,a0					*	add.l %a0,%a0	| tmp102, tmp103
							*| main.c:132:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	add.l #12582912,a0				*	add.l #12582912,%a0	|, gvram
							*| main.c:129:       x = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
	move.l 40(sp),a1				*	move.l 40(%sp),%a1	|,
	jbra _?L5					*	jra .L5		|
_?L8:							*.L8:
							*| main.c:117:       } else if (palette_code == transparent_index && global_palette != NULL) {
	cmp.w #0,a4					*	cmp.w #0,%a4	|, global_palette
	jbeq _?L9					*	jeq .L9		|
							*| main.c:118:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.l 4(a3),d0					*	move.l 4(%a3),%d0	| image_frame_52(D)->bg_color_index, tmp99
	add.l d0,d0					*	add.l %d0,%d0	|, tmp99
							*| main.c:118:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.w (a4,d0.l),(a0)				*	move.w (%a4,%d0.l),(%a0)	| *_33, *gvram_45
	jbra _?L9					*	jra .L9		|
							*	.size	output_image, .-output_image
	.align	2					*	.align	2
	.globl	_output_image_vdisp			*	.globl	output_image_vdisp
							*	.type	output_image_vdisp, @function
_output_image_vdisp:					*output_image_vdisp:
	movem.l d0/d1/d2/a0/a1/a2,-(sp)			*	movem.l #57568,-(%sp)	|,
							*| main.c:143:   output_image(&g_image_frames[ g_current_frame_index++ ]);
	move.l _g_current_frame_index,d1		*	move.l g_current_frame_index,%d1	| g_current_frame_index, g_current_frame_index.13_1
	move.l d1,d0					*	move.l %d1,%d0	| g_current_frame_index.13_1, _2
	addq.l #1,d0					*	addq.l #1,%d0	|, _2
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	| _2, g_current_frame_index
							*| main.c:143:   output_image(&g_image_frames[ g_current_frame_index++ ]);
	move.l d1,d0					*	move.l %d1,%d0	| g_current_frame_index.13_1, tmp39
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp39
	add.l d1,d0					*	add.l %d1,%d0	| g_current_frame_index.13_1, tmp40
	add.l d0,d0					*	add.l %d0,%d0	| tmp40, tmp41
	add.l d0,d0					*	add.l %d0,%d0	| tmp41, tmp42
	add.l d0,d1					*	add.l %d0,%d1	| tmp42, tmp43
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp44
	add.l #_g_image_frames,d1			*	add.l #g_image_frames,%d1	|, tmp44
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| tmp44,
	jbsr _output_image				*	jsr output_image		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:144:   if (g_current_frame_index >= g_max_frame_index) {
	move.l _g_current_frame_index,d0		*	move.l g_current_frame_index,%d0	| g_current_frame_index, g_current_frame_index.15_4
							*| main.c:144:   if (g_current_frame_index >= g_max_frame_index) {
	cmp.l _g_max_frame_index.l,d0			*	cmp.l g_max_frame_index.l,%d0	| g_max_frame_index, g_current_frame_index.15_4
	jblt _?L22					*	jlt .L22		|
							*| main.c:145:     g_current_frame_index = 0;
	moveq #0,d0					*	moveq #0,%d0	|
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	|, g_current_frame_index
_?L22:							*.L22:
							*| main.c:147: }
	movem.l (sp)+,d0/d1/d2/a0/a1/a2			*	movem.l (%sp)+,#1799	|,
	rte						*	rte
							*	.size	output_image_vdisp, .-output_image_vdisp
	.data						*	.section	.rodata.str1.1
_?LC16:							*.LC16:
	.dc.b $79,$65,$73
	.dc.b $00					*	.string	"yes"
_?LC17:							*.LC17:
	.dc.b $6e,$6f
	.dc.b $00					*	.string	"no"
_?LC18:							*.LC18:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$73
	.dc.b $63,$72,$65,$65,$6e,$20,$6d,$6f
	.dc.b $64,$65,$2e
	.dc.b $00					*	.string	"error: unknown screen mode."
_?LC19:							*.LC19:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$69
	.dc.b $6e,$63,$6f,$72,$72,$65,$63,$74
	.dc.b $20,$66,$72,$61,$6d,$65,$20,$72
	.dc.b $61,$74,$65,$2e
	.dc.b $00					*	.string	"error: incorrect frame rate."
_?LC20:							*.LC20:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6c,$61,$72,$67,$65
	.dc.b $20,$6d,$65,$6d,$6f,$72,$79,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$2e
	.dc.b $00					*	.string	"error: too large memory factor."
_?LC21:							*.LC21:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$6f
	.dc.b $70,$74,$69,$6f,$6e,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown option (%s).\n"
_?LC22:							*.LC22:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6e
	.dc.b $6f,$20,$69,$6e,$70,$75,$74,$20
	.dc.b $66,$69,$6c,$65,$2e
	.dc.b $00					*	.string	"error: no input file."
_?LC23:							*.LC23:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: file read error (%s).\n"
_?LC24:							*.LC24:
	.dc.b $72,$62
	.dc.b $00					*	.string	"rb"
_?LC25:							*.LC25:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$20,$69,$6e,$70,$75,$74
	.dc.b $20,$66,$69,$6c,$65,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: cannot open input file (%s).\n"
_?LC26:							*.LC26:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$66,$69,$6c,$65,$20,$62
	.dc.b $75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for file buffer."
_?LC27:							*.LC27:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: file read error."
_?LC28:							*.LC28:
	.dc.b $47,$49,$46
	.dc.b $00					*	.string	"GIF"
_?LC29:							*.LC29:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $69,$67,$6e,$61,$74,$75,$72,$65
	.dc.b $20,$65,$72,$72,$6f,$72,$2e,$20
	.dc.b $6e,$6f,$74,$20,$61,$20,$47,$49
	.dc.b $46,$20,$66,$69,$6c,$65,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: signature error. not a GIF file (%s).\n"
_?LC30:							*.LC30:
	.dc.b $38,$39,$61
	.dc.b $00					*	.string	"89a"
_?LC31:							*.LC31:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$73,$75,$70,$70,$6f,$72,$74
	.dc.b $65,$64,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unsupported GIF version (%s).\n"
_?LC32:							*.LC32:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$6e,$61,$6d,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"     file name: %s\n"
_?LC33:							*.LC33:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     file size: %d\n"
_?LC34:							*.LC34:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$74,$69,$6d,$65,$3a,$20
	.dc.b $25,$30,$34,$64,$2d,$25,$30,$32
	.dc.b $64,$2d,$25,$30,$32,$64,$20,$25
	.dc.b $30,$32,$64,$3a,$25,$30,$32,$64
	.dc.b $3a,$25,$30,$32,$64,$0a
	.dc.b $00					*	.string	"     file time: %04d-%02d-%02d %02d:%02d:%02d\n"
_?LC35:							*.LC35:
	.dc.b $20,$20,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"   GIF version: %s\n"
_?LC36:							*.LC36:
	.dc.b $20,$20,$73,$63,$72,$65,$65,$6e
	.dc.b $20,$77,$69,$64,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  screen width: %d\n"
_?LC37:							*.LC37:
	.dc.b $20,$73,$63,$72,$65,$65,$6e,$20
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	" screen height: %d\n"
_?LC38:							*.LC38:
	.dc.b $20,$20,$20,$20,$20,$62,$69,$74
	.dc.b $20,$64,$65,$70,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     bit depth: %d\n"
_?LC39:							*.LC39:
	.dc.b $20,$47,$43,$54,$20,$61,$76,$61
	.dc.b $69,$6c,$61,$62,$6c,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	" GCT available: %s\n"
_?LC40:							*.LC40:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$6f,$72,$74,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"      GCT sort: %s\n"
_?LC41:							*.LC41:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"      GCT size: %d\n"
_?LC42:							*.LC42:
	.dc.b $42,$47,$20,$63,$6f,$6c,$6f,$72
	.dc.b $20,$69,$6e,$64,$65,$78,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"BG color index: %d\n"
_?LC43:							*.LC43:
	.dc.b $20,$20,$61,$73,$70,$65,$63,$74
	.dc.b $20,$72,$61,$74,$69,$6f,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  aspect ratio: %d\n"
	.globl	___divsi3				*	.globl	__divsi3
_?LC44:							*.LC44:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$64,$65,$63,$6f,$64,$65
	.dc.b $20,$62,$75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for decode buffer."
_?LC45:							*.LC45:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$69,$6f,$6e
	.dc.b $20,$66,$61,$69,$6c,$75,$72,$65
	.dc.b $20,$28,$65,$72,$72,$6e,$6f,$3d
	.dc.b $25,$64,$29,$2e,$0a
	.dc.b $00					*	.string	"error: memory allocation failure (errno=%d).\n"
	.globl	___modsi3				*	.globl	__modsi3
_?LC46:							*.LC46:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$63
	.dc.b $6f,$6e,$74,$72,$6f,$6c,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: graphic control extension read error."
_?LC47:							*.LC47:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $6f,$6d,$6d,$65,$6e,$74,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: comment extension read error."
_?LC48:							*.LC48:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$70
	.dc.b $6c,$61,$69,$6e,$20,$74,$65,$78
	.dc.b $74,$20,$65,$78,$74,$65,$6e,$73
	.dc.b $69,$6f,$6e,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: plain text extension read error."
_?LC49:							*.LC49:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$61
	.dc.b $70,$70,$6c,$69,$63,$61,$74,$69
	.dc.b $6f,$6e,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e,$20,$72,$65,$61
	.dc.b $64,$20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: application extension read error."
_?LC50:							*.LC50:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC51:							*.LC51:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$62
	.dc.b $6c,$6f,$63,$6b,$20,$28,$30,$78
	.dc.b $25,$30,$32,$58,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown block (0x%02X).\n"
	.globl	___udivsi3				*	.globl	__udivsi3
_?LC52:							*.LC52:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$75,$73
	.dc.b $65,$20,$76,$73,$79,$6e,$63,$20
	.dc.b $69,$6e,$74,$65,$72,$72,$75,$70
	.dc.b $74,$2e
	.dc.b $00					*	.string	"error: cannot use vsync interrupt."
	.text						*	.section	.text.startup,"ax",@progbits
	.align	2					*	.align	2
	.xref __main	* workaround for libc.
	.globl	_main					*	.globl	main
							*	.type	main, @function
_main:							*main:
	link.w a6,#-144					*	link.w %fp,#-144	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d4					*	move.l 8(%fp),%d4	| argc, argc
							*| main.c:743:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L25					*	jlt .L25		|
							*| main.c:744:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L26:							*.L26:
							*| main.c:745:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L24					*	jra .L24		|
_?L25:							*.L25:
	move.l 12(a6),a4				*	move.l 12(%fp),%a4	| argv, ivtmp.161
	addq.l #4,a4					*	addq.l #4,%a4	|, ivtmp.161
							*| main.c:748:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| main.c:740:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L31,a5				*	move.l #.L31,%a5	|, tmp1020
_?L46:							*.L46:
							*| main.c:749:     if (argv[i][0] == '-') {
	move.l (a4)+,a0					*	move.l (%a4)+,%a0	| MEM[(char * *)_68], _4
							*| main.c:749:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L121					*	jne .L121		|
							*| main.c:750:       if (argv[i][1] == 'c') {
	move.b 1(a0),d1					*	move.b 1(%a0),%d1	| MEM[(char *)_4 + 1B], _6
							*| main.c:750:       if (argv[i][1] == 'c') {
	cmp.b #99,d1					*	cmp.b #99,%d1	|, _6
	jbne _?L28					*	jne .L28		|
							*| main.c:751:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L27:							*.L27:
							*| main.c:748:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| main.c:748:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L46					*	jne .L46		|
							*| main.c:807:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L47					*	jne .L47		|
							*| main.c:808:     printf("error: no input file.\n");
	pea _?LC22					*	pea .LC22		|
	jbra _?L175					*	jra .L175		|
_?L28:							*.L28:
	move.b d1,d0					*	move.b %d1,%d0	| _6, tmp334
	add.b #-98,d0					*	add.b #-98,%d0	|, tmp334
	cmp.b #21,d0					*	cmp.b #21,%d0	|, tmp334
	jbhi _?L29					*	jhi .L29		|
	and.l #255,d0					*	and.l #255,%d0	|, tmp335
	add.l d0,d0					*	add.l %d0,%d0	| tmp338
	move.w (a5,d0.l),d0				*	move.w (%a5,%d0.l),%d0	|, tmp339
	jmp 2(pc,d0.w)					*	jmp %pc@(2,%d0:w)	| tmp339
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&22
_?L31:							*.L31:
	.dc.w _?L41-_?L31				*	.word .L41-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L40-_?L31				*	.word .L40-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L39-_?L31				*	.word .L39-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L38-_?L31				*	.word .L38-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L37-_?L31				*	.word .L37-.L31
	.dc.w _?L36-_?L31				*	.word .L36-.L31
	.dc.w _?L35-_?L31				*	.word .L35-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L34-_?L31				*	.word .L34-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L33-_?L31				*	.word .L33-.L31
	.dc.w _?L32-_?L31				*	.word .L32-.L31
	.dc.w _?L30-_?L31				*	.word .L30-.L31
_?L39:							*.L39:
							*| main.c:753:         g_information_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_information_mode			*	move.l %d2,g_information_mode	|, g_information_mode
	jbra _?L27					*	jra .L27		|
_?L36:							*.L36:
							*| main.c:755:         g_centering_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_centering_mode			*	move.l %d0,g_centering_mode	|, g_centering_mode
	jbra _?L27					*	jra .L27		|
_?L38:							*.L38:
							*| main.c:757:         g_key_wait_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_key_wait_mode			*	move.l %d1,g_key_wait_mode	|, g_key_wait_mode
	jbra _?L27					*	jra .L27		|
_?L37:							*.L37:
							*| main.c:759:         g_memory_cache_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_memory_cache_mode			*	move.l %d2,g_memory_cache_mode	|, g_memory_cache_mode
	jbra _?L27					*	jra .L27		|
_?L33:							*.L33:
							*| main.c:761:         g_high_memory_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_high_memory_mode			*	move.l %d0,g_high_memory_mode	|, g_high_memory_mode
	jbra _?L27					*	jra .L27		|
_?L32:							*.L32:
							*| main.c:763:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:763:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp1021, g_brightness
	jbra _?L27					*	jra .L27		|
_?L34:							*.L34:
							*| main.c:765:         g_screen_mode = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:765:         g_screen_mode = atoi(argv[i]+2);
	move.l d0,_g_screen_mode			*	move.l %d0,g_screen_mode	| _10, g_screen_mode
							*| main.c:766:         if (g_screen_mode < 0 || g_screen_mode > 3) {
	lsr.l #2,d0					*	lsr.l #2,%d0	|, _10
	jbeq _?L27					*	jeq .L27		|
							*| main.c:767:           printf("error: unknown screen mode.\n");
	pea _?LC18					*	pea .LC18		|
_?L175:							*.L175:
							*| main.c:792:           printf("error: too large memory factor.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:793:           return 1;
	jbra _?L26					*	jra .L26		|
_?L40:							*.L40:
							*| main.c:771:         g_image_index_limit = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:771:         g_image_index_limit = atoi(argv[i]+2);
	move.l d0,_g_image_index_limit			*	move.l %d0,g_image_index_limit	| tmp1023, g_image_index_limit
	jbra _?L27					*	jra .L27		|
_?L30:							*.L30:
							*| main.c:773:         g_frame_rate = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:773:         g_frame_rate = atoi(argv[i]+2);
	move.l d0,_g_frame_rate				*	move.l %d0,g_frame_rate	| _15, g_frame_rate
							*| main.c:774:         if (g_frame_rate < 0 || g_frame_rate > 60) {
	moveq #60,d2					*	moveq #60,%d2	|,
	cmp.l d0,d2					*	cmp.l %d0,%d2	| _15,
	jbcc _?L27					*	jcc .L27		|
							*| main.c:775:           printf("error: incorrect frame rate.\n");
	pea _?LC19					*	pea .LC19		|
	jbra _?L175					*	jra .L175		|
_?L35:							*.L35:
							*| main.c:780:         strcpy(opt,argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strcpy					*	jsr strcpy		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:781:         char* c = strchr(opt,',');
	pea 44.w					*	pea 44.w		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strchr					*	jsr strchr		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,a3					*	move.l %d0,%a3	| tmp1025, c
							*| main.c:782:         if (c != NULL) {
	tst.l d0					*	tst.l %d0	| c
	jbeq _?L43					*	jeq .L43		|
							*| main.c:783:           *c = '\0';
	clr.b (a3)+					*	clr.b (%a3)+	| *c_77
							*| main.c:784:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
							*| main.c:784:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp1026, g_start_x
							*| main.c:785:           g_start_y = atoi(c+1);
	move.l a3,(sp)					*	move.l %a3,(%sp)	| tmp354,
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:785:           g_start_y = atoi(c+1);
	move.l d0,_g_start_y				*	move.l %d0,g_start_y	| tmp1027, g_start_y
	jbra _?L27					*	jra .L27		|
_?L43:							*.L43:
							*| main.c:787:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:787:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp1028, g_start_x
	jbra _?L27					*	jra .L27		|
_?L41:							*.L41:
							*| main.c:790:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:790:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _23, g_buffer_memory_size_factor
							*| main.c:791:         if (g_buffer_memory_size_factor > 16) {
	moveq #16,d1					*	moveq #16,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _23,
	jbge _?L27					*	jge .L27		|
							*| main.c:792:           printf("error: too large memory factor.\n");
	pea _?LC20					*	pea .LC20		|
	jbra _?L175					*	jra .L175		|
_?L29:							*.L29:
							*| main.c:795:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d1					*	cmp.b #104,%d1	|, _6
	jbne _?L44					*	jne .L44		|
							*| main.c:796:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L45:							*.L45:
							*| main.c:797:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L24:							*.L24:
							*| main.c:880: }
	movem.l -176(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -176(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L44:							*.L44:
							*| main.c:799:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC21					*	pea .LC21		|
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:800:         return 1;
	jbra _?L26					*	jra .L26		|
_?L121:							*.L121:
							*| main.c:749:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L27					*	jra .L27		|
_?L47:							*.L47:
							*| main.c:827:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.44_27
	move.l d0,d6					*	move.l %d0,%d6	| g_buffer_memory_size_factor.44_27, _28
	swap d6						*	swap %d6	| _28
	clr.w d6					*	clr.w %d6	| _28
							*| main.c:827:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d6,_g_input_buffer_size			*	move.l %d6,g_input_buffer_size	| _28, g_input_buffer_size
							*| main.c:830:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp363
	swap d0						*	swap %d0	| tmp363
	clr.w d0					*	clr.w %d0	| tmp363
							*| main.c:830:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp363, g_output_buffer_size
							*| main.c:833:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.46_42
	moveq #3,d2					*	moveq #3,%d2	|,
	cmp.l _g_screen_mode.l,d2			*	cmp.l g_screen_mode.l,%d2	| g_screen_mode,
	jbne _?L48					*	jne .L48		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.46_42
_?L48:							*.L48:
							*| main.c:833:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.46_42, g_actual_width
							*| main.c:834:   g_actual_height = g_screen_mode == 3 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.46_42, g_actual_height
							*| main.c:836:    if (g_information_mode == 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l _g_information_mode.l,d0			*	cmp.l g_information_mode.l,%d0	| g_information_mode,
	jbne _?L49					*	jne .L49		|
							*| main.c:622:     int file_buffer_ofs = 0;
	clr.l -114(a6)					*	clr.l -114(%fp)	| MEM[(int *)_290]
							*| main.c:628:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:628:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	tst.l d0					*	tst.l %d0	| tmp1030
	jbeq _?L50					*	jeq .L50		|
							*| main.c:629:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC23					*	pea .LC23		|
_?L176:							*.L176:
							*| main.c:636:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L166:							*.L166:
							*| main.c:706:       free__(file_buffer_ptr, g_high_memory_mode);
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:710:     return 0;
	jbra _?L45					*	jra .L45		|
_?L50:							*.L50:
							*| main.c:634:     fp = fopen(gif_file_name, "rb");
	pea _?LC24					*	pea .LC24		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp1031, fp
							*| main.c:635:     if (fp == NULL) {
	jbne _?L52					*	jne .L52		|
							*| main.c:636:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC25					*	pea .LC25		|
	jbra _?L176					*	jra .L176		|
_?L52:							*.L52:
							*| main.c:641:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp1032, file_buffer_ptr
	lea _fclose,a5					*	lea fclose,%a5	|, tmp1001
							*| main.c:642:     if (file_buffer_ptr == NULL) {
	jbne _?L53					*	jne .L53		|
							*| main.c:643:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC26					*	pea .LC26		|
	jbsr _puts					*	jsr puts		|
							*| main.c:644:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr (a5)					*	jsr (%a5)		| tmp1001
_?L165:							*.L165:
							*| main.c:877:   C_FNKMOD(func_key_display_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:879:   return 0;
	jbra _?L45					*	jra .L45		|
_?L53:							*.L53:
							*| main.c:649:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:650:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp1033
	jbgt _?L54					*	jgt .L54		|
							*| main.c:651:       printf("error: file read error.\n");
	pea _?LC27					*	pea .LC27		|
	jbsr _puts					*	jsr puts		|
							*| main.c:652:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
_?L164:							*.L164:
							*| main.c:700:       fclose(fp);
	jbsr (a5)					*	jsr (%a5)		| tmp1001
							*| main.c:706:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
	jbra _?L166					*	jra .L166		|
_?L54:							*.L54:
							*| main.c:658:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	lea (-114,a6),a4				*	lea (-114,%fp),%a4	|,, tmp376
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea (-98,a6),a3					*	lea (-98,%fp),%a3	|,, tmp377
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp377,
	lea _memcpy_buffer,a0				*	lea memcpy_buffer,%a0	|, tmp378
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp378
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:659:     header.signature[3] = '\0';
	clr.b -95(a6)					*	clr.b -95(%fp)	| MEM[(struct  *)_431].signature[3]
							*| main.c:660:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC28					*	pea .LC28		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp377,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp1003
							*| main.c:660:     if (strcmp(header.signature, "GIF") != 0 ) {
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp1034
	jbeq _?L55					*	jeq .L55		|
							*| main.c:661:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC29					*	pea .LC29		|
_?L163:							*.L163:
							*| main.c:696:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	jbsr (a3)					*	jsr (%a3)		| tmp1003
							*| main.c:700:       fclose(fp);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbra _?L164					*	jra .L164		|
_?L55:							*.L55:
							*| main.c:668:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	moveq #-94,d7					*	moveq #-94,%d7	|, tmp387
	add.l a6,d7					*	add.l %fp,%d7	|, tmp387
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp387,
	jbsr (a0)					*	jsr (%a0)		| tmp378
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:669:     header.version[3] = '\0';
	clr.b -91(a6)					*	clr.b -91(%fp)	| MEM[(struct  *)_431].version[3]
							*| main.c:670:     if (strcmp(header.version, "89a") != 0 ) {
	pea _?LC30					*	pea .LC30		|
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp387,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:670:     if (strcmp(header.version, "89a") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1035
	jbeq _?L56					*	jeq .L56		|
							*| main.c:671:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp387,
	pea _?LC31					*	pea .LC31		|
	jbra _?L163					*	jra .L163		|
_?L56:							*.L56:
							*| main.c:678:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a0			*	lea get_ushort_buffer,%a0	|, tmp399
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp399
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:678:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-90(a6)				*	move.w %d0,-90(%fp)	| tmp1036, MEM[(struct  *)_431].screen_width
							*| main.c:679:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	jbsr (a0)					*	jsr (%a0)		| tmp399
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:679:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-88(a6)				*	move.w %d0,-88(%fp)	| tmp1037, MEM[(struct  *)_431].screen_height
							*| main.c:680:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:680:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-86(a6)				*	move.b %d0,-86(%fp)	| tmp1038, MEM[(struct  *)_431].flag_code
							*| main.c:681:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:681:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-85(a6)				*	move.b %d0,-85(%fp)	| tmp1039, MEM[(struct  *)_431].bg_color_index
							*| main.c:682:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp376,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:682:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-84(a6)				*	move.b %d0,-84(%fp)	| tmp1040, MEM[(struct  *)_431].aspect_ratio
							*| main.c:685:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC32					*	pea .LC32		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
							*| main.c:686:     printf("     file size: %d\n", inf.filelen);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| MEM[(struct FILBUF *)_288].filelen,
	pea _?LC33					*	pea .LC33		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:687:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| MEM[(struct FILBUF *)_288].time, _122
							*| main.c:687:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| MEM[(struct FILBUF *)_288].date, _130
							*| main.c:687:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _122,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _122, tmp412
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp412
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp412,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d2					*	moveq #11,%d2	|,
	lsr.w d2,d1					*	lsr.w %d2,%d1	|, tmp415
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d1,d5					*	and.l %d1,%d5	| tmp415,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #31,d1					*	moveq #31,%d1	|,
	and.l d0,d1					*	and.l %d0,%d1	| _130,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _130, tmp419
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp419
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp419,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
							*| main.c:687:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #9,d5					*	moveq #9,%d5	|,
	lsr.w d5,d0					*	lsr.w %d5,%d0	|, tmp422
							*| main.c:687:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp423
	move.l d0,d1					*	move.l %d0,%d1	|,
	and.l #4095,d1					*	and.l #4095,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC34					*	pea .LC34		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
							*| main.c:688:     printf("   GIF version: %s\n", header.version);
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	move.l d7,(sp)					*	move.l %d7,(%sp)	| tmp387,
	pea _?LC35					*	pea .LC35		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:689:     printf("  screen width: %d\n", header.screen_width);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_431].screen_width
	move.w -90(a6),d0				*	move.w -90(%fp),%d0	| MEM[(struct  *)_431].screen_width, MEM[(struct  *)_431].screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_431].screen_width,
	pea _?LC36					*	pea .LC36		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:690:     printf(" screen height: %d\n", header.screen_height);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_431].screen_height
	move.w -88(a6),d0				*	move.w -88(%fp),%d0	| MEM[(struct  *)_431].screen_height, MEM[(struct  *)_431].screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_431].screen_height,
	pea _?LC37					*	pea .LC37		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:691:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_431].flag_code
	move.b -86(a6),d0				*	move.b -86(%fp),%d0	| MEM[(struct  *)_431].flag_code, MEM[(struct  *)_431].flag_code
							*| main.c:70:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #4,d0					*	asr.l #4,%d0	|, tmp434
							*| main.c:691:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp438
	move.l d0,a0					*	move.l %d0,%a0	| tmp438,
	pea 1(a0)					*	pea 1(%a0)		|
	pea _?LC38					*	pea .LC38		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:692:     printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
	move.l #_?LC17,d0				*	move.l #.LC17,%d0	|, iftmp.61_153
	tst.b -86(a6)					*	tst.b -86(%fp)	| MEM[(struct  *)_431].flag_code
	jbpl _?L57					*	jpl .L57		|
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.61_153
_?L57:							*.L57:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.61_153,
	pea _?LC39					*	pea .LC39		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:70:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	moveq #0,d1					*	moveq #0,%d1	| _155
	move.b -86(a6),d1				*	move.b -86(%fp),%d1	| MEM[(struct  *)_431].flag_code, _155
							*| main.c:693:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC17,d0				*	move.l #.LC17,%d0	|, iftmp.62_160
	tst.b -86(a6)					*	tst.b -86(%fp)	| MEM[(struct  *)_431].flag_code
	jbpl _?L58					*	jpl .L58		|
							*| main.c:693:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.w d1,ccr					*	move.w %d1,%ccr	| _155
	jbpl _?L58					*	jpl .L58		|
							*| main.c:693:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.62_160
_?L58:							*.L58:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.62_160,
	pea _?LC40					*	pea .LC40		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:694:     printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
	move.b -86(a6),d0				*	move.b -86(%fp),%d0	| MEM[(struct  *)_431].flag_code, tmp447
	and.b #7,d0					*	and.b #7,%d0	|, tmp447
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp449
	move.l d0,a0					*	move.l %d0,%a0	| tmp449, tmp451
	add.l d0,a0					*	add.l %d0,%a0	| tmp449, tmp451
	pea (a0,d0.l)					*	pea (%a0,%d0.l)		|
	pea _?LC41					*	pea .LC41		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:695:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_431].bg_color_index
	move.b -85(a6),d0				*	move.b -85(%fp),%d0	| MEM[(struct  *)_431].bg_color_index, MEM[(struct  *)_431].bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_431].bg_color_index,
	pea _?LC42					*	pea .LC42		|
	jbsr (a3)					*	jsr (%a3)		| tmp1003
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:696:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_431].aspect_ratio
	move.b -84(a6),d0				*	move.b -84(%fp),%d0	| MEM[(struct  *)_431].aspect_ratio, MEM[(struct  *)_431].aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_431].aspect_ratio,
	pea _?LC43					*	pea .LC43		|
	jbra _?L163					*	jra .L163		|
_?L49:							*.L49:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _609
							*| main.c:78:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.155
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.148
							*| main.c:79:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	lea _g_rgb555_r,a5				*	lea g_rgb555_r,%a5	|, tmp467
							*| main.c:80:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	lea _g_rgb555_g,a4				*	lea g_rgb555_g,%a4	|, tmp469
							*| main.c:81:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	lea _g_rgb555_b,a3				*	lea g_rgb555_b,%a3	|, tmp471
_?L60:							*.L60:
							*| main.c:78:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.148,
	jbsr ___divsi3					*	jsr __divsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:78:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp466
							*| main.c:79:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp468
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp468
							*| main.c:79:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp468
	move.w d1,(a5,d4.l)				*	move.w %d1,(%a5,%d4.l)	| tmp468, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.155_608 * 1]
							*| main.c:80:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp470
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp470
							*| main.c:80:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp470
	move.w d1,(a4,d4.l)				*	move.w %d1,(%a4,%d4.l)	| tmp470, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.155_608 * 1]
							*| main.c:81:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp466, tmp472
							*| main.c:81:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp472
	move.w d0,(a3,d4.l)				*	move.w %d0,(%a3,%d4.l)	| tmp472, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.155_608 * 1]
							*| main.c:77:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _609, ivtmp.148
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.155
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.155
	jbne _?L60					*	jne .L60		|
							*| main.c:845:   if (g_clear_screen) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L61					*	jeq .L61		|
							*| main.c:846:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L61:							*.L61:
							*| main.c:850:   SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr _SUPER					*	jsr SUPER		|
							*| main.c:853:   initialize_screen(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_screen				*	jsr initialize_screen		|
							*| main.c:856:   initialize_palette(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_palette			*	jsr initialize_palette		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:859:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| main.c:862:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	move.l d0,-122(a6)				*	move.l %d0,-122(%fp)	| tmp1042, %sfp
							*| main.c:863:   C_FNKMOD(3);
	moveq #3,d0					*	moveq #3,%d0	|,
	move.l d0,(sp)					*	move.l %d0,(%sp)	|,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
							*| main.c:161:     int file_buffer_size = g_input_buffer_size;
	move.l _g_input_buffer_size,d6			*	move.l g_input_buffer_size,%d6	| g_input_buffer_size, file_buffer_size
							*| main.c:162:     int file_buffer_ofs = 0;
	clr.l -118(a6)					*	clr.l -118(%fp)	| file_buffer_ofs
							*| main.c:173:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	moveq #35,d1					*	moveq #35,%d1	|,
	move.l d1,(sp)					*	move.l %d1,(%sp)	|,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:173:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	tst.l d0					*	tst.l %d0	| tmp1043
	jbeq _?L62					*	jeq .L62		|
							*| main.c:174:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC23					*	pea .LC23		|
_?L172:							*.L172:
							*| main.c:181:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L173:							*.L173:
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L63:							*.L63:
							*| main.c:869:   if (g_screen_mode == SCREEN_MODE_384x256) {
	tst.l _g_screen_mode				*	tst.l g_screen_mode	| g_screen_mode
	jbne _?L120					*	jne .L120		|
							*| main.c:870:     initialize_screen(SCREEN_MODE_512x512);
	pea 1.w						*	pea 1.w		|
	jbsr _initialize_screen				*	jsr initialize_screen		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L120:							*.L120:
							*| main.c:874:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| main.c:877:   C_FNKMOD(func_key_display_mode);
	move.l -122(a6),-(sp)				*	move.l -122(%fp),-(%sp)	| %sfp,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	jbra _?L165					*	jra .L165		|
_?L62:							*.L62:
							*| main.c:179:     fp = fopen(gif_file_name, "rb");
	pea _?LC24					*	pea .LC24		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp1044, fp
							*| main.c:180:     if (fp == NULL) {
	jbne _?L64					*	jne .L64		|
							*| main.c:181:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC25					*	pea .LC25		|
	jbra _?L172					*	jra .L172		|
_?L64:							*.L64:
							*| main.c:186:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp1045, file_buffer_ptr
							*| main.c:187:     if (file_buffer_ptr == NULL) {
	jbne _?L65					*	jne .L65		|
							*| main.c:188:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC26					*	pea .LC26		|
_?L174:							*.L174:
							*| main.c:246:       printf("error: cannot allocate memory for decode buffer.\n");
	jbsr _puts					*	jsr puts		|
							*| main.c:247:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:248:       return -1;
	jbra _?L63					*	jra .L63		|
_?L65:							*.L65:
							*| main.c:194:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:195:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp1046
	jbgt _?L66					*	jgt .L66		|
							*| main.c:196:       printf("error: file read error.\n");
	pea _?LC27					*	pea .LC27		|
	jbsr _puts					*	jsr puts		|
							*| main.c:197:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
_?L177:							*.L177:
							*| main.c:217:       fclose(fp);
	jbsr _fclose					*	jsr fclose		|
							*| main.c:218:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
	jbra _?L173					*	jra .L173		|
_?L66:							*.L66:
							*| main.c:203:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -114(a6)					*	pea -114(%fp)		|
	move.l #_memcpy_buffer,d7			*	move.l #memcpy_buffer,%d7	|, tmp494
	move.l d7,a0					*	move.l %d7,%a0	| tmp494,
	jbsr (a0)					*	jsr (%a0)		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:204:     header.signature[3] = '\0';
	clr.b -111(a6)					*	clr.b -111(%fp)	| MEM[(struct  *)_290].signature[3]
							*| main.c:205:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC28					*	pea .LC28		|
	pea -114(a6)					*	pea -114(%fp)		|
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:205:     if (strcmp(header.signature, "GIF") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1047
	jbeq _?L67					*	jeq .L67		|
							*| main.c:206:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC29					*	pea .LC29		|
_?L178:							*.L178:
							*| main.c:216:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
							*| main.c:217:       fclose(fp);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbra _?L177					*	jra .L177		|
_?L67:							*.L67:
							*| main.c:213:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	moveq #-110,d5					*	moveq #-110,%d5	|, tmp503
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	move.l d7,a2					*	move.l %d7,%a2	| tmp494,
	jbsr (a2)					*	jsr (%a2)		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:214:     header.version[3] = '\0';
	clr.b -107(a6)					*	clr.b -107(%fp)	| MEM[(struct  *)_290].version[3]
							*| main.c:215:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC30					*	pea .LC30		|
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-130(a6)				*	move.l %d0,-130(%fp)	| tmp1048, %sfp
							*| main.c:215:     if (strcmp(header.version,"89a") != 0 ) {
	jbeq _?L68					*	jeq .L68		|
							*| main.c:216:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	pea _?LC31					*	pea .LC31		|
	jbra _?L178					*	jra .L178		|
_?L68:							*.L68:
							*| main.c:223:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:223:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-106(a6)				*	move.w %d0,-106(%fp)	| tmp1049, MEM[(struct  *)_290].screen_width
							*| main.c:224:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:224:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-104(a6)				*	move.w %d0,-104(%fp)	| tmp1050, MEM[(struct  *)_290].screen_height
							*| main.c:225:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:225:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-102(a6)				*	move.b %d0,-102(%fp)	| tmp1051, MEM[(struct  *)_290].flag_code
							*| main.c:226:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:226:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-101(a6)				*	move.b %d0,-101(%fp)	| tmp1052, MEM[(struct  *)_290].bg_color_index
							*| main.c:227:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:227:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-100(a6)				*	move.b %d0,-100(%fp)	| tmp1053, MEM[(struct  *)_290].aspect_ratio
							*| main.c:230:     if (read_bits(header.flag_code,7,1)) {
	move.b -102(a6),d0				*	move.b -102(%fp),%d0	| MEM[(struct  *)_290].flag_code, _203
							*| main.c:230:     if (read_bits(header.flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _203
	jbmi _?L69					*	jmi .L69		|
_?L73:							*.L73:
							*| main.c:244:     decode_buffer_ptr = malloc__(g_output_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l _g_output_buffer_size,-(sp)		*	move.l g_output_buffer_size,-(%sp)	| g_output_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-134(a6)				*	move.l %d0,-134(%fp)	| tmp1054, %sfp
							*| main.c:245:     if (decode_buffer_ptr == NULL) {
	jbeq _?L70					*	jeq .L70		|
							*| main.c:166:     int image_frame_index = 0;
	moveq #0,d5					*	moveq #0,%d5	| image_frame_index
_?L71:							*.L71:
							*| main.c:255:       unsigned char block_type = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	lea (-118,a6),a3				*	lea (-118,%fp),%a3	|,, tmp550
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp551
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:257:       if (block_type == GIF_TRAILOR) {
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbeq _?L74					*	jeq .L74		|
							*| main.c:266:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L75					*	jne .L75		|
							*| main.c:274:         image_frame->bg_color_index = header.bg_color_index;
	move.l d5,d7					*	move.l %d5,%d7	| image_frame_index, tmp554
	lsl.l #4,d7					*	lsl.l #4,%d7	|, tmp554
	move.l d7,d0					*	move.l %d7,%d0	| tmp554, tmp555
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp555
	add.l d0,d0					*	add.l %d0,%d0	| tmp555, tmp556
	add.l d0,d0					*	add.l %d0,%d0	| tmp556, tmp557
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp558
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp559
	move.l d0,a5					*	move.l %d0,%a5	| tmp559, tmp560
	add.l #_g_image_frames,a5			*	add.l #g_image_frames,%a5	|, tmp560
							*| main.c:274:         image_frame->bg_color_index = header.bg_color_index;
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_290].bg_color_index
	move.b -101(a6),d0				*	move.b -101(%fp),%d0	| MEM[(struct  *)_290].bg_color_index, MEM[(struct  *)_290].bg_color_index
	move.l d0,4(a5)					*	move.l %d0,4(%a5)	| MEM[(struct  *)_290].bg_color_index, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].bg_color_index
							*| main.c:275:         image_frame->global_color_table_ptr = g_global_color_table;
	move.l #_g_global_color_table,8(a5)		*	move.l #g_global_color_table,8(%a5)	|, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].global_color_table_ptr
							*| main.c:286:         image_block->separator     = block_type;
	move.b #44,20(a5)				*	move.b #44,20(%a5)	|, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.separator
							*| main.c:287:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:287:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,22(a5)				*	move.w %d0,22(%a5)	| tmp1059, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.left_position
							*| main.c:288:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:288:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,24(a5)				*	move.w %d0,24(%a5)	| tmp1060, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.top_position
							*| main.c:289:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:289:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,26(a5)				*	move.w %d0,26(%a5)	| tmp1061, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.width
							*| main.c:290:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:290:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,28(a5)				*	move.w %d0,28(%a5)	| tmp1062, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.height
							*| main.c:291:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:291:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,30(a5)				*	move.b %d0,30(%a5)	| _236, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.flag_code
							*| main.c:294:         if (image_frame_index == 0) {
	tst.l d5					*	tst.l %d5	| image_frame_index
	jbne _?L77					*	jne .L77		|
							*| main.c:295:           if (g_centering_mode) {
	tst.l _g_centering_mode				*	tst.l g_centering_mode	| g_centering_mode
	jbeq _?L77					*	jeq .L77		|
							*| main.c:296:             if (g_screen_mode == 0) {
	move.l _g_screen_mode,d1			*	move.l g_screen_mode,%d1	| g_screen_mode, g_screen_mode.75_238
							*| main.c:296:             if (g_screen_mode == 0) {
	jbne _?L79					*	jne .L79		|
							*| main.c:297:               g_start_x = (384 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:297:               g_start_x = (384 - image_block->width) / 2;
	move.l #384,d1					*	move.l #384,%d1	|, tmp645
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp645
							*| main.c:297:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp645, tmp647
	jbpl _?L179					*	jpl .L179		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp647
_?L179:							*.L179:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp648
							*| main.c:297:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp648, g_start_x
							*| main.c:298:               g_start_y = (256 - image_block->height) / 2;
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:298:               g_start_y = (256 - image_block->height) / 2;
	move.l #256,d1					*	move.l #256,%d1	|, tmp651
_?L167:							*.L167:
							*| main.c:304:               g_start_y = (512 - image_block->height) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, tmp676
							*| main.c:304:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp676, tmp678
	jbpl _?L180					*	jpl .L180		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp678
_?L180:							*.L180:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp679
							*| main.c:304:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,_g_start_y				*	move.l %d1,g_start_y	| tmp679, g_start_y
_?L80:							*.L80:
							*| main.c:306:             if (g_start_x < 0) g_start_x = 0;
	tst.l _g_start_x				*	tst.l g_start_x	| g_start_x
	jbge _?L82					*	jge .L82		|
							*| main.c:306:             if (g_start_x < 0) g_start_x = 0;
	clr.l _g_start_x				*	clr.l g_start_x	| g_start_x
_?L82:							*.L82:
							*| main.c:307:             if (g_start_y < 0) g_start_y = 0;
	tst.l _g_start_y				*	tst.l g_start_y	| g_start_y
	jbge _?L77					*	jge .L77		|
							*| main.c:307:             if (g_start_y < 0) g_start_y = 0;
	clr.l _g_start_y				*	clr.l g_start_y	| g_start_y
_?L77:							*.L77:
							*| main.c:312:         if (read_bits(image_block->flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _236
	jbmi _?L83					*	jmi .L83		|
_?L86:							*.L86:
							*| main.c:323:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:323:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d5,d7					*	move.l %d5,%d7	| image_frame_index, tmp686
	lsl.l #4,d7					*	lsl.l #4,%d7	|, tmp686
	move.l d7,d1					*	move.l %d7,%d1	| tmp686, tmp687
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp687
	add.l d1,d1					*	add.l %d1,%d1	| tmp687, tmp688
	add.l d1,d1					*	add.l %d1,%d1	| tmp688, tmp689
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp690
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp691
	move.l d1,a0					*	move.l %d1,%a0	| tmp691, tmp692
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp692
	move.b d0,31(a0)				*	move.b %d0,31(%a0)	| _286, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.lzw_min_code_size
							*| main.c:326:         pixel_count = (image_block->width) * (image_block->height);
	move.w 26(a0),d1				*	move.w 26(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.width,
	mulu.w 28(a0),d1				*	mulu.w 28(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_228].image_block.height,
	move.l d1,-126(a6)				*	move.l %d1,-126(%fp)	|, %sfp
							*| main.c:329:         initialize_lzw(&lzw, image_block->lzw_min_code_size);
	and.l #255,d0					*	and.l #255,%d0	|, _286
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _286,
	pea -98(a6)					*	pea -98(%fp)		|
	jbsr _initialize_lzw				*	jsr initialize_lzw		|
							*| main.c:331:         sub_block_data2 = malloc__(1024*1024,g_high_memory_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l #1048576,-(sp)				*	move.l #1048576,-(%sp)	|,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,a3					*	move.l %d0,%a3	| tmp1065, sub_block_data2
							*| main.c:283:         int sub_block_ofs2 = 0;
	sub.l a4,a4					*	sub.l %a4,%a4	| sub_block_ofs2
							*| main.c:336:           unsigned char sub_block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (-118,a6),a5				*	lea (-118,%fp),%a5	|,, tmp746
_?L84:							*.L84:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp746,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:338:           if (sub_block_size == 0) {
	tst.b d0					*	tst.b %d0	| sub_block_size
	jbne _?L87					*	jne .L87		|
							*| main.c:357:         decode_buffer_ofs = decode_lzw(&lzw,sub_block_data2,sub_block_ofs2,decode_buffer_ptr,pixel_count);
	move.l -126(a6),-(sp)				*	move.l -126(%fp),-(%sp)	| %sfp,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| sub_block_ofs2,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| sub_block_data2,
	pea -98(a6)					*	pea -98(%fp)		|
	jbsr _decode_lzw				*	jsr decode_lzw		|
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d0,a4					*	move.l %d0,%a4	| tmp1070, decode_buffer_ofs
							*| main.c:359:         if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbne _?L88					*	jne .L88		|
							*| main.c:383:           image_frame->frame_data_ptr = decode_buffer_ptr;
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp783
	add.l d7,d7					*	add.l %d7,%d7	| tmp783, tmp784
	add.l d7,d7					*	add.l %d7,%d7	| tmp784, tmp785
	move.l d7,d0					*	move.l %d7,%d0	| tmp785, tmp786
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp786
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp787
	move.l d0,a0					*	move.l %d0,%a0	| tmp787, tmp788
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp788
	lea (548,a0),a5					*	lea (548,%a0),%a5	|, tmp788, tmp789
	move.l -134(a6),(a5)				*	move.l -134(%fp),(%a5)	| %sfp, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].frame_data_ptr
							*| main.c:384:           image_frame->frame_data_size = decode_buffer_ofs;
	move.l a4,544(a0)				*	move.l %a4,544(%a0)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].frame_data_size
							*| main.c:386:           output_image(image_frame);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| tmp788,
	jbsr _output_image				*	jsr output_image		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:388:           image_frame->frame_data_ptr = NULL;
	clr.l (a5)					*	clr.l (%a5)	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].frame_data_ptr
	jbra _?L92					*	jra .L92		|
_?L69:							*.L69:
	lea _g_global_color_table,a0			*	lea g_global_color_table,%a0	|, ivtmp.142
							*| main.c:231:       int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp528
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp529
	moveq #2,d1					*	moveq #2,%d1	|, tmp531
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp529, tmp530
	add.l a0,d1					*	add.l %a0,%d1	| ivtmp.142, tmp530
	move.l d1,-134(a6)				*	move.l %d1,-134(%fp)	| tmp530, %sfp
_?L72:							*.L72:
							*| main.c:233:         unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d7					*	move.b %d0,%d7	| tmp1055, r
							*| main.c:234:         unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d5					*	move.b %d0,%d5	| tmp1056, g
							*| main.c:235:         unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:236:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d7					*	and.l #255,%d7	|, r
	add.l d7,d7					*	add.l %d7,%d7	| r, tmp540
							*| main.c:236:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, g
	add.l d5,d5					*	add.l %d5,%d5	| g, tmp543
							*| main.c:236:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.w (a5,d7.l),d1				*	move.w (%a5,%d7.l),%d1	| g_rgb555_r[_213], tmp544
	or.w (a4,d5.l),d1				*	or.w (%a4,%d5.l),%d1	| g_rgb555_g[_215], tmp544
							*| main.c:236:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp547
							*| main.c:236:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	or.w (a3,d0.l),d1				*	or.w (%a3,%d0.l),%d1	| g_rgb555_b[_218], tmp544
	move.w d1,(a0)+					*	move.w %d1,(%a0)+	| tmp544, MEM[(short unsigned int *)_620]
							*| main.c:232:       for (int i = 0; i < gct_size; i++) {
	cmp.l -134(a6),a0				*	cmp.l -134(%fp),%a0	| %sfp, ivtmp.142
	jbne _?L72					*	jne .L72		|
	jbra _?L73					*	jra .L73		|
_?L70:							*.L70:
							*| main.c:246:       printf("error: cannot allocate memory for decode buffer.\n");
	pea _?LC44					*	pea .LC44		|
	jbra _?L174					*	jra .L174		|
_?L79:							*.L79:
							*| main.c:299:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	move.l d1,a0					*	move.l %d1,%a0	| g_screen_mode.75_238, tmp655
	subq.l #1,a0					*	subq.l #1,%a0	|, tmp655
							*| main.c:299:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	moveq #1,d2					*	moveq #1,%d2	|,
	cmp.l a0,d2					*	cmp.l %a0,%d2	| tmp655,
	jbcs _?L81					*	jcs .L81		|
							*| main.c:300:               g_start_x = (512 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:300:               g_start_x = (512 - image_block->width) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp658
_?L168:							*.L168:
							*| main.c:303:               g_start_x = (768 - image_block->width) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp670
							*| main.c:303:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp670, tmp672
	jbpl _?L181					*	jpl .L181		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp672
_?L181:							*.L181:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp673
							*| main.c:303:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp673, g_start_x
							*| main.c:304:               g_start_y = (512 - image_block->height) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:304:               g_start_y = (512 - image_block->height) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp676
	jbra _?L167					*	jra .L167		|
_?L81:							*.L81:
							*| main.c:302:             } else if (g_screen_mode == 3) {
	subq.l #3,d1					*	subq.l #3,%d1	|, g_screen_mode.75_238
	jbne _?L80					*	jne .L80		|
							*| main.c:303:               g_start_x = (768 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:303:               g_start_x = (768 - image_block->width) / 2;
	move.l #768,d1					*	move.l #768,%d1	|, tmp670
	jbra _?L168					*	jra .L168		|
_?L83:							*.L83:
							*| main.c:313:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp719
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp720
							*| main.c:313:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #1,d1					*	moveq #1,%d1	|, tmp721
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp720, tmp721
	move.l d1,-126(a6)				*	move.l %d1,-126(%fp)	| tmp721, %sfp
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp724
	add.l d7,d7					*	add.l %d7,%d7	| tmp724, tmp725
	add.l d7,d7					*	add.l %d7,%d7	| tmp725, tmp726
	move.l d7,d0					*	move.l %d7,%d0	| tmp726, tmp727
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp727
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp728
	move.l d0,a0					*	move.l %d0,%a0	| tmp728, ivtmp.138
	add.l #_g_image_frames+32,a0			*	add.l #g_image_frames+32,%a0	|, ivtmp.138
							*| main.c:314:           for (int i = 0; i < lct_size; i++) {
	clr.l -142(a6)					*	clr.l -142(%fp)	| %sfp
							*| main.c:315:             unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (-118,a6),a5				*	lea (-118,%fp),%a5	|,, tmp730
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp731
_?L85:							*.L85:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp730,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a4)					*	jsr (%a4)		| tmp731
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.w d0,a3					*	move.w %d0,%a3	| tmp1066, r
							*| main.c:316:             unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp730,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp731
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d7					*	move.b %d0,%d7	| tmp1067, g
							*| main.c:317:             unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp730,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp731
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:318:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	move.w a3,d1					*	move.w %a3,%d1	| r,
	and.l #255,d1					*	and.l #255,%d1	|,
	move.l d1,a3					*	move.l %d1,%a3	|, r
	add.l d1,a3					*	add.l %d1,%a3	| r, tmp738
							*| main.c:318:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d7					*	and.l #255,%d7	|, g
	add.l d7,d7					*	add.l %d7,%d7	| g, tmp741
							*| main.c:318:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_r,a2				*	lea g_rgb555_r,%a2	|,
	move.w (a3,a2.l),a1				*	move.w (%a3,%a2.l),%a1	| g_rgb555_r[_276], tmp742
	lea _g_rgb555_g,a2				*	lea g_rgb555_g,%a2	|,
	add.w (a2,d7.l),a1				*	add.w (%a2,%d7.l),%a1	| g_rgb555_g[_278], tmp742
							*| main.c:318:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp745
							*| main.c:318:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_b,a2				*	lea g_rgb555_b,%a2	|, tmp743
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	add.w (a2,d0.l),a1				*	add.w (%a2,%d0.l),%a1	| g_rgb555_b[_281], tmp742
	move.w a1,(a0)+					*	move.w %a1,(%a0)+	| tmp742, MEM <short unsigned int> [(struct GIF_IMAGE_FRAME *)_623]
							*| main.c:314:           for (int i = 0; i < lct_size; i++) {
	addq.l #1,-142(a6)				*	addq.l #1,-142(%fp)	|, %sfp
							*| main.c:314:           for (int i = 0; i < lct_size; i++) {
	move.l -126(a6),d1				*	move.l -126(%fp),%d1	| %sfp,
	cmp.l -142(a6),d1				*	cmp.l -142(%fp),%d1	| %sfp,
	jbne _?L85					*	jne .L85		|
	jbra _?L86					*	jra .L86		|
_?L87:							*.L87:
							*| main.c:351:             memcpy_buffer(sub_block_data2 + sub_block_ofs2, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, sub_block_size, fp);
	and.l #255,d0					*	and.l #255,%d0	|, _296
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _296,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp746,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea (a3,a4.l)					*	pea (%a3,%a4.l)		|
	move.l d0,-138(a6)				*	move.l %d0,-138(%fp)	|,
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:352:             sub_block_ofs2 += sub_block_size;
	move.l -138(a6),d0				*	move.l -138(%fp),%d0	|,
	add.l d0,a4					*	add.l %d0,%a4	| _296, sub_block_ofs2
	jbra _?L84					*	jra .L84		|
_?L88:							*.L88:
							*| main.c:363:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| decode_buffer_ofs,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:363:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	move.l d5,d1					*	move.l %d5,%d1	| image_frame_index, tmp756
	lsl.l #4,d1					*	lsl.l #4,%d1	|, tmp756
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp757
	add.l d1,d1					*	add.l %d1,%d1	| tmp757, tmp758
	add.l d1,d1					*	add.l %d1,%d1	| tmp758, tmp759
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp760
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp761
	move.l d1,a5					*	move.l %d1,%a5	| tmp761, tmp762
	add.l #_g_image_frames,a5			*	add.l #g_image_frames,%a5	|, tmp762
	move.l d0,548(a5)				*	move.l %d0,548(%a5)	| _307, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].frame_data_ptr
							*| main.c:363:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	jbne _?L90					*	jne .L90		|
							*| main.c:364:             printf("error: memory allocation failure (errno=%d).\n",errno);
	move.l _errno,d0				*	move.l errno,%d0	| errno, errno.86_308
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| errno.86_308,
	pea _?LC45					*	pea .LC45		|
_?L169:							*.L169:
							*| main.c:522:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:524:         break;
	jbra _?L74					*	jra .L74		|
_?L90:							*.L90:
							*| main.c:369:           memcpy(image_frame->frame_data_ptr,decode_buffer_ptr,size);
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| decode_buffer_ofs,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _307,
	jbsr _memcpy					*	jsr memcpy		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:370:           image_frame->frame_data_size = size;
	move.l a4,544(a5)				*	move.l %a4,544(%a5)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_228].frame_data_size
_?L92:							*.L92:
							*| main.c:392:         free__(sub_block_data2, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| sub_block_data2,
	jbsr _free__					*	jsr free__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:397:         image_frame_index++;
	addq.l #1,d5					*	addq.l #1,%d5	|, image_frame_index
							*| main.c:398:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l _g_image_index_limit.l,d5			*	cmp.l g_image_index_limit.l,%d5	| g_image_index_limit, image_frame_index
	jbge _?L74					*	jge .L74		|
							*| main.c:402:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	move.l _g_memory_cache_mode,d0			*	move.l g_memory_cache_mode,%d0	| g_memory_cache_mode, pretmp_369
							*| main.c:398:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l #1023,d5					*	cmp.l #1023,%d5	|, image_frame_index
	jbgt _?L74					*	jgt .L74		|
							*| main.c:402:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| pretmp_369
	jbeq _?L71					*	jeq .L71		|
	pea 30.w					*	pea 30.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| image_frame_index,
	jbsr ___modsi3					*	jsr __modsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:402:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1072
	jbne _?L71					*	jne .L71		|
							*| main.c:403:           putchar('.');
	pea 46.w					*	pea 46.w		|
	jbsr _putchar					*	jsr putchar		|
							*| main.c:404:           fflush(stdout);
	move.l #__iob+26,(sp)				*	move.l #_iob+26,(%sp)	|,
	jbsr _fflush					*	jsr fflush		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L71					*	jra .L71		|
_?L75:							*.L75:
							*| main.c:407:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L95					*	jne .L95		|
							*| main.c:409:         unsigned char extension_label = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:411:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L96					*	jne .L96		|
							*| main.c:419:           graphic_ctrl_ext->introducer  = block_type;
	lea _g_image_frames,a5				*	lea g_image_frames,%a5	|, tmp835
	move.l d5,d0					*	move.l %d5,%d0	| image_frame_index, tmp837
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp837
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp838
	add.l d0,d0					*	add.l %d0,%d0	| tmp838, tmp839
	add.l d0,d0					*	add.l %d0,%d0	| tmp839, tmp840
	move.l d0,d7					*	move.l %d0,%d7	| tmp840, tmp841
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp841
	lsl.l #3,d7					*	lsl.l #3,%d7	|, tmp842
	move.w #8697,12(a5,d7.l)			*	move.w #8697,12(%a5,%d7.l)	|, MEM <unsigned short> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)_269 + 12B]
							*| main.c:422:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:422:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	add.l d7,a5					*	add.l %d7,%a5	| tmp842, tmp853
	move.b d0,14(a5)				*	move.b %d0,14(%a5)	| tmp1074, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_228].graphic_ctrl_ext.block_size
							*| main.c:423:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:423:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,15(a5)				*	move.b %d0,15(%a5)	| tmp1075, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_228].graphic_ctrl_ext.flag_code
							*| main.c:424:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:424:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,16(a5)				*	move.w %d0,16(%a5)	| tmp1076, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_228].graphic_ctrl_ext.delay_time
							*| main.c:425:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:425:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,18(a5)				*	move.b %d0,18(%a5)	| tmp1077, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_228].graphic_ctrl_ext.transparent_index
							*| main.c:428:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:428:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,19(a5)				*	move.b %d0,19(%a5)	| _319, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_228].graphic_ctrl_ext.terminator
							*| main.c:429:           if (graphic_ctrl_ext->terminator != 0x00) {
	jbeq _?L71					*	jeq .L71		|
							*| main.c:430:             printf("error: graphic control extension read error.\n");
	pea _?LC46					*	pea .LC46		|
_?L170:							*.L170:
							*| main.c:452:             printf("error: comment extension read error.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L74:							*.L74:
							*| main.c:531:     if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbeq _?L103					*	jeq .L103		|
							*| main.c:533:       int delay_time = g_image_frames[0].graphic_ctrl_ext.delay_time;
	move.w _g_image_frames+16,d0			*	move.w g_image_frames+16,%d0	| g_image_frames[0].graphic_ctrl_ext.delay_time, _335
							*| main.c:536:       if (g_frame_rate > 0) {
	move.l _g_frame_rate,d1				*	move.l g_frame_rate,%d1	| g_frame_rate, g_frame_rate.92_337
							*| main.c:536:       if (g_frame_rate > 0) {
	jble _?L104					*	jle .L104		|
							*| main.c:537:         vsync_count = 60 / g_frame_rate;
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_frame_rate.92_337,
	pea 60.w					*	pea 60.w		|
	jbsr ___divsi3					*	jsr __divsi3		|
_?L171:							*.L171:
							*| main.c:539:         vsync_count = (int)(1000 / (60 * delay_time));
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L105:							*.L105:
							*| main.c:542:       g_max_frame_index = image_frame_index;
	move.l d5,_g_max_frame_index			*	move.l %d5,g_max_frame_index	| image_frame_index, g_max_frame_index
							*| main.c:543:       g_current_frame_index = 0;
	moveq #0,d2					*	moveq #0,%d2	|
	move.l d2,_g_current_frame_index		*	move.l %d2,g_current_frame_index	|, g_current_frame_index
_?L106:							*.L106:
							*| main.c:545:       WAIT_VBLANK;
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _342
	btst #4,d1					*	btst #4,%d1	|, _342
	jbne _?L106					*	jne .L106		|
_?L107:							*.L107:
							*| main.c:546:       WAIT_VSYNC;
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _344
	btst #4,d1					*	btst #4,%d1	|, _344
	jbeq _?L107					*	jeq .L107		|
							*| main.c:548:       if (VDISPST((unsigned char*)output_image_vdisp, 0, vsync_count) == 0) {
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| vsync_count,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _output_image_vdisp				*	pea output_image_vdisp		|
	lea _VDISPST,a3					*	lea VDISPST,%a3	|, tmp976
	jbsr (a3)					*	jsr (%a3)		| tmp976
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:548:       if (VDISPST((unsigned char*)output_image_vdisp, 0, vsync_count) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1088
	jbne _?L108					*	jne .L108		|
							*| main.c:551: 	      while (INPOUT(0xFF) == 0) {
	lea _INPOUT,a4					*	lea INPOUT,%a4	|, tmp977
_?L109:							*.L109:
	pea 255.w					*	pea 255.w		|
	jbsr (a4)					*	jsr (%a4)		| tmp977
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:551: 	      while (INPOUT(0xFF) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1089
	jbeq _?L109					*	jeq .L109		|
_?L110:							*.L110:
							*| main.c:555:         WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _349
	btst #4,d0					*	btst #4,%d0	|, _349
	jbne _?L110					*	jne .L110		|
_?L111:							*.L111:
							*| main.c:556:         WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _351
	btst #4,d0					*	btst #4,%d0	|, _351
	jbeq _?L111					*	jeq .L111		|
							*| main.c:558:         VDISPST(0, 0, 0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr (a3)					*	jsr (%a3)		| tmp976
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L113:							*.L113:
							*| main.c:564:       WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _353
	btst #4,d0					*	btst #4,%d0	|, _353
	jbeq _?L113					*	jeq .L113		|
_?L114:							*.L114:
							*| main.c:565:       WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _355
	btst #4,d0					*	btst #4,%d0	|, _355
	jbne _?L114					*	jne .L114		|
_?L116:							*.L116:
							*| main.c:582:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| main.c:588:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _free__,a3					*	lea free__,%a3	|, tmp989
	jbsr (a3)					*	jsr (%a3)		| tmp989
							*| main.c:594:         free__(decode_buffer_ptr, g_high_memory_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp989
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea _g_image_frames+548,a4			*	lea g_image_frames+548,%a4	|, ivtmp.131
_?L115:							*.L115:
							*| main.c:599:     for (int i = 0; i < image_frame_index; i++) {
	cmp.l -130(a6),d5				*	cmp.l -130(%fp),%d5	| %sfp, image_frame_index
	jble _?L63					*	jle .L63		|
							*| main.c:600:         if (g_image_frames[i].frame_data_ptr != NULL) {
	move.l (a4),d0					*	move.l (%a4),%d0	| MEM[(unsigned char * *)_632], _362
							*| main.c:600:         if (g_image_frames[i].frame_data_ptr != NULL) {
	jbeq _?L118					*	jeq .L118		|
							*| main.c:601:             free__(g_image_frames[i].frame_data_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _362,
	jbsr (a3)					*	jsr (%a3)		| tmp1006
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:602:             g_image_frames[i].frame_data_ptr = NULL;
	clr.l (a4)					*	clr.l (%a4)	| MEM[(unsigned char * *)_632]
_?L118:							*.L118:
							*| main.c:599:     for (int i = 0; i < image_frame_index; i++) {
	addq.l #1,-130(a6)				*	addq.l #1,-130(%fp)	|, %sfp
	lea (552,a4),a4					*	lea (552,%a4),%a4	|, ivtmp.131
	jbra _?L115					*	jra .L115		|
_?L96:							*.L96:
							*| main.c:435:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L98					*	jne .L98		|
							*| main.c:446:           comment_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
							*| main.c:447:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, comment_ext.block_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _320
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _320,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:450:           comment_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:451:           if (comment_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1080
	jbeq _?L71					*	jeq .L71		|
							*| main.c:452:             printf("error: comment extension read error.\n");
	pea _?LC47					*	pea .LC47		|
	jbra _?L170					*	jra .L170		|
_?L98:							*.L98:
							*| main.c:457:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L100					*	jne .L100		|
							*| main.c:468:           plain_text_ext.block_size              = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
							*| main.c:469:           plain_text_ext.text_grid_left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a5			*	lea get_ushort_buffer,%a5	|, tmp915
	jbsr (a5)					*	jsr (%a5)		| tmp915
							*| main.c:470:           plain_text_ext.text_grid_top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp915
							*| main.c:471:           plain_text_ext.text_grid_width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp915
							*| main.c:472:           plain_text_ext.text_grid_height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp915
							*| main.c:473:           plain_text_ext.character_cell_width    = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
							*| main.c:474:           plain_text_ext.character_cell_height   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
							*| main.c:476:           plain_text_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
							*| main.c:477:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, plain_text_ext.block_size2, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _323
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _323,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:479:           plain_text_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:480:           if (plain_text_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1082
	jbeq _?L71					*	jeq .L71		|
							*| main.c:481:             printf("error: plain text extension read error.\n");
	pea _?LC48					*	pea .LC48		|
	jbra _?L170					*	jra .L170		|
_?L100:							*.L100:
							*| main.c:486:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L101					*	jne .L101		|
							*| main.c:494:           app_ext.introducer = block_type;
	move.w #8703,-98(a6)				*	move.w #8703,-98(%fp)	|, MEM <unsigned short> [(unsigned char *)_431]
							*| main.c:497:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:497:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-96(a6)				*	move.b %d0,-96(%fp)	| tmp1083, MEM[(struct  *)_431].block_size
							*| main.c:499:           memcpy_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 8, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 8.w						*	pea 8.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -95(a6)					*	pea -95(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:500:           memcpy_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -87(a6)					*	pea -87(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:502:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:502:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-84(a6)				*	move.b %d0,-84(%fp)	| _327, MEM[(struct  *)_431].block_size2
							*| main.c:503:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, app_ext.block_size2, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _327
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _327,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:505:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp550,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp551
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:505:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-78(a6)				*	move.b %d0,-78(%fp)	| _329, MEM[(struct  *)_431].terminator
							*| main.c:506:           if (app_ext.terminator != 0x00) {
	jbeq _?L71					*	jeq .L71		|
							*| main.c:507:             printf("error: application extension read error.\n");
	pea _?LC49					*	pea .LC49		|
	jbra _?L170					*	jra .L170		|
_?L101:							*.L101:
							*| main.c:514:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC50					*	pea .LC50		|
	jbra _?L169					*	jra .L169		|
_?L95:							*.L95:
							*| main.c:522:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC51					*	pea .LC51		|
	jbra _?L169					*	jra .L169		|
_?L104:							*.L104:
							*| main.c:538:       } else if (delay_time > 0) {
	tst.w d0					*	tst.w %d0	| _335
	jbeq _?L126					*	jeq .L126		|
							*| main.c:539:         vsync_count = (int)(1000 / (60 * delay_time));
	mulu.w #60,d0					*	mulu.w #60,%d0	|,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	|,
	pea 1000.w					*	pea 1000.w		|
	jbsr ___divsi3					*	jsr __divsi3		|
	jbra _?L171					*	jra .L171		|
_?L126:							*.L126:
							*| main.c:534:       int vsync_count = 1;
	moveq #1,d0					*	moveq #1,%d0	|, vsync_count
	jbra _?L105					*	jra .L105		|
_?L108:							*.L108:
							*| main.c:561:         printf("error: cannot use vsync interrupt.\n");
	pea _?LC52					*	pea .LC52		|
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L113					*	jra .L113		|
_?L103:							*.L103:
							*| main.c:569:       if (g_key_wait_mode) {
	tst.l _g_key_wait_mode				*	tst.l g_key_wait_mode	| g_key_wait_mode
	jbeq _?L116					*	jeq .L116		|
							*| main.c:572: 	      while (INPOUT(0xFF) == 0) {
	lea _INPOUT,a3					*	lea INPOUT,%a3	|, tmp991
_?L117:							*.L117:
	pea 255.w					*	pea 255.w		|
	jbsr (a3)					*	jsr (%a3)		| tmp991
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:572: 	      while (INPOUT(0xFF) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1090
	jbeq _?L117					*	jeq .L117		|
	jbra _?L116					*	jra .L116		|
							*	.size	main, .-main
							*	.local	opt.0
	.comm	_opt?0,64				*	.comm	opt.0,64,1
	.globl	_g_current_frame_index			*	.globl	g_current_frame_index
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_current_frame_index, @object
							*	.size	g_current_frame_index, 4
_g_current_frame_index:					*g_current_frame_index:
	.ds.b	4					*	.zero	4
	.globl	_g_max_frame_index			*	.globl	g_max_frame_index
	.align	2					*	.align	2
							*	.type	g_max_frame_index, @object
							*	.size	g_max_frame_index, 4
_g_max_frame_index:					*g_max_frame_index:
	.ds.b	4					*	.zero	4
	.globl	_g_image_frames				*	.globl	g_image_frames
	.align	2					*	.align	2
							*	.type	g_image_frames, @object
							*	.size	g_image_frames, 565248
_g_image_frames:					*g_image_frames:
	.ds.b	565248					*	.zero	565248
	.globl	_g_global_color_table			*	.globl	g_global_color_table
	.align	2					*	.align	2
							*	.type	g_global_color_table, @object
							*	.size	g_global_color_table, 512
_g_global_color_table:					*g_global_color_table:
	.ds.b	512					*	.zero	512
	.globl	_g_rgb555_b				*	.globl	g_rgb555_b
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
	.globl	_g_frame_rate				*	.globl	g_frame_rate
	.align	2					*	.align	2
							*	.type	g_frame_rate, @object
							*	.size	g_frame_rate, 4
_g_frame_rate:						*g_frame_rate:
	.dc.l	-1					*	.long	-1
	.globl	_g_image_index_limit			*	.globl	g_image_index_limit
	.align	2					*	.align	2
							*	.type	g_image_index_limit, @object
							*	.size	g_image_index_limit, 4
_g_image_index_limit:					*g_image_index_limit:
	.dc.l	1024					*	.long	1024
	.globl	_g_screen_mode				*	.globl	g_screen_mode
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_screen_mode, @object
							*	.size	g_screen_mode, 4
_g_screen_mode:						*g_screen_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_high_memory_mode			*	.globl	g_high_memory_mode
	.align	2					*	.align	2
							*	.type	g_high_memory_mode, @object
							*	.size	g_high_memory_mode, 4
_g_high_memory_mode:					*g_high_memory_mode:
	.ds.b	4					*	.zero	4
	.globl	_g_memory_cache_mode			*	.globl	g_memory_cache_mode
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
	.globl	_g_key_wait_mode			*	.globl	g_key_wait_mode
	.bss						*	.section	.bss
	.align	2					*	.align	2
							*	.type	g_key_wait_mode, @object
							*	.size	g_key_wait_mode, 4
_g_key_wait_mode:					*g_key_wait_mode:
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
	.globl	_g_clear_screen				*	.globl	g_clear_screen
	.align	2					*	.align	2
							*	.type	g_clear_screen, @object
							*	.size	g_clear_screen, 4
_g_clear_screen:					*g_clear_screen:
	.ds.b	4					*	.zero	4
							*	.ident	"GCC: (GNU) 12.2.0"
