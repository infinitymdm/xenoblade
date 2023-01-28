.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/s_tan.o"

# 0x802CB188 - 0x802CB200
.text
.balign 4

.fn tan, global
/* 802CB188 00294748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CB18C 0029474C  7C 08 02 A6 */	mflr r0
/* 802CB190 00294750  3C 60 3F E9 */	lis r3, 0x3fe9
/* 802CB194 00294754  C8 42 BA 20 */	lfd f2, "@16"@sda21(r2)
/* 802CB198 00294758  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CB19C 0029475C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CB1A0 00294760  38 03 21 FB */	addi r0, r3, 0x21fb
/* 802CB1A4 00294764  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802CB1A8 00294768  54 63 00 7E */	clrlwi r3, r3, 1
/* 802CB1AC 0029476C  7C 03 00 00 */	cmpw r3, r0
/* 802CB1B0 00294770  41 81 00 10 */	bgt .L_802CB1C0
/* 802CB1B4 00294774  38 60 00 01 */	li r3, 0x1
/* 802CB1B8 00294778  4B FF F4 05 */	bl __kernel_tan
/* 802CB1BC 0029477C  48 00 00 34 */	b .L_802CB1F0
.L_802CB1C0:
/* 802CB1C0 00294780  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802CB1C4 00294784  7C 03 00 00 */	cmpw r3, r0
/* 802CB1C8 00294788  41 80 00 0C */	blt .L_802CB1D4
/* 802CB1CC 0029478C  FC 21 08 28 */	fsub f1, f1, f1
/* 802CB1D0 00294790  48 00 00 20 */	b .L_802CB1F0
.L_802CB1D4:
/* 802CB1D4 00294794  38 61 00 10 */	addi r3, r1, 0x10
/* 802CB1D8 00294798  4B FF D7 D9 */	bl __ieee754_rem_pio2
/* 802CB1DC 0029479C  54 60 0F BC */	clrlslwi r0, r3, 31, 1
/* 802CB1E0 002947A0  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 802CB1E4 002947A4  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 802CB1E8 002947A8  20 60 00 01 */	subfic r3, r0, 0x1
/* 802CB1EC 002947AC  4B FF F3 D1 */	bl __kernel_tan
.L_802CB1F0:
/* 802CB1F0 002947B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CB1F4 002947B4  7C 08 03 A6 */	mtlr r0
/* 802CB1F8 002947B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB1FC 002947BC  4E 80 00 20 */	blr
.endfn tan

# 0x8066BDA0 - 0x8066BDA8
.section .sdata2, "a"
.balign 8

.obj "@16", local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj "@16"
