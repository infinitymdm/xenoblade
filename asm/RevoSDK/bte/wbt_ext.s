.include "macros.inc"
.file "RevoSDK/bte/wbt_ext.o"

# 0x802EFC24 - 0x802EFD04
.text
.balign 4

.fn WBT_ExtCreateRecord, global
/* 802EFC24 002B91E4  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802EFC28 002B91E8  7C 08 02 A6 */	mflr r0
/* 802EFC2C 002B91EC  90 01 01 24 */	stw r0, 0x124(r1)
/* 802EFC30 002B91F0  38 00 10 02 */	li r0, 0x1002
/* 802EFC34 002B91F4  38 61 00 14 */	addi r3, r1, 0x14
/* 802EFC38 002B91F8  38 81 00 10 */	addi r4, r1, 0x10
/* 802EFC3C 002B91FC  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 802EFC40 002B9200  3B E0 00 00 */	li r31, 0x0
/* 802EFC44 002B9204  93 C1 01 18 */	stw r30, 0x118(r1)
/* 802EFC48 002B9208  93 E1 00 10 */	stw r31, 0x10(r1)
/* 802EFC4C 002B920C  B0 01 00 08 */	sth r0, 0x8(r1)
/* 802EFC50 002B9210  48 01 3C 01 */	bl SDP_GetLocalDiRecord
/* 802EFC54 002B9214  54 60 04 3F */	clrlwi. r0, r3, 16
/* 802EFC58 002B9218  41 82 00 4C */	beq .L_802EFCA4
/* 802EFC5C 002B921C  3B C1 00 16 */	addi r30, r1, 0x16
/* 802EFC60 002B9220  38 80 00 00 */	li r4, 0x0
/* 802EFC64 002B9224  7F C3 F3 78 */	mr r3, r30
/* 802EFC68 002B9228  38 A0 00 FA */	li r5, 0xfa
/* 802EFC6C 002B922C  4B D1 46 E5 */	bl memset
/* 802EFC70 002B9230  38 00 00 01 */	li r0, 0x1
/* 802EFC74 002B9234  38 60 00 0F */	li r3, 0xf
/* 802EFC78 002B9238  B0 61 00 16 */	sth r3, 0x16(r1)
/* 802EFC7C 002B923C  7F C3 F3 78 */	mr r3, r30
/* 802EFC80 002B9240  38 81 00 10 */	addi r4, r1, 0x10
/* 802EFC84 002B9244  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802EFC88 002B9248  98 01 00 1E */	stb r0, 0x1e(r1)
/* 802EFC8C 002B924C  48 01 38 65 */	bl SDP_SetLocalDiRecord
/* 802EFC90 002B9250  54 60 04 3F */	clrlwi. r0, r3, 16
/* 802EFC94 002B9254  41 82 00 10 */	beq .L_802EFCA4
/* 802EFC98 002B9258  93 E1 00 10 */	stw r31, 0x10(r1)
/* 802EFC9C 002B925C  38 60 00 00 */	li r3, 0x0
/* 802EFCA0 002B9260  48 00 00 4C */	b .L_802EFCEC
.L_802EFCA4:
/* 802EFCA4 002B9264  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802EFCA8 002B9268  38 C1 00 08 */	addi r6, r1, 0x8
/* 802EFCAC 002B926C  38 80 00 05 */	li r4, 0x5
/* 802EFCB0 002B9270  38 A0 00 01 */	li r5, 0x1
/* 802EFCB4 002B9274  48 01 48 AD */	bl SDP_AddUuidSequence
/* 802EFCB8 002B9278  38 00 00 00 */	li r0, 0x0
/* 802EFCBC 002B927C  38 80 00 01 */	li r4, 0x1
/* 802EFCC0 002B9280  3C 60 00 01 */	lis r3, 0x1
/* 802EFCC4 002B9284  98 01 00 0C */	stb r0, 0xc(r1)
/* 802EFCC8 002B9288  38 03 80 01 */	addi r0, r3, -0x7fff
/* 802EFCCC 002B928C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 802EFCD0 002B9290  98 81 00 0D */	stb r4, 0xd(r1)
/* 802EFCD4 002B9294  54 04 04 3E */	clrlwi r4, r0, 16
/* 802EFCD8 002B9298  38 E1 00 0C */	addi r7, r1, 0xc
/* 802EFCDC 002B929C  38 A0 00 01 */	li r5, 0x1
/* 802EFCE0 002B92A0  38 C0 00 02 */	li r6, 0x2
/* 802EFCE4 002B92A4  48 01 44 E5 */	bl SDP_AddAttribute
/* 802EFCE8 002B92A8  38 60 00 01 */	li r3, 0x1
.L_802EFCEC:
/* 802EFCEC 002B92AC  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802EFCF0 002B92B0  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 802EFCF4 002B92B4  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 802EFCF8 002B92B8  7C 08 03 A6 */	mtlr r0
/* 802EFCFC 002B92BC  38 21 01 20 */	addi r1, r1, 0x120
/* 802EFD00 002B92C0  4E 80 00 20 */	blr
.endfn WBT_ExtCreateRecord
