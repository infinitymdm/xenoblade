.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B80F4
func_802B80F4:
/* 802B80F4 002816B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B80F8 002816B8  7C 08 02 A6 */	mflr r0
/* 802B80FC 002816BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8100 002816C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8104 002816C4  7C 7F 1B 78 */	mr r31, r3
/* 802B8108 002816C8  80 6D B1 80 */	lwz r3, lbl_80667300@sda21(r13)
/* 802B810C 002816CC  4B FD DC 25 */	bl func_80295D30
/* 802B8110 002816D0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8114 002816D4  40 82 00 0C */	bne .L_802B8120
/* 802B8118 002816D8  38 60 00 00 */	li r3, 0
/* 802B811C 002816DC  48 00 00 50 */	b .L_802B816C
.L_802B8120:
/* 802B8120 002816E0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802B8124 002816E4  2C 00 00 00 */	cmpwi r0, 0
/* 802B8128 002816E8  41 82 00 1C */	beq .L_802B8144
/* 802B812C 002816EC  4B DC A1 C9 */	bl func_800822F4
/* 802B8130 002816F0  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802B8134 002816F4  7C 03 00 00 */	cmpw r3, r0
/* 802B8138 002816F8  40 80 00 0C */	bge .L_802B8144
/* 802B813C 002816FC  38 60 00 00 */	li r3, 0
/* 802B8140 00281700  48 00 00 2C */	b .L_802B816C
.L_802B8144:
/* 802B8144 00281704  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 802B8148 00281708  2C 00 00 00 */	cmpwi r0, 0
/* 802B814C 0028170C  41 82 00 1C */	beq .L_802B8168
/* 802B8150 00281710  80 6D B1 80 */	lwz r3, lbl_80667300@sda21(r13)
/* 802B8154 00281714  88 03 00 18 */	lbz r0, 0x18(r3)
/* 802B8158 00281718  2C 00 00 00 */	cmpwi r0, 0
/* 802B815C 0028171C  40 82 00 0C */	bne .L_802B8168
/* 802B8160 00281720  38 60 00 00 */	li r3, 0
/* 802B8164 00281724  48 00 00 08 */	b .L_802B816C
.L_802B8168:
/* 802B8168 00281728  38 60 00 01 */	li r3, 1
.L_802B816C:
/* 802B816C 0028172C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8170 00281730  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8174 00281734  7C 08 03 A6 */	mtlr r0
/* 802B8178 00281738  38 21 00 10 */	addi r1, r1, 0x10
/* 802B817C 0028173C  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001BDA0
lbl_8001BDA0:
	.4byte 0x08080000
	.4byte 0


.section extabindex_, "wa"  # 0x80021020 - 0x80039220

.4byte func_802B80F4
	.4byte 0x0000008C
	.4byte lbl_8001BDA0