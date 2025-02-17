.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CTTask_cf_CfResTask, global
/* 80065848 0002EE08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006584C 0002EE0C  7C 08 02 A6 */	mflr r0
/* 80065850 0002EE10  2C 03 00 00 */	cmpwi r3, 0
/* 80065854 0002EE14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80065858 0002EE18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8006585C 0002EE1C  7C 9F 23 78 */	mr r31, r4
/* 80065860 0002EE20  93 C1 00 08 */	stw r30, 8(r1)
/* 80065864 0002EE24  7C 7E 1B 78 */	mr r30, r3
/* 80065868 0002EE28  41 82 00 1C */	beq .L_80065884
/* 8006586C 0002EE2C  38 80 00 00 */	li r4, 0
/* 80065870 0002EE30  48 3D F2 C9 */	bl __dt__CProcess
/* 80065874 0002EE34  2C 1F 00 00 */	cmpwi r31, 0
/* 80065878 0002EE38  40 81 00 0C */	ble .L_80065884
/* 8006587C 0002EE3C  7F C3 F3 78 */	mr r3, r30
/* 80065880 0002EE40  48 3C F3 AD */	bl __dl__FPv
.L_80065884:
/* 80065884 0002EE44  7F C3 F3 78 */	mr r3, r30
/* 80065888 0002EE48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8006588C 0002EE4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80065890 0002EE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80065894 0002EE54  7C 08 03 A6 */	mtlr r0
/* 80065898 0002EE58  38 21 00 10 */	addi r1, r1, 0x10
/* 8006589C 0002EE5C  4E 80 00 20 */	blr 
.endfn __dt__CTTask_cf_CfResTask

.fn __dt__cf_CfRes, global
/* 800658A0 0002EE60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800658A4 0002EE64  7C 08 02 A6 */	mflr r0
/* 800658A8 0002EE68  2C 03 00 00 */	cmpwi r3, 0
/* 800658AC 0002EE6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800658B0 0002EE70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800658B4 0002EE74  7C 9F 23 78 */	mr r31, r4
/* 800658B8 0002EE78  93 C1 00 08 */	stw r30, 8(r1)
/* 800658BC 0002EE7C  7C 7E 1B 78 */	mr r30, r3
/* 800658C0 0002EE80  41 82 00 20 */	beq .L_800658E0
/* 800658C4 0002EE84  38 80 FF FF */	li r4, -1
/* 800658C8 0002EE88  38 63 00 04 */	addi r3, r3, 4
/* 800658CC 0002EE8C  48 00 1C 81 */	bl __dt__8006754C
/* 800658D0 0002EE90  2C 1F 00 00 */	cmpwi r31, 0
/* 800658D4 0002EE94  40 81 00 0C */	ble .L_800658E0
/* 800658D8 0002EE98  7F C3 F3 78 */	mr r3, r30
/* 800658DC 0002EE9C  48 3C F3 51 */	bl __dl__FPv
.L_800658E0:
/* 800658E0 0002EEA0  7F C3 F3 78 */	mr r3, r30
/* 800658E4 0002EEA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800658E8 0002EEA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800658EC 0002EEAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800658F0 0002EEB0  7C 08 03 A6 */	mtlr r0
/* 800658F4 0002EEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800658F8 0002EEB8  4E 80 00 20 */	blr 
.endfn __dt__cf_CfRes

