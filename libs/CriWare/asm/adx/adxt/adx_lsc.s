.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn ADXT_ExecLscSvr, global
/* 8037F920 00348EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037F924 00348EE4  7C 08 02 A6 */	mflr r0
/* 8037F928 00348EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037F92C 00348EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037F930 00348EF0  3F E0 80 5E */	lis r31, lbl_805E69A8@ha
/* 8037F934 00348EF4  3B FF 69 A8 */	addi r31, r31, lbl_805E69A8@l
/* 8037F938 00348EF8  48 00 9A CD */	bl ADXCRS_Enter
/* 8037F93C 00348EFC  81 9F 00 00 */	lwz r12, 0(r31)
/* 8037F940 00348F00  2C 0C 00 00 */	cmpwi r12, 0
/* 8037F944 00348F04  41 82 00 10 */	beq .L_8037F954
/* 8037F948 00348F08  80 7F 00 04 */	lwz r3, 4(r31)
/* 8037F94C 00348F0C  7D 89 03 A6 */	mtctr r12
/* 8037F950 00348F10  4E 80 04 21 */	bctrl 
.L_8037F954:
/* 8037F954 00348F14  48 01 2C 71 */	bl LSC_ExecServer
/* 8037F958 00348F18  81 9F 00 08 */	lwz r12, 8(r31)
/* 8037F95C 00348F1C  2C 0C 00 00 */	cmpwi r12, 0
/* 8037F960 00348F20  41 82 00 10 */	beq .L_8037F970
/* 8037F964 00348F24  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8037F968 00348F28  7D 89 03 A6 */	mtctr r12
/* 8037F96C 00348F2C  4E 80 04 21 */	bctrl 
.L_8037F970:
/* 8037F970 00348F30  48 00 9A 99 */	bl ADXCRS_Leave
/* 8037F974 00348F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037F978 00348F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037F97C 00348F3C  7C 08 03 A6 */	mtlr r0
/* 8037F980 00348F40  38 21 00 10 */	addi r1, r1, 0x10
/* 8037F984 00348F44  4E 80 00 20 */	blr 
.endfn ADXT_ExecLscSvr

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj lbl_805E5D54, global
	.skip 0x8
.endobj lbl_805E5D54

.obj lbl_805E5D5C, global
	.skip 0xC
.endobj lbl_805E5D5C

.obj lbl_805E5D68, global
	.skip 0xC40
.endobj lbl_805E5D68

.obj lbl_805E69A8, global
	.skip 0x10
.endobj lbl_805E69A8
