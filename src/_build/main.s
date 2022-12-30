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
	.dc.b $32
	.dc.b $00					*	.string	"GIFEX - GIF image loader with XEiJ graphic extension support version 0.3.0 by tantan 2022"
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
	.dc.b $20,$30,$3a,$33,$38,$34,$78,$32
	.dc.b $35,$36,$2c,$20,$31,$3a,$35,$31
	.dc.b $32,$78,$35,$31,$32,$2c,$20,$32
	.dc.b $3a,$37,$36,$38,$78,$35,$31,$32
	.dc.b $28,$35,$31,$32,$78,$35,$31,$32
	.dc.b $29,$2c,$20,$33,$3a,$37,$36,$38
	.dc.b $78,$35,$31,$32,$28,$66,$75,$6c
	.dc.b $6c,$2c,$58,$45,$69,$4a,$20,$6f
	.dc.b $6e,$6c,$79,$29
	.dc.b $00					*	.string	"   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512(512x512), 3:768x512(full,XEiJ only)"
_?LC5:							*.LC5:
	.dc.b $20,$20,$20,$2d,$68,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$74
	.dc.b $68,$69,$73,$20,$68,$65,$6c,$70
	.dc.b $20,$6d,$65,$73,$73,$61,$67,$65
	.dc.b $00					*	.string	"   -h ... show this help message"
_?LC6:							*.LC6:
	.dc.b $20,$20,$20,$2d,$69,$20,$2e,$2e
	.dc.b $2e,$20,$73,$68,$6f,$77,$20,$66
	.dc.b $69,$6c,$65,$20,$69,$6e,$66,$6f
	.dc.b $72,$6d,$61,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -i ... show file information"
_?LC7:							*.LC7:
	.dc.b $20,$20,$20,$2d,$6e,$20,$2e,$2e
	.dc.b $2e,$20,$69,$6d,$61,$67,$65,$20
	.dc.b $63,$65,$6e,$74,$65,$72,$69,$6e
	.dc.b $67
	.dc.b $00					*	.string	"   -n ... image centering"
_?LC8:							*.LC8:
	.dc.b $20,$20,$20,$2d,$6d,$20,$2e,$2e
	.dc.b $2e,$20,$6d,$65,$6d,$6f,$72,$79
	.dc.b $20,$63,$61,$63,$68,$65,$20,$6d
	.dc.b $6f,$64,$65
	.dc.b $00					*	.string	"   -m ... memory cache mode"
_?LC9:							*.LC9:
	.dc.b $20,$20,$20,$2d,$75,$20,$2e,$2e
	.dc.b $2e,$20,$75,$73,$65,$20,$68,$69
	.dc.b $67,$68,$20,$6d,$65,$6d,$6f,$72
	.dc.b $79,$20,$66,$6f,$72,$20,$62,$75
	.dc.b $66,$66,$65,$72,$69,$6e,$67
	.dc.b $00					*	.string	"   -u ... use high memory for buffering"
_?LC10:							*.LC10:
	.dc.b $20,$20,$20,$2d,$6b,$20,$2e,$2e
	.dc.b $2e,$20,$77,$61,$69,$74,$20,$6b
	.dc.b $65,$79,$20,$69,$6e,$70,$75,$74
	.dc.b $00					*	.string	"   -k ... wait key input"
_?LC11:							*.LC11:
	.dc.b $20,$20,$20,$2d,$66,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$6d,$61,$78
	.dc.b $20,$6e,$75,$6d,$62,$65,$72,$20
	.dc.b $6f,$66,$20,$69,$6d,$61,$67,$65
	.dc.b $73
	.dc.b $00					*	.string	"   -f<n> ... max number of images"
_?LC12:							*.LC12:
	.dc.b $20,$20,$20,$2d,$6f,$3c,$78,$2c
	.dc.b $79,$3e,$20,$2e,$2e,$2e,$20,$64
	.dc.b $69,$73,$70,$6c,$61,$79,$20,$70
	.dc.b $6f,$73,$69,$74,$69,$6f,$6e
	.dc.b $00					*	.string	"   -o<x,y> ... display position"
_?LC13:							*.LC13:
	.dc.b $20,$20,$20,$2d,$76,$3c,$6e,$3e
	.dc.b $20,$2e,$2e,$2e,$20,$62,$72,$69
	.dc.b $67,$68,$74,$6e,$65,$73,$73,$20
	.dc.b $28,$30,$2d,$31,$30,$30,$29
	.dc.b $00					*	.string	"   -v<n> ... brightness (0-100)"
_?LC14:							*.LC14:
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
							*| main.c:695:   printf("GIFEX - GIF image loader with XEiJ graphic extension support version " VERSION " by tantan 2022\n");
	pea _?LC0					*	pea .LC0		|
	lea _puts,a3					*	lea puts,%a3	|, tmp31
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:696:   printf("usage: gifex.x [options] <image.gif>\n");
	move.l #_?LC1,(sp)				*	move.l #.LC1,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:697:   printf("options:\n");
	move.l #_?LC2,(sp)				*	move.l #.LC2,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:698:   printf("   -c ... clear graphic screen\n");
	move.l #_?LC3,(sp)				*	move.l #.LC3,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:699:   printf("   -s<n> ... screen mode 0:384x256, 1:512x512, 2:768x512(512x512), 3:768x512(full,XEiJ only)\n");
	move.l #_?LC4,(sp)				*	move.l #.LC4,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:700:   printf("   -h ... show this help message\n");
	move.l #_?LC5,(sp)				*	move.l #.LC5,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:701:   printf("   -i ... show file information\n");
	move.l #_?LC6,(sp)				*	move.l #.LC6,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:702:   printf("   -n ... image centering\n");
	move.l #_?LC7,(sp)				*	move.l #.LC7,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:703:   printf("   -m ... memory cache mode\n");
	move.l #_?LC8,(sp)				*	move.l #.LC8,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:704:   printf("   -u ... use high memory for buffering\n");
	move.l #_?LC9,(sp)				*	move.l #.LC9,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:705:   printf("   -k ... wait key input\n");
	move.l #_?LC10,(sp)				*	move.l #.LC10,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:706:   printf("   -f<n> ... max number of images\n");
	move.l #_?LC11,(sp)				*	move.l #.LC11,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:707:   printf("   -o<x,y> ... display position\n");
	move.l #_?LC12,(sp)				*	move.l #.LC12,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:708:   printf("   -v<n> ... brightness (0-100)\n");
	move.l #_?LC13,(sp)				*	move.l #.LC13,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
							*| main.c:709:   printf("   -b<n> ... buffer memory size factor[1-16] (default:8)\n");
	move.l #_?LC14,(sp)				*	move.l #.LC14,(%sp)	|,
	jbsr (a3)					*	jsr (%a3)		| tmp31
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:710: }
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
	move.l 548(a3),d7				*	move.l 548(%a3),%d7	| image_frame_52(D)->frame_data_ptr, buffer
							*| main.c:91:   unsigned char* buffer_end = buffer + image_frame->frame_data_size;
	move.l d7,d2					*	move.l %d7,%d2	| buffer,
	add.l 544(a3),d2				*	add.l 544(%a3),%d2	| image_frame_52(D)->frame_data_size,
	move.l d2,48(sp)				*	move.l %d2,48(%sp)	|, %sfp
							*| main.c:92:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l 8(a3),a4					*	move.l 8(%a3),%a4	| image_frame_52(D)->global_color_table_ptr, global_palette
							*| main.c:96:   int width = image_block->width, height = image_block->height;
	moveq #0,d2					*	moveq #0,%d2	|
	move.w 26(a3),d2				*	move.w 26(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].width,
	move.l d2,52(sp)				*	move.l %d2,52(%sp)	|, %sfp
							*| main.c:96:   int width = image_block->width, height = image_block->height;
	move.w 28(a3),d2				*	move.w 28(%a3),%d2	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].height,
	move.l d2,56(sp)				*	move.l %d2,56(%sp)	|, %sfp
							*| main.c:97:   int offset_x = g_start_x + image_block->left_position;
	moveq #0,d3					*	moveq #0,%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position
	move.w 22(a3),d3				*	move.w 22(%a3),%d3	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].left_position
							*| main.c:97:   int offset_x = g_start_x + image_block->left_position;
	add.l _g_start_x,d3				*	add.l g_start_x,%d3	| g_start_x, offset_x
							*| main.c:98:   int offset_y = g_start_y + image_block->top_position;
	moveq #0,d4					*	moveq #0,%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position
	move.w 24(a3),d4				*	move.w 24(%a3),%d4	| MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].top_position
							*| main.c:98:   int offset_y = g_start_y + image_block->top_position;
	add.l _g_start_y,d4				*	add.l g_start_y,%d4	| g_start_y, offset_y
							*| main.c:100:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	btst #0,30(a3)					*	btst #0,30(%a3)	|, MEM[(struct GIF_IMAGE_BLOCK *)image_frame_52(D) + 20B].flag_code
	jbeq _?L14					*	jeq .L14		|
							*| main.c:100:   unsigned short* palette = (image_block->flag_code & 0x01) ? image_frame->local_color_table : global_palette;
	lea (32,a3),a5					*	lea (32,%a3),%a5	|, image_frame, iftmp.2_46
_?L3:							*.L3:
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	btst #0,15(a3)					*	btst #0,15(%a3)	|, MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_52(D) + 12B].flag_code
	jbeq _?L15					*	jeq .L15		|
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #0,d6					*	moveq #0,%d6	| iftmp.3_47
	move.b 18(a3),d6				*	move.b 18(%a3),%d6	| MEM[(struct GIF_GRAPHIC_CONTROL_EXTENSION *)image_frame_52(D) + 12B].transparent_index, iftmp.3_47
_?L4:							*.L4:
							*| main.c:107:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l _g_actual_width,d5			*	move.l g_actual_width,%d5	| g_actual_width, g_actual_width.4_18
	lea ___mulsi3,a6				*	lea __mulsi3,%a6	|, tmp89
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| offset_y,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	jbsr (a6)					*	jsr (%a6)		| tmp89
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:107:   unsigned short* gvram = (unsigned short*)GVRAM + g_actual_width * offset_y + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp105, tmp91
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp91
	add.l a0,a0					*	add.l %a0,%a0	| tmp91, tmp92
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
	jbcs _?L13					*	jcs .L13		|
_?L2:							*.L2:
							*| main.c:136: }
	movem.l (sp)+,d3/d4/d5/d6/d7/a3/a4/a5/a6	*	movem.l (%sp)+,#30968	|,
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	rts						*	rts
_?L14:							*.L14:
							*| main.c:92:   unsigned short* global_palette = image_frame->global_color_table_ptr;
	move.l a4,a5					*	move.l %a4,%a5	| global_palette, iftmp.2_46
	jbra _?L3					*	jra .L3		|
_?L15:							*.L15:
							*| main.c:104:   int transparent_index = (graphic_ctrl_ext->flag_code & 0x01) ? graphic_ctrl_ext->transparent_index : -1;
	moveq #-1,d6					*	moveq #-1,%d6	|, iftmp.3_47
	jbra _?L4					*	jra .L4		|