.fn __dt__cf_CfResTask, global
/* 800658FC 0002EEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80065900 0002EEC0  7C 08 02 A6 */	mflr r0
/* 80065904 0002EEC4  2C 03 00 00 */	cmpwi r3, 0
/* 80065908 0002EEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8006590C 0002EECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80065910 0002EED0  7C 9F 23 78 */	mr r31, r4
/* 80065914 0002EED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80065918 0002EED8  7C 7E 1B 78 */	mr r30, r3
/* 8006591C 0002EEDC  41 82 00 3C */	beq .L_80065958
/* 80065920 0002EEE0  34 63 00 54 */	addic. r3, r3, 0x54
/* 80065924 0002EEE4  41 82 00 10 */	beq .L_80065934
/* 80065928 0002EEE8  38 63 00 04 */	addi r3, r3, 4
/* 8006592C 0002EEEC  38 80 FF FF */	li r4, -1
/* 80065930 0002EEF0  48 00 1C 1D */	bl __dt__8006754C
.L_80065934:
/* 80065934 0002EEF4  2C 1E 00 00 */	cmpwi r30, 0
/* 80065938 0002EEF8  41 82 00 10 */	beq .L_80065948
/* 8006593C 0002EEFC  7F C3 F3 78 */	mr r3, r30
/* 80065940 0002EF00  38 80 00 00 */	li r4, 0
/* 80065944 0002EF04  48 3D F1 F5 */	bl __dt__CProcess
.L_80065948:
/* 80065948 0002EF08  2C 1F 00 00 */	cmpwi r31, 0
/* 8006594C 0002EF0C  40 81 00 0C */	ble .L_80065958
/* 80065950 0002EF10  7F C3 F3 78 */	mr r3, r30
/* 80065954 0002EF14  48 3C F2 D9 */	bl __dl__FPv
.L_80065958:
/* 80065958 0002EF18  7F C3 F3 78 */	mr r3, r30
/* 8006595C 0002EF1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80065960 0002EF20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80065964 0002EF24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80065968 0002EF28  7C 08 03 A6 */	mtlr r0
/* 8006596C 0002EF2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80065970 0002EF30  4E 80 00 20 */	blr 
.endfn __dt__cf_CfResTask

.fn func_80065974, global
/* 80065974 0002EF34  4E 80 00 20 */	blr 
.endfn func_80065974

.fn func_80065978, global
/* 80065978 0002EF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8006597C 0002EF3C  7C 08 02 A6 */	mflr r0
/* 80065980 0002EF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80065984 0002EF44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80065988 0002EF48  7C 7F 1B 78 */	mr r31, r3
/* 8006598C 0002EF4C  38 63 00 58 */	addi r3, r3, 0x58
/* 80065990 0002EF50  48 00 23 A9 */	bl func_80067D38
/* 80065994 0002EF54  38 7F 00 54 */	addi r3, r31, 0x54
/* 80065998 0002EF58  4B FF D7 C1 */	bl func_80063158
/* 8006599C 0002EF5C  38 00 00 00 */	li r0, 0
/* 800659A0 0002EF60  90 0D A5 00 */	stw r0, lbl_80666680@sda21(r13)
/* 800659A4 0002EF64  90 0D A4 F8 */	stw r0, lbl_80666678@sda21(r13)
/* 800659A8 0002EF68  90 0D A4 FC */	stw r0, lbl_8066667C@sda21(r13)
/* 800659AC 0002EF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800659B0 0002EF70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800659B4 0002EF74  7C 08 03 A6 */	mtlr r0
/* 800659B8 0002EF78  38 21 00 10 */	addi r1, r1, 0x10
/* 800659BC 0002EF7C  4E 80 00 20 */	blr 
.endfn func_80065978

.fn func_800659C0, global
/* 800659C0 0002EF80  4E 80 00 20 */	blr 
.endfn func_800659C0

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80007C44", local
.hidden "@etb_80007C44"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007C44"

.obj "@etb_80007C4C", local
.hidden "@etb_80007C4C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80007C4C"

.obj "@etb_80007C54", local
.hidden "@etb_80007C54"
	.4byte 0x10080000
	.4byte 0x0000004C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8780001E
	.4byte 0x00000054
	.4byte __dt__cf_CfRes
.endobj "@etb_80007C54"

.obj "@etb_80007C70", local
.hidden "@etb_80007C70"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80007C70"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80022E38", local
.hidden "@eti_80022E38"
	.4byte __dt__CTTask_cf_CfResTask
	.4byte 0x00000058
	.4byte "@etb_80007C44"
.endobj "@eti_80022E38"

.obj "@eti_80022E44", local
.hidden "@eti_80022E44"
	.4byte __dt__cf_CfRes
	.4byte 0x0000005C
	.4byte "@etb_80007C4C"
.endobj "@eti_80022E44"

.obj "@eti_80022E50", local
.hidden "@eti_80022E50"
	.4byte __dt__cf_CfResTask
	.4byte 0x00000078
	.4byte "@etb_80007C54"
.endobj "@eti_80022E50"

.obj "@eti_80022E5C", local
.hidden "@eti_80022E5C"
	.4byte func_80065978
	.4byte 0x00000048
	.4byte "@etb_80007C70"
.endobj "@eti_80022E5C"
