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
	.dc.b $73,$69,$6f,$6e,$20,$30,$2e,$34
	.dc.b $2e,$30,$20,$62,$79,$20,$74,$61
	.dc.b $6e,$74,$61,$6e,$20,$32,$30,$32
	.dc.b $33
	.dc.b $00					*	.string	"GIFEX - GIF image loader with XEiJ graphic extension support version 0.4.0 by tantan 2023"
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
							*| main.c:768:   printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2023\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:769:   printf("usage: gifex.x [options] <image.gif>\n");
	move.l #_?LC1,(sp)				*	move.l #.LC1,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:770:   printf("options:\n");
	move.l #_?LC2,(sp)				*	move.l #.LC2,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:771:   printf("   -b<n> ... buffer memory size factor[1-32] (default:8)\n");
	move.l #_?LC3,(sp)				*	move.l #.LC3,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:772:   printf("   -c ... clear graphic screen\n");
	move.l #_?LC4,(sp)				*	move.l #.LC4,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:773:   printf("   -f<n> ... max number of frames (default:no limit)\n");
	move.l #_?LC5,(sp)				*	move.l #.LC5,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:774:   printf("   -h ... show this help message\n");
	move.l #_?LC6,(sp)				*	move.l #.LC6,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:775:   printf("   -i ... show file information\n");
	move.l #_?LC7,(sp)				*	move.l #.LC7,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:776:   printf("   -k ... wait key input\n");
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:777:   printf("   -m ... memory cache mode\n");
	move.l #_?LC9,(sp)				*	move.l #.LC9,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:778:   printf("   -n ... image centering\n");
	move.l #_?LC10,(sp)				*	move.l #.LC10,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:779:   printf("   -o<x,y> ... display offset position\n");
	move.l #_?LC11,(sp)				*	move.l #.LC11,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:780:   printf("   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512, 3:768x512(full - XEiJ only)\n");
	move.l #_?LC12,(sp)				*	move.l #.LC12,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:781:   printf("   -u ... use high memory\n");
	move.l #_?LC13,(sp)				*	move.l #.LC13,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:782:   printf("   -v<n> ... brightness (0-100)\n");
	move.l #_?LC14,(sp)				*	move.l #.LC14,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:783:   printf("   -w<n> ... frame rate (0:no wait, n:n frames/sec, default:auto)\n");
	move.l #_?LC15,(sp)				*	move.l #.LC15,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:784: }
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
							*| main.c:90:   unsigned char* buffer = image_frame->frame_data_ptr;
	move.l 548(a3),d7				*	move.l 548(%a3),%d7	| image_frame_57(D)->frame_data_ptr, buffer
							*| main.c:91:   unsigned char* buffer_end = buffer + image_frame->frame_data_size;
	move.l d7,d2					*	move.l %d7,%d2	| buffer,
	add.l 544(a3),d2				*	add.l 544(%a3),%d2	| image_frame_57(D)->frame_data_size,
	move.l d2,48(sp)				*	move.l %d2,48(%sp)	|, %sfp
							*| main.c:92:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l 8(a3),a4					*	move.l 8(%a3),%a4	| image_frame_57(D)->global_color_table_ptr, global_palette
							*| main.c:96:   int width = image_block->width, height = image_block->height;
	moveq #0,d2					*	moveq #0,%d2	|
	move.w 26(a3),d2				*	move.w 26(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].width,
	move.l d2,52(sp)				*	move.l %d2,52(%sp)	|, %sfp
							*| main.c:96:   int width = image_block->width, height = image_block->height;
	move.w 28(a3),d2				*	move.w 28(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].height,
	move.l d2,56(sp)				*	move.l %d2,56(%sp)	|, %sfp
							*| main.c:97:   int offset_x = g_start_x + image_block->left_position;
	moveq #0,d3					*	moveq #0,%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].left_position
	move.w 22(a3),d3				*	move.w 22(%a3),%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].left_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].left_position
							*| main.c:97:   int offset_x = g_start_x + image_block->left_position;
	add.l _g_start_x,d3				*	add.l g_start_x,%d3	| g_start_x, offset_x
							*| main.c:98:   int offset_y = g_start_y + image_block->top_position;
	moveq #0,d4					*	moveq #0,%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].top_position
	move.w 24(a3),d4				*	move.w 24(%a3),%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].top_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].top_position
							*| main.c:98:   int offset_y = g_start_y + image_block->top_position;
	add.l _g_start_y,d4				*	add.l g_start_y,%d4	| g_start_y, offset_y
							*| main.c:100:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	btst #0,30(a3)					*	btst #0,30(%a3)	|, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_57(D) + 20B].flag_code
	jbeq _?L16					*	jeq .L16		|
							*| main.c:100:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	lea (32,a3),a5					*	lea (32,%a3),%a5	|, image_frame, iftmp.2_50
_?L3:							*.L3:
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	btst #0,15(a3)					*	btst #0,15(%a3)	|, MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_57(D) + 12B].flag_code
	jbeq _?L17					*	jeq .L17		|
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #0,d6					*	moveq #0,%d6	| iftmp.3_51
	move.b 18(a3),d6				*	move.b 18(%a3),%d6	| MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_57(D) + 12B].transparent_index, iftmp.3_51
_?L4:							*.L4:
							*| main.c:107:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l _g_actual_width,d5			*	move.l g_actual_width,%d5	| g_actual_width, g_actual_width.4_18
	lea ___mulsi3,a6				*	lea __mulsi3,%a6	|, tmp93
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| offset_y,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	jbsr (a6)					*	jsr (%a6)		| tmp93
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:107:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp109, tmp95
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp95
	add.l a0,a0					*	add.l %a0,%a0	| tmp95, tmp96
							*| main.c:107:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	add.l #12582912,a0				*	add.l #12582912,%a0	|, gvram
							*| main.c:130:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	move.l _g_actual_height,44(sp)			*	move.l g_actual_height,44(%sp)	| g_actual_height, %sfp
							*| main.c:99:   int x = 0, y = 0;
	sub.l a1,a1					*	sub.l %a1,%a1	| y
							*| main.c:99:   int x = 0, y = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