_?L13:							*.L13:
							*| main.c:111:     unsigned char palette_code = *buffer++;
	addq.l #1,d7					*	addq.l #1,%d7	|, buffer
							*| main.c:113:     if ((offset_x + x) < g_actual_width) {
	move.l d1,d0					*	move.l %d1,%d0	| x, tmp93
	add.l d3,d0					*	add.l %d3,%d0	| offset_x, tmp93
							*| main.c:113:     if ((offset_x + x) < g_actual_width) {
	cmp.l d5,d0					*	cmp.l %d5,%d0	| g_actual_width.4_18, tmp93
	jbge _?L6					*	jge .L6		|
							*| main.c:111:     unsigned char palette_code = *buffer++;
	move.l d7,a2					*	move.l %d7,%a2	| buffer,
	move.b -1(a2),d0				*	move.b -1(%a2),%d0	| MEM[(unsigned char *)buffer_65 + 4294967295B], palette_code
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	lea (2,a0),a2					*	lea (2,%a0),%a2	|, gvram,
	move.l a2,36(sp)				*	move.l %a2,36(%sp)	|, %sfp
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #-1,d2					*	moveq #-1,%d2	|,
	cmp.l d6,d2					*	cmp.l %d6,%d2	| iftmp.3_47,
	jbeq _?L7					*	jeq .L7		|
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	moveq #0,d2					*	moveq #0,%d2	|
	move.b d0,d2					*	move.b %d0,%d2	| palette_code,
	move.l d2,a2					*	move.l %d2,%a2	|, palette_code
							*| main.c:114:       if (transparent_index < 0 || palette_code != transparent_index) {
	cmp.l a2,d6					*	cmp.l %a2,%d6	| palette_code, iftmp.3_47
	jbeq _?L8					*	jeq .L8		|
_?L7:							*.L7:
							*| main.c:115:         *gvram++ = palette[ palette_code ];
	and.l #255,d0					*	and.l #255,%d0	|, palette_code
	add.l d0,d0					*	add.l %d0,%d0	| palette_code, tmp97
							*| main.c:115:         *gvram++ = palette[ palette_code ];
	move.w (a5,d0.l),(a0)				*	move.w (%a5,%d0.l),(%a0)	| *_28, *gvram_45
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
	jbge _?L2					*	jge .L2		|
							*| main.c:130:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	move.l d4,d0					*	move.l %d4,%d0	| offset_y, _35
	add.l a1,d0					*	add.l %a1,%d0	| y, _35
							*| main.c:130:       if ((offset_y + y) >= g_actual_height) break;  // Y cropping
	cmp.l 44(sp),d0					*	cmp.l 44(%sp),%d0	| %sfp, _35
	jbge _?L2					*	jge .L2		|
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _35,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| g_actual_width.4_18,
	move.l a1,48(sp)				*	move.l %a1,48(%sp)	|,
	jbsr (a6)					*	jsr (%a6)		| tmp89
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	move.l d0,a0					*	move.l %d0,%a0	| tmp106, tmp102
	add.l d3,a0					*	add.l %d3,%a0	| offset_x, tmp102
	add.l a0,a0					*	add.l %a0,%a0	| tmp102, tmp103
							*| main.c:131:       gvram = (unsigned short*)GVRAM + g_actual_width * (offset_y + y) + offset_x;
	add.l #12582912,a0				*	add.l #12582912,%a0	|, gvram
							*| main.c:128:       x = 0;
	moveq #0,d1					*	moveq #0,%d1	| x
	move.l 40(sp),a1				*	move.l 40(%sp),%a1	|,
	jbra _?L5					*	jra .L5		|
_?L8:							*.L8:
							*| main.c:116:       } else if (palette_code == transparent_index && global_palette != NULL) {
	cmp.w #0,a4					*	cmp.w #0,%a4	|, global_palette
	jbeq _?L9					*	jeq .L9		|
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.l 4(a3),d0					*	move.l 4(%a3),%d0	| image_frame_52(D)->bg_color_index, tmp99
	add.l d0,d0					*	add.l %d0,%d0	|, tmp99
							*| main.c:117:         *gvram++ = global_palette[ image_frame->bg_color_index ];
	move.w (a4,d0.l),(a0)				*	move.w (%a4,%d0.l),(%a0)	| *_33, *gvram_45
	jbra _?L9					*	jra .L9		|
							*	.size	output_image, .-output_image
	.align	2					*	.align	2
	.globl	_output_image_vdisp			*	.globl	output_image_vdisp
							*	.type	output_image_vdisp, @function
_output_image_vdisp:					*output_image_vdisp:
	movem.l d0/d1/d2/a0/a1/a2,-(sp)			*	movem.l #57568,-(%sp)	|,
							*| main.c:142:   output_image(&g_image_frames[ g_current_frame_index++ ]);
	move.l _g_current_frame_index,d1		*	move.l g_current_frame_index,%d1	| g_current_frame_index, g_current_frame_index.13_1
	move.l d1,d0					*	move.l %d1,%d0	| g_current_frame_index.13_1, _2
	addq.l #1,d0					*	addq.l #1,%d0	|, _2
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	| _2, g_current_frame_index
							*| main.c:142:   output_image(&g_image_frames[ g_current_frame_index++ ]);
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
							*| main.c:143:   if (g_current_frame_index >= g_max_frame_index) {
	move.l _g_current_frame_index,d0		*	move.l g_current_frame_index,%d0	| g_current_frame_index, g_current_frame_index.15_4
							*| main.c:143:   if (g_current_frame_index >= g_max_frame_index) {
	cmp.l _g_max_frame_index.l,d0			*	cmp.l g_max_frame_index.l,%d0	| g_max_frame_index, g_current_frame_index.15_4
	jblt _?L22					*	jlt .L22		|
							*| main.c:144:     g_current_frame_index = 0;
	moveq #0,d0					*	moveq #0,%d0	|
	move.l d0,_g_current_frame_index		*	move.l %d0,g_current_frame_index	|, g_current_frame_index
_?L22:							*.L22:
							*| main.c:146: }
	movem.l (sp)+,d0/d1/d2/a0/a1/a2			*	movem.l (%sp)+,#1799	|,
	rte						*	rte
							*	.size	output_image_vdisp, .-output_image_vdisp
	.data						*	.section	.rodata.str1.1
_?LC15:							*.LC15:
	.dc.b $79,$65,$73
	.dc.b $00					*	.string	"yes"
_?LC16:							*.LC16:
	.dc.b $6e,$6f
	.dc.b $00					*	.string	"no"
_?LC17:							*.LC17:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$74
	.dc.b $6f,$6f,$20,$6c,$61,$72,$67,$65
	.dc.b $20,$6d,$65,$6d,$6f,$72,$79,$20
	.dc.b $66,$61,$63,$74,$6f,$72,$2e
	.dc.b $00					*	.string	"error: too large memory factor."
_?LC18:							*.LC18:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$6f
	.dc.b $70,$74,$69,$6f,$6e,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown option (%s).\n"
_?LC19:							*.LC19:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6e
	.dc.b $6f,$20,$69,$6e,$70,$75,$74,$20
	.dc.b $66,$69,$6c,$65,$2e
	.dc.b $00					*	.string	"error: no input file."
_?LC20:							*.LC20:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: file read error (%s).\n"
_?LC21:							*.LC21:
	.dc.b $72,$62
	.dc.b $00					*	.string	"rb"
_?LC22:							*.LC22:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$6f,$70
	.dc.b $65,$6e,$20,$69,$6e,$70,$75,$74
	.dc.b $20,$66,$69,$6c,$65,$20,$28,$25
	.dc.b $73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: cannot open input file (%s).\n"
_?LC23:							*.LC23:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$66,$69,$6c,$65,$20,$62
	.dc.b $75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for file buffer."
_?LC24:							*.LC24:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$66
	.dc.b $69,$6c,$65,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: file read error."
_?LC25:							*.LC25:
	.dc.b $47,$49,$46
	.dc.b $00					*	.string	"GIF"
_?LC26:							*.LC26:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$73
	.dc.b $69,$67,$6e,$61,$74,$75,$72,$65
	.dc.b $20,$65,$72,$72,$6f,$72,$2e,$20
	.dc.b $6e,$6f,$74,$20,$61,$20,$47,$49
	.dc.b $46,$20,$66,$69,$6c,$65,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: signature error. not a GIF file (%s).\n"
_?LC27:							*.LC27:
	.dc.b $38,$39,$61
	.dc.b $00					*	.string	"89a"
_?LC28:							*.LC28:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$73,$75,$70,$70,$6f,$72,$74
	.dc.b $65,$64,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$20,$28
	.dc.b $25,$73,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unsupported GIF version (%s).\n"
_?LC29:							*.LC29:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$6e,$61,$6d,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"     file name: %s\n"
_?LC30:							*.LC30:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     file size: %d\n"
_?LC31:							*.LC31:
	.dc.b $20,$20,$20,$20,$20,$66,$69,$6c
	.dc.b $65,$20,$74,$69,$6d,$65,$3a,$20
	.dc.b $25,$30,$34,$64,$2d,$25,$30,$32
	.dc.b $64,$2d,$25,$30,$32,$64,$20,$25
	.dc.b $30,$32,$64,$3a,$25,$30,$32,$64
	.dc.b $3a,$25,$30,$32,$64,$0a
	.dc.b $00					*	.string	"     file time: %04d-%02d-%02d %02d:%02d:%02d\n"
_?LC32:							*.LC32:
	.dc.b $20,$20,$20,$47,$49,$46,$20,$76
	.dc.b $65,$72,$73,$69,$6f,$6e,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"   GIF version: %s\n"
_?LC33:							*.LC33:
	.dc.b $20,$20,$73,$63,$72,$65,$65,$6e
	.dc.b $20,$77,$69,$64,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  screen width: %d\n"
_?LC34:							*.LC34:
	.dc.b $20,$73,$63,$72,$65,$65,$6e,$20
	.dc.b $68,$65,$69,$67,$68,$74,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	" screen height: %d\n"
_?LC35:							*.LC35:
	.dc.b $20,$20,$20,$20,$20,$62,$69,$74
	.dc.b $20,$64,$65,$70,$74,$68,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"     bit depth: %d\n"
_?LC36:							*.LC36:
	.dc.b $20,$47,$43,$54,$20,$61,$76,$61
	.dc.b $69,$6c,$61,$62,$6c,$65,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	" GCT available: %s\n"
_?LC37:							*.LC37:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$6f,$72,$74,$3a,$20
	.dc.b $25,$73,$0a
	.dc.b $00					*	.string	"      GCT sort: %s\n"
_?LC38:							*.LC38:
	.dc.b $20,$20,$20,$20,$20,$20,$47,$43
	.dc.b $54,$20,$73,$69,$7a,$65,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"      GCT size: %d\n"
_?LC39:							*.LC39:
	.dc.b $42,$47,$20,$63,$6f,$6c,$6f,$72
	.dc.b $20,$69,$6e,$64,$65,$78,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"BG color index: %d\n"
_?LC40:							*.LC40:
	.dc.b $20,$20,$61,$73,$70,$65,$63,$74
	.dc.b $20,$72,$61,$74,$69,$6f,$3a,$20
	.dc.b $25,$64,$0a
	.dc.b $00					*	.string	"  aspect ratio: %d\n"
	.globl	___divsi3				*	.globl	__divsi3
_?LC41:							*.LC41:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $61,$6e,$6e,$6f,$74,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$65,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$66,$6f
	.dc.b $72,$20,$64,$65,$63,$6f,$64,$65
	.dc.b $20,$62,$75,$66,$66,$65,$72,$2e
	.dc.b $00					*	.string	"error: cannot allocate memory for decode buffer."
_?LC42:							*.LC42:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$6d
	.dc.b $65,$6d,$6f,$72,$79,$20,$61,$6c
	.dc.b $6c,$6f,$63,$61,$74,$69,$6f,$6e
	.dc.b $20,$66,$61,$69,$6c,$75,$72,$65
	.dc.b $20,$28,$65,$72,$72,$6e,$6f,$3d
	.dc.b $25,$64,$29,$2e,$0a
	.dc.b $00					*	.string	"error: memory allocation failure (errno=%d).\n"
	.globl	___modsi3				*	.globl	__modsi3
_?LC43:							*.LC43:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$67
	.dc.b $72,$61,$70,$68,$69,$63,$20,$63
	.dc.b $6f,$6e,$74,$72,$6f,$6c,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: graphic control extension read error."
_?LC44:							*.LC44:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$63
	.dc.b $6f,$6d,$6d,$65,$6e,$74,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$72,$65,$61,$64,$20,$65,$72
	.dc.b $72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: comment extension read error."
_?LC45:							*.LC45:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$70
	.dc.b $6c,$61,$69,$6e,$20,$74,$65,$78
	.dc.b $74,$20,$65,$78,$74,$65,$6e,$73
	.dc.b $69,$6f,$6e,$20,$72,$65,$61,$64
	.dc.b $20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: plain text extension read error."
_?LC46:							*.LC46:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$61
	.dc.b $70,$70,$6c,$69,$63,$61,$74,$69
	.dc.b $6f,$6e,$20,$65,$78,$74,$65,$6e
	.dc.b $73,$69,$6f,$6e,$20,$72,$65,$61
	.dc.b $64,$20,$65,$72,$72,$6f,$72,$2e
	.dc.b $00					*	.string	"error: application extension read error."
_?LC47:							*.LC47:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$65
	.dc.b $78,$74,$65,$6e,$73,$69,$6f,$6e
	.dc.b $20,$6c,$61,$62,$65,$6c,$20,$28
	.dc.b $30,$78,$25,$30,$32,$58,$29,$2e
	.dc.b $0a
	.dc.b $00					*	.string	"error: unknown extension label (0x%02X).\n"
_?LC48:							*.LC48:
	.dc.b $65,$72,$72,$6f,$72,$3a,$20,$75
	.dc.b $6e,$6b,$6e,$6f,$77,$6e,$20,$62
	.dc.b $6c,$6f,$63,$6b,$20,$28,$30,$78
	.dc.b $25,$30,$32,$58,$29,$2e,$0a
	.dc.b $00					*	.string	"error: unknown block (0x%02X).\n"
_?LC49:							*.LC49:
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
							*| main.c:720:   if (argc <= 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l d4,d0					*	cmp.l %d4,%d0	| argc,
	jblt _?L25					*	jlt .L25		|
							*| main.c:721:     show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L26:							*.L26:
							*| main.c:722:     return 1;
	moveq #1,d0					*	moveq #1,%d0	|, <retval>
	jbra _?L24					*	jra .L24		|
_?L25:							*.L25:
	move.l 12(a6),a4				*	move.l 12(%fp),%a4	| argv, ivtmp.151
	addq.l #4,a4					*	addq.l #4,%a4	|, ivtmp.151
							*| main.c:725:   for (int i = 1; i < argc; i++) {
	moveq #1,d3					*	moveq #1,%d3	|, i
							*| main.c:717:   char* gif_file_name = NULL;
	moveq #0,d5					*	moveq #0,%d5	| gif_file_name
	move.l #_?L31,a5				*	move.l #.L31,%a5	|, tmp985
_?L45:							*.L45:
							*| main.c:726:     if (argv[i][0] == '-') {
	move.l (a4)+,a0					*	move.l (%a4)+,%a0	| MEM[(char * *)_58], _4
							*| main.c:726:     if (argv[i][0] == '-') {
	cmp.b #45,(a0)					*	cmp.b #45,(%a0)	|, *_4
	jbne _?L115					*	jne .L115		|
							*| main.c:727:       if (argv[i][1] == 'c') {
	move.b 1(a0),d1					*	move.b 1(%a0),%d1	| MEM[(char *)_4 + 1B], _6
							*| main.c:727:       if (argv[i][1] == 'c') {
	cmp.b #99,d1					*	cmp.b #99,%d1	|, _6
	jbne _?L28					*	jne .L28		|
							*| main.c:728:         g_clear_screen = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_clear_screen			*	move.l %d1,g_clear_screen	|, g_clear_screen
_?L27:							*.L27:
							*| main.c:725:   for (int i = 1; i < argc; i++) {
	addq.l #1,d3					*	addq.l #1,%d3	|, i
							*| main.c:725:   for (int i = 1; i < argc; i++) {
	cmp.l d4,d3					*	cmp.l %d4,%d3	| argc, i
	jbne _?L45					*	jne .L45		|
							*| main.c:774:   if (gif_file_name == NULL) {
	tst.l d5					*	tst.l %d5	| gif_file_name
	jbne _?L46					*	jne .L46		|
							*| main.c:775:     printf("error: no input file.\n");
	pea _?LC19					*	pea .LC19		|
	jbra _?L163					*	jra .L163		|
_?L28:							*.L28:
	move.b d1,d0					*	move.b %d1,%d0	| _6, tmp321
	add.b #-98,d0					*	add.b #-98,%d0	|, tmp321
	cmp.b #20,d0					*	cmp.b #20,%d0	|, tmp321
	jbhi _?L29					*	jhi .L29		|
	and.l #255,d0					*	and.l #255,%d0	|, tmp322
	add.l d0,d0					*	add.l %d0,%d0	| tmp325
	move.w (a5,d0.l),d0				*	move.w (%a5,%d0.l),%d0	|, tmp326
	jmp 2(pc,d0.w)					*	jmp %pc@(2,%d0:w)	| tmp326
	.align 2,0x284c					*	.balignw 2,0x284c
							*	.swbeg	&21
_?L31:							*.L31:
	.dc.w _?L40-_?L31				*	.word .L40-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L39-_?L31				*	.word .L39-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L38-_?L31				*	.word .L38-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L37-_?L31				*	.word .L37-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L36-_?L31				*	.word .L36-.L31
	.dc.w _?L35-_?L31				*	.word .L35-.L31
	.dc.w _?L34-_?L31				*	.word .L34-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L33-_?L31				*	.word .L33-.L31
	.dc.w _?L29-_?L31				*	.word .L29-.L31
	.dc.w _?L32-_?L31				*	.word .L32-.L31
	.dc.w _?L30-_?L31				*	.word .L30-.L31
_?L38:							*.L38:
							*| main.c:730:         g_information_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_information_mode			*	move.l %d2,g_information_mode	|, g_information_mode
	jbra _?L27					*	jra .L27		|
_?L35:							*.L35:
							*| main.c:732:         g_centering_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_centering_mode			*	move.l %d0,g_centering_mode	|, g_centering_mode
	jbra _?L27					*	jra .L27		|
_?L37:							*.L37:
							*| main.c:734:         g_wait_mode = 1;
	moveq #1,d1					*	moveq #1,%d1	|,
	move.l d1,_g_wait_mode				*	move.l %d1,g_wait_mode	|, g_wait_mode
	jbra _?L27					*	jra .L27		|
_?L36:							*.L36:
							*| main.c:736:         g_memory_cache_mode = 1;
	moveq #1,d2					*	moveq #1,%d2	|,
	move.l d2,_g_memory_cache_mode			*	move.l %d2,g_memory_cache_mode	|, g_memory_cache_mode
	jbra _?L27					*	jra .L27		|
_?L32:							*.L32:
							*| main.c:738:         g_high_memory_mode = 1;
	moveq #1,d0					*	moveq #1,%d0	|,
	move.l d0,_g_high_memory_mode			*	move.l %d0,g_high_memory_mode	|, g_high_memory_mode
	jbra _?L27					*	jra .L27		|
_?L30:							*.L30:
							*| main.c:740:         g_brightness = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:740:         g_brightness = atoi(argv[i]+2);
	move.l d0,_g_brightness				*	move.l %d0,g_brightness	| tmp986, g_brightness
	jbra _?L27					*	jra .L27		|
_?L33:							*.L33:
							*| main.c:742:         g_screen_mode = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:742:         g_screen_mode = atoi(argv[i]+2);
	move.l d0,_g_screen_mode			*	move.l %d0,g_screen_mode	| tmp987, g_screen_mode
	jbra _?L27					*	jra .L27		|
_?L39:							*.L39:
							*| main.c:744:         g_image_index_limit = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:744:         g_image_index_limit = atoi(argv[i]+2);
	move.l d0,_g_image_index_limit			*	move.l %d0,g_image_index_limit	| tmp988, g_image_index_limit
	jbra _?L27					*	jra .L27		|
_?L34:							*.L34:
							*| main.c:747:         strcpy(opt,argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strcpy					*	jsr strcpy		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:748:         char* c = strchr(opt,',');
	pea 44.w					*	pea 44.w		|
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _strchr					*	jsr strchr		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,a3					*	move.l %d0,%a3	| tmp989, c
							*| main.c:749:         if (c != NULL) {
	tst.l d0					*	tst.l %d0	| c
	jbeq _?L42					*	jeq .L42		|
							*| main.c:750:           *c = '\0';
	clr.b (a3)+					*	clr.b (%a3)+	| *c_70
							*| main.c:751:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
							*| main.c:751:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp990, g_start_x
							*| main.c:752:           g_start_y = atoi(c+1);
	move.l a3,(sp)					*	move.l %a3,(%sp)	| tmp337,
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:752:           g_start_y = atoi(c+1);
	move.l d0,_g_start_y				*	move.l %d0,g_start_y	| tmp991, g_start_y
	jbra _?L27					*	jra .L27		|
_?L42:							*.L42:
							*| main.c:754:           g_start_x = atoi(opt);
	pea (_opt?0)					*	pea (opt.0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:754:           g_start_x = atoi(opt);
	move.l d0,_g_start_x				*	move.l %d0,g_start_x	| tmp992, g_start_x
	jbra _?L27					*	jra .L27		|
_?L40:							*.L40:
							*| main.c:757:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	pea 2(a0)					*	pea 2(%a0)		|
	jbsr _atoi					*	jsr atoi		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:757:         g_buffer_memory_size_factor = atoi(argv[i]+2);
	move.l d0,_g_buffer_memory_size_factor		*	move.l %d0,g_buffer_memory_size_factor	| _19, g_buffer_memory_size_factor
							*| main.c:758:         if (g_buffer_memory_size_factor > 16) {
	moveq #16,d1					*	moveq #16,%d1	|,
	cmp.l d0,d1					*	cmp.l %d0,%d1	| _19,
	jbge _?L27					*	jge .L27		|
							*| main.c:759:           printf("error: too large memory factor.\n");
	pea _?LC17					*	pea .LC17		|
_?L163:							*.L163:
							*| main.c:775:     printf("error: no input file.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:776:     return 1;
	jbra _?L26					*	jra .L26		|
_?L29:							*.L29:
							*| main.c:762:       } else if (argv[i][1] == 'h') {
	cmp.b #104,d1					*	cmp.b #104,%d1	|, _6
	jbne _?L43					*	jne .L43		|
							*| main.c:763:         show_help_message();
	jbsr _show_help_message				*	jsr show_help_message		|
_?L44:							*.L44:
							*| main.c:764:         return 0;
	moveq #0,d0					*	moveq #0,%d0	| <retval>
_?L24:							*.L24:
							*| main.c:842: }
	movem.l -176(a6),d3/d4/d5/d6/d7/a3/a4/a5	*	movem.l -176(%fp),#14584	|,
	unlk a6						*	unlk %fp		|
	rts						*	rts
_?L43:							*.L43:
							*| main.c:766:         printf("error: unknown option (%s).\n",argv[i]);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| _4,
	pea _?LC18					*	pea .LC18		|
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:767:         return 1;
	jbra _?L26					*	jra .L26		|
_?L115:							*.L115:
							*| main.c:726:     if (argv[i][0] == '-') {
	move.l a0,d5					*	move.l %a0,%d5	| _4, gif_file_name
	jbra _?L27					*	jra .L27		|
_?L46:							*.L46:
							*| main.c:794:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l _g_buffer_memory_size_factor,d0		*	move.l g_buffer_memory_size_factor,%d0	| g_buffer_memory_size_factor, g_buffer_memory_size_factor.38_23
	move.l d0,d6					*	move.l %d0,%d6	| g_buffer_memory_size_factor.38_23, _24
	swap d6						*	swap %d6	| _24
	clr.w d6					*	clr.w %d6	| _24
							*| main.c:794:   g_input_buffer_size = 65536 * g_buffer_memory_size_factor;
	move.l d6,_g_input_buffer_size			*	move.l %d6,g_input_buffer_size	| _24, g_input_buffer_size
							*| main.c:797:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	lsl.w #1,d0					*	lsl.w #1,%d0	|, tmp346
	swap d0						*	swap %d0	| tmp346
	clr.w d0					*	clr.w %d0	| tmp346
							*| main.c:797:   g_output_buffer_size = 131072 * g_buffer_memory_size_factor;
	move.l d0,_g_output_buffer_size			*	move.l %d0,g_output_buffer_size	| tmp346, g_output_buffer_size
							*| main.c:800:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l #512,d0					*	move.l #512,%d0	|, iftmp.40_37
	moveq #3,d2					*	moveq #3,%d2	|,
	cmp.l _g_screen_mode.l,d2			*	cmp.l g_screen_mode.l,%d2	| g_screen_mode,
	jbne _?L47					*	jne .L47		|
	move.l #1024,d0					*	move.l #1024,%d0	|, iftmp.40_37
_?L47:							*.L47:
							*| main.c:800:   g_actual_width = g_screen_mode == 3 ? ACTUAL_WIDTH_EX : ACTUAL_WIDTH;
	move.l d0,_g_actual_width			*	move.l %d0,g_actual_width	| iftmp.40_37, g_actual_width
							*| main.c:801:   g_actual_height = g_screen_mode == 3 ? ACTUAL_HEIGHT_EX : ACTUAL_HEIGHT;
	move.l d0,_g_actual_height			*	move.l %d0,g_actual_height	| iftmp.40_37, g_actual_height
							*| main.c:803:    if (g_information_mode == 1) {
	moveq #1,d0					*	moveq #1,%d0	|,
	cmp.l _g_information_mode.l,d0			*	cmp.l g_information_mode.l,%d0	| g_information_mode,
	jbne _?L48					*	jne .L48		|
							*| main.c:600:     int file_buffer_ofs = 0;
	clr.l -114(a6)					*	clr.l -114(%fp)	| MEM[(int *)_279]
							*| main.c:606:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	pea 35.w					*	pea 35.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:606:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	tst.l d0					*	tst.l %d0	| tmp994
	jbeq _?L49					*	jeq .L49		|
							*| main.c:607:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC20					*	pea .LC20		|
_?L164:							*.L164:
							*| main.c:614:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L155:							*.L155:
							*| main.c:684:       free__(file_buffer_ptr, g_high_memory_mode);
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:688:     return 0;
	jbra _?L44					*	jra .L44		|
_?L49:							*.L49:
							*| main.c:612:     fp = fopen(gif_file_name, "rb");
	pea _?LC21					*	pea .LC21		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp995, fp
							*| main.c:613:     if (fp == NULL) {
	jbne _?L51					*	jne .L51		|
							*| main.c:614:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC22					*	pea .LC22		|
	jbra _?L164					*	jra .L164		|
_?L51:							*.L51:
							*| main.c:619:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp996, file_buffer_ptr
	lea _fclose,a5					*	lea fclose,%a5	|, tmp966
							*| main.c:620:     if (file_buffer_ptr == NULL) {
	jbne _?L52					*	jne .L52		|
							*| main.c:621:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC23					*	pea .LC23		|
	jbsr _puts					*	jsr puts		|
							*| main.c:622:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr (a5)					*	jsr (%a5)		| tmp966
_?L154:							*.L154:
							*| main.c:839:   C_FNKMOD(func_key_display_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:841:   return 0;
	jbra _?L44					*	jra .L44		|
_?L52:							*.L52:
							*| main.c:627:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:628:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp997
	jbgt _?L53					*	jgt .L53		|
							*| main.c:629:       printf("error: file read error.\n");
	pea _?LC24					*	pea .LC24		|
	jbsr _puts					*	jsr puts		|
							*| main.c:630:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
_?L153:							*.L153:
							*| main.c:678:       fclose(fp);
	jbsr (a5)					*	jsr (%a5)		| tmp966
							*| main.c:684:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
	jbra _?L155					*	jra .L155		|
_?L53:							*.L53:
							*| main.c:636:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	lea (-114,a6),a4				*	lea (-114,%fp),%a4	|,, tmp359
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea (-98,a6),a3					*	lea (-98,%fp),%a3	|,, tmp360
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp360,
	lea _memcpy_buffer,a0				*	lea memcpy_buffer,%a0	|, tmp361
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp361
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:637:     header.signature[3] = '\0';
	clr.b -95(a6)					*	clr.b -95(%fp)	| MEM[(struct  *)_408].signature[3]
							*| main.c:638:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC25					*	pea .LC25		|
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp360,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea _printf,a3					*	lea printf,%a3	|, tmp968
							*| main.c:638:     if (strcmp(header.signature, "GIF") != 0 ) {
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	tst.l d0					*	tst.l %d0	| tmp998
	jbeq _?L54					*	jeq .L54		|
							*| main.c:639:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC26					*	pea .LC26		|
_?L152:							*.L152:
							*| main.c:674:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	jbsr (a3)					*	jsr (%a3)		| tmp968
							*| main.c:678:       fclose(fp);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbra _?L153					*	jra .L153		|
_?L54:							*.L54:
							*| main.c:646:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	moveq #-94,d7					*	moveq #-94,%d7	|, tmp370
	add.l a6,d7					*	add.l %fp,%d7	|, tmp370
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp370,
	jbsr (a0)					*	jsr (%a0)		| tmp361
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:647:     header.version[3] = '\0';
	clr.b -91(a6)					*	clr.b -91(%fp)	| MEM[(struct  *)_408].version[3]
							*| main.c:648:     if (strcmp(header.version, "89a") != 0 ) {
	pea _?LC27					*	pea .LC27		|
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp370,
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:648:     if (strcmp(header.version, "89a") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp999
	jbeq _?L55					*	jeq .L55		|
							*| main.c:649:       printf("error: unsupported GIF version (%s).\n", header.version);
	move.l d7,-(sp)					*	move.l %d7,-(%sp)	| tmp370,
	pea _?LC28					*	pea .LC28		|
	jbra _?L152					*	jra .L152		|
_?L55:							*.L55:
							*| main.c:656:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a0			*	lea get_ushort_buffer,%a0	|, tmp382
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a0)					*	jsr (%a0)		| tmp382
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:656:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-90(a6)				*	move.w %d0,-90(%fp)	| tmp1000, MEM[(struct  *)_408].screen_width
							*| main.c:657:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	jbsr (a0)					*	jsr (%a0)		| tmp382
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:657:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-88(a6)				*	move.w %d0,-88(%fp)	| tmp1001, MEM[(struct  *)_408].screen_height
							*| main.c:658:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:658:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-86(a6)				*	move.b %d0,-86(%fp)	| tmp1002, MEM[(struct  *)_408].flag_code
							*| main.c:659:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:659:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-85(a6)				*	move.b %d0,-85(%fp)	| tmp1003, MEM[(struct  *)_408].bg_color_index
							*| main.c:660:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| _24,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| tmp359,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:660:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-84(a6)				*	move.b %d0,-84(%fp)	| tmp1004, MEM[(struct  *)_408].aspect_ratio
							*| main.c:663:     printf("     file name: %s\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC29					*	pea .LC29		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
							*| main.c:664:     printf("     file size: %d\n", inf.filelen);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l -28(a6),(sp)				*	move.l -28(%fp),(%sp)	| MEM[(struct FILBUF *)_277].filelen,
	pea _?LC30					*	pea .LC30		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:665:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -32(a6),d1				*	move.w -32(%fp),%d1	| MEM[(struct FILBUF *)_277].time, _111
							*| main.c:665:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	move.w -30(a6),d0				*	move.w -30(%fp),%d0	| MEM[(struct FILBUF *)_277].date, _119
							*| main.c:665:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #31,d2					*	moveq #31,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| _111,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
	move.w d1,d2					*	move.w %d1,%d2	| _111, tmp395
	lsr.w #5,d2					*	lsr.w #5,%d2	|, tmp395
	moveq #63,d5					*	moveq #63,%d5	|,
	and.l d2,d5					*	and.l %d2,%d5	| tmp395,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #11,d2					*	moveq #11,%d2	|,
	lsr.w d2,d1					*	lsr.w %d2,%d1	|, tmp398
	moveq #31,d5					*	moveq #31,%d5	|,
	and.l d1,d5					*	and.l %d1,%d5	| tmp398,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	|,
	moveq #31,d1					*	moveq #31,%d1	|,
	and.l d0,d1					*	and.l %d0,%d1	| _119,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	move.w d0,d1					*	move.w %d0,%d1	| _119, tmp402
	lsr.w #5,d1					*	lsr.w #5,%d1	|, tmp402
	moveq #15,d2					*	moveq #15,%d2	|,
	and.l d1,d2					*	and.l %d1,%d2	| tmp402,
	move.l d2,-(sp)					*	move.l %d2,-(%sp)	|,
							*| main.c:665:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	moveq #9,d5					*	moveq #9,%d5	|,
	lsr.w d5,d0					*	lsr.w %d5,%d0	|, tmp405
							*| main.c:665:     printf("     file time: %04d-%02d-%02d %02d:%02d:%02d\n", 1980+(inf.date>>9), (inf.date>>5)&0xf, inf.date&0x1f, inf.time>>11, (inf.time>>5)&0x3f, inf.time&0x1f);
	add.w #1980,d0					*	add.w #1980,%d0	|, tmp406
	move.l d0,d1					*	move.l %d0,%d1	|,
	and.l #4095,d1					*	and.l #4095,%d1	|,
	move.l d1,-(sp)					*	move.l %d1,-(%sp)	|,
	pea _?LC31					*	pea .LC31		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
							*| main.c:666:     printf("   GIF version: %s\n", header.version);
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
	move.l d7,(sp)					*	move.l %d7,(%sp)	| tmp370,
	pea _?LC32					*	pea .LC32		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:667:     printf("  screen width: %d\n", header.screen_width);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_408].screen_width
	move.w -90(a6),d0				*	move.w -90(%fp),%d0	| MEM[(struct  *)_408].screen_width, MEM[(struct  *)_408].screen_width
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_408].screen_width,
	pea _?LC33					*	pea .LC33		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:668:     printf(" screen height: %d\n", header.screen_height);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_408].screen_height
	move.w -88(a6),d0				*	move.w -88(%fp),%d0	| MEM[(struct  *)_408].screen_height, MEM[(struct  *)_408].screen_height
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_408].screen_height,
	pea _?LC34					*	pea .LC34		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:669:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_408].flag_code
	move.b -86(a6),d0				*	move.b -86(%fp),%d0	| MEM[(struct  *)_408].flag_code, MEM[(struct  *)_408].flag_code
							*| main.c:69:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	asr.l #4,d0					*	asr.l #4,%d0	|, tmp417
							*| main.c:669:     printf("     bit depth: %d\n", 1 + read_bits(header.flag_code,4,3));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp421
	move.l d0,a0					*	move.l %d0,%a0	| tmp421,
	pea 1(a0)					*	pea 1(%a0)		|
	pea _?LC35					*	pea .LC35		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:670:     printf(" GCT available: %s\n", read_bits(header.flag_code,7,1) ? "yes" : "no");
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.54_142
	tst.b -86(a6)					*	tst.b -86(%fp)	| MEM[(struct  *)_408].flag_code
	jbpl _?L56					*	jpl .L56		|
	move.l #_?LC15,d0				*	move.l #.LC15,%d0	|, iftmp.54_142
_?L56:							*.L56:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.54_142,
	pea _?LC36					*	pea .LC36		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:69:   return ( byte_data >> bit_ofs ) & ( 0xff >> ( 8 - bit_len ));
	moveq #0,d1					*	moveq #0,%d1	| _144
	move.b -86(a6),d1				*	move.b -86(%fp),%d1	| MEM[(struct  *)_408].flag_code, _144
							*| main.c:671:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC16,d0				*	move.l #.LC16,%d0	|, iftmp.55_149
	tst.b -86(a6)					*	tst.b -86(%fp)	| MEM[(struct  *)_408].flag_code
	jbpl _?L57					*	jpl .L57		|
							*| main.c:671:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.w d1,ccr					*	move.w %d1,%ccr	| _144
	jbpl _?L57					*	jpl .L57		|
							*| main.c:671:     printf("      GCT sort: %s\n", read_bits(header.flag_code,7,1) && read_bits(header.flag_code,3,1) ? "yes" : "no");
	move.l #_?LC15,d0				*	move.l #.LC15,%d0	|, iftmp.55_149
_?L57:							*.L57:
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| iftmp.55_149,
	pea _?LC37					*	pea .LC37		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:672:     printf("      GCT size: %d\n", 3 * read_bits(header.flag_code,0,3));
	move.b -86(a6),d0				*	move.b -86(%fp),%d0	| MEM[(struct  *)_408].flag_code, tmp430
	and.b #7,d0					*	and.b #7,%d0	|, tmp430
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp432
	move.l d0,a0					*	move.l %d0,%a0	| tmp432, tmp434
	add.l d0,a0					*	add.l %d0,%a0	| tmp432, tmp434
	pea (a0,d0.l)					*	pea (%a0,%d0.l)		|
	pea _?LC38					*	pea .LC38		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:673:     printf("BG color index: %d\n", header.bg_color_index);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_408].bg_color_index
	move.b -85(a6),d0				*	move.b -85(%fp),%d0	| MEM[(struct  *)_408].bg_color_index, MEM[(struct  *)_408].bg_color_index
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_408].bg_color_index,
	pea _?LC39					*	pea .LC39		|
	jbsr (a3)					*	jsr (%a3)		| tmp968
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:674:     printf("  aspect ratio: %d\n", header.aspect_ratio);
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_408].aspect_ratio
	move.b -84(a6),d0				*	move.b -84(%fp),%d0	| MEM[(struct  *)_408].aspect_ratio, MEM[(struct  *)_408].aspect_ratio
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| MEM[(struct  *)_408].aspect_ratio,
	pea _?LC40					*	pea .LC40		|
	jbra _?L152					*	jra .L152		|
_?L48:							*.L48:
	move.l _g_brightness,d3				*	move.l g_brightness,%d3	| g_brightness, g_brightness
	lsl.l #5,d3					*	lsl.l #5,%d3	|, _601
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	moveq #0,d4					*	moveq #0,%d4	| ivtmp.145
	moveq #0,d6					*	moveq #0,%d6	| ivtmp.138
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	lea _g_rgb555_r,a5				*	lea g_rgb555_r,%a5	|, tmp450
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	lea _g_rgb555_g,a4				*	lea g_rgb555_g,%a4	|, tmp452
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	lea _g_rgb555_b,a3				*	lea g_rgb555_b,%a3	|, tmp454
_?L59:							*.L59:
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	pea 100.w					*	pea 100.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| ivtmp.138,
	jbsr ___divsi3					*	jsr __divsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:77:     unsigned int c = (int)(i * 32 * g_brightness / 100) >> 8;
	asr.l #8,d0					*	asr.l #8,%d0	|, tmp449
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp451
	lsl.w #6,d1					*	lsl.w #6,%d1	|, tmp451
							*| main.c:78:     g_rgb555_r[i] = (unsigned short)((c <<  6) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp451
	move.w d1,(a5,d4.l)				*	move.w %d1,(%a5,%d4.l)	| tmp451, MEM[(short unsigned int *)&g_rgb555_r + ivtmp.145_580 * 1]
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	move.w d0,d1					*	move.w %d0,%d1	|, tmp453
	moveq #11,d2					*	moveq #11,%d2	|,
	lsl.w d2,d1					*	lsl.w %d2,%d1	|, tmp453
							*| main.c:79:     g_rgb555_g[i] = (unsigned short)((c << 11) + 1);
	addq.w #1,d1					*	addq.w #1,%d1	|, tmp453
	move.w d1,(a4,d4.l)				*	move.w %d1,(%a4,%d4.l)	| tmp453, MEM[(short unsigned int *)&g_rgb555_g + ivtmp.145_580 * 1]
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	add.w d0,d0					*	add.w %d0,%d0	| tmp449, tmp455
							*| main.c:80:     g_rgb555_b[i] = (unsigned short)((c <<  1) + 1);
	addq.w #1,d0					*	addq.w #1,%d0	|, tmp455
	move.w d0,(a3,d4.l)				*	move.w %d0,(%a3,%d4.l)	| tmp455, MEM[(short unsigned int *)&g_rgb555_b + ivtmp.145_580 * 1]
							*| main.c:76:   for (int i = 0; i < 256; i++) {
	add.l d3,d6					*	add.l %d3,%d6	| _601, ivtmp.138
	addq.l #2,d4					*	addq.l #2,%d4	|, ivtmp.145
	cmp.l #512,d4					*	cmp.l #512,%d4	|, ivtmp.145
	jbne _?L59					*	jne .L59		|
							*| main.c:812:   if (g_clear_screen) {
	tst.l _g_clear_screen				*	tst.l g_clear_screen	| g_clear_screen
	jbeq _?L60					*	jeq .L60		|
							*| main.c:813:     G_CLR_ON();
	jbsr _G_CLR_ON					*	jsr G_CLR_ON		|
_?L60:							*.L60:
							*| main.c:817:   SUPER(0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr _SUPER					*	jsr SUPER		|
							*| main.c:820:   initialize_screen(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_screen				*	jsr initialize_screen		|
							*| main.c:823:   initialize_palette(g_screen_mode);
	move.l _g_screen_mode,(sp)			*	move.l g_screen_mode,(%sp)	| g_screen_mode,
	jbsr _initialize_palette			*	jsr initialize_palette		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:826:   C_CUROFF();
	jbsr _C_CUROFF					*	jsr C_CUROFF		|
							*| main.c:829:   func_key_display_mode = C_FNKMOD(-1);
	pea -1.w					*	pea -1.w		|
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	move.l d0,-122(a6)				*	move.l %d0,-122(%fp)	| tmp1006, %sfp
							*| main.c:830:   C_FNKMOD(3);
	moveq #3,d0					*	moveq #3,%d0	|,
	move.l d0,(sp)					*	move.l %d0,(%sp)	|,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
							*| main.c:160:     int file_buffer_size = g_input_buffer_size;
	move.l _g_input_buffer_size,d6			*	move.l g_input_buffer_size,%d6	| g_input_buffer_size, file_buffer_size
							*| main.c:161:     int file_buffer_ofs = 0;
	clr.l -118(a6)					*	clr.l -118(%fp)	| file_buffer_ofs
							*| main.c:172:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	moveq #35,d1					*	moveq #35,%d1	|,
	move.l d1,(sp)					*	move.l %d1,(%sp)	|,
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea -54(a6)					*	pea -54(%fp)		|
	jbsr _FILES					*	jsr FILES		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:172:     if (FILES(&inf,gif_file_name,0x23) != 0) {
	tst.l d0					*	tst.l %d0	| tmp1007
	jbeq _?L61					*	jeq .L61		|
							*| main.c:173:       printf("error: file read error (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC20					*	pea .LC20		|
_?L160:							*.L160:
							*| main.c:180:       printf("error: cannot open input file (%s).\n", gif_file_name);
	jbsr _printf					*	jsr printf		|
_?L161:							*.L161:
	addq.l #8,sp					*	addq.l #8,%sp	|,
_?L62:							*.L62:
							*| main.c:836:   C_CURON();
	jbsr _C_CURON					*	jsr C_CURON		|
							*| main.c:839:   C_FNKMOD(func_key_display_mode);
	move.l -122(a6),-(sp)				*	move.l -122(%fp),-(%sp)	| %sfp,
	jbsr _C_FNKMOD					*	jsr C_FNKMOD		|
	jbra _?L154					*	jra .L154		|
_?L61:							*.L61:
							*| main.c:178:     fp = fopen(gif_file_name, "rb");
	pea _?LC21					*	pea .LC21		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	jbsr _fopen					*	jsr fopen		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d3					*	move.l %d0,%d3	| tmp1008, fp
							*| main.c:179:     if (fp == NULL) {
	jbne _?L63					*	jne .L63		|
							*| main.c:180:       printf("error: cannot open input file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC22					*	pea .LC22		|
	jbra _?L160					*	jra .L160		|
_?L63:							*.L63:
							*| main.c:185:     file_buffer_ptr = malloc__(file_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,d4					*	move.l %d0,%d4	| tmp1009, file_buffer_ptr
							*| main.c:186:     if (file_buffer_ptr == NULL) {
	jbne _?L64					*	jne .L64		|
							*| main.c:187:       printf("error: cannot allocate memory for file buffer.\n");
	pea _?LC23					*	pea .LC23		|
_?L162:							*.L162:
							*| main.c:245:       printf("error: cannot allocate memory for decode buffer.\n");
	jbsr _puts					*	jsr puts		|
							*| main.c:246:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:247:       return -1;
	jbra _?L62					*	jra .L62		|
_?L64:							*.L64:
							*| main.c:193:     read_size = fread(file_buffer_ptr, 1, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea 1.w						*	pea 1.w		|
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| file_buffer_ptr,
	jbsr _fread					*	jsr fread		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:194:     if (read_size <= 0) {
	tst.l d0					*	tst.l %d0	| tmp1010
	jbgt _?L65					*	jgt .L65		|
							*| main.c:195:       printf("error: file read error.\n");
	pea _?LC24					*	pea .LC24		|
	jbsr _puts					*	jsr puts		|
							*| main.c:196:       fclose(fp);
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
_?L165:							*.L165:
							*| main.c:216:       fclose(fp);
	jbsr _fclose					*	jsr fclose		|
							*| main.c:217:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _free__					*	jsr free__		|
	jbra _?L161					*	jra .L161		|
_?L65:							*.L65:
							*| main.c:202:     memcpy_buffer(header.signature, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -114(a6)					*	pea -114(%fp)		|
	move.l #_memcpy_buffer,d7			*	move.l #memcpy_buffer,%d7	|, tmp477
	move.l d7,a0					*	move.l %d7,%a0	| tmp477,
	jbsr (a0)					*	jsr (%a0)		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:203:     header.signature[3] = '\0';
	clr.b -111(a6)					*	clr.b -111(%fp)	| MEM[(struct  *)_279].signature[3]
							*| main.c:204:     if (strcmp(header.signature, "GIF") != 0 ) {
	pea _?LC25					*	pea .LC25		|
	pea -114(a6)					*	pea -114(%fp)		|
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:204:     if (strcmp(header.signature, "GIF") != 0 ) {
	tst.l d0					*	tst.l %d0	| tmp1011
	jbeq _?L66					*	jeq .L66		|
							*| main.c:205:       printf("error: signature error. not a GIF file (%s).\n", gif_file_name);
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| gif_file_name,
	pea _?LC26					*	pea .LC26		|
_?L166:							*.L166:
							*| main.c:215:       printf("error: unsupported GIF version (%s).\n", header.version);
	jbsr _printf					*	jsr printf		|
							*| main.c:216:       fclose(fp);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	jbra _?L165					*	jra .L165		|
_?L66:							*.L66:
							*| main.c:212:     memcpy_buffer(header.version, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	moveq #-110,d5					*	moveq #-110,%d5	|, tmp486
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	move.l d7,a2					*	move.l %d7,%a2	| tmp477,
	jbsr (a2)					*	jsr (%a2)		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:213:     header.version[3] = '\0';
	clr.b -107(a6)					*	clr.b -107(%fp)	| MEM[(struct  *)_279].version[3]
							*| main.c:214:     if (strcmp(header.version,"89a") != 0 ) {
	pea _?LC27					*	pea .LC27		|
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	jbsr _strcmp					*	jsr strcmp		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-130(a6)				*	move.l %d0,-130(%fp)	| tmp1012, %sfp
							*| main.c:214:     if (strcmp(header.version,"89a") != 0 ) {
	jbeq _?L67					*	jeq .L67		|
							*| main.c:215:       printf("error: unsupported GIF version (%s).\n", header.version);
	pea (a6,d5.l)					*	pea (%fp,%d5.l)		|
	pea _?LC28					*	pea .LC28		|
	jbra _?L166					*	jra .L166		|
_?L67:							*.L67:
							*| main.c:222:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:222:     header.screen_width   = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-106(a6)				*	move.w %d0,-106(%fp)	| tmp1013, MEM[(struct  *)_279].screen_width
							*| main.c:223:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:223:     header.screen_height  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,-104(a6)				*	move.w %d0,-104(%fp)	| tmp1014, MEM[(struct  *)_279].screen_height
							*| main.c:224:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:224:     header.flag_code      = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-102(a6)				*	move.b %d0,-102(%fp)	| tmp1015, MEM[(struct  *)_279].flag_code
							*| main.c:225:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:225:     header.bg_color_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-101(a6)				*	move.b %d0,-101(%fp)	| tmp1016, MEM[(struct  *)_279].bg_color_index
							*| main.c:226:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:226:     header.aspect_ratio   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-100(a6)				*	move.b %d0,-100(%fp)	| tmp1017, MEM[(struct  *)_279].aspect_ratio
							*| main.c:229:     if (read_bits(header.flag_code,7,1)) {
	move.b -102(a6),d0				*	move.b -102(%fp),%d0	| MEM[(struct  *)_279].flag_code, _192
							*| main.c:229:     if (read_bits(header.flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _192
	jbmi _?L68					*	jmi .L68		|
_?L72:							*.L72:
							*| main.c:243:     decode_buffer_ptr = malloc__(g_output_buffer_size, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l _g_output_buffer_size,-(sp)		*	move.l g_output_buffer_size,-(%sp)	| g_output_buffer_size,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,-134(a6)				*	move.l %d0,-134(%fp)	| tmp1018, %sfp
							*| main.c:244:     if (decode_buffer_ptr == NULL) {
	jbeq _?L69					*	jeq .L69		|
							*| main.c:165:     int image_frame_index = 0;
	moveq #0,d5					*	moveq #0,%d5	| image_frame_index
_?L70:							*.L70:
							*| main.c:254:       unsigned char block_type = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	lea (-118,a6),a3				*	lea (-118,%fp),%a3	|,, tmp533
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp534
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:256:       if (block_type == GIF_TRAILOR) {
	cmp.b #59,d0					*	cmp.b #59,%d0	|, block_type
	jbeq _?L73					*	jeq .L73		|
							*| main.c:265:       } else if (block_type == IMAGE_SEPARATOR) {
	cmp.b #44,d0					*	cmp.b #44,%d0	|, block_type
	jbne _?L74					*	jne .L74		|
							*| main.c:273:         image_frame->bg_color_index = header.bg_color_index;
	move.l d5,d7					*	move.l %d5,%d7	| image_frame_index, tmp537
	lsl.l #4,d7					*	lsl.l #4,%d7	|, tmp537
	move.l d7,d0					*	move.l %d7,%d0	| tmp537, tmp538
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp538
	add.l d0,d0					*	add.l %d0,%d0	| tmp538, tmp539
	add.l d0,d0					*	add.l %d0,%d0	| tmp539, tmp540
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp541
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp542
	move.l d0,a5					*	move.l %d0,%a5	| tmp542, tmp543
	add.l #_g_image_frames,a5			*	add.l #g_image_frames,%a5	|, tmp543
							*| main.c:273:         image_frame->bg_color_index = header.bg_color_index;
	moveq #0,d0					*	moveq #0,%d0	| MEM[(struct  *)_279].bg_color_index
	move.b -101(a6),d0				*	move.b -101(%fp),%d0	| MEM[(struct  *)_279].bg_color_index, MEM[(struct  *)_279].bg_color_index
	move.l d0,4(a5)					*	move.l %d0,4(%a5)	| MEM[(struct  *)_279].bg_color_index, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].bg_color_index
							*| main.c:274:         image_frame->global_color_table_ptr = g_global_color_table;
	move.l #_g_global_color_table,8(a5)		*	move.l #g_global_color_table,8(%a5)	|, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].global_color_table_ptr
							*| main.c:285:         image_block->separator     = block_type;
	move.b #44,20(a5)				*	move.b #44,20(%a5)	|, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.separator
							*| main.c:286:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:286:         image_block->left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,22(a5)				*	move.w %d0,22(%a5)	| tmp1023, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.left_position
							*| main.c:287:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:287:         image_block->top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,24(a5)				*	move.w %d0,24(%a5)	| tmp1024, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.top_position
							*| main.c:288:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:288:         image_block->width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,26(a5)				*	move.w %d0,26(%a5)	| tmp1025, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.width
							*| main.c:289:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:289:         image_block->height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,28(a5)				*	move.w %d0,28(%a5)	| tmp1026, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.height
							*| main.c:290:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:290:         image_block->flag_code     = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,30(a5)				*	move.b %d0,30(%a5)	| _225, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.flag_code
							*| main.c:293:         if (image_frame_index == 0) {
	tst.l d5					*	tst.l %d5	| image_frame_index
	jbne _?L76					*	jne .L76		|
							*| main.c:294:           if (g_centering_mode) {
	tst.l _g_centering_mode				*	tst.l g_centering_mode	| g_centering_mode
	jbeq _?L76					*	jeq .L76		|
							*| main.c:295:             if (g_screen_mode == 0) {
	move.l _g_screen_mode,d1			*	move.l g_screen_mode,%d1	| g_screen_mode, g_screen_mode.68_227
							*| main.c:295:             if (g_screen_mode == 0) {
	jbne _?L78					*	jne .L78		|
							*| main.c:296:               g_start_x = (384 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:296:               g_start_x = (384 - image_block->width) / 2;
	move.l #384,d1					*	move.l #384,%d1	|, tmp628
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp628
							*| main.c:296:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp628, tmp630
	jbpl _?L167					*	jpl .L167		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp630
_?L167:							*.L167:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp631
							*| main.c:296:               g_start_x = (384 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp631, g_start_x
							*| main.c:297:               g_start_y = (256 - image_block->height) / 2;
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:297:               g_start_y = (256 - image_block->height) / 2;
	move.l #256,d1					*	move.l #256,%d1	|, tmp634
_?L156:							*.L156:
							*| main.c:303:               g_start_y = (512 - image_block->height) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, tmp659
							*| main.c:303:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp659, tmp661
	jbpl _?L168					*	jpl .L168		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp661
_?L168:							*.L168:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp662
							*| main.c:303:               g_start_y = (512 - image_block->height) / 2;
	move.l d1,_g_start_y				*	move.l %d1,g_start_y	| tmp662, g_start_y
_?L79:							*.L79:
							*| main.c:305:             if (g_start_x < 0) g_start_x = 0;
	tst.l _g_start_x				*	tst.l g_start_x	| g_start_x
	jbge _?L81					*	jge .L81		|
							*| main.c:305:             if (g_start_x < 0) g_start_x = 0;
	clr.l _g_start_x				*	clr.l g_start_x	| g_start_x
_?L81:							*.L81:
							*| main.c:306:             if (g_start_y < 0) g_start_y = 0;
	tst.l _g_start_y				*	tst.l g_start_y	| g_start_y
	jbge _?L76					*	jge .L76		|
							*| main.c:306:             if (g_start_y < 0) g_start_y = 0;
	clr.l _g_start_y				*	clr.l g_start_y	| g_start_y
_?L76:							*.L76:
							*| main.c:311:         if (read_bits(image_block->flag_code,7,1)) {
	tst.b d0					*	tst.b %d0	| _225
	jbmi _?L82					*	jmi .L82		|
_?L85:							*.L85:
							*| main.c:322:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:322:         image_block->lzw_min_code_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d5,d7					*	move.l %d5,%d7	| image_frame_index, tmp669
	lsl.l #4,d7					*	lsl.l #4,%d7	|, tmp669
	move.l d7,d1					*	move.l %d7,%d1	| tmp669, tmp670
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp670
	add.l d1,d1					*	add.l %d1,%d1	| tmp670, tmp671
	add.l d1,d1					*	add.l %d1,%d1	| tmp671, tmp672
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp673
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp674
	move.l d1,a0					*	move.l %d1,%a0	| tmp674, tmp675
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp675
	move.b d0,31(a0)				*	move.b %d0,31(%a0)	| _275, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.lzw_min_code_size
							*| main.c:325:         pixel_count = (image_block->width) * (image_block->height);
	move.w 26(a0),d1				*	move.w 26(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.width,
	mulu.w 28(a0),d1				*	mulu.w 28(%a0),%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][image_frame_index_217].image_block.height,
	move.l d1,-126(a6)				*	move.l %d1,-126(%fp)	|, %sfp
							*| main.c:328:         initialize_lzw(&lzw, image_block->lzw_min_code_size);
	and.l #255,d0					*	and.l #255,%d0	|, _275
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _275,
	pea -98(a6)					*	pea -98(%fp)		|
	jbsr _initialize_lzw				*	jsr initialize_lzw		|
							*| main.c:330:         sub_block_data2 = malloc__(1024*1024,g_high_memory_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l #1048576,-(sp)				*	move.l #1048576,-(%sp)	|,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
	move.l d0,a3					*	move.l %d0,%a3	| tmp1029, sub_block_data2
							*| main.c:282:         int sub_block_ofs2 = 0;
	sub.l a4,a4					*	sub.l %a4,%a4	| sub_block_ofs2
							*| main.c:335:           unsigned char sub_block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (-118,a6),a5				*	lea (-118,%fp),%a5	|,, tmp729
_?L83:							*.L83:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp729,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:337:           if (sub_block_size == 0) {
	tst.b d0					*	tst.b %d0	| sub_block_size
	jbne _?L86					*	jne .L86		|
							*| main.c:356:         decode_buffer_ofs = decode_lzw(&lzw,sub_block_data2,sub_block_ofs2,decode_buffer_ptr,pixel_count);
	move.l -126(a6),-(sp)				*	move.l -126(%fp),-(%sp)	| %sfp,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| sub_block_ofs2,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| sub_block_data2,
	pea -98(a6)					*	pea -98(%fp)		|
	jbsr _decode_lzw				*	jsr decode_lzw		|
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d0,a4					*	move.l %d0,%a4	| tmp1034, decode_buffer_ofs
							*| main.c:358:         if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbne _?L87					*	jne .L87		|
							*| main.c:382:           image_frame->frame_data_ptr = decode_buffer_ptr;
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp766
	add.l d7,d7					*	add.l %d7,%d7	| tmp766, tmp767
	add.l d7,d7					*	add.l %d7,%d7	| tmp767, tmp768
	move.l d7,d0					*	move.l %d7,%d0	| tmp768, tmp769
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp769
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp770
	move.l d0,a0					*	move.l %d0,%a0	| tmp770, tmp771
	add.l #_g_image_frames,a0			*	add.l #g_image_frames,%a0	|, tmp771
	lea (548,a0),a5					*	lea (548,%a0),%a5	|, tmp771, tmp772
	move.l -134(a6),(a5)				*	move.l -134(%fp),(%a5)	| %sfp, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].frame_data_ptr
							*| main.c:383:           image_frame->frame_data_size = decode_buffer_ofs;
	move.l a4,544(a0)				*	move.l %a4,544(%a0)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].frame_data_size
							*| main.c:385:           output_image(image_frame);
	move.l a0,-(sp)					*	move.l %a0,-(%sp)	| tmp771,
	jbsr _output_image				*	jsr output_image		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
							*| main.c:387:           image_frame->frame_data_ptr = NULL;
	clr.l (a5)					*	clr.l (%a5)	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].frame_data_ptr
	jbra _?L91					*	jra .L91		|
_?L68:							*.L68:
	lea _g_global_color_table,a0			*	lea g_global_color_table,%a0	|, ivtmp.132
							*| main.c:230:       int gct_size = 1 << (1 + read_bits(header.flag_code,0,3));
	moveq #7,d1					*	moveq #7,%d1	|,
	and.l d1,d0					*	and.l %d1,%d0	|, tmp511
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp512
	moveq #2,d1					*	moveq #2,%d1	|, tmp514
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp512, tmp513
	add.l a0,d1					*	add.l %a0,%d1	| ivtmp.132, tmp513
	move.l d1,-134(a6)				*	move.l %d1,-134(%fp)	| tmp513, %sfp
_?L71:							*.L71:
							*| main.c:232:         unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d7					*	move.b %d0,%d7	| tmp1019, r
							*| main.c:233:         unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d5					*	move.b %d0,%d5	| tmp1020, g
							*| main.c:234:         unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	pea -118(a6)					*	pea -118(%fp)		|
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_uchar_buffer				*	jsr get_uchar_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:235:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d7					*	and.l #255,%d7	|, r
	add.l d7,d7					*	add.l %d7,%d7	| r, tmp523
							*| main.c:235:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d5					*	and.l #255,%d5	|, g
	add.l d5,d5					*	add.l %d5,%d5	| g, tmp526
							*| main.c:235:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.w (a5,d7.l),d1				*	move.w (%a5,%d7.l),%d1	| g_rgb555_r[_202], tmp527
	or.w (a4,d5.l),d1				*	or.w (%a4,%d5.l),%d1	| g_rgb555_g[_204], tmp527
							*| main.c:235:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp530
							*| main.c:235:         g_global_color_table[i] = g_rgb555_r[ r ] | g_rgb555_g[ g ] | g_rgb555_b[ b ];
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	or.w (a3,d0.l),d1				*	or.w (%a3,%d0.l),%d1	| g_rgb555_b[_207], tmp527
	move.w d1,(a0)+					*	move.w %d1,(%a0)+	| tmp527, MEM[(short unsigned int *)_591]
							*| main.c:231:       for (int i = 0; i < gct_size; i++) {
	cmp.l -134(a6),a0				*	cmp.l -134(%fp),%a0	| %sfp, ivtmp.132
	jbne _?L71					*	jne .L71		|
	jbra _?L72					*	jra .L72		|
_?L69:							*.L69:
							*| main.c:245:       printf("error: cannot allocate memory for decode buffer.\n");
	pea _?LC41					*	pea .LC41		|
	jbra _?L162					*	jra .L162		|
_?L78:							*.L78:
							*| main.c:298:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	move.l d1,a0					*	move.l %d1,%a0	| g_screen_mode.68_227, tmp638
	subq.l #1,a0					*	subq.l #1,%a0	|, tmp638
							*| main.c:298:             } else if (g_screen_mode == 1 || g_screen_mode == 2) {
	moveq #1,d2					*	moveq #1,%d2	|,
	cmp.l a0,d2					*	cmp.l %a0,%d2	| tmp638,
	jbcs _?L80					*	jcs .L80		|
							*| main.c:299:               g_start_x = (512 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:299:               g_start_x = (512 - image_block->width) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp641
_?L157:							*.L157:
							*| main.c:302:               g_start_x = (768 - image_block->width) / 2;
	sub.l d2,d1					*	sub.l %d2,%d1	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, tmp653
							*| main.c:302:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,d1					*	move.l %d1,%d1	| tmp653, tmp655
	jbpl _?L169					*	jpl .L169		|
	addq.l #1,d1					*	addq.l #1,%d1	| tmp655
_?L169:							*.L169:
	asr.l #1,d1					*	asr.l #1,%d1	|, tmp656
							*| main.c:302:               g_start_x = (768 - image_block->width) / 2;
	move.l d1,_g_start_x				*	move.l %d1,g_start_x	| tmp656, g_start_x
							*| main.c:303:               g_start_y = (512 - image_block->height) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
	move.w _g_image_frames+28,d2			*	move.w g_image_frames+28,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.height
							*| main.c:303:               g_start_y = (512 - image_block->height) / 2;
	move.l #512,d1					*	move.l #512,%d1	|, tmp659
	jbra _?L156					*	jra .L156		|
_?L80:							*.L80:
							*| main.c:301:             } else if (g_screen_mode == 3) {
	subq.l #3,d1					*	subq.l #3,%d1	|, g_screen_mode.68_227
	jbne _?L79					*	jne .L79		|
							*| main.c:302:               g_start_x = (768 - image_block->width) / 2;
	moveq #0,d2					*	moveq #0,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
	move.w _g_image_frames+26,d2			*	move.w g_image_frames+26,%d2	| MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_BLOCK *)&g_image_frames][0].image_block.width
							*| main.c:302:               g_start_x = (768 - image_block->width) / 2;
	move.l #768,d1					*	move.l #768,%d1	|, tmp653
	jbra _?L157					*	jra .L157		|
_?L82:							*.L82:
							*| main.c:312:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #7,d2					*	moveq #7,%d2	|,
	and.l d2,d0					*	and.l %d2,%d0	|, tmp702
	addq.l #1,d0					*	addq.l #1,%d0	|, tmp703
							*| main.c:312:           int lct_size = 1 << (1 + (read_bits(image_block->flag_code,0,3)));
	moveq #1,d1					*	moveq #1,%d1	|, tmp704
	lsl.l d0,d1					*	lsl.l %d0,%d1	| tmp703, tmp704
	move.l d1,-126(a6)				*	move.l %d1,-126(%fp)	| tmp704, %sfp
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp707
	add.l d7,d7					*	add.l %d7,%d7	| tmp707, tmp708
	add.l d7,d7					*	add.l %d7,%d7	| tmp708, tmp709
	move.l d7,d0					*	move.l %d7,%d0	| tmp709, tmp710
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp710
	lsl.l #3,d0					*	lsl.l #3,%d0	|, tmp711
	move.l d0,a0					*	move.l %d0,%a0	| tmp711, ivtmp.128
	add.l #_g_image_frames+32,a0			*	add.l #g_image_frames+32,%a0	|, ivtmp.128
							*| main.c:313:           for (int i = 0; i < lct_size; i++) {
	clr.l -142(a6)					*	clr.l -142(%fp)	| %sfp
							*| main.c:314:             unsigned char r = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (-118,a6),a5				*	lea (-118,%fp),%a5	|,, tmp713
	lea _get_uchar_buffer,a4			*	lea get_uchar_buffer,%a4	|, tmp714
_?L84:							*.L84:
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp713,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	move.l a0,-138(a6)				*	move.l %a0,-138(%fp)	|,
	jbsr (a4)					*	jsr (%a4)		| tmp714
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.w d0,a3					*	move.w %d0,%a3	| tmp1030, r
							*| main.c:315:             unsigned char g = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp713,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp714
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.b d0,d7					*	move.b %d0,%d7	| tmp1031, g
							*| main.c:316:             unsigned char b = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp713,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp714
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:317:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	move.w a3,d1					*	move.w %a3,%d1	| r,
	and.l #255,d1					*	and.l #255,%d1	|,
	move.l d1,a3					*	move.l %d1,%a3	|, r
	add.l d1,a3					*	add.l %d1,%a3	| r, tmp721
							*| main.c:317:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d7					*	and.l #255,%d7	|, g
	add.l d7,d7					*	add.l %d7,%d7	| g, tmp724
							*| main.c:317:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_r,a2				*	lea g_rgb555_r,%a2	|,
	move.w (a3,a2.l),a1				*	move.w (%a3,%a2.l),%a1	| g_rgb555_r[_265], tmp725
	lea _g_rgb555_g,a2				*	lea g_rgb555_g,%a2	|,
	add.w (a2,d7.l),a1				*	add.w (%a2,%d7.l),%a1	| g_rgb555_g[_267], tmp725
							*| main.c:317:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	and.l #255,d0					*	and.l #255,%d0	|, b
	add.l d0,d0					*	add.l %d0,%d0	| b, tmp728
							*| main.c:317:             image_frame->local_color_table[i] = g_rgb555_r[ r ] + g_rgb555_g[ g ] + g_rgb555_b[ b ];
	lea _g_rgb555_b,a2				*	lea g_rgb555_b,%a2	|, tmp726
	move.l -138(a6),a0				*	move.l -138(%fp),%a0	|,
	add.w (a2,d0.l),a1				*	add.w (%a2,%d0.l),%a1	| g_rgb555_b[_270], tmp725
	move.w a1,(a0)+					*	move.w %a1,(%a0)+	| tmp725, MEM <short unsigned int> [(struct GIF_IMAGE_FRAME *)_597]
							*| main.c:313:           for (int i = 0; i < lct_size; i++) {
	addq.l #1,-142(a6)				*	addq.l #1,-142(%fp)	|, %sfp
							*| main.c:313:           for (int i = 0; i < lct_size; i++) {
	move.l -126(a6),d1				*	move.l -126(%fp),%d1	| %sfp,
	cmp.l -142(a6),d1				*	cmp.l -142(%fp),%d1	| %sfp,
	jbne _?L84					*	jne .L84		|
	jbra _?L85					*	jra .L85		|
_?L86:							*.L86:
							*| main.c:350:             memcpy_buffer(sub_block_data2 + sub_block_ofs2, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, sub_block_size, fp);
	and.l #255,d0					*	and.l #255,%d0	|, _285
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _285,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a5,-(sp)					*	move.l %a5,-(%sp)	| tmp729,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea (a3,a4.l)					*	pea (%a3,%a4.l)		|
	move.l d0,-138(a6)				*	move.l %d0,-138(%fp)	|,
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
	lea (24,sp),sp					*	lea (24,%sp),%sp	|,
							*| main.c:351:             sub_block_ofs2 += sub_block_size;
	move.l -138(a6),d0				*	move.l -138(%fp),%d0	|,
	add.l d0,a4					*	add.l %d0,%a4	| _285, sub_block_ofs2
	jbra _?L83					*	jra .L83		|
_?L87:							*.L87:
							*| main.c:362:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| decode_buffer_ofs,
	jbsr _malloc__					*	jsr malloc__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:362:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	move.l d5,d1					*	move.l %d5,%d1	| image_frame_index, tmp739
	lsl.l #4,d1					*	lsl.l #4,%d1	|, tmp739
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp740
	add.l d1,d1					*	add.l %d1,%d1	| tmp740, tmp741
	add.l d1,d1					*	add.l %d1,%d1	| tmp741, tmp742
	add.l d5,d1					*	add.l %d5,%d1	| image_frame_index, tmp743
	lsl.l #3,d1					*	lsl.l #3,%d1	|, tmp744
	move.l d1,a5					*	move.l %d1,%a5	| tmp744, tmp745
	add.l #_g_image_frames,a5			*	add.l #g_image_frames,%a5	|, tmp745
	move.l d0,548(a5)				*	move.l %d0,548(%a5)	| _296, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].frame_data_ptr
							*| main.c:362:           if ((image_frame->frame_data_ptr = malloc__(size,g_high_memory_mode)) == NULL) {
	jbne _?L89					*	jne .L89		|
							*| main.c:363:             printf("error: memory allocation failure (errno=%d).\n",errno);
	move.l _errno,d0				*	move.l errno,%d0	| errno, errno.79_297
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| errno.79_297,
	pea _?LC42					*	pea .LC42		|
_?L158:							*.L158:
							*| main.c:521:         printf("error: unknown block (0x%02X).\n", block_type);
	jbsr _printf					*	jsr printf		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:523:         break;
	jbra _?L73					*	jra .L73		|
_?L89:							*.L89:
							*| main.c:368:           memcpy(image_frame->frame_data_ptr,decode_buffer_ptr,size);
	move.l a4,-(sp)					*	move.l %a4,-(%sp)	| decode_buffer_ofs,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _296,
	jbsr _memcpy					*	jsr memcpy		|
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:369:           image_frame->frame_data_size = size;
	move.l a4,544(a5)				*	move.l %a4,544(%a5)	| decode_buffer_ofs, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_IMAGE_FRAME *)&g_image_frames][image_frame_index_217].frame_data_size
_?L91:							*.L91:
							*| main.c:391:         free__(sub_block_data2, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| sub_block_data2,
	jbsr _free__					*	jsr free__		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:396:         image_frame_index++;
	addq.l #1,d5					*	addq.l #1,%d5	|, image_frame_index
							*| main.c:397:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l _g_image_index_limit.l,d5			*	cmp.l g_image_index_limit.l,%d5	| g_image_index_limit, image_frame_index
	jbge _?L73					*	jge .L73		|
							*| main.c:401:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	move.l _g_memory_cache_mode,d0			*	move.l g_memory_cache_mode,%d0	| g_memory_cache_mode, pretmp_348
							*| main.c:397:         if (image_frame_index >= g_image_index_limit || image_frame_index >= MAX_IMAGE_FRAMES) {
	cmp.l #1023,d5					*	cmp.l #1023,%d5	|, image_frame_index
	jbgt _?L73					*	jgt .L73		|
							*| main.c:401:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| pretmp_348
	jbeq _?L70					*	jeq .L70		|
	pea 30.w					*	pea 30.w		|
	move.l d5,-(sp)					*	move.l %d5,-(%sp)	| image_frame_index,
	jbsr ___modsi3					*	jsr __modsi3		|
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:401:         if (g_memory_cache_mode && (image_frame_index % 30) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1036
	jbne _?L70					*	jne .L70		|
							*| main.c:402:           putchar('.');
	pea 46.w					*	pea 46.w		|
	jbsr _putchar					*	jsr putchar		|
							*| main.c:403:           fflush(stdout);
	move.l #__iob+26,(sp)				*	move.l #_iob+26,(%sp)	|,
	jbsr _fflush					*	jsr fflush		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L70					*	jra .L70		|
_?L74:							*.L74:
							*| main.c:406:       } else if (block_type == EXTENSION_INTRODUCER) {
	cmp.b #33,d0					*	cmp.b #33,%d0	|, block_type
	jbne _?L94					*	jne .L94		|
							*| main.c:408:         unsigned char extension_label = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:410:         if (extension_label == GRAPHIC_CONTROL_LABEL) {
	cmp.b #-7,d0					*	cmp.b #-7,%d0	|, extension_label
	jbne _?L95					*	jne .L95		|
							*| main.c:418:           graphic_ctrl_ext->introducer  = block_type;
	lea _g_image_frames,a5				*	lea g_image_frames,%a5	|, tmp818
	move.l d5,d0					*	move.l %d5,%d0	| image_frame_index, tmp820
	lsl.l #4,d0					*	lsl.l #4,%d0	|, tmp820
	add.l d5,d0					*	add.l %d5,%d0	| image_frame_index, tmp821
	add.l d0,d0					*	add.l %d0,%d0	| tmp821, tmp822
	add.l d0,d0					*	add.l %d0,%d0	| tmp822, tmp823
	move.l d0,d7					*	move.l %d0,%d7	| tmp823, tmp824
	add.l d5,d7					*	add.l %d5,%d7	| image_frame_index, tmp824
	lsl.l #3,d7					*	lsl.l #3,%d7	|, tmp825
	move.w #8697,12(a5,d7.l)			*	move.w #8697,12(%a5,%d7.l)	|, MEM <unsigned short> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)_258 + 12B]
							*| main.c:421:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:421:           graphic_ctrl_ext->block_size        = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	add.l d7,a5					*	add.l %d7,%a5	| tmp825, tmp836
	move.b d0,14(a5)				*	move.b %d0,14(%a5)	| tmp1038, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_217].graphic_ctrl_ext.block_size
							*| main.c:422:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:422:           graphic_ctrl_ext->flag_code         = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,15(a5)				*	move.b %d0,15(%a5)	| tmp1039, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_217].graphic_ctrl_ext.flag_code
							*| main.c:423:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _get_ushort_buffer				*	jsr get_ushort_buffer		|
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:423:           graphic_ctrl_ext->delay_time        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.w d0,16(a5)				*	move.w %d0,16(%a5)	| tmp1040, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_217].graphic_ctrl_ext.delay_time
							*| main.c:424:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:424:           graphic_ctrl_ext->transparent_index = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,18(a5)				*	move.b %d0,18(%a5)	| tmp1041, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_217].graphic_ctrl_ext.transparent_index
							*| main.c:427:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:427:           graphic_ctrl_ext->terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,19(a5)				*	move.b %d0,19(%a5)	| _308, MEM <struct GIF_IMAGE_FRAME[1024]> [(struct GIF_GRAPHIC_CONTROL_EXTENSION *)&g_image_frames][image_frame_index_217].graphic_ctrl_ext.terminator
							*| main.c:428:           if (graphic_ctrl_ext->terminator != 0x00) {
	jbeq _?L70					*	jeq .L70		|
							*| main.c:429:             printf("error: graphic control extension read error.\n");
	pea _?LC43					*	pea .LC43		|
_?L159:							*.L159:
							*| main.c:451:             printf("error: comment extension read error.\n");
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
_?L73:							*.L73:
							*| main.c:530:     if (g_memory_cache_mode) {
	tst.l _g_memory_cache_mode			*	tst.l g_memory_cache_mode	| g_memory_cache_mode
	jbne _?L102					*	jne .L102		|
_?L112:							*.L112:
							*| main.c:560:       fclose(fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	jbsr _fclose					*	jsr fclose		|
							*| main.c:566:       free__(file_buffer_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _free__,a3					*	lea free__,%a3	|, tmp940
	jbsr (a3)					*	jsr (%a3)		| tmp940
							*| main.c:572:         free__(decode_buffer_ptr, g_high_memory_mode);
	addq.l #4,sp					*	addq.l #4,%sp	|,
	move.l _g_high_memory_mode,(sp)			*	move.l g_high_memory_mode,(%sp)	| g_high_memory_mode,
	move.l -134(a6),-(sp)				*	move.l -134(%fp),-(%sp)	| %sfp,
	jbsr (a3)					*	jsr (%a3)		| tmp940
	addq.l #8,sp					*	addq.l #8,%sp	|,
	lea _g_image_frames+548,a4			*	lea g_image_frames+548,%a4	|, ivtmp.121
_?L103:							*.L103:
							*| main.c:577:     for (int i = 0; i < image_frame_index; i++) {
	cmp.l -130(a6),d5				*	cmp.l -130(%fp),%d5	| %sfp, image_frame_index
	jble _?L62					*	jle .L62		|
							*| main.c:578:         if (g_image_frames[i].frame_data_ptr != NULL) {
	move.l (a4),d0					*	move.l (%a4),%d0	| MEM[(unsigned char * *)_593], _341
							*| main.c:578:         if (g_image_frames[i].frame_data_ptr != NULL) {
	jbeq _?L113					*	jeq .L113		|
							*| main.c:579:             free__(g_image_frames[i].frame_data_ptr, g_high_memory_mode);
	move.l _g_high_memory_mode,-(sp)		*	move.l g_high_memory_mode,-(%sp)	| g_high_memory_mode,
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _341,
	jbsr (a3)					*	jsr (%a3)		| tmp971
	addq.l #8,sp					*	addq.l #8,%sp	|,
							*| main.c:580:             g_image_frames[i].frame_data_ptr = NULL;
	clr.l (a4)					*	clr.l (%a4)	| MEM[(unsigned char * *)_593]
_?L113:							*.L113:
							*| main.c:577:     for (int i = 0; i < image_frame_index; i++) {
	addq.l #1,-130(a6)				*	addq.l #1,-130(%fp)	|, %sfp
	lea (552,a4),a4					*	lea (552,%a4),%a4	|, ivtmp.121
	jbra _?L103					*	jra .L103		|
_?L95:							*.L95:
							*| main.c:434:         } else if (extension_label == COMMENT_LABEL) {
	cmp.b #-2,d0					*	cmp.b #-2,%d0	|, extension_label
	jbne _?L97					*	jne .L97		|
							*| main.c:445:           comment_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| main.c:446:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, comment_ext.block_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _309
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _309,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:449:           comment_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:450:           if (comment_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1044
	jbeq _?L70					*	jeq .L70		|
							*| main.c:451:             printf("error: comment extension read error.\n");
	pea _?LC44					*	pea .LC44		|
	jbra _?L159					*	jra .L159		|
_?L97:							*.L97:
							*| main.c:456:         } else if (extension_label == PLAIN_TEXT_LABEL) {
	cmp.b #1,d0					*	cmp.b #1,%d0	|, extension_label
	jbne _?L99					*	jne .L99		|
							*| main.c:467:           plain_text_ext.block_size              = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| main.c:468:           plain_text_ext.text_grid_left_position = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	lea _get_ushort_buffer,a5			*	lea get_ushort_buffer,%a5	|, tmp898
	jbsr (a5)					*	jsr (%a5)		| tmp898
							*| main.c:469:           plain_text_ext.text_grid_top_position  = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp898
							*| main.c:470:           plain_text_ext.text_grid_width         = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp898
							*| main.c:471:           plain_text_ext.text_grid_height        = get_ushort_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a5)					*	jsr (%a5)		| tmp898
							*| main.c:472:           plain_text_ext.character_cell_width    = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| main.c:473:           plain_text_ext.character_cell_height   = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| main.c:475:           plain_text_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
							*| main.c:476:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, plain_text_ext.block_size2, fp);
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _312
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _312,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:478:           plain_text_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:479:           if (plain_text_ext.terminator != 0x00) {
	tst.b d0					*	tst.b %d0	| tmp1046
	jbeq _?L70					*	jeq .L70		|
							*| main.c:480:             printf("error: plain text extension read error.\n");
	pea _?LC45					*	pea .LC45		|
	jbra _?L159					*	jra .L159		|
_?L99:							*.L99:
							*| main.c:485:         } else if (extension_label == APPLICATION_LABEL) {
	cmp.b #-1,d0					*	cmp.b #-1,%d0	|, extension_label
	jbne _?L100					*	jne .L100		|
							*| main.c:493:           app_ext.introducer = block_type;
	move.w #8703,-98(a6)				*	move.w #8703,-98(%fp)	|, MEM <unsigned short> [(unsigned char *)_408]
							*| main.c:496:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:496:           app_ext.block_size = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-96(a6)				*	move.b %d0,-96(%fp)	| tmp1047, MEM[(struct  *)_408].block_size
							*| main.c:498:           memcpy_buffer(app_ext.identifier, file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 8, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	pea 8.w						*	pea 8.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -95(a6)					*	pea -95(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:499:           memcpy_buffer(app_ext.auth_code,  file_buffer_ptr, &file_buffer_ofs, file_buffer_size, 3, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	pea 3.w						*	pea 3.w		|
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	pea -87(a6)					*	pea -87(%fp)		|
	jbsr _memcpy_buffer				*	jsr memcpy_buffer		|
							*| main.c:501:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (20,sp),sp					*	lea (20,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:501:           app_ext.block_size2 = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-84(a6)				*	move.b %d0,-84(%fp)	| _316, MEM[(struct  *)_408].block_size2
							*| main.c:502:           skip_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, app_ext.block_size2, fp);
	move.l d3,-(sp)					*	move.l %d3,-(%sp)	| fp,
	and.l #255,d0					*	and.l #255,%d0	|, _316
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| _316,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr _skip_buffer				*	jsr skip_buffer		|
							*| main.c:504:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
	move.l d3,(sp)					*	move.l %d3,(%sp)	| fp,
	move.l d6,-(sp)					*	move.l %d6,-(%sp)	| file_buffer_size,
	move.l a3,-(sp)					*	move.l %a3,-(%sp)	| tmp533,
	move.l d4,-(sp)					*	move.l %d4,-(%sp)	| file_buffer_ptr,
	jbsr (a4)					*	jsr (%a4)		| tmp534
	lea (16,sp),sp					*	lea (16,%sp),%sp	|,
							*| main.c:504:           app_ext.terminator = get_uchar_buffer(file_buffer_ptr, &file_buffer_ofs, file_buffer_size, fp);
	move.b d0,-78(a6)				*	move.b %d0,-78(%fp)	| _318, MEM[(struct  *)_408].terminator
							*| main.c:505:           if (app_ext.terminator != 0x00) {
	jbeq _?L70					*	jeq .L70		|
							*| main.c:506:             printf("error: application extension read error.\n");
	pea _?LC46					*	pea .LC46		|
	jbra _?L159					*	jra .L159		|
_?L100:							*.L100:
							*| main.c:513:           printf("error: unknown extension label (0x%02X).\n", extension_label);
	and.l #255,d0					*	and.l #255,%d0	|, extension_label
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| extension_label,
	pea _?LC47					*	pea .LC47		|
	jbra _?L158					*	jra .L158		|
_?L94:							*.L94:
							*| main.c:521:         printf("error: unknown block (0x%02X).\n", block_type);
	and.l #255,d0					*	and.l #255,%d0	|, block_type
	move.l d0,-(sp)					*	move.l %d0,-(%sp)	| block_type,
	pea _?LC48					*	pea .LC48		|
	jbra _?L158					*	jra .L158		|
_?L102:							*.L102:
							*| main.c:534:       g_max_frame_index = image_frame_index;
	move.l d5,_g_max_frame_index			*	move.l %d5,g_max_frame_index	| image_frame_index, g_max_frame_index
							*| main.c:535:       g_current_frame_index = 0;
	moveq #0,d2					*	moveq #0,%d2	|
	move.l d2,_g_current_frame_index		*	move.l %d2,g_current_frame_index	|, g_current_frame_index
_?L104:							*.L104:
							*| main.c:537:       WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _325
	btst #4,d0					*	btst #4,%d0	|, _325
	jbne _?L104					*	jne .L104		|
_?L105:							*.L105:
							*| main.c:538:       WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _327
	btst #4,d0					*	btst #4,%d0	|, _327
	jbeq _?L105					*	jeq .L105		|
							*| main.c:540:       if (VDISPST((unsigned char*)output_image_vdisp, 0, 2) == 0) {
	pea 2.w						*	pea 2.w		|
	clr.l -(sp)					*	clr.l -(%sp)	|
	pea _output_image_vdisp				*	pea output_image_vdisp		|
	lea _VDISPST,a3					*	lea VDISPST,%a3	|, tmp946
	jbsr (a3)					*	jsr (%a3)		| tmp946
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
							*| main.c:540:       if (VDISPST((unsigned char*)output_image_vdisp, 0, 2) == 0) {
	tst.l d0					*	tst.l %d0	| tmp1050
	jbne _?L106					*	jne .L106		|
							*| main.c:542:         getchar();
	jbsr _getchar					*	jsr getchar		|
_?L107:							*.L107:
							*| main.c:544:         WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _330
	btst #4,d0					*	btst #4,%d0	|, _330
	jbne _?L107					*	jne .L107		|
_?L108:							*.L108:
							*| main.c:545:         WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _332
	btst #4,d0					*	btst #4,%d0	|, _332
	jbeq _?L108					*	jeq .L108		|
							*| main.c:547:         VDISPST(0, 0, 0);
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	clr.l -(sp)					*	clr.l -(%sp)	|
	jbsr (a3)					*	jsr (%a3)		| tmp946
	lea (12,sp),sp					*	lea (12,%sp),%sp	|,
_?L110:							*.L110:
							*| main.c:553:       WAIT_VSYNC;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _334
	btst #4,d0					*	btst #4,%d0	|, _334
	jbeq _?L110					*	jeq .L110		|
_?L111:							*.L111:
							*| main.c:554:       WAIT_VBLANK;
	move.b 15237121,d0				*	move.b 15237121,%d0	| MEM[(volatile unsigned char *)15237121B], _336
	btst #4,d0					*	btst #4,%d0	|, _336
	jbne _?L111					*	jne .L111		|
	jbra _?L112					*	jra .L112		|
_?L106:							*.L106:
							*| main.c:550:         printf("error: cannot use vsync interrupt.\n");
	pea _?LC49					*	pea .LC49		|
	jbsr _puts					*	jsr puts		|
	addq.l #4,sp					*	addq.l #4,%sp	|,
	jbra _?L110					*	jra .L110		|
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
	.globl	_g_wait_mode				*	.globl	g_wait_mode
	.bss						*	.section	.bss
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
	.globl	_g_clear_screen				*	.globl	g_clear_screen
	.align	2					*	.align	2
							*	.type	g_clear_screen, @object
							*	.size	g_clear_screen, 4
_g_clear_screen:					*g_clear_screen:
	.ds.b	4					*	.zero	4
							*	.ident	"GCC: (GNU) 12.2.0"
