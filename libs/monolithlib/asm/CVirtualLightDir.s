.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CVirtualLightDir, global
/* 804946FC 0045DCBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494700 0045DCC0  7C 08 02 A6 */	mflr r0
/* 80494704 0045DCC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494708 0045DCC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049470C 0045DCCC  7C 7F 1B 78 */	mr r31, r3
/* 80494710 0045DCD0  48 00 00 89 */	bl __ct__CVirtualLightObj
/* 80494714 0045DCD4  C0 02 CE C0 */	lfs f0, float_8066D240@sda21(r2)
/* 80494718 0045DCD8  3C 60 80 57 */	lis r3, __vt__CVirtualLightDir@ha
/* 8049471C 0045DCDC  38 63 20 E0 */	addi r3, r3, __vt__CVirtualLightDir@l
/* 80494720 0045DCE0  38 00 00 02 */	li r0, 2
/* 80494724 0045DCE4  90 7F 00 00 */	stw r3, 0(r31)
/* 80494728 0045DCE8  7F E3 FB 78 */	mr r3, r31
/* 8049472C 0045DCEC  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80494730 0045DCF0  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80494734 0045DCF4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80494738 0045DCF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049473C 0045DCFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494740 0045DD00  7C 08 03 A6 */	mtlr r0
/* 80494744 0045DD04  38 21 00 10 */	addi r1, r1, 0x10
/* 80494748 0045DD08  4E 80 00 20 */	blr 
.endfn __ct__CVirtualLightDir

.fn func_8049474C, global
/* 8049474C 0045DD0C  D0 23 00 34 */	stfs f1, 0x34(r3)
/* 80494750 0045DD10  D0 43 00 38 */	stfs f2, 0x38(r3)
/* 80494754 0045DD14  4E 80 00 20 */	blr 
.endfn func_8049474C

.fn __dt__CVirtualLightDir, global
/* 80494758 0045DD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049475C 0045DD1C  7C 08 02 A6 */	mflr r0
/* 80494760 0045DD20  2C 03 00 00 */	cmpwi r3, 0
/* 80494764 0045DD24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494768 0045DD28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049476C 0045DD2C  7C 7F 1B 78 */	mr r31, r3
/* 80494770 0045DD30  41 82 00 10 */	beq .L_80494780
/* 80494774 0045DD34  2C 04 00 00 */	cmpwi r4, 0
/* 80494778 0045DD38  40 81 00 08 */	ble .L_80494780
/* 8049477C 0045DD3C  4B FA 04 B1 */	bl __dl__FPv
.L_80494780:
/* 80494780 0045DD40  7F E3 FB 78 */	mr r3, r31
/* 80494784 0045DD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80494788 0045DD48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049478C 0045DD4C  7C 08 03 A6 */	mtlr r0
/* 80494790 0045DD50  38 21 00 10 */	addi r1, r1, 0x10
/* 80494794 0045DD54  4E 80 00 20 */	blr 
.endfn __dt__CVirtualLightDir

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

#.balign 8


.obj CVirtualLightObj_typestr, global
	.asciz "CVirtualLightObj"
	.balign 4
.endobj CVirtualLightObj_typestr

.obj CVirtualLightDir_typestr, global
	.asciz "CVirtualLightDir"
	.balign 4
	.4byte 0
.endobj CVirtualLightDir_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CVirtualLightDir, global
	.4byte __RTTI__CVirtualLightDir
	.4byte 0
	.4byte __dt__CVirtualLightDir
	.4byte func_804947EC
	.4byte func_8049488C
.endobj __vt__CVirtualLightDir

.obj CVirtualLightDir_hierarchy, global
	.4byte __RTTI__CVirtualLightObj
	.4byte 0
	.4byte 0
.endobj CVirtualLightDir_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CVirtualLightObj, global
	.4byte CVirtualLightObj_typestr
	.4byte 0
.endobj __RTTI__CVirtualLightObj

.obj __RTTI__CVirtualLightDir, global
	.4byte CVirtualLightDir_typestr
	.4byte CVirtualLightDir_hierarchy
.endobj __RTTI__CVirtualLightDir

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066D240, global
	.float 0
	.4byte 0
.endobj float_8066D240

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001EF24", local
.hidden "@etb_8001EF24"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001EF24"

.obj "@etb_8001EF2C", local
.hidden "@etb_8001EF2C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001EF2C"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80036ADC", local
.hidden "@eti_80036ADC"
	.4byte __ct__CVirtualLightDir
	.4byte 0x00000050
	.4byte "@etb_8001EF24"
.endobj "@eti_80036ADC"

.obj "@eti_80036AE8", local
.hidden "@eti_80036AE8"
	.4byte __dt__CVirtualLightDir
	.4byte 0x00000040
	.4byte "@etb_8001EF2C"
.endobj "@eti_80036AE8"