_?L5:							*.L5:
							*| main.c:109:   while (buffer < buffer_end) {
	cmp.l 48(sp),d7					*	cmp.l 48(%sp),%d7	| %sfp, buffer
	jbcc _?L14					*	jcc .L14		|
							*| main.c:111:     unsigned char palette_code = *buffer++;
	addq.l #1,d7					*	addq.l #1,%d7	|, buffer
							*| main.c:113:     if ((offset_x + x) < g_actual_width) {
	move.l d1,d0					*	move.l %d1,%d0	| x, tmp97
	add.l d3,d0					*	add.l %d3,%d0	| offset_x, tmp97
							*| main.c:113:     if ((offset_x + x) < g_actual_width) {
	cmp.l d5,d0					*	cmp.l %d5,%d0	| g_actual_width.4_18, tmp97
	jbge _?L6					*	jge .L6		|
							*| main.c:111:     unsigned char palette_code = *buffer++;
	move.l d7,a2					*	move.l %d7,%a2	| buffer,
	move.b -1(a2),d0				*	move.b -1(%a2),%d0	| MEM[(unsigned char *)buffer_70 + 4294967295B], palette_code
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	lea (2,a0),a2					*	lea (2,%a0),%a2	|, gvram,
	move.l a2,36(sp)				*	move.l %a2,36(%sp)	|, %sfp
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #-1,d2					*	moveq #-1,%d2	|,
	cmp.l d6,d2					*	cmp.l %d6,%d2	| iftmp.3_51,
	jbeq _?L7					*	jeq .L7		|
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #0,d2					*	moveq #0,%d2	|
	move.b d0,d2					*	move.b %d0,%d2	| palette_code,
	move.l d2,a2					*	move.l %d2,%a2	|, palette_code
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	cmp.l a2,d6					*	cmp.l %a2,%d6	| palette_code, iftmp.3_51
	jbeq _?L8					*	jeq .L8		|
_?L7:							*.L7:
							*| main.c:115:         *gvram++ = palette[ palette_code ];
	and.l #255,d0					*	and.l #255,%d0	|, palette_code
	add.l d0,d0					*	add.l %d0,%d0	| palette_code, tmp101
							*| main.c:115:         *gvram++ = palette[ palette_code ];
	move.w (a5,d0.l),(a0)				*	move.w (%a5,%d0.l),(%a0)	| *_28, *gvram_49
_?L9:							*.L9:
							*| main.c:115:         *gvram++ = palette[ palette_code ];
	move.l 36(sp),a0				*	move.l 36(%sp),%a0	| %sfp, gvram
_?L6:							*.L6:
							*| main.c:124:     x++;
	addq.l #1,d1					*	addq.l #1,%d1	|, x
							*| main.c:127:     if (x >= width) {
	cmp.l 52(sp),d1					*	cmp.l 52(%sp),%d1	| %sfp, x
	jblt _?L5					*	jlt .L5		|
							*| main.c:129:       if (++y >= height) break;
	addq.l #1,a1					*	addq.l #1,%a1	|, y
	cmp.l 56(sp),a1					*	cmp.l 56(%sp),%a1	| %sfp, y
	jblt _?L11					*	jlt .L11		|
_?L14:							*.L14:
							*| main.c:136:   if (++g_current_frame_index >= g_max_frame_index) {
	move.l _g_current_frame_index,d0		*	move.l g_current_frame_index,%d0	| g_current_frame_index, g_current_frame_index.14_42
	addq.l #1,d0					*	addq.l #1,%d0	|, _43
							*| main.c:136:   if (++g_current_frame_index >= g_max_frame_index) {
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	| _43, g_current_frame_index
	cmp.l _g_max_frame_index.l,d0			*	cmp.l g_max_frame_index.l,%d0	| g_max_frame_index, _43
	jbge _?L12					*	jge .L12		|
_?L2:							*.L2:
							*| main.c:139: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	rts						*	rts
_?L16:							*.L16:
							*| main.c:92:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l a4,a5					*	move.l %a4,%a5	| global_palette, iftmp.2_50
	jbra _?L3					*	jra .L3		|
_?L17:							*.L17:
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #-1,d6					*	moveq #-1,%d6	|, iftmp.3_51
	jbra _?L4					*	jra .L4		|
_?L8:							*.L8:
							*| main.c:116:       } else if (g_current_frame_index == 0 && palette_code == transparent_index && global_palette != NULL) {
	move.l _g_current_frame_index,d0		*	move.l g_current_frame_index,%d0	| g_current_frame_index, g_current_frame_index.9_30
							*| main.c:116:       } else if (g_current_frame_index == 0 && palette_code == transparent_index && global_palette != NULL) {
	jbne _?L9					*	jne .L9		|
							*| main.c:116:       } else if (g_current_frame_index == 0 && palette_code == transparent_index && global_palette != NULL) {
	cmp.w #0,a4					*	cmp.w #0,%a4	|, global_palette
	jbeq _?L9					*	jeq .L9		|
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.l 4(a3),d0					*	move.l 4(%a3),%d0	| image_frame_57(D)->bg_color_index, tmp103
	add.l d0,d0					*	add.l %d0,%d0	|, tmp103
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.w (a4,d0.l),(a0)				*	move.w (%a4,%d0.l),(%a0)	| *_34, *gvram_49
	jbra _?L9					*	jra .L9		|
_?L11:							*.L11:
							*| main.c:130:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	move.l d4,d0					*	move.l %d4,%d0	| offset_y, _36
	add.l a1,d0					*	add.l %a1,%d0	| y, _36
							*| main.c:130:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	cmp.l 44(sp),d0					*	cmp.l 44(%sp),%d0	| %sfp, _36
	jbge _?L14					*	jge .L14		|
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _36,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	move.l a1,48(sp)				*	move.l %a1,48(%sp)	|,
	jbsr (a6)					*	jsr (%a6)		| tmp93
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp110, tmp106
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp106
	add.l a0,a0					*	add.l %a0,%a0	| tmp106, tmp107
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	add.l #12582912,a0				*	add.l #12582912,%a0	|, gvram
							*| main.c:128:       x = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
	move.l 40(sp),a1				*	move.l 40(%sp),%a1	|,
	jbra _?L5					*	jra .L5		|
_?L12:							*.L12:
							*| main.c:137:     g_current_frame_index = 0;
	moveq #0,d0					*	moveq #0,%d0	|
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	|, g_current_frame_index
							*| main.c:139: }
	jbra _?L2					*	jra .L2		|
							*	.size	output_image, .-output_image
	.align	2					*	.align	2
	.globl	_output_image_vdisp			*	.globl	output_image_vdisp
							*	.type	output_image_vdisp, @function
_output_image_vdisp:					*output_image_vdisp:
	movem.l d0/d1/d2/a0/a1/a2,-(sp)			*	movem.l #57568,-(%sp)	|,
							*| main.c:145:   output_image(&g_image_frames[ g_current_frame_index ]);
	move.l _g_current_frame_index,d1		*	move.l g_current_frame_index,%d1	| g_current_frame_index, g_current_frame_index.16_1
							*| main.c:145:   output_image(&g_image_frames[ g_current_frame_index ]);
	move.l d1,d0					*	move.l %d1,%d0	| g_current_frame_index.16_1, tmp36
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp36
	add.l d1,d0					*	add.l %d1,%d0	| g_current_frame_index.16_1, tmp37
	add.l d0,d0					*	add.l %d0,%d0	| tmp37, tmp38
	add.l d0,d0					*	add.l %d0,%d0	| tmp38, tmp39
	add.l d0,d1					*	add.l %d0,%d1	| tmp39, tmp40
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp41
	add.l #_g_image_frames,d1			*	add.l #g_image_frames,%d1	|, tmp41
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| tmp41,
	jbsr _output_image				*	jsr output_image		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:146: }
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
	.dc.b $72,$20,$73,$75,$62,$20,$62,$6c
	.dc.b $6f,$63,$6b,$20,$62,$75,$66,$66
	.dc.b $65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for sub block buffer."
_?LC45:							*.LC45:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$64,$65,$63,$6f,$64,$65
	.dc.b $20,$62,$75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for decode buffer."
_?LC46:							*.LC46:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $75,$62,$20,$62,$6c,$6f,$63,$6b
	.dc.b $20,$62,$75,$66,$66,$65,$72,$20
	.dc.b $6d,$65,$6d,$6f,$72,$79,$20,$6f
	.dc.b $76,$65,$72,$66,$6c,$6f,$77,$2e
	.dc.b $00					*	.string	"error: sub block buffer memory overflow."
_?LC47:							*.LC47:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$68
	.dc.b $69,$67,$68,$20,$6d,$65,$6d,$6f
	.dc.b $72,$79,$20,$72,$65,$73,$69,$7a
	.dc.b $65,$20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: high memory resize error."
_?LC48:							*.LC48:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$69,$6f,$6e
	.dc.b $20,$66,$61,$69,$6c,$75,$72,$65
	.dc.b $20,$28,$65,$72,$72,$6e,$6f,$3d
	.dc.b $25,$64,$29,$2e,$0a
	.dc.b $00					*	.string	"error: memory allocation failure (errno=%d).\n"
	.globl	___udivsi3				*	.globl	__udivsi3
	.globl	___modsi3				*	.globl	__modsi3
_?LC49:							*.LC49:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$63
	.dc.b $6f,$6e,$74,$72,$6f,$6c,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: graphic control extension read error."
_?LC50:							*.LC50:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $6f,$6d,$6d,$65,$6e,$74,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: comment extension read error."
_?LC51:							*.LC51:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$70
	.dc.b $6c,$61,$69,$6e,$20,$74,$65,$78
	.dc.b $74,$20,$65,$78,$74,$65,$6e,$73
	.dc.b $69,$6f,$6e,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: plain text extension read error."
_?LC52:							*.LC52:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$61
	.dc.b $70,$70,$6c,$69,$63,$61,$74,$69
	.dc.b $6f,$6e,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e,$20,$72,$65,$61
	.dc.b $64,$20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: application extension read error."
_?LC53:							*.LC53:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC54:							*.LC54:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$62
	.dc.b $6c,$6f,$63,$6b,$20,$28,$30,$78
	.dc.b $25,$30,$32,$58,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown block (0x%02X).\n"
_?LC55:							*.LC55:
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
	link.w a6,#-128					*	link.w %fp,#-128	|,
	movem.l d3/d4/d5/d6/d7/a3/a4/a5,-(sp)		*	movem.l #7964,-(%sp)	|,
	move.l 8(a6),d4					*	move.l 8(%fp),%d4	| argc, argc
							*| main.c:794:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L26					*	jlt .L26		|
							*| main.c:795:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L27:							*.L27:
							*| main.c:796:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L25					*	jra .L25		|
_?L26:							*.L26:
	move.l 12(a6),a4				*	move.l 12(%fp),%a4	| argv, ivtmp.168
	addq.l #4,a4					*	addq.l #4,%a4	|, ivtmp.168
							*| main.c:799:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| main.c:791:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L32,a5				*	move.l #.L32,%a5	|, tmp1093
_?L47:							*.L47:
							*| main.c:800:     if (argv[i][0] == '-') {
	move.l (a4)+,a0					*	move.l (%a4)+,%a0	| MEM[(char * *)_711], _4
							*| main.c:800:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L141					*	jne .L141		|
							*| main.c:801:       if (argv[i][1] == 'c') {
	move.b 1(a0),d1					*	move.b 1(%a0),%d1	| MEM[(char *)_4 + 1B], _6
							*| main.c:801:       if (argv[i][1] == 'c') {
	cmp.b #99,d1					*	cmp.b #99,%d1	|, _6
	jbne _?L29					*	jne .L29		|
							*| main.c:802:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L28:							*.L28:
							*| main.c:799:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| main.c:799:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L47					*	jne .L47		|
							*| main.c:858:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L48					*	jne .L48		|
							*| main.c:859:     printf("error: no input file.\n");
	pea _?LC22					*	pea .LC22		|
	jbra _?L211					*	jra .L211		|
_?L29:							*.L29:
	move.b d1,d0					*	move.b %d1,%d0	| _6, tmp348
	add.b #-98,d0					*	add.b #-98,%d0	|, tmp348
	cmp.b #21,d0					*	cmp.b #21,%d0	|, tmp348
	jbhi _?L30					*	jhi .L30		|
	and.l #255,d0					*	and.l #255,%d0	|, tmp349
	add.l d0,d0					*	add.l %d0,%d0	| tmp352
	move.w (a5,d0.l),d0				*	move.w (%a5,%d0.l),%d0	|, tmp353
	jmp 2(pc,d0.w)					*	jmp %pc@(2,%d0:w)	| tmp353
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&22
_?L32:							*.L32:
	.dc.w _?L42-_?L32				*	.word .L42-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L41-_?L32				*	.word .L41-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L40-_?L32				*	.word .L40-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L39-_?L32				*	.word .L39-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L38-_?L32				*	.word .L38-.L32
	.dc.w _?L37-_?L32				*	.word .L37-.L32
	.dc.w _?L36-_?L32				*	.word .L36-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L35-_?L32				*	.word .L35-.L32
	.dc.w _?L30-_?L32				*	.word .L30-.L32
	.dc.w _?L34-_?L32				*	.word .L34-.L32
	.dc.w _?L33-_?L32				*	.word .L33-.L32
	.dc.w _?L31-_?L32				*	.word .L31-.L32
_?L40:							*.L40:
							*| main.c:804:         g_information_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_information_mode			*	move.l %d2,g_information_mode	|, g_information_mode
	jbra _?L28					*	jra .L28		|
_?L37:							*.L37:
							*| main.c:806:         g_centering_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_centering_mode			*	move.l %d0,g_centering_mode	|, g_centering_mode
	jbra _?L28					*	jra .L28		|
_?L39:							*.L39:
							*| main.c:808:         g_key_wait_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_key_wait_mode			*	move.l %d1,g_key_wait_mode	|, g_key_wait_mode
	jbra _?L28					*	jra .L28		|
_?L38:							*.L38:
							*| main.c:810:         g_memory_cache_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_memory_cache_mode			*	move.l %d2,g_memory_cache_mode	|, g_memory_cache_mode
	jbra _?L28					*	jra .L28		|
_?L34:							*.L34:
							*| main.c:812:         g_high_memory_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_high_memory_mode			*	move.l %d0,g_high_memory_mode	|, g_high_memory_mode
	jbra _?L28					*	jra .L28		|
_?L33:							*.L33:
							*| main.c:814:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:814:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp1094, g_brightness
	jbra _?L28					*	jra .L28		|
_?L35:							*.L35:
							*| main.c:816:         g_screen_mode = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:816:         g_screen_mode = atoi(argv[i]+2);
	move.l d0,_g_screen_mode			*	move.l %d0,g_screen_mode	| _10, g_screen_mode
							*| main.c:817:         if (g_screen_mode < 0 || g_screen_mode > 3) {
	lsr.l #2,d0					*	lsr.l #2,%d0	|, _10
	jbeq _?L28					*	jeq .L28		|
							*| main.c:818:           printf("error: unknown screen mode.\n");
	pea _?LC18					*	pea .LC18		|
_?L211:							*.L211:
							*| main.c:843:           printf("error: too large memory factor.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:844:           return 1;
	jbra _?L27					*	jra .L27		|
_?L41:							*.L41:
							*| main.c:822:         g_image_index_limit = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:822:         g_image_index_limit = atoi(argv[i]+2);
	move.l d0,_g_image_index_limit			*	move.l %d0,g_image_index_limit	| tmp1096, g_image_index_limit
	jbra _?L28					*	jra .L28		|
_?L31:							*.L31:
							*| main.c:824:         g_frame_rate = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:824:         g_frame_rate = atoi(argv[i]+2);
	move.l d0,_g_frame_rate				*	move.l %d0,g_frame_rate	| _15, g_frame_rate
							*| main.c:825:         if (g_frame_rate < 0 || g_frame_rate > 60) {
	moveq #60,d2					*	moveq #60,%d2	|,
	cmp.l d0,d2					*	cmp.l %d0,%d2	| _15,
	jbcc _?L28					*	jcc .L28		|
							*| main.c:826:           printf("error: incorrect frame rate.\n");
	pea _?LC19					*	pea .LC19		|
	jbra _?L211					*	jra .L211		|
_?L36:							*.L36:
							*| main.c:831:         strcpy(opt,argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strcpy					*	jsr strcpy		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:832:         char* c = strchr(opt,',');
	pea 44.w					*	pea 44.w		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strchr					*	jsr strchr		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,a3					*	move.l %d0,%a3	| tmp1098, c
							*| main.c:833:         if (c != NULL) {
	tst.l d0					*	tst.l %d0	| c
	jbeq _?L44					*	jeq .L44		|
							*| main.c:834:           *c = '\0';
	clr.b (a3)+					*	clr.b (%a3)+	| *c_77
							*| main.c:835:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
							*| main.c:835:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp1099, g_start_x
							*| main.c:836:           g_start_y = atoi(c+1);
	move.l a3,(sp)					*	move.l %a3,(%sp)	| tmp368,
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:836:           g_start_y = atoi(c+1);
	move.l d0,_g_start_y				*	move.l %d0,g_start_y	| tmp1100, g_start_y
	jbra _?L28					*	jra .L28		|
_?L44:							*.L44:
							*| main.c:838:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:838:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp1101, g_start_x
	jbra _?L28					*	jra .L28		|
_?L42:							*.L42:
							*| main.c:841:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:841:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _23, g_buffer_memory_size_factor
							*| main.c:842:         if (g_buffer_memory_size_factor > 16) {
	moveq #16,d1					*	moveq #16,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _23,
	jbge _?L28					*	jge .L28		|
							*| main.c:843:           printf("error: too large memory factor.\n");
	pea _?LC20					*	pea .LC20		|
	jbra _?L211					*	jra .L211		|
_?L30:							*.L30:
							*| main.c:846:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d1					*	cmp.b #104,%d1	|, _6
	jbne _?L45					*	jne .L45		|
							*| main.c:847:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L46:							*.L46:
							*| main.c:848:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L25:							*.L25:
							*| main.c:931: }
	movem.l -160(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -160(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L45:							*.L45:
							*| main.c:850:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC21					*	pea .LC21		|
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:851:         return 1;
	jbra _?L27					*	jra .L27		|
_?L141:							*.L141:
							*| main.c:800:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L28					*	jra .L28		|
_?L48:							*.L48:
							*| main.c:878:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.44_27
	move.l d0,d6					*	move.l %d0,%d6	| g_buffer_memory_size_factor.44_27, _28
	swap d6						*	swap %d6	| _28
	clr.w d6					*	clr.w %d6	| _28
							*| main.c:878:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d6,_g_input_buffer_size			*	move.l %d6,g_input_buffer_size	| _28, g_input_buffer_size
							*| main.c:881:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp377
	swap d0						*	swap %d0	| tmp377
	clr.w d0					*	clr.w %d0	| tmp377
							*| main.c:881:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp377, g_output_buffer_size
							*| main.c:884:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.46_42
	moveq #3,d2					*	moveq #3,%d2	|,
	cmp.l _g_screen_mode.l,d2			*	cmp.l g_screen_mode.l,%d2	| g_screen_mode,
	jbne _?L49					*	jne .L49		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.46_42
_?L49:							*.L49:
							*| main.c:884:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.46_42, g_actual_width
							*| main.c:885:   g_actual_height = g_screen_mode == 3 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.46_42, g_actual_height
							*| main.c:887:    if (g_information_mode == 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l _g_information_mode.l,d0			*	cmp.l g_information_mode.l,%d0	| g_information_mode,
	jbne _?L50					*	jne .L50		|
							*| main.c:673:     int file_buffer_ofs = 0;
	clr.l -92(a6)					*	clr.l -92(%fp)	| MEM[(int *)_294]
							*| main.c:679:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:679:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	tst.l d0					*	tst.l %d0	| tmp1103
	jbeq _?L51					*	jeq .L51		|
							*| main.c:680:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC23					*	pea .LC23		|
_?L212:							*.L212:
							*| main.c:687:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L201:							*.L201:
							*| main.c:757:       free__(file_buffer_ptr, g_high_memory_mode);
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:761:     return 0;
	jbra _?L46					*	jra .L46		|
_?L51:							*.L51:
							*| main.c:685:     fp = fopen(gif_file_name, "rb");
	pea _?LC24					*	pea .LC24		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp1104, fp
							*| main.c:686:     if (fp == NULL) {
	jbne _?L53					*	jne .L53		|
							*| main.c:687:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC25					*	pea .LC25		|
	jbra _?L212					*	jra .L212		|
_?L53:							*.L53:
							*| main.c:692:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp1105, file_buffer_ptr
	lea _fclose,a5					*	lea fclose,%a5	|, tmp1070
							*| main.c:693:     if (file_buffer_ptr == NULL) {
	jbne _?L54					*	jne .L54		|
							*| main.c:694:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC26					*	pea .LC26		|
	jbsr _puts					*	jsr puts		|
							*| main.c:695:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr (a5)					*	jsr (%a5)		| tmp1070
_?L200:							*.L200:
							*| main.c:928:   C_FNKMOD(func_key_display_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:930:   return 0;
	jbra _?L46					*	jra .L46		|
_?L54:							*.L54:
							*| main.c:700:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:701:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp1106
	jbgt _?L55					*	jgt .L55		|
							*| main.c:702:       printf("error: file read error.\n");
	pea _?LC27					*	pea .LC27		|
	jbsr _puts					*	jsr puts		|
							*| main.c:703:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
_?L199:							*.L199:
							*| main.c:751:       fclose(fp);
	jbsr (a5)					*	jsr (%a5)		| tmp1070
							*| main.c:757:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
	jbra _?L201					*	jra .L201		|
_?L55:							*.L55:
							*| main.c:709:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	lea (-92,a6),a4					*	lea (-92,%fp),%a4	|,, tmp390
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea (-76,a6),a3					*	lea (-76,%fp),%a3	|,, tmp391
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp391,
	lea _memcpy_buffer,a0				*	lea memcpy_buffer,%a0	|, tmp392
	move.l a0,-124(a6)				*	move.l %a0,-124(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp392
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:710:     header.signature[3] = '\0';
	clr.b -73(a6)					*	clr.b -73(%fp)	| MEM[(struct  *)_477].signature[3]
							*| main.c:711:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC28					*	pea .LC28		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp391,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp1072
							*| main.c:711:     if (strcmp(header.signature, "GIF") != 0 ) {
	move.l -124(a6),a0				*	move.l -124(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp1107
	jbeq _?L56					*	jeq .L56		|
							*| main.c:712:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC29					*	pea .LC29		|
_?L198:							*.L198:
							*| main.c:747:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	jbsr (a3)					*	jsr (%a3)		| tmp1072
							*| main.c:751:       fclose(fp);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbra _?L199					*	jra .L199		|
_?L56:							*.L56:
							*| main.c:719:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	moveq #-72,d7					*	moveq #-72,%d7	|, tmp401
	add.l a6,d7					*	add.l %fp,%d7	|, tmp401
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp401,
	jbsr (a0)					*	jsr (%a0)		| tmp392
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:720:     header.version[3] = '\0';
	clr.b -69(a6)					*	clr.b -69(%fp)	| MEM[(struct  *)_477].version[3]
							*| main.c:721:     if (strcmp(header.version, "89a") != 0 ) {
	pea _?LC30					*	pea .LC30		|
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp401,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:721:     if (strcmp(header.version, "89a") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1108
	jbeq _?L57					*	jeq .L57		|
							*| main.c:722:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp401,
	pea _?LC31					*	pea .LC31		|
	jbra _?L198					*	jra .L198		|
_?L57:							*.L57:
							*| main.c:729:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a0			*	lea get_ushort_buffer,%a0	|, tmp413
	move.l a0,-124(a6)				*	move.l %a0,-124(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp413
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:729:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-68(a6)				*	move.w %d0,-68(%fp)	| tmp1109, MEM[(struct  *)_477].screen_width
							*| main.c:730:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l -124(a6),a0				*	move.l -124(%fp),%a0	|,
	jbsr (a0)					*	jsr (%a0)		| tmp413
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:730:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-66(a6)				*	move.w %d0,-66(%fp)	| tmp1110, MEM[(struct  *)_477].screen_height
							*| main.c:731:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:731:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-64(a6)				*	move.b %d0,-64(%fp)	| tmp1111, MEM[(struct  *)_477].flag_code
							*| main.c:732:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:732:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-63(a6)				*	move.b %d0,-63(%fp)	| tmp1112, MEM[(struct  *)_477].bg_color_index
							*| main.c:733:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _28,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp390,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:733:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-62(a6)				*	move.b %d0,-62(%fp)	| tmp1113, MEM[(struct  *)_477].aspect_ratio
							*| main.c:736:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC32					*	pea .LC32		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
							*| main.c:737:     printf("     file size: %d\n", inf.filelen);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| MEM[(struct FILBUF *)_292].filelen,
	pea _?LC33					*	pea .LC33		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:738:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| MEM[(struct FILBUF *)_292].time, _122
							*| main.c:738:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| MEM[(struct FILBUF *)_292].date, _130
							*| main.c:738:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _122,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _122, tmp426
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp426
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp426,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d2					*	moveq #11,%d2	|,
	lsr.w d2,d1					*	lsr.w %d2,%d1	|, tmp429
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d1,d5					*	and.l %d1,%d5	| tmp429,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #31,d1					*	moveq #31,%d1	|,
	and.l d0,d1					*	and.l %d0,%d1	| _130,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _130, tmp433
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp433
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp433,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
							*| main.c:738:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #9,d5					*	moveq #9,%d5	|,
	lsr.w d5,d0					*	lsr.w %d5,%d0	|, tmp436
							*| main.c:738:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp437
	move.l d0,d1					*	move.l %d0,%d1	|,
	and.l #4095,d1					*	and.l #4095,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC34					*	pea .LC34		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
							*| main.c:739:     printf("   GIF version: %s\n", header.version);
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	move.l d7,(sp)					*	move.l %d7,(%sp)	| tmp401,
	pea _?LC35					*	pea .LC35		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:740:     printf("  screen width: %d\n", header.screen_width);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_477].screen_width
	move.w -68(a6),d0				*	move.w -68(%fp),%d0	| MEM[(struct  *)_477].screen_width, MEM[(struct  *)_477].screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_477].screen_width,
	pea _?LC36					*	pea .LC36		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:741:     printf(" screen height: %d\n", header.screen_height);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_477].screen_height
	move.w -66(a6),d0				*	move.w -66(%fp),%d0	| MEM[(struct  *)_477].screen_height, MEM[(struct  *)_477].screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_477].screen_height,
	pea _?LC37					*	pea .LC37		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:742:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_477].flag_code
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_477].flag_code, MEM[(struct  *)_477].flag_code
							*| main.c:69:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #4,d0					*	asr.l #4,%d0	|, tmp448
							*| main.c:742:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp452
	move.l d0,a0					*	move.l %d0,%a0	| tmp452,
	pea 1(a0)					*	pea 1(%a0)		|
	pea _?LC38					*	pea .LC38		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:743:     printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
	move.l #_?LC17,d0				*	move.l #.LC17,%d0	|, iftmp.61_153
	tst.b -64(a6)					*	tst.b -64(%fp)	| MEM[(struct  *)_477].flag_code
	jbpl _?L58					*	jpl .L58		|
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.61_153
_?L58:							*.L58:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.61_153,
	pea _?LC39					*	pea .LC39		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:69:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	moveq #0,d1					*	moveq #0,%d1	| _155
	move.b -64(a6),d1				*	move.b -64(%fp),%d1	| MEM[(struct  *)_477].flag_code, _155
							*| main.c:744:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC17,d0				*	move.l #.LC17,%d0	|, iftmp.62_160
	tst.b -64(a6)					*	tst.b -64(%fp)	| MEM[(struct  *)_477].flag_code
	jbpl _?L59					*	jpl .L59		|
							*| main.c:744:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.w d1,ccr					*	move.w %d1,%ccr	| _155
	jbpl _?L59					*	jpl .L59		|
							*| main.c:744:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.62_160
_?L59:							*.L59:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.62_160,
	pea _?LC40					*	pea .LC40		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:745:     printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
	move.b -64(a6),d0				*	move.b -64(%fp),%d0	| MEM[(struct  *)_477].flag_code, tmp461
	and.b #7,d0					*	and.b #7,%d0	|, tmp461
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp463
	move.l d0,a0					*	move.l %d0,%a0	| tmp463, tmp465
	add.l d0,a0					*	add.l %d0,%a0	| tmp463, tmp465
	pea (a0,d0.l)					*	pea (%a0,%d0.l)		|
	pea _?LC41					*	pea .LC41		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:746:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_477].bg_color_index
	move.b -63(a6),d0				*	move.b -63(%fp),%d0	| MEM[(struct  *)_477].bg_color_index, MEM[(struct  *)_477].bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_477].bg_color_index,
	pea _?LC42					*	pea .LC42		|
	jbsr (a3)					*	jsr (%a3)		| tmp1072
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:747:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_477].aspect_ratio
	move.b -62(a6),d0				*	move.b -62(%fp),%d0	| MEM[(struct  *)_477].aspect_ratio, MEM[(struct  *)_477].aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_477].aspect_ratio,
	pea _?LC43					*	pea .LC43		|
	jbra _?L198					*	jra .L198		|
_?L50:							*.L50:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _718
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.162
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.155
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)(((c & 0x1f) <<  6) + 1);
	lea _g_rgb555_r,a5				*	lea g_rgb555_r,%a5	|, tmp481
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)(((c & 0x1f) << 11) + 1);
	lea _g_rgb555_g,a4				*	lea g_rgb555_g,%a4	|, tmp484
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)(((c & 0x1f) <<  1) + 1);
	lea _g_rgb555_b,a3				*	lea g_rgb555_b,%a3	|, tmp486
_?L61:							*.L61:
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.155,
	jbsr ___divsi3					*	jsr __divsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp480
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)(((c & 0x1f) <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp482
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp482
	and.w #1984,d1					*	and.w #1984,%d1	|, tmp483
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)(((c & 0x1f) <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp483
	move.w d1,(a5,d4.l)				*	move.w %d1,(%a5,%d4.l)	| tmp483, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.162_717 * 1]
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)(((c & 0x1f) << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp485
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp485
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)(((c & 0x1f) << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp485
	move.w d1,(a4,d4.l)				*	move.w %d1,(%a4,%d4.l)	| tmp485, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.162_717 * 1]
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)(((c & 0x1f) <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp480, tmp487
	and.w #62,d0					*	and.w #62,%d0	|, tmp488
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)(((c & 0x1f) <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp488
	move.w d0,(a3,d4.l)				*	move.w %d0,(%a3,%d4.l)	| tmp488, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.162_717 * 1]
							*| main.c:76:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _718, ivtmp.155
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.162
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.162
	jbne _?L61					*	jne .L61		|
							*| main.c:896:   if (g_clear_screen) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L62					*	jeq .L62		|
							*| main.c:897:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L62:							*.L62:
							*| main.c:901:   SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr _SUPER					*	jsr SUPER		|
							*| main.c:904:   initialize_screen(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_screen				*	jsr initialize_screen		|
							*| main.c:907:   initialize_palette(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_palette			*	jsr initialize_palette		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:910:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| main.c:913:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	lea _C_FNKMOD,a3				*	lea C_FNKMOD,%a3	|, tmp494
	jbsr (a3)					*	jsr (%a3)		| tmp494
	move.l d0,-104(a6)				*	move.l %d0,-104(%fp)	| tmp1115, %sfp
							*| main.c:914:   C_FNKMOD(3);
	moveq #3,d0					*	moveq #3,%d0	|,
	move.l d0,(sp)					*	move.l %d0,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp494
							*| main.c:168:     int file_buffer_size = g_input_buffer_size;
	move.l _g_input_buffer_size,d6			*	move.l g_input_buffer_size,%d6	| g_input_buffer_size, file_buffer_size
							*| main.c:169:     int file_buffer_ofs = 0;
	clr.l -96(a6)					*	clr.l -96(%fp)	| file_buffer_ofs
							*| main.c:177:     int decode_buffer_size = g_output_buffer_size;
	move.l _g_output_buffer_size,-108(a6)		*	move.l g_output_buffer_size,-108(%fp)	| g_output_buffer_size, %sfp
							*| main.c:180:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	moveq #35,d1					*	moveq #35,%d1	|,
	move.l d1,(sp)					*	move.l %d1,(%sp)	|,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d0,d7					*	move.l %d0,%d7	| tmp1116, image_frame_index
							*| main.c:180:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	jbeq _?L63					*	jeq .L63		|
							*| main.c:181:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC23					*	pea .LC23		|
_?L202:							*.L202:
							*| main.c:189:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:163:     int image_frame_index = 0;
	moveq #0,d7					*	moveq #0,%d7	| image_frame_index
_?L66:							*.L66:
	lea _g_image_frames+548,a3			*	lea g_image_frames+548,%a3	|, ivtmp.136
	moveq #0,d3					*	moveq #0,%d3	| i
							*| main.c:652:             free__(g_image_frames[i].frame_data_ptr, g_high_memory_mode);
	lea _free__,a4					*	lea free__,%a4	|, tmp1085
_?L137:							*.L137:
							*| main.c:650:     for (int i = 0; i < image_frame_index; i++) {
	cmp.l d3,d7					*	cmp.l %d3,%d7	| i, image_frame_index
	jbgt _?L139					*	jgt .L139		|
							*| main.c:920:   if (g_screen_mode == SCREEN_MODE_384x256) {
	tst.l _g_screen_mode				*	tst.l g_screen_mode	| g_screen_mode
	jbne _?L140					*	jne .L140		|
							*| main.c:921:     initialize_screen(SCREEN_MODE_768x512);
	pea 2.w						*	pea 2.w		|
	jbsr _initialize_screen				*	jsr initialize_screen		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L140:							*.L140:
							*| main.c:925:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| main.c:928:   C_FNKMOD(func_key_display_mode);
	move.l -104(a6),-(sp)				*	move.l -104(%fp),-(%sp)	| %sfp,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	jbra _?L200					*	jra .L200		|
_?L63:							*.L63:
							*| main.c:187:     fp = fopen(gif_file_name, "rb");
	pea _?LC24					*	pea .LC24		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp1117, fp
							*| main.c:188:     if (fp == NULL) {
	jbne _?L65					*	jne .L65		|
							*| main.c:189:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC25					*	pea .LC25		|
	jbra _?L202					*	jra .L202		|
_?L65:							*.L65:
							*| main.c:195:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp1118, file_buffer_ptr
							*| main.c:196:     if (file_buffer_ptr == NULL) {
	jbne _?L67					*	jne .L67		|
							*| main.c:197:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC26					*	pea .LC26		|
	jbsr _puts					*	jsr puts		|
							*| main.c:627:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L66					*	jra .L66		|
_?L67:							*.L67:
							*| main.c:203:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:204:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp1119
	jbgt _?L69					*	jgt .L69		|
							*| main.c:205:       printf("error: file read error.\n");
	pea _?LC27					*	pea .LC27		|
_?L204:							*.L204:
							*| main.c:252:         printf("error: cannot allocate memory for sub block buffer.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L70					*	jra .L70		|
_?L69:							*.L69:
							*| main.c:211:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea (-92,a6),a3					*	lea (-92,%fp),%a3	|,, tmp507
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp507,
	lea _memcpy_buffer,a0				*	lea memcpy_buffer,%a0	|, tmp508
	move.l a0,-124(a6)				*	move.l %a0,-124(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp508
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:212:     header.signature[3] = '\0';
	clr.b -89(a6)					*	clr.b -89(%fp)	| MEM[(struct  *)_294].signature[3]
							*| main.c:213:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC28					*	pea .LC28		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp507,
	lea _strcmp,a3					*	lea strcmp,%a3	|, tmp510
	jbsr (a3)					*	jsr (%a3)		| tmp510
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l -124(a6),a0				*	move.l -124(%fp),%a0	|,
							*| main.c:213:     if (strcmp(header.signature, "GIF") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1120
	jbeq _?L71					*	jeq .L71		|
							*| main.c:214:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC29					*	pea .LC29		|
_?L203:							*.L203:
							*| main.c:223:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L70:							*.L70:
							*| main.c:176:     unsigned char* decode_buffer_ptr = NULL;
	clr.l -128(a6)					*	clr.l -128(%fp)	| %sfp
							*| main.c:172:     unsigned char* sub_block_buffer_ptr = NULL;
	clr.l -116(a6)					*	clr.l -116(%fp)	| %sfp
_?L73:							*.L73:
							*| main.c:627:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| main.c:633:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _free__,a3					*	lea free__,%a3	|, tmp1059
	jbsr (a3)					*	jsr (%a3)		| tmp1059
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:638:     if (sub_block_buffer_ptr != NULL) {
	tst.l -116(a6)					*	tst.l -116(%fp)	| %sfp
	jbne _?L133					*	jne .L133		|
_?L136:							*.L136:
							*| main.c:644:     if (decode_buffer_ptr != NULL) {
	tst.l -128(a6)					*	tst.l -128(%fp)	| %sfp
	jbeq _?L66					*	jeq .L66		|
							*| main.c:645:         free__(decode_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l -128(a6),-(sp)				*	move.l -128(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp1073
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L66					*	jra .L66		|
_?L71:							*.L71:
							*| main.c:220:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -88(a6)					*	pea -88(%fp)		|
	jbsr (a0)					*	jsr (%a0)		| tmp508
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:221:     header.version[3] = '\0';
	clr.b -85(a6)					*	clr.b -85(%fp)	| MEM[(struct  *)_294].version[3]
							*| main.c:222:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC30					*	pea .LC30		|
	pea -88(a6)					*	pea -88(%fp)		|
	jbsr (a3)					*	jsr (%a3)		| tmp510
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:222:     if (strcmp(header.version,"89a") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1121
	jbeq _?L72					*	jeq .L72		|
							*| main.c:223:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea -88(a6)					*	pea -88(%fp)		|
	pea _?LC31					*	pea .LC31		|
	jbra _?L203					*	jra .L203		|
_?L72:							*.L72:
							*| main.c:229:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a3			*	lea get_ushort_buffer,%a3	|, tmp525
	jbsr (a3)					*	jsr (%a3)		| tmp525
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:229:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-84(a6)				*	move.w %d0,-84(%fp)	| tmp1122, MEM[(struct  *)_294].screen_width
							*| main.c:230:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a3)					*	jsr (%a3)		| tmp525
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:230:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-82(a6)				*	move.w %d0,-82(%fp)	| tmp1123, MEM[(struct  *)_294].screen_height
							*| main.c:231:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:231:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-80(a6)				*	move.b %d0,-80(%fp)	| tmp1124, MEM[(struct  *)_294].flag_code
							*| main.c:232:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:232:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-79(a6)				*	move.b %d0,-79(%fp)	| tmp1125, MEM[(struct  *)_294].bg_color_index
							*| main.c:233:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:233:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-78(a6)				*	move.b %d0,-78(%fp)	| tmp1126, MEM[(struct  *)_294].aspect_ratio
							*| main.c:236:     if (read_bits(header.flag_code,7,1)) {
	move.b -80(a6),d0				*	move.b -80(%fp),%d0	| MEM[(struct  *)_294].flag_code, _203
							*| main.c:236:     if (read_bits(header.flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _203
	jbmi _?L74					*	jmi .L74		|
_?L78:							*.L78:
							*| main.c:250:     sub_block_buffer_ptr = malloc__(sub_block_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	lea _malloc__,a3				*	lea malloc__,%a3	|, tmp536
	jbsr (a3)					*	jsr (%a3)		| tmp536
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-116(a6)				*	move.l %d0,-116(%fp)	| tmp1127, %sfp
							*| main.c:251:     if (sub_block_buffer_ptr == NULL) {
	jbne _?L195					*	jne .L195		|
							*| main.c:252:         printf("error: cannot allocate memory for sub block buffer.\n");
	pea _?LC44					*	pea .LC44		|
	jbra _?L204					*	jra .L204		|
_?L74:							*.L74:
	lea _g_global_color_table,a0			*	lea g_global_color_table,%a0	|, ivtmp.149
							*| main.c:237:       int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
	moveq #7,d5					*	moveq #7,%d5	|,
	and.l d5,d0					*	and.l %d5,%d0	|, tmp538
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp539
	moveq #2,d1					*	moveq #2,%d1	|, tmp541
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp539, tmp540
	add.l a0,d1					*	add.l %a0,%d1	| ivtmp.149, tmp540
	move.l d1,-116(a6)				*	move.l %d1,-116(%fp)	| tmp540, %sfp
_?L77:							*.L77:
							*| main.c:239:         unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l a0,-124(a6)				*	move.l %a0,-124(%fp)	|,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.w d0,a3					*	move.w %d0,%a3	| tmp1128, r
							*| main.c:240:         unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d5					*	move.b %d0,%d5	| tmp1129, g
							*| main.c:241:         unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:242:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.w a3,d1					*	move.w %a3,%d1	| r,
	and.l #255,d1					*	and.l #255,%d1	|,
	move.l d1,a3					*	move.l %d1,%a3	|, r
	add.l d1,a3					*	add.l %d1,%a3	| r, tmp550
							*| main.c:242:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, g
	add.l d5,d5					*	add.l %d5,%d5	| g, tmp553
							*| main.c:242:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.w (a5,a3.l),d1				*	move.w (%a5,%a3.l),%d1	| g_rgb555_r[_213], tmp554
	or.w (a4,d5.l),d1				*	or.w (%a4,%d5.l),%d1	| g_rgb555_g[_215], tmp554
							*| main.c:242:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp557
							*| main.c:242:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.l -124(a6),a0				*	move.l -124(%fp),%a0	|,
	lea _g_rgb555_b,a1				*	lea g_rgb555_b,%a1	|,
	or.w (a1,d0.l),d1				*	or.w (%a1,%d0.l),%d1	| g_rgb555_b[_218], tmp554
	move.w d1,(a0)+					*	move.w %d1,(%a0)+	| tmp554, MEM[(short unsigned int *)_727]
							*| main.c:238:       for (int i = 0; i < gct_size; i++) {
	cmp.l -116(a6),a0				*	cmp.l -116(%fp),%a0	| %sfp, ivtmp.149
	jbne _?L77					*	jne .L77		|
	jbra _?L78					*	jra .L78		|
_?L195:							*.L195:
							*| main.c:258:     decode_buffer_ptr = malloc__(decode_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l -108(a6),-(sp)				*	move.l -108(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp536
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-128(a6)				*	move.l %d0,-128(%fp)	| tmp1131, %sfp
							*| main.c:163:     int image_frame_index = 0;
	moveq #0,d7					*	moveq #0,%d7	| image_frame_index
							*| main.c:259:     if (decode_buffer_ptr == NULL) {
	tst.l d0					*	tst.l %d0	| tmp1131
	jbne _?L79					*	jne .L79		|
							*| main.c:260:       printf("error: cannot allocate memory for decode buffer.\n");
	pea _?LC45					*	pea .LC45		|
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L73					*	jra .L73		|
_?L79:							*.L79:
							*| main.c:269:       unsigned char block_type = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	lea (-96,a6),a3					*	lea (-96,%fp),%a3	|,, tmp561
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp562
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:271:       if (block_type == GIF_TRAILOR) {
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbeq _?L80					*	jeq .L80		|
							*| main.c:280:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L81					*	jne .L81		|
							*| main.c:288:         image_frame->bg_color_index = header.bg_color_index;
	move.l d7,d0					*	move.l %d7,%d0	| image_frame_index, tmp565
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp565
	move.l d0,d1					*	move.l %d0,%d1	| tmp565, tmp566
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp566
	add.l d1,d1					*	add.l %d1,%d1	| tmp566, tmp567
	add.l d1,d1					*	add.l %d1,%d1	| tmp567, tmp568
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp569
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp570
							*| main.c:288:         image_frame->bg_color_index = header.bg_color_index;
	moveq #0,d2					*	moveq #0,%d2	| MEM[(struct  *)_294].bg_color_index
	move.b -79(a6),d2				*	move.b -79(%fp),%d2	| MEM[(struct  *)_294].bg_color_index, MEM[(struct  *)_294].bg_color_index
	lea _g_image_frames,a0				*	lea g_image_frames,%a0	|,
	move.l d2,4(a0,d1.l)				*	move.l %d2,4(%a0,%d1.l)	| MEM[(struct  *)_294].bg_color_index, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].bg_color_index
							*| main.c:289:         image_frame->global_color_table_ptr = header.flag_code & 0x80 ? g_global_color_table : NULL;
	move.l #_g_global_color_table,d1		*	move.l #g_global_color_table,%d1	|, iftmp.72_235
	tst.b -80(a6)					*	tst.b -80(%fp)	| MEM[(struct  *)_294].flag_code
	jblt _?L82					*	jlt .L82		|
	moveq #0,d1					*	moveq #0,%d1	| iftmp.72_235
_?L82:							*.L82:
							*| main.c:289:         image_frame->global_color_table_ptr = header.flag_code & 0x80 ? g_global_color_table : NULL;
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp577
	add.l d0,d0					*	add.l %d0,%d0	| tmp577, tmp578
	add.l d0,d0					*	add.l %d0,%d0	| tmp578, tmp579
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp580
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp580
	move.l d0,a3					*	move.l %d0,%a3	| tmp580, tmp581
	add.l #_g_image_frames,a3			*	add.l #g_image_frames,%a3	|, tmp582
	move.l d1,8(a3)					*	move.l %d1,8(%a3)	| iftmp.72_235, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].global_color_table_ptr
							*| main.c:292:         image_block->separator     = block_type;
	move.b #44,20(a3)				*	move.b #44,20(%a3)	|, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.separator
							*| main.c:293:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a4			*	lea get_ushort_buffer,%a4	|, tmp595
	jbsr (a4)					*	jsr (%a4)		| tmp595
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:293:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,22(a3)				*	move.w %d0,22(%a3)	| tmp1133, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.left_position
							*| main.c:294:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp595
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:294:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,24(a3)				*	move.w %d0,24(%a3)	| tmp1134, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.top_position
							*| main.c:295:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp595
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:295:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,26(a3)				*	move.w %d0,26(%a3)	| tmp1135, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.width
							*| main.c:296:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp595
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:296:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,28(a3)				*	move.w %d0,28(%a3)	| tmp1136, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.height
							*| main.c:297:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -96(a6)					*	pea -96(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:297:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,30(a3)				*	move.b %d0,30(%a3)	| _240, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.flag_code
							*| main.c:300:         if (image_frame_index == 0) {
	tst.l d7					*	tst.l %d7	| image_frame_index
	jbne _?L84					*	jne .L84		|
							*| main.c:301:           if (g_centering_mode) {
	tst.l _g_centering_mode				*	tst.l g_centering_mode	| g_centering_mode
	jbeq _?L84					*	jeq .L84		|
							*| main.c:302:             if (g_screen_mode == 0) {
	move.l _g_screen_mode,d1			*	move.l g_screen_mode,%d1	| g_screen_mode, g_screen_mode.74_242
							*| main.c:302:             if (g_screen_mode == 0) {
	jbne _?L86					*	jne .L86		|
							*| main.c:303:               g_start_x = (384 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:303:               g_start_x = (384 - image_block->width) / 2;
	move.l #384,d1					*	move.l #384,%d1	|, tmp656
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp656
							*| main.c:303:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp656, tmp658
	jbpl _?L213					*	jpl .L213		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp658
_?L213:							*.L213:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp659
							*| main.c:303:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp659, g_start_x
							*| main.c:304:               g_start_y = (256 - image_block->height) / 2;
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:304:               g_start_y = (256 - image_block->height) / 2;
	move.l #256,d1					*	move.l #256,%d1	|, tmp662
_?L205:							*.L205:
							*| main.c:310:               g_start_y = (512 - image_block->height) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, tmp687
							*| main.c:310:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp687, tmp689
	jbpl _?L214					*	jpl .L214		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp689
_?L214:							*.L214:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp690
							*| main.c:310:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,_g_start_y				*	move.l %d1,g_start_y	| tmp690, g_start_y
_?L87:							*.L87:
							*| main.c:312:             if (g_start_x < 0) g_start_x = 0;
	tst.l _g_start_x				*	tst.l g_start_x	| g_start_x
	jbge _?L89					*	jge .L89		|
							*| main.c:312:             if (g_start_x < 0) g_start_x = 0;
	clr.l _g_start_x				*	clr.l g_start_x	| g_start_x
_?L89:							*.L89:
							*| main.c:313:             if (g_start_y < 0) g_start_y = 0;
	tst.l _g_start_y				*	tst.l g_start_y	| g_start_y
	jbge _?L84					*	jge .L84		|
							*| main.c:313:             if (g_start_y < 0) g_start_y = 0;
	clr.l _g_start_y				*	clr.l g_start_y	| g_start_y
_?L84:							*.L84:
							*| main.c:318:         if (read_bits(image_block->flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _240
	jbmi _?L90					*	jmi .L90		|
_?L93:							*.L93:
							*| main.c:329:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	lea (-96,a6),a3					*	lea (-96,%fp),%a3	|,, tmp693
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp693,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp694
	jbsr (a4)					*	jsr (%a4)		| tmp694
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:329:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d7,d1					*	move.l %d7,%d1	| image_frame_index, tmp697
	lsl.l #4,d1					*	lsl.l #4,%d1	|, tmp697
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp698
	add.l d1,d1					*	add.l %d1,%d1	| tmp698, tmp699
	add.l d1,d1					*	add.l %d1,%d1	| tmp699, tmp700
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp701
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp701
	move.l d1,a0					*	move.l %d1,%a0	| tmp701, tmp702
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp703
	move.b d0,31(a0)				*	move.b %d0,31(%a0)	| tmp1138, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.lzw_min_code_size
							*| main.c:332:         int pixel_count = (image_block->width) * (image_block->height);
	move.w 26(a0),d1				*	move.w 26(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.width,
	mulu.w 28(a0),d1				*	mulu.w 28(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.height,
	move.l d1,-100(a6)				*	move.l %d1,-100(%fp)	|, %sfp
							*| main.c:335:         int sub_block_buffer_ofs = 0;
	sub.l a5,a5					*	sub.l %a5,%a5	| sub_block_buffer_ofs
_?L91:							*.L91:
							*| main.c:341:           unsigned char sub_block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp693,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp694
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:343:           if (sub_block_size == 0) {
	tst.b d0					*	tst.b %d0	| sub_block_size
	jbeq _?L148					*	jeq .L148		|
							*| main.c:345:           } else if (sub_block_buffer_ofs + sub_block_size > sub_block_buffer_size) {
	and.l #255,d0					*	and.l #255,%d0	|, _297
	move.l d0,d5					*	move.l %d0,%d5	| _297, _299
	add.l a5,d5					*	add.l %a5,%d5	| sub_block_buffer_ofs, _299
							*| main.c:345:           } else if (sub_block_buffer_ofs + sub_block_size > sub_block_buffer_size) {
	cmp.l d6,d5					*	cmp.l %d6,%d5	| file_buffer_size, _299
	jble _?L95					*	jle .L95		|
							*| main.c:346:             printf("error: sub block buffer memory overflow.\n");
	pea _?LC46					*	pea .LC46		|
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:348:             end_of_gif = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,-112(a6)				*	move.l %d1,-112(%fp)	|, %sfp
_?L94:							*.L94:
							*| main.c:357:         decode_buffer_ofs = decode_lzw(sub_block_buffer_ptr,sub_block_buffer_ofs,decode_buffer_ptr,image_block->lzw_min_code_size,pixel_count);
	move.l -100(a6),-(sp)				*	move.l -100(%fp),-(%sp)	| %sfp,
							*| main.c:357:         decode_buffer_ofs = decode_lzw(sub_block_buffer_ptr,sub_block_buffer_ofs,decode_buffer_ptr,image_block->lzw_min_code_size,pixel_count);
	move.l d7,d5					*	move.l %d7,%d5	| image_frame_index, tmp761
	lsl.l #4,d5					*	lsl.l #4,%d5	|, tmp761
	move.l d5,d0					*	move.l %d5,%d0	| tmp761, tmp762
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp762
	add.l d0,d0					*	add.l %d0,%d0	| tmp762, tmp763
	add.l d0,d0					*	add.l %d0,%d0	| tmp763, tmp764
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp765
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp765
	move.l d0,a3					*	move.l %d0,%a3	| tmp765, tmp766
	add.l #_g_image_frames,a3			*	add.l #g_image_frames,%a3	|, tmp767
							*| main.c:357:         decode_buffer_ofs = decode_lzw(sub_block_buffer_ptr,sub_block_buffer_ofs,decode_buffer_ptr,image_block->lzw_min_code_size,pixel_count);
	moveq #0,d0					*	moveq #0,%d0	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.lzw_min_code_size
	move.b 31(a3),d0				*	move.b 31(%a3),%d0	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.lzw_min_code_size, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.lzw_min_code_size
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_229].image_block.lzw_min_code_size,
	move.l -128(a6),-(sp)				*	move.l -128(%fp),-(%sp)	| %sfp,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| sub_block_buffer_ofs,
	move.l -116(a6),-(sp)				*	move.l -116(%fp),-(%sp)	| %sfp,
	jbsr _decode_lzw				*	jsr decode_lzw		|
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d0,a4					*	move.l %d0,%a4	| tmp1143, decode_buffer_ofs
							*| main.c:362:         if (g_memory_cache_mode) {
	move.l _g_memory_cache_mode,a5			*	move.l g_memory_cache_mode,%a5	| g_memory_cache_mode, i
							*| main.c:362:         if (g_memory_cache_mode) {
	cmp.w #0,a5					*	cmp.w #0,%a5	|, i
	jbeq _?L96					*	jeq .L96		|
							*| main.c:367:           if (g_high_memory_mode) {
	tst.l _g_high_memory_mode			*	tst.l g_high_memory_mode	| g_high_memory_mode
	jbeq _?L97					*	jeq .L97		|
							*| main.c:370:             if (resize_himem(decode_buffer_ptr,size) == 0) {
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| decode_buffer_ofs,
	move.l -128(a6),-(sp)				*	move.l -128(%fp),-(%sp)	| %sfp,
	jbsr _resize_himem				*	jsr resize_himem		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:370:             if (resize_himem(decode_buffer_ptr,size) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1144
	jbne _?L98					*	jne .L98		|
							*| main.c:371:               image_frame->frame_data_ptr = decode_buffer_ptr;
	move.l -128(a6),548(a3)				*	move.l -128(%fp),548(%a3)	| %sfp, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_ptr
							*| main.c:372:               image_frame->frame_data_size = size;
	move.l a4,544(a3)				*	move.l %a4,544(%a3)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_size
							*| main.c:373:               decode_buffer_ptr = malloc__(decode_buffer_size, g_high_memory_mode); // reallocate buffer for next decode.
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l -108(a6),-(sp)				*	move.l -108(%fp),-(%sp)	| %sfp,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-128(a6)				*	move.l %d0,-128(%fp)	| tmp1145, %sfp
_?L99:							*.L99:
							*| main.c:430:         image_frame_index++;
	addq.l #1,d7					*	addq.l #1,%d7	|, image_frame_index
							*| main.c:435:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	move.l _g_memory_cache_mode,d0			*	move.l g_memory_cache_mode,%d0	| g_memory_cache_mode, pretmp_445
							*| main.c:431:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l _g_image_index_limit.l,d7			*	cmp.l g_image_index_limit.l,%d7	| g_image_index_limit, image_frame_index
	jbge _?L80					*	jge .L80		|
							*| main.c:431:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l #1023,d7					*	cmp.l #1023,%d7	|, image_frame_index
	jbgt _?L80					*	jgt .L80		|
							*| main.c:435:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| pretmp_445
	jbeq _?L107					*	jeq .L107		|
	pea 30.w					*	pea 30.w		|
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| image_frame_index,
	jbsr ___modsi3					*	jsr __modsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:435:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1149
	jbeq _?L108					*	jeq .L108		|
_?L107:							*.L107:
							*| main.c:561:     } while (end_of_gif == 0);
	tst.l -112(a6)					*	tst.l -112(%fp)	| %sfp
	jbeq _?L79					*	jeq .L79		|
_?L80:							*.L80:
							*| main.c:564:     if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbeq _?L117					*	jeq .L117		|
							*| main.c:566:       int delay_time = g_image_frames[0].graphic_ctrl_ext.delay_time;
	move.w _g_image_frames+16,d0			*	move.w g_image_frames+16,%d0	| g_image_frames[0].graphic_ctrl_ext.delay_time, _354
							*| main.c:569:       if (g_frame_rate > 0) {
	move.l _g_frame_rate,d1				*	move.l g_frame_rate,%d1	| g_frame_rate, g_frame_rate.96_356
							*| main.c:569:       if (g_frame_rate > 0) {
	jble _?L118					*	jle .L118		|
							*| main.c:570:         vsync_count = 60 / g_frame_rate;
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	| g_frame_rate.96_356,
	pea 60.w					*	pea 60.w		|
	jbsr ___divsi3					*	jsr __divsi3		|
_?L210:							*.L210:
							*| main.c:572:         vsync_count = (int)((60 * delay_time) / 1000);
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L119:							*.L119:
							*| main.c:577:       g_max_frame_index = image_frame_index;
	move.l d7,_g_max_frame_index			*	move.l %d7,g_max_frame_index	| image_frame_index, g_max_frame_index
							*| main.c:578:       g_current_frame_index = 0;
	moveq #0,d1					*	moveq #0,%d1	|
	move.l d1,_g_current_frame_index		*	move.l %d1,g_current_frame_index	|, g_current_frame_index
_?L120:							*.L120:
							*| main.c:580:       WAIT_VBLANK;
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _361
	btst #4,d1					*	btst #4,%d1	|, _361
	jbne _?L120					*	jne .L120		|
_?L121:							*.L121:
							*| main.c:581:       WAIT_VSYNC;
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _363
	btst #4,d1					*	btst #4,%d1	|, _363
	jbeq _?L121					*	jeq .L121		|
							*| main.c:583:       if (VDISPST((unsigned char*)output_image_vdisp, 0, vsync_count) == 0) {
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| vsync_count,
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _output_image_vdisp				*	pea output_image_vdisp		|
	lea _VDISPST,a3					*	lea VDISPST,%a3	|, tmp1043
	jbsr (a3)					*	jsr (%a3)		| tmp1043
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:583:       if (VDISPST((unsigned char*)output_image_vdisp, 0, vsync_count) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1165
	jbne _?L197					*	jne .L197		|
							*| main.c:588:         while ((key_code = B_KEYINP()) == 0) {
	lea _B_KEYINP,a4				*	lea B_KEYINP,%a4	|, tmp1045
							*| main.c:592:           SLEEP_PR(20);
	lea _SLEEP_PR,a5				*	lea SLEEP_PR,%a5	|, tmp1086
_?L122:							*.L122:
							*| main.c:588:         while ((key_code = B_KEYINP()) == 0) {
	jbsr (a4)					*	jsr (%a4)		| tmp1045
							*| main.c:588:         while ((key_code = B_KEYINP()) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1166
	jbeq _?L124					*	jeq .L124		|
_?L125:							*.L125:
							*| main.c:595:         WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _368
	btst #4,d0					*	btst #4,%d0	|, _368
	jbne _?L125					*	jne .L125		|
_?L126:							*.L126:
							*| main.c:596:         WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _370
	btst #4,d0					*	btst #4,%d0	|, _370
	jbeq _?L126					*	jeq .L126		|
							*| main.c:598:         VDISPST(0, 0, 0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr (a3)					*	jsr (%a3)		| tmp1043
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L128:							*.L128:
							*| main.c:604:       WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _372
	btst #4,d0					*	btst #4,%d0	|, _372
	jbeq _?L128					*	jeq .L128		|
_?L129:							*.L129:
							*| main.c:605:       WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _374
	btst #4,d0					*	btst #4,%d0	|, _374
	jbne _?L129					*	jne .L129		|
	jbra _?L73					*	jra .L73		|
_?L86:							*.L86:
							*| main.c:305:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	move.l d1,a0					*	move.l %d1,%a0	| g_screen_mode.74_242, tmp666
	subq.l #1,a0					*	subq.l #1,%a0	|, tmp666
							*| main.c:305:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	moveq #1,d2					*	moveq #1,%d2	|,
	cmp.l a0,d2					*	cmp.l %a0,%d2	| tmp666,
	jbcs _?L88					*	jcs .L88		|
							*| main.c:306:               g_start_x = (512 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:306:               g_start_x = (512 - image_block->width) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp669
_?L206:							*.L206:
							*| main.c:309:               g_start_x = (768 - image_block->width) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp681
							*| main.c:309:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp681, tmp683
	jbpl _?L215					*	jpl .L215		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp683
_?L215:							*.L215:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp684
							*| main.c:309:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp684, g_start_x
							*| main.c:310:               g_start_y = (512 - image_block->height) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:310:               g_start_y = (512 - image_block->height) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp687
	jbra _?L205					*	jra .L205		|
_?L88:							*.L88:
							*| main.c:308:             } else if (g_screen_mode == 3) {
	subq.l #3,d1					*	subq.l #3,%d1	|, g_screen_mode.74_242
	jbne _?L87					*	jne .L87		|
							*| main.c:309:               g_start_x = (768 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:309:               g_start_x = (768 - image_block->width) / 2;
	move.l #768,d1					*	move.l #768,%d1	|, tmp681
	jbra _?L206					*	jra .L206		|
_?L90:							*.L90:
							*| main.c:319:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp726
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp727
							*| main.c:319:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #1,d1					*	moveq #1,%d1	|, tmp728
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp727, tmp728
	move.l d1,-112(a6)				*	move.l %d1,-112(%fp)	| tmp728, %sfp
	move.l d7,d0					*	move.l %d7,%d0	| image_frame_index, tmp730
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp730
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp731
	add.l d0,d0					*	add.l %d0,%d0	| tmp731, tmp732
	add.l d0,d0					*	add.l %d0,%d0	| tmp732, tmp733
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp734
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp735
	move.l d0,a0					*	move.l %d0,%a0	| tmp735, ivtmp.145
	add.l #_g_image_frames+32,a0			*	add.l #g_image_frames+32,%a0	|, ivtmp.145
							*| main.c:320:           for (int i = 0; i < lct_size; i++) {
	moveq #0,d1					*	moveq #0,%d1	| i
							*| main.c:321:             unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (-96,a6),a5					*	lea (-96,%fp),%a5	|,, tmp737
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp738
_?L92:							*.L92:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp737,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l d1,-120(a6)				*	move.l %d1,-120(%fp)	|,
	move.l a0,-124(a6)				*	move.l %a0,-124(%fp)	|,
	jbsr (a4)					*	jsr (%a4)		| tmp738
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.w d0,a3					*	move.w %d0,%a3	| tmp1139, r
							*| main.c:322:             unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp737,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp738
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d5					*	move.b %d0,%d5	| tmp1140, g
							*| main.c:323:             unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp737,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp738
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:324:             image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.w a3,d2					*	move.w %a3,%d2	| r,
	and.l #255,d2					*	and.l #255,%d2	|,
	move.l d2,a3					*	move.l %d2,%a3	|, r
	add.l d2,a3					*	add.l %d2,%a3	| r, tmp745
							*| main.c:324:             image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, g
	add.l d5,d5					*	add.l %d5,%d5	| g, tmp748
							*| main.c:324:             image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_r,a1				*	lea g_rgb555_r,%a1	|,
	move.w (a3,a1.l),d2				*	move.w (%a3,%a1.l),%d2	| g_rgb555_r[_280], tmp749
	lea _g_rgb555_g,a1				*	lea g_rgb555_g,%a1	|,
	or.w (a1,d5.l),d2				*	or.w (%a1,%d5.l),%d2	| g_rgb555_g[_282], tmp749
							*| main.c:324:             image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp752
							*| main.c:324:             image_frame->local_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	lea _g_rgb555_b,a1				*	lea g_rgb555_b,%a1	|, tmp750
	move.l -124(a6),a0				*	move.l -124(%fp),%a0	|,
	or.w (a1,d0.l),d2				*	or.w (%a1,%d0.l),%d2	| g_rgb555_b[_285], tmp749
	move.w d2,(a0)+					*	move.w %d2,(%a0)+	| tmp749, MEM <short unsigned int> [(struct GIF_IMAGE_FRAME *)_678]
							*| main.c:320:           for (int i = 0; i < lct_size; i++) {
	move.l -120(a6),d1				*	move.l -120(%fp),%d1	|,
	addq.l #1,d1					*	addq.l #1,%d1	|, i
							*| main.c:320:           for (int i = 0; i < lct_size; i++) {
	cmp.l -112(a6),d1				*	cmp.l -112(%fp),%d1	| %sfp, i
	jbne _?L92					*	jne .L92		|
	jbra _?L93					*	jra .L93		|
_?L95:							*.L95:
							*| main.c:351:             memcpy_buffer(sub_block_buffer_ptr + sub_block_buffer_ofs, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, sub_block_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _297,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp693,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l -116(a6),a0				*	move.l -116(%fp),%a0	| %sfp,
	pea (a0,a5.l)					*	pea (%a0,%a5.l)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	move.l d5,a5					*	move.l %d5,%a5	| _299, sub_block_buffer_ofs
	jbra _?L91					*	jra .L91		|
_?L148:							*.L148:
	clr.l -112(a6)					*	clr.l -112(%fp)	| %sfp
	jbra _?L94					*	jra .L94		|
_?L98:							*.L98:
							*| main.c:375:               printf("error: high memory resize error.\n");
	pea _?LC47					*	pea .LC47		|
_?L208:							*.L208:
							*| main.c:463:             printf("error: graphic control extension read error.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:465:             break;
	jbra _?L80					*	jra .L80		|
_?L97:							*.L97:
							*| main.c:384:             if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	clr.l -(sp)					*	clr.l -(%sp)	|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| decode_buffer_ofs,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:384:             if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	move.l d0,548(a3)				*	move.l %d0,548(%a3)	| _315, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_ptr
							*| main.c:384:             if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	jbne _?L100					*	jne .L100		|
							*| main.c:385:               printf("error: memory allocation failure (errno=%d).\n",errno);
	move.l _errno,d0				*	move.l errno,%d0	| errno, errno.88_316
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| errno.88_316,
	pea _?LC48					*	pea .LC48		|
_?L209:							*.L209:
							*| main.c:555:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:557:         break;
	jbra _?L80					*	jra .L80		|
_?L100:							*.L100:
							*| main.c:390:             memcpy(image_frame->frame_data_ptr,decode_buffer_ptr,size);
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| decode_buffer_ofs,
	move.l -128(a6),-(sp)				*	move.l -128(%fp),-(%sp)	| %sfp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _315,
	jbsr _memcpy					*	jsr memcpy		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:391:             image_frame->frame_data_size = size;
	move.l a4,544(a3)				*	move.l %a4,544(%a3)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_size
	jbra _?L99					*	jra .L99		|
_?L96:							*.L96:
							*| main.c:398:           int delay_time = image_frame->graphic_ctrl_ext.delay_time;
	move.w 16(a3),d1				*	move.w 16(%a3),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.delay_time, _317
							*| main.c:405:           if (g_frame_rate == 0) {
	move.l _g_frame_rate,d0				*	move.l g_frame_rate,%d0	| g_frame_rate, g_frame_rate.90_319
							*| main.c:405:           if (g_frame_rate == 0) {
	jbeq _?L150					*	jeq .L150		|
							*| main.c:407:           } else if (g_frame_rate > 0) {
	jble _?L103					*	jle .L103		|
							*| main.c:408:             vsync_count = 60 / g_frame_rate;
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| g_frame_rate.90_319,
	pea 60.w					*	pea 60.w		|
	jbsr ___divsi3					*	jsr __divsi3		|
_?L207:							*.L207:
							*| main.c:410:             vsync_count = (int)((60 * delay_time) / 1000);
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L102:							*.L102:
							*| main.c:414:           image_frame->frame_data_ptr = decode_buffer_ptr;
	move.l d5,d1					*	move.l %d5,%d1	| tmp761, tmp849
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp849
	add.l d1,d1					*	add.l %d1,%d1	| tmp849, tmp850
	add.l d1,d1					*	add.l %d1,%d1	| tmp850, tmp851
	add.l d7,d1					*	add.l %d7,%d1	| image_frame_index, tmp852
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp853
	move.l d1,a0					*	move.l %d1,%a0	| tmp853, tmp854
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp854
	move.l -128(a6),548(a0)				*	move.l -128(%fp),548(%a0)	| %sfp, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_ptr
							*| main.c:415:           image_frame->frame_data_size = decode_buffer_ofs;
	move.l a4,544(a0)				*	move.l %a4,544(%a0)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_size
_?L104:							*.L104:
							*| main.c:417:           for (int i = 0; i < vsync_count; i++) {
	cmp.l a5,d0					*	cmp.l %a5,%d0	| i, vsync_count
	jbne _?L105					*	jne .L105		|
							*| main.c:283:         GIF_IMAGE_FRAME* image_frame = &g_image_frames[image_frame_index];
	add.l d7,d5					*	add.l %d7,%d5	| image_frame_index, tmp870
	add.l d5,d5					*	add.l %d5,%d5	| tmp870, tmp871
	add.l d5,d5					*	add.l %d5,%d5	| tmp871, tmp872
	add.l d7,d5					*	add.l %d7,%d5	| image_frame_index, tmp873
	lsl.l #3,d5					*	lsl.l #3,%d5	|, tmp874
	add.l #_g_image_frames,d5			*	add.l #g_image_frames,%d5	|, image_frame
							*| main.c:421:           output_image(image_frame);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| image_frame,
	jbsr _output_image				*	jsr output_image		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:423:           image_frame->frame_data_ptr = NULL;
	move.l d5,a1					*	move.l %d5,%a1	| image_frame,
	clr.l 548(a1)					*	clr.l 548(%a1)	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_229].frame_data_ptr
	jbra _?L99					*	jra .L99		|
_?L103:							*.L103:
							*| main.c:409:           } else if (delay_time > 0) {
	tst.w d1					*	tst.w %d1	| _317
	jbeq _?L150					*	jeq .L150		|
							*| main.c:410:             vsync_count = (int)((60 * delay_time) / 1000);
	pea 1000.w					*	pea 1000.w		|
	mulu.w #60,d1					*	mulu.w #60,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	jbsr ___divsi3					*	jsr __divsi3		|
	jbra _?L207					*	jra .L207		|
_?L150:							*.L150:
							*| main.c:406:             vsync_count = 1;
	moveq #1,d0					*	moveq #1,%d0	|, vsync_count
	jbra _?L102					*	jra .L102		|
_?L105:							*.L105:
							*| main.c:418:             WAIT_VBLANK;
	move.b 15237121,d1				*	move.b 15237121,%d1	| MEM[(volatile unsigned char *)15237121B], _323
	btst #4,d1					*	btst #4,%d1	|, _323
	jbne _?L105					*	jne .L105		|
							*| main.c:417:           for (int i = 0; i < vsync_count; i++) {
	addq.l #1,a5					*	addq.l #1,%a5	|, i
	jbra _?L104					*	jra .L104		|
_?L108:							*.L108:
							*| main.c:436:           putchar('.');
	pea 46.w					*	pea 46.w		|
	jbsr _putchar					*	jsr putchar		|
							*| main.c:437:           fflush(stdout);
	move.l #__iob+26,(sp)				*	move.l #_iob+26,(%sp)	|,
	jbsr _fflush					*	jsr fflush		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L107					*	jra .L107		|
_?L81:							*.L81:
							*| main.c:440:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L110					*	jne .L110		|
							*| main.c:442:         unsigned char extension_label = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:444:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L111					*	jne .L111		|
							*| main.c:452:           graphic_ctrl_ext->introducer  = block_type;
	move.l d7,d0					*	move.l %d7,%d0	| image_frame_index, tmp904
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp904
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp905
	add.l d0,d0					*	add.l %d0,%d0	| tmp905, tmp906
	add.l d0,d0					*	add.l %d0,%d0	| tmp906, tmp907
	add.l d7,d0					*	add.l %d7,%d0	| image_frame_index, tmp908
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp908
	move.l d0,a5					*	move.l %d0,%a5	| tmp908, tmp909
	lea _g_image_frames,a0				*	lea g_image_frames,%a0	|,
	move.w #8697,12(a0,d0.l)			*	move.w #8697,12(%a0,%d0.l)	|, MEM <unsigned short> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)_352 + 12B]
							*| main.c:455:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:455:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	add.l #_g_image_frames,a5			*	add.l #g_image_frames,%a5	|, tmp920
	move.b d0,14(a5)				*	move.b %d0,14(%a5)	| tmp1151, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.block_size
							*| main.c:456:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:456:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,15(a5)				*	move.b %d0,15(%a5)	| tmp1152, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.flag_code
							*| main.c:457:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:457:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,16(a5)				*	move.w %d0,16(%a5)	| tmp1153, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.delay_time
							*| main.c:458:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:458:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,18(a5)				*	move.b %d0,18(%a5)	| tmp1154, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.transparent_index
							*| main.c:461:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:461:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,19(a5)				*	move.b %d0,19(%a5)	| _337, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_229].graphic_ctrl_ext.terminator
							*| main.c:462:           if (graphic_ctrl_ext->terminator != 0x00) {
	jbeq _?L79					*	jeq .L79		|
							*| main.c:463:             printf("error: graphic control extension read error.\n");
	pea _?LC49					*	pea .LC49		|
	jbra _?L208					*	jra .L208		|
_?L111:							*.L111:
							*| main.c:468:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L113					*	jne .L113		|
							*| main.c:479:           comment_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
							*| main.c:480:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, comment_ext.block_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _338
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _338,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:483:           comment_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:484:           if (comment_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1157
	jbeq _?L79					*	jeq .L79		|
							*| main.c:485:             printf("error: comment extension read error.\n");
	pea _?LC50					*	pea .LC50		|
	jbra _?L208					*	jra .L208		|
_?L113:							*.L113:
							*| main.c:490:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L114					*	jne .L114		|
							*| main.c:501:           plain_text_ext.block_size              = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
							*| main.c:502:           plain_text_ext.text_grid_left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a5			*	lea get_ushort_buffer,%a5	|, tmp982
	jbsr (a5)					*	jsr (%a5)		| tmp982
							*| main.c:503:           plain_text_ext.text_grid_top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp982
							*| main.c:504:           plain_text_ext.text_grid_width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp982
							*| main.c:505:           plain_text_ext.text_grid_height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp982
							*| main.c:506:           plain_text_ext.character_cell_width    = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
							*| main.c:507:           plain_text_ext.character_cell_height   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
							*| main.c:509:           plain_text_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
							*| main.c:510:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, plain_text_ext.block_size2, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _341
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _341,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:512:           plain_text_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:513:           if (plain_text_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1159
	jbeq _?L79					*	jeq .L79		|
							*| main.c:514:             printf("error: plain text extension read error.\n");
	pea _?LC51					*	pea .LC51		|
	jbra _?L208					*	jra .L208		|
_?L114:							*.L114:
							*| main.c:519:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L115					*	jne .L115		|
							*| main.c:527:           app_ext.introducer = block_type;
	move.w #8703,-76(a6)				*	move.w #8703,-76(%fp)	|, MEM <unsigned short> [(unsigned char *)_477]
							*| main.c:530:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:530:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-74(a6)				*	move.b %d0,-74(%fp)	| tmp1160, MEM[(struct  *)_477].block_size
							*| main.c:532:           memcpy_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 8, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 8.w						*	pea 8.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -73(a6)					*	pea -73(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:533:           memcpy_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -65(a6)					*	pea -65(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:535:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:535:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-62(a6)				*	move.b %d0,-62(%fp)	| _345, MEM[(struct  *)_477].block_size2
							*| main.c:536:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, app_ext.block_size2, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _345
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _345,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:538:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp561,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp562
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:538:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-56(a6)				*	move.b %d0,-56(%fp)	| _347, MEM[(struct  *)_477].terminator
							*| main.c:539:           if (app_ext.terminator != 0x00) {
	jbeq _?L79					*	jeq .L79		|
							*| main.c:540:             printf("error: application extension read error.\n");
	pea _?LC52					*	pea .LC52		|
	jbra _?L208					*	jra .L208		|
_?L115:							*.L115:
							*| main.c:547:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC53					*	pea .LC53		|
	jbra _?L209					*	jra .L209		|
_?L110:							*.L110:
							*| main.c:555:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC54					*	pea .LC54		|
	jbra _?L209					*	jra .L209		|
_?L118:							*.L118:
							*| main.c:571:       } else if (delay_time > 0) {
	tst.w d0					*	tst.w %d0	| _354
	jbeq _?L151					*	jeq .L151		|
							*| main.c:572:         vsync_count = (int)((60 * delay_time) / 1000);
	pea 1000.w					*	pea 1000.w		|
	mulu.w #60,d0					*	mulu.w #60,%d0	|,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	|,
	jbsr ___divsi3					*	jsr __divsi3		|
	jbra _?L210					*	jra .L210		|
_?L151:							*.L151:
							*| main.c:567:       int vsync_count = 1;
	moveq #1,d0					*	moveq #1,%d0	|, vsync_count
	jbra _?L119					*	jra .L119		|
_?L124:							*.L124:
							*| main.c:592:           SLEEP_PR(20);
	pea 20.w					*	pea 20.w		|
	jbsr (a5)					*	jsr (%a5)		| tmp1086
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L122					*	jra .L122		|
_?L197:							*.L197:
							*| main.c:601:         printf("error: cannot use vsync interrupt.\n");
	pea _?LC55					*	pea .LC55		|
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L128					*	jra .L128		|
_?L117:							*.L117:
							*| main.c:609:       if (g_key_wait_mode) {
	tst.l _g_key_wait_mode				*	tst.l g_key_wait_mode	| g_key_wait_mode
	jbeq _?L73					*	jeq .L73		|
							*| main.c:613: 	      while ((key_code = B_KEYINP()) == 0) {
	lea _B_KEYINP,a3				*	lea B_KEYINP,%a3	|, tmp1057
							*| main.c:617:           SLEEP_PR(20);
	lea _SLEEP_PR,a4				*	lea SLEEP_PR,%a4	|, tmp1087
_?L131:							*.L131:
							*| main.c:613: 	      while ((key_code = B_KEYINP()) == 0) {
	jbsr (a3)					*	jsr (%a3)		| tmp1057
							*| main.c:613: 	      while ((key_code = B_KEYINP()) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1167
	jbne _?L73					*	jne .L73		|
							*| main.c:617:           SLEEP_PR(20);
	pea 20.w					*	pea 20.w		|
	jbsr (a4)					*	jsr (%a4)		| tmp1087
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L131					*	jra .L131		|
_?L133:							*.L133:
							*| main.c:639:         free__(sub_block_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l -116(a6),-(sp)				*	move.l -116(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp1073
	addq.l #8,sp					*	addq.l #8,%sp	|,
	jbra _?L136					*	jra .L136		|
_?L139:							*.L139:
							*| main.c:651:         if (g_image_frames[i].frame_data_ptr != NULL) {
	move.l (a3),d0					*	move.l (%a3),%d0	| MEM[(unsigned char * *)_692], _386
							*| main.c:651:         if (g_image_frames[i].frame_data_ptr != NULL) {
	jbeq _?L138					*	jeq .L138		|
							*| main.c:652:             free__(g_image_frames[i].frame_data_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _386,
	jbsr (a4)					*	jsr (%a4)		| tmp1085
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:653:             g_image_frames[i].frame_data_ptr = NULL;
	clr.l (a3)					*	clr.l (%a3)	| MEM[(unsigned char * *)_692]
_?L138:							*.L138:
							*| main.c:650:     for (int i = 0; i < image_frame_index; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
	lea (552,a3),a3					*	lea (552,%a3),%a3	|, ivtmp.136
	jbra _?L137					*	jra .L137		|
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
