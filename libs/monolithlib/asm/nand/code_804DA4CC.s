.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900



#part of CNRequest?
.fn func_804DA4CC, global
/* 804DA4CC 004A3A8C  88 0D C1 30 */	lbz r0, lbl_806682B0@sda21(r13)
/* 804DA4D0 004A3A90  2C 00 00 00 */	cmpwi r0, 0
/* 804DA4D4 004A3A94  4D 82 00 20 */	beqlr 
/* 804DA4D8 004A3A98  48 00 01 C4 */	b func_804DA69C
/* 804DA4DC 004A3A9C  4E 80 00 20 */	blr 
.endfn func_804DA4CC

.fn func_804DA4E0, global
/* 804DA4E0 004A3AA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA4E4 004A3AA4  7C 08 02 A6 */	mflr r0
/* 804DA4E8 004A3AA8  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA4EC 004A3AAC  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA4F0 004A3AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA4F4 004A3AB4  38 00 00 01 */	li r0, 1
/* 804DA4F8 004A3AB8  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA4FC 004A3ABC  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA500 004A3AC0  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA504 004A3AC4  3B E0 00 00 */	li r31, 0
/* 804DA508 004A3AC8  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA50C 004A3ACC  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA510 004A3AD0  4B E7 6A 91 */	bl NANDCheckAsync
/* 804DA514 004A3AD4  2C 03 00 00 */	cmpwi r3, 0
/* 804DA518 004A3AD8  7C 7E 1B 78 */	mr r30, r3
/* 804DA51C 004A3ADC  41 82 00 0C */	beq .L_804DA528
/* 804DA520 004A3AE0  48 00 05 39 */	bl func_804DAA58
/* 804DA524 004A3AE4  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA528:
/* 804DA528 004A3AE8  7F C3 F3 78 */	mr r3, r30
/* 804DA52C 004A3AEC  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA530 004A3AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA534 004A3AF4  7C 08 03 A6 */	mtlr r0
/* 804DA538 004A3AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA53C 004A3AFC  4E 80 00 20 */	blr 
.endfn func_804DA4E0

.fn func_804DA540, global
/* 804DA540 004A3B00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA544 004A3B04  7C 08 02 A6 */	mflr r0
/* 804DA548 004A3B08  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA54C 004A3B0C  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA550 004A3B10  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA554 004A3B14  3D 00 80 66 */	lis r8, lbl_806627AC@ha
/* 804DA558 004A3B18  7C 85 23 78 */	mr r5, r4
/* 804DA55C 004A3B1C  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA560 004A3B20  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DA564 004A3B24  3B C0 00 01 */	li r30, 1
/* 804DA568 004A3B28  3B E0 00 00 */	li r31, 0
/* 804DA56C 004A3B2C  38 88 27 AC */	addi r4, r8, lbl_806627AC@l
/* 804DA570 004A3B30  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA574 004A3B34  9B CD C1 28 */	stb r30, lbl_806682A8@sda21(r13)
/* 804DA578 004A3B38  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA57C 004A3B3C  4B E7 55 65 */	bl NANDOpenAsync
/* 804DA580 004A3B40  2C 03 00 00 */	cmpwi r3, 0
/* 804DA584 004A3B44  7C 7D 1B 78 */	mr r29, r3
/* 804DA588 004A3B48  41 82 00 10 */	beq .L_804DA598
/* 804DA58C 004A3B4C  48 00 04 CD */	bl func_804DAA58
/* 804DA590 004A3B50  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
/* 804DA594 004A3B54  48 00 00 08 */	b .L_804DA59C
.L_804DA598:
/* 804DA598 004A3B58  9B CD C1 30 */	stb r30, lbl_806682B0@sda21(r13)
.L_804DA59C:
/* 804DA59C 004A3B5C  7F A3 EB 78 */	mr r3, r29
/* 804DA5A0 004A3B60  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DA5A4 004A3B64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA5A8 004A3B68  7C 08 03 A6 */	mtlr r0
/* 804DA5AC 004A3B6C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA5B0 004A3B70  4E 80 00 20 */	blr 
.endfn func_804DA540

.fn func_804DA5B4, global
/* 804DA5B4 004A3B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA5B8 004A3B78  7C 08 02 A6 */	mflr r0
/* 804DA5BC 004A3B7C  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA5C0 004A3B80  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA5C4 004A3B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA5C8 004A3B88  7C 68 1B 78 */	mr r8, r3
/* 804DA5CC 004A3B8C  3C 60 80 66 */	lis r3, lbl_806627AC@ha
/* 804DA5D0 004A3B90  7C 85 23 78 */	mr r5, r4
/* 804DA5D4 004A3B94  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA5D8 004A3B98  38 00 00 01 */	li r0, 1
/* 804DA5DC 004A3B9C  3B E0 00 00 */	li r31, 0
/* 804DA5E0 004A3BA0  7D 04 43 78 */	mr r4, r8
/* 804DA5E4 004A3BA4  38 63 27 AC */	addi r3, r3, lbl_806627AC@l
/* 804DA5E8 004A3BA8  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA5EC 004A3BAC  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA5F0 004A3BB0  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA5F4 004A3BB4  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA5F8 004A3BB8  4B E7 47 A9 */	bl NANDReadAsync
/* 804DA5FC 004A3BBC  2C 03 00 00 */	cmpwi r3, 0
/* 804DA600 004A3BC0  7C 7E 1B 78 */	mr r30, r3
/* 804DA604 004A3BC4  41 82 00 0C */	beq .L_804DA610
/* 804DA608 004A3BC8  48 00 04 51 */	bl func_804DAA58
/* 804DA60C 004A3BCC  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA610:
/* 804DA610 004A3BD0  7F C3 F3 78 */	mr r3, r30
/* 804DA614 004A3BD4  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA618 004A3BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA61C 004A3BDC  7C 08 03 A6 */	mtlr r0
/* 804DA620 004A3BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA624 004A3BE4  4E 80 00 20 */	blr 
.endfn func_804DA5B4

.fn func_804DA628, global
/* 804DA628 004A3BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA62C 004A3BEC  7C 08 02 A6 */	mflr r0
/* 804DA630 004A3BF0  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA634 004A3BF4  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA638 004A3BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA63C 004A3BFC  7C 68 1B 78 */	mr r8, r3
/* 804DA640 004A3C00  3C 60 80 66 */	lis r3, lbl_806627AC@ha
/* 804DA644 004A3C04  7C 85 23 78 */	mr r5, r4
/* 804DA648 004A3C08  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA64C 004A3C0C  38 00 00 01 */	li r0, 1
/* 804DA650 004A3C10  3B E0 00 00 */	li r31, 0
/* 804DA654 004A3C14  7D 04 43 78 */	mr r4, r8
/* 804DA658 004A3C18  38 63 27 AC */	addi r3, r3, lbl_806627AC@l
/* 804DA65C 004A3C1C  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA660 004A3C20  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA664 004A3C24  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA668 004A3C28  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA66C 004A3C2C  4B E7 48 25 */	bl NANDWriteAsync
/* 804DA670 004A3C30  2C 03 00 00 */	cmpwi r3, 0
/* 804DA674 004A3C34  7C 7E 1B 78 */	mr r30, r3
/* 804DA678 004A3C38  41 82 00 0C */	beq .L_804DA684
/* 804DA67C 004A3C3C  48 00 03 DD */	bl func_804DAA58
/* 804DA680 004A3C40  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA684:
/* 804DA684 004A3C44  7F C3 F3 78 */	mr r3, r30
/* 804DA688 004A3C48  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA68C 004A3C4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA690 004A3C50  7C 08 03 A6 */	mtlr r0
/* 804DA694 004A3C54  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA698 004A3C58  4E 80 00 20 */	blr 
.endfn func_804DA628

.fn func_804DA69C, global
/* 804DA69C 004A3C5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA6A0 004A3C60  7C 08 02 A6 */	mflr r0
/* 804DA6A4 004A3C64  3C 60 80 66 */	lis r3, lbl_806627AC@ha
/* 804DA6A8 004A3C68  3C 80 80 4E */	lis r4, func_804DA97C@ha
/* 804DA6AC 004A3C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA6B0 004A3C70  3C A0 80 66 */	lis r5, lbl_806626F0@ha
/* 804DA6B4 004A3C74  38 00 00 01 */	li r0, 1
/* 804DA6B8 004A3C78  38 63 27 AC */	addi r3, r3, lbl_806627AC@l
/* 804DA6BC 004A3C7C  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA6C0 004A3C80  3B E0 00 00 */	li r31, 0
/* 804DA6C4 004A3C84  38 84 A9 7C */	addi r4, r4, func_804DA97C@l
/* 804DA6C8 004A3C88  38 A5 26 F0 */	addi r5, r5, lbl_806626F0@l
/* 804DA6CC 004A3C8C  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA6D0 004A3C90  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA6D4 004A3C94  4B E7 55 FD */	bl NANDCloseAsync
/* 804DA6D8 004A3C98  2C 03 00 00 */	cmpwi r3, 0
/* 804DA6DC 004A3C9C  7C 7E 1B 78 */	mr r30, r3
/* 804DA6E0 004A3CA0  41 82 00 10 */	beq .L_804DA6F0
/* 804DA6E4 004A3CA4  48 00 03 75 */	bl func_804DAA58
/* 804DA6E8 004A3CA8  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
/* 804DA6EC 004A3CAC  48 00 00 08 */	b .L_804DA6F4
.L_804DA6F0:
/* 804DA6F0 004A3CB0  9B ED C1 30 */	stb r31, lbl_806682B0@sda21(r13)
.L_804DA6F4:
/* 804DA6F4 004A3CB4  7F C3 F3 78 */	mr r3, r30
/* 804DA6F8 004A3CB8  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA6FC 004A3CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA700 004A3CC0  7C 08 03 A6 */	mtlr r0
/* 804DA704 004A3CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA708 004A3CC8  4E 80 00 20 */	blr 
.endfn func_804DA69C

.fn func_804DA70C, global
/* 804DA70C 004A3CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA710 004A3CD0  7C 08 02 A6 */	mflr r0
/* 804DA714 004A3CD4  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA718 004A3CD8  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA71C 004A3CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA720 004A3CE0  38 00 00 01 */	li r0, 1
/* 804DA724 004A3CE4  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA728 004A3CE8  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA72C 004A3CEC  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA730 004A3CF0  3B E0 00 00 */	li r31, 0
/* 804DA734 004A3CF4  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA738 004A3CF8  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA73C 004A3CFC  4B E7 40 E5 */	bl NANDCreateAsync
/* 804DA740 004A3D00  2C 03 00 00 */	cmpwi r3, 0
/* 804DA744 004A3D04  7C 7E 1B 78 */	mr r30, r3
/* 804DA748 004A3D08  41 82 00 0C */	beq .L_804DA754
/* 804DA74C 004A3D0C  48 00 03 0D */	bl func_804DAA58
/* 804DA750 004A3D10  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA754:
/* 804DA754 004A3D14  7F C3 F3 78 */	mr r3, r30
/* 804DA758 004A3D18  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA75C 004A3D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA760 004A3D20  7C 08 03 A6 */	mtlr r0
/* 804DA764 004A3D24  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA768 004A3D28  4E 80 00 20 */	blr 
.endfn func_804DA70C

.fn func_804DA76C, global
/* 804DA76C 004A3D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA770 004A3D30  7C 08 02 A6 */	mflr r0
/* 804DA774 004A3D34  3C 80 80 4E */	lis r4, func_804DA97C@ha
/* 804DA778 004A3D38  3C A0 80 66 */	lis r5, lbl_806626F0@ha
/* 804DA77C 004A3D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA780 004A3D40  38 00 00 01 */	li r0, 1
/* 804DA784 004A3D44  38 84 A9 7C */	addi r4, r4, func_804DA97C@l
/* 804DA788 004A3D48  38 A5 26 F0 */	addi r5, r5, lbl_806626F0@l
/* 804DA78C 004A3D4C  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA790 004A3D50  3B E0 00 00 */	li r31, 0
/* 804DA794 004A3D54  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA798 004A3D58  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA79C 004A3D5C  4B E7 43 F5 */	bl NANDDeleteAsync
/* 804DA7A0 004A3D60  2C 03 00 00 */	cmpwi r3, 0
/* 804DA7A4 004A3D64  7C 7E 1B 78 */	mr r30, r3
/* 804DA7A8 004A3D68  41 82 00 0C */	beq .L_804DA7B4
/* 804DA7AC 004A3D6C  48 00 02 AD */	bl func_804DAA58
/* 804DA7B0 004A3D70  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA7B4:
/* 804DA7B4 004A3D74  7F C3 F3 78 */	mr r3, r30
/* 804DA7B8 004A3D78  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA7BC 004A3D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA7C0 004A3D80  7C 08 03 A6 */	mtlr r0
/* 804DA7C4 004A3D84  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA7C8 004A3D88  4E 80 00 20 */	blr 
.endfn func_804DA76C

.fn func_804DA7CC, global
/* 804DA7CC 004A3D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA7D0 004A3D90  7C 08 02 A6 */	mflr r0
/* 804DA7D4 004A3D94  3C A0 80 4E */	lis r5, func_804DA97C@ha
/* 804DA7D8 004A3D98  3C C0 80 66 */	lis r6, lbl_806626F0@ha
/* 804DA7DC 004A3D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA7E0 004A3DA0  38 00 00 01 */	li r0, 1
/* 804DA7E4 004A3DA4  38 A5 A9 7C */	addi r5, r5, func_804DA97C@l
/* 804DA7E8 004A3DA8  38 C6 26 F0 */	addi r6, r6, lbl_806626F0@l
/* 804DA7EC 004A3DAC  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA7F0 004A3DB0  3B E0 00 00 */	li r31, 0
/* 804DA7F4 004A3DB4  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA7F8 004A3DB8  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA7FC 004A3DBC  4B E7 4B 55 */	bl NANDMoveAsync
/* 804DA800 004A3DC0  2C 03 00 00 */	cmpwi r3, 0
/* 804DA804 004A3DC4  7C 7E 1B 78 */	mr r30, r3
/* 804DA808 004A3DC8  41 82 00 0C */	beq .L_804DA814
/* 804DA80C 004A3DCC  48 00 02 4D */	bl func_804DAA58
/* 804DA810 004A3DD0  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA814:
/* 804DA814 004A3DD4  7F C3 F3 78 */	mr r3, r30
/* 804DA818 004A3DD8  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA81C 004A3DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA820 004A3DE0  7C 08 03 A6 */	mtlr r0
/* 804DA824 004A3DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA828 004A3DE8  4E 80 00 20 */	blr 
.endfn func_804DA7CC

.fn func_804DA82C, global
/* 804DA82C 004A3DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA830 004A3DF0  7C 08 02 A6 */	mflr r0
/* 804DA834 004A3DF4  3C A0 80 4E */	lis r5, func_804DA97C@ha
/* 804DA838 004A3DF8  3C C0 80 66 */	lis r6, lbl_806626F0@ha
/* 804DA83C 004A3DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA840 004A3E00  38 00 00 01 */	li r0, 1
/* 804DA844 004A3E04  3C E0 80 66 */	lis r7, lbl_806627AC@ha
/* 804DA848 004A3E08  7C 64 1B 78 */	mr r4, r3
/* 804DA84C 004A3E0C  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA850 004A3E10  3B E0 00 00 */	li r31, 0
/* 804DA854 004A3E14  38 A5 A9 7C */	addi r5, r5, func_804DA97C@l
/* 804DA858 004A3E18  38 67 27 AC */	addi r3, r7, lbl_806627AC@l
/* 804DA85C 004A3E1C  38 C6 26 F0 */	addi r6, r6, lbl_806626F0@l
/* 804DA860 004A3E20  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA864 004A3E24  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA868 004A3E28  4B E7 4B E9 */	bl NANDTellAsync
/* 804DA86C 004A3E2C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA870 004A3E30  7C 7E 1B 78 */	mr r30, r3
/* 804DA874 004A3E34  41 82 00 0C */	beq .L_804DA880
/* 804DA878 004A3E38  48 00 01 E1 */	bl func_804DAA58
/* 804DA87C 004A3E3C  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA880:
/* 804DA880 004A3E40  7F C3 F3 78 */	mr r3, r30
/* 804DA884 004A3E44  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA888 004A3E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA88C 004A3E4C  7C 08 03 A6 */	mtlr r0
/* 804DA890 004A3E50  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA894 004A3E54  4E 80 00 20 */	blr 
.endfn func_804DA82C

.fn func_804DA898, global
/* 804DA898 004A3E58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA89C 004A3E5C  7C 08 02 A6 */	mflr r0
/* 804DA8A0 004A3E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA8A4 004A3E64  38 00 00 01 */	li r0, 1
/* 804DA8A8 004A3E68  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 804DA8AC 004A3E6C  3B C0 00 00 */	li r30, 0
/* 804DA8B0 004A3E70  3F E0 80 66 */	lis r31, lbl_80662838@ha
/* 804DA8B4 004A3E74  7C 7C 1B 78 */	mr r28, r3
/* 804DA8B8 004A3E78  7C 9D 23 78 */	mr r29, r4
/* 804DA8BC 004A3E7C  38 7F 28 38 */	addi r3, r31, lbl_80662838@l
/* 804DA8C0 004A3E80  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA8C4 004A3E84  93 CD C1 2C */	stw r30, lbl_806682AC@sda21(r13)
/* 804DA8C8 004A3E88  4B E7 61 19 */	bl NANDGetCurrentDir
/* 804DA8CC 004A3E8C  48 00 01 8D */	bl func_804DAA58
/* 804DA8D0 004A3E90  3C C0 80 4E */	lis r6, func_804DA97C@ha
/* 804DA8D4 004A3E94  3C E0 80 66 */	lis r7, lbl_806626F0@ha
/* 804DA8D8 004A3E98  7F 84 E3 78 */	mr r4, r28
/* 804DA8DC 004A3E9C  7F A5 EB 78 */	mr r5, r29
/* 804DA8E0 004A3EA0  38 7F 28 38 */	addi r3, r31, lbl_80662838@l
/* 804DA8E4 004A3EA4  38 C6 A9 7C */	addi r6, r6, func_804DA97C@l
/* 804DA8E8 004A3EA8  38 E7 26 F0 */	addi r7, r7, lbl_806626F0@l
/* 804DA8EC 004A3EAC  4B E7 46 D5 */	bl NANDReadDirAsync
/* 804DA8F0 004A3EB0  2C 03 00 00 */	cmpwi r3, 0
/* 804DA8F4 004A3EB4  7C 7F 1B 78 */	mr r31, r3
/* 804DA8F8 004A3EB8  41 82 00 0C */	beq .L_804DA904
/* 804DA8FC 004A3EBC  48 00 01 5D */	bl func_804DAA58
/* 804DA900 004A3EC0  9B CD C1 28 */	stb r30, lbl_806682A8@sda21(r13)
.L_804DA904:
/* 804DA904 004A3EC4  7F E3 FB 78 */	mr r3, r31
/* 804DA908 004A3EC8  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 804DA90C 004A3ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DA910 004A3ED0  7C 08 03 A6 */	mtlr r0
/* 804DA914 004A3ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 804DA918 004A3ED8  4E 80 00 20 */	blr 
.endfn func_804DA898

.fn func_804DA91C, global
/* 804DA91C 004A3EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA920 004A3EE0  7C 08 02 A6 */	mflr r0
/* 804DA924 004A3EE4  3C 80 80 4E */	lis r4, func_804DA97C@ha
/* 804DA928 004A3EE8  3C A0 80 66 */	lis r5, lbl_806626F0@ha
/* 804DA92C 004A3EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA930 004A3EF0  38 00 00 01 */	li r0, 1
/* 804DA934 004A3EF4  38 84 A9 7C */	addi r4, r4, func_804DA97C@l
/* 804DA938 004A3EF8  38 A5 26 F0 */	addi r5, r5, lbl_806626F0@l
/* 804DA93C 004A3EFC  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DA940 004A3F00  3B E0 00 00 */	li r31, 0
/* 804DA944 004A3F04  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA948 004A3F08  93 ED C1 2C */	stw r31, lbl_806682AC@sda21(r13)
/* 804DA94C 004A3F0C  4B E7 5F C5 */	bl NANDChangeDirAsync
/* 804DA950 004A3F10  2C 03 00 00 */	cmpwi r3, 0
/* 804DA954 004A3F14  7C 7E 1B 78 */	mr r30, r3
/* 804DA958 004A3F18  41 82 00 0C */	beq .L_804DA964
/* 804DA95C 004A3F1C  48 00 00 FD */	bl func_804DAA58
/* 804DA960 004A3F20  9B ED C1 28 */	stb r31, lbl_806682A8@sda21(r13)
.L_804DA964:
/* 804DA964 004A3F24  7F C3 F3 78 */	mr r3, r30
/* 804DA968 004A3F28  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DA96C 004A3F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA970 004A3F30  7C 08 03 A6 */	mtlr r0
/* 804DA974 004A3F34  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA978 004A3F38  4E 80 00 20 */	blr
.endfn func_804DA91C

.fn func_804DA97C, global
/* 804DA97C 004A3F3C  38 00 00 00 */	li r0, 0
/* 804DA980 004A3F40  98 0D C1 28 */	stb r0, lbl_806682A8@sda21(r13)
/* 804DA984 004A3F44  90 6D C1 2C */	stw r3, lbl_806682AC@sda21(r13)
/* 804DA988 004A3F48  4E 80 00 20 */	blr 
.endfn func_804DA97C

.fn func_804DA98C, global
/* 804DA98C 004A3F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA990 004A3F50  7C 08 02 A6 */	mflr r0
/* 804DA994 004A3F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA998 004A3F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA99C 004A3F5C  3F E0 80 66 */	lis r31, lbl_80662838@ha
/* 804DA9A0 004A3F60  38 7F 28 38 */	addi r3, r31, lbl_80662838@l
/* 804DA9A4 004A3F64  4B E7 60 3D */	bl NANDGetCurrentDir
/* 804DA9A8 004A3F68  48 00 00 B1 */	bl func_804DAA58
/* 804DA9AC 004A3F6C  38 7F 28 38 */	addi r3, r31, lbl_80662838@l
/* 804DA9B0 004A3F70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA9B4 004A3F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA9B8 004A3F78  7C 08 03 A6 */	mtlr r0
/* 804DA9BC 004A3F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA9C0 004A3F80  4E 80 00 20 */	blr 
.endfn func_804DA98C

.fn func_804DA9C4, global
/* 804DA9C4 004A3F84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DA9C8 004A3F88  7C 08 02 A6 */	mflr r0
/* 804DA9CC 004A3F8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DA9D0 004A3F90  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 804DA9D4 004A3F94  3F C0 80 66 */	lis r30, lbl_80662838@ha
/* 804DA9D8 004A3F98  7C 7D 1B 78 */	mr r29, r3
/* 804DA9DC 004A3F9C  38 7E 28 38 */	addi r3, r30, lbl_80662838@l
/* 804DA9E0 004A3FA0  4B E7 60 01 */	bl NANDGetCurrentDir
/* 804DA9E4 004A3FA4  48 00 00 75 */	bl func_804DAA58
/* 804DA9E8 004A3FA8  3F E0 80 66 */	lis r31, lbl_8066287C@ha
/* 804DA9EC 004A3FAC  3C 80 80 52 */	lis r4, lbl_80527EDC@ha
/* 804DA9F0 004A3FB0  7F A6 EB 78 */	mr r6, r29
/* 804DA9F4 004A3FB4  38 BE 28 38 */	addi r5, r30, lbl_80662838@l
/* 804DA9F8 004A3FB8  38 7F 28 7C */	addi r3, r31, lbl_8066287C@l
/* 804DA9FC 004A3FBC  38 84 7E DC */	addi r4, r4, lbl_80527EDC@l
/* 804DAA00 004A3FC0  4C C6 31 82 */	crclr 6
/* 804DAA04 004A3FC4  4B DE 66 35 */	bl sprintf
/* 804DAA08 004A3FC8  38 7F 28 7C */	addi r3, r31, lbl_8066287C@l
/* 804DAA0C 004A3FCC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 804DAA10 004A3FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DAA14 004A3FD4  7C 08 03 A6 */	mtlr r0
/* 804DAA18 004A3FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 804DAA1C 004A3FDC  4E 80 00 20 */	blr 
.endfn func_804DA9C4

.fn func_804DAA20, global
/* 804DAA20 004A3FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAA24 004A3FE4  7C 08 02 A6 */	mflr r0
/* 804DAA28 004A3FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAA2C 004A3FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAA30 004A3FF0  3F E0 80 66 */	lis r31, lbl_806628C0@ha
/* 804DAA34 004A3FF4  38 7F 28 C0 */	addi r3, r31, lbl_806628C0@l
/* 804DAA38 004A3FF8  4B E7 60 29 */	bl NANDGetHomeDir
/* 804DAA3C 004A3FFC  48 00 00 1D */	bl func_804DAA58
/* 804DAA40 004A4000  38 7F 28 C0 */	addi r3, r31, lbl_806628C0@l
/* 804DAA44 004A4004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAA48 004A4008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAA4C 004A400C  7C 08 03 A6 */	mtlr r0
/* 804DAA50 004A4010  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAA54 004A4014  4E 80 00 20 */	blr 
.endfn func_804DAA20

.fn func_804DAA58, global
/* 804DAA58 004A4018  2C 03 FF FC */	cmpwi r3, -4
/* 804DAA5C 004A401C  40 82 00 0C */	bne .L_804DAA68
/* 804DAA60 004A4020  80 6D A3 00 */	lwz r3, lbl_80666480@sda21(r13)
/* 804DAA64 004A4024  4B F7 E6 B4 */	b func_80459118
.L_804DAA68:
/* 804DAA68 004A4028  38 03 00 03 */	addi r0, r3, 3
/* 804DAA6C 004A402C  28 00 00 01 */	cmplwi r0, 1
/* 804DAA70 004A4030  41 81 00 0C */	bgt .L_804DAA7C
/* 804DAA74 004A4034  80 6D A3 04 */	lwz r3, lbl_80666484@sda21(r13)
/* 804DAA78 004A4038  4B F7 E6 A0 */	b func_80459118
.L_804DAA7C:
/* 804DAA7C 004A403C  2C 03 FF C0 */	cmpwi r3, -64
/* 804DAA80 004A4040  4C 82 00 20 */	bnelr 
/* 804DAA84 004A4044  80 6D A3 00 */	lwz r3, lbl_80666480@sda21(r13)
/* 804DAA88 004A4048  4B F7 E6 90 */	b func_80459118
/* 804DAA8C 004A404C  4E 80 00 20 */	blr 
.endfn func_804DAA58

.fn func_804DAA90, global
/* 804DAA90 004A4050  90 6D A3 00 */	stw r3, lbl_80666480@sda21(r13)
/* 804DAA94 004A4054  4E 80 00 20 */	blr 
.endfn func_804DAA90

.fn func_804DAA98, global
/* 804DAA98 004A4058  90 6D A3 04 */	stw r3, lbl_80666484@sda21(r13)
/* 804DAA9C 004A405C  4E 80 00 20 */	blr 
.endfn func_804DAA98

.fn func_804DAAA0, global
/* 804DAAA0 004A4060  90 6D A3 08 */	stw r3, lbl_80666488@sda21(r13)
/* 804DAAA4 004A4064  4E 80 00 20 */	blr
.endfn func_804DAAA0


.fn __ct__CNRequest, global
/* 804DAAA8 004A4068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAAAC 004A406C  7C 08 02 A6 */	mflr r0
/* 804DAAB0 004A4070  3C 80 80 57 */	lis r4, __vt__CNRequest@ha
/* 804DAAB4 004A4074  38 A0 00 1C */	li r5, 0x1c
/* 804DAAB8 004A4078  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAABC 004A407C  38 00 00 00 */	li r0, 0
/* 804DAAC0 004A4080  38 84 35 A0 */	addi r4, r4, __vt__CNRequest@l
/* 804DAAC4 004A4084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAAC8 004A4088  7C 7F 1B 78 */	mr r31, r3
/* 804DAACC 004A408C  90 83 00 20 */	stw r4, 0x20(r3)
/* 804DAAD0 004A4090  38 80 00 00 */	li r4, 0
/* 804DAAD4 004A4094  90 03 00 00 */	stw r0, 0(r3)
/* 804DAAD8 004A4098  38 63 00 04 */	addi r3, r3, 4
/* 804DAADC 004A409C  4B B2 98 75 */	bl memset
/* 804DAAE0 004A40A0  7F E3 FB 78 */	mr r3, r31
/* 804DAAE4 004A40A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAAE8 004A40A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAAEC 004A40AC  7C 08 03 A6 */	mtlr r0
/* 804DAAF0 004A40B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAAF4 004A40B4  4E 80 00 20 */	blr 
.endfn __ct__CNRequest

.fn func_804DAAF8, global
/* 804DAAF8 004A40B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAAFC 004A40BC  7C 08 02 A6 */	mflr r0
/* 804DAB00 004A40C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAB04 004A40C4  BF C1 00 08 */	stmw r30, 8(r1)
/* 804DAB08 004A40C8  7C 7E 1B 78 */	mr r30, r3
/* 804DAB0C 004A40CC  7C 9F 23 78 */	mr r31, r4
/* 804DAB10 004A40D0  38 9E 00 04 */	addi r4, r30, 4
/* 804DAB14 004A40D4  80 63 00 00 */	lwz r3, 0(r3)
/* 804DAB18 004A40D8  81 83 00 00 */	lwz r12, 0(r3)
/* 804DAB1C 004A40DC  81 8C 00 08 */	lwz r12, 8(r12)
/* 804DAB20 004A40E0  7D 89 03 A6 */	mtctr r12
/* 804DAB24 004A40E4  4E 80 04 21 */	bctrl 
/* 804DAB28 004A40E8  2C 03 00 00 */	cmpwi r3, 0
/* 804DAB2C 004A40EC  41 82 00 3C */	beq .L_804DAB68
/* 804DAB30 004A40F0  38 03 FF FF */	addi r0, r3, -1
/* 804DAB34 004A40F4  38 9E 00 04 */	addi r4, r30, 4
/* 804DAB38 004A40F8  7C 00 00 34 */	cntlzw r0, r0
/* 804DAB3C 004A40FC  54 00 D9 7E */	srwi r0, r0, 5
/* 804DAB40 004A4100  98 1F 00 00 */	stb r0, 0(r31)
/* 804DAB44 004A4104  80 7E 00 00 */	lwz r3, 0(r30)
/* 804DAB48 004A4108  81 83 00 00 */	lwz r12, 0(r3)
/* 804DAB4C 004A410C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 804DAB50 004A4110  7D 89 03 A6 */	mtctr r12
/* 804DAB54 004A4114  4E 80 04 21 */	bctrl 
/* 804DAB58 004A4118  38 00 00 00 */	li r0, 0
/* 804DAB5C 004A411C  90 1E 00 00 */	stw r0, 0(r30)
/* 804DAB60 004A4120  38 60 00 01 */	li r3, 1
/* 804DAB64 004A4124  48 00 00 08 */	b .L_804DAB6C
.L_804DAB68:
/* 804DAB68 004A4128  38 60 00 00 */	li r3, 0
.L_804DAB6C:
/* 804DAB6C 004A412C  BB C1 00 08 */	lmw r30, 8(r1)
/* 804DAB70 004A4130  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAB74 004A4134  7C 08 03 A6 */	mtlr r0
/* 804DAB78 004A4138  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAB7C 004A413C  4E 80 00 20 */	blr 
.endfn func_804DAAF8

.fn func_804DAB80, global
/* 804DAB80 004A4140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAB84 004A4144  7C 08 02 A6 */	mflr r0
/* 804DAB88 004A4148  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAB8C 004A414C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAB90 004A4150  7C 7F 1B 78 */	mr r31, r3
/* 804DAB94 004A4154  38 63 00 04 */	addi r3, r3, 4
/* 804DAB98 004A4158  48 00 07 B1 */	bl func_804DB348
/* 804DAB9C 004A415C  90 7F 00 00 */	stw r3, 0(r31)
/* 804DABA0 004A4160  30 03 FF FF */	addic r0, r3, -1
/* 804DABA4 004A4164  7C 60 19 10 */	subfe r3, r0, r3
/* 804DABA8 004A4168  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DABAC 004A416C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DABB0 004A4170  7C 08 03 A6 */	mtlr r0
/* 804DABB4 004A4174  38 21 00 10 */	addi r1, r1, 0x10
/* 804DABB8 004A4178  4E 80 00 20 */	blr 
.endfn func_804DAB80

.fn func_804DABBC, global
/* 804DABBC 004A417C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DABC0 004A4180  7C 08 02 A6 */	mflr r0
/* 804DABC4 004A4184  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DABC8 004A4188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DABCC 004A418C  7C 7F 1B 78 */	mr r31, r3
/* 804DABD0 004A4190  38 63 00 04 */	addi r3, r3, 4
/* 804DABD4 004A4194  48 00 01 15 */	bl func_804DACE8
/* 804DABD8 004A4198  90 7F 00 00 */	stw r3, 0(r31)
/* 804DABDC 004A419C  30 03 FF FF */	addic r0, r3, -1
/* 804DABE0 004A41A0  7C 60 19 10 */	subfe r3, r0, r3
/* 804DABE4 004A41A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DABE8 004A41A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DABEC 004A41AC  7C 08 03 A6 */	mtlr r0
/* 804DABF0 004A41B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DABF4 004A41B4  4E 80 00 20 */	blr 
.endfn func_804DABBC

.fn func_804DABF8, global
/* 804DABF8 004A41B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DABFC 004A41BC  7C 08 02 A6 */	mflr r0
/* 804DAC00 004A41C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAC04 004A41C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAC08 004A41C8  7C 7F 1B 78 */	mr r31, r3
/* 804DAC0C 004A41CC  38 63 00 04 */	addi r3, r3, 4
/* 804DAC10 004A41D0  48 00 03 61 */	bl func_804DAF70
/* 804DAC14 004A41D4  90 7F 00 00 */	stw r3, 0(r31)
/* 804DAC18 004A41D8  30 03 FF FF */	addic r0, r3, -1
/* 804DAC1C 004A41DC  7C 60 19 10 */	subfe r3, r0, r3
/* 804DAC20 004A41E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAC24 004A41E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAC28 004A41E8  7C 08 03 A6 */	mtlr r0
/* 804DAC2C 004A41EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAC30 004A41F0  4E 80 00 20 */	blr 
.endfn func_804DABF8

.fn func_804DAC34, global
/* 804DAC34 004A41F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAC38 004A41F8  7C 08 02 A6 */	mflr r0
/* 804DAC3C 004A41FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAC40 004A4200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAC44 004A4204  7C 7F 1B 78 */	mr r31, r3
/* 804DAC48 004A4208  38 63 00 04 */	addi r3, r3, 4
/* 804DAC4C 004A420C  48 00 05 F5 */	bl func_804DB240
/* 804DAC50 004A4210  90 7F 00 00 */	stw r3, 0(r31)
/* 804DAC54 004A4214  30 03 FF FF */	addic r0, r3, -1
/* 804DAC58 004A4218  7C 60 19 10 */	subfe r3, r0, r3
/* 804DAC5C 004A421C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAC60 004A4220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAC64 004A4224  7C 08 03 A6 */	mtlr r0
/* 804DAC68 004A4228  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAC6C 004A422C  4E 80 00 20 */	blr 
.endfn func_804DAC34

.fn func_804DAC70, global
/* 804DAC70 004A4230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAC74 004A4234  7C 08 02 A6 */	mflr r0
/* 804DAC78 004A4238  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAC7C 004A423C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAC80 004A4240  7C 7F 1B 78 */	mr r31, r3
/* 804DAC84 004A4244  38 63 00 04 */	addi r3, r3, 4
/* 804DAC88 004A4248  48 00 04 69 */	bl func_804DB0F0
/* 804DAC8C 004A424C  90 7F 00 00 */	stw r3, 0(r31)
/* 804DAC90 004A4250  30 03 FF FF */	addic r0, r3, -1
/* 804DAC94 004A4254  7C 60 19 10 */	subfe r3, r0, r3
/* 804DAC98 004A4258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAC9C 004A425C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DACA0 004A4260  7C 08 03 A6 */	mtlr r0
/* 804DACA4 004A4264  38 21 00 10 */	addi r1, r1, 0x10
/* 804DACA8 004A4268  4E 80 00 20 */	blr 
.endfn func_804DAC70

.fn func_804DACAC, global
/* 804DACAC 004A426C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DACB0 004A4270  7C 08 02 A6 */	mflr r0
/* 804DACB4 004A4274  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DACB8 004A4278  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DACBC 004A427C  7C 7F 1B 78 */	mr r31, r3
/* 804DACC0 004A4280  38 63 00 04 */	addi r3, r3, 4
/* 804DACC4 004A4284  48 01 A0 B9 */	bl func_804F4D7C
/* 804DACC8 004A4288  90 7F 00 00 */	stw r3, 0(r31)
/* 804DACCC 004A428C  30 03 FF FF */	addic r0, r3, -1
/* 804DACD0 004A4290  7C 60 19 10 */	subfe r3, r0, r3
/* 804DACD4 004A4294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DACD8 004A4298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DACDC 004A429C  7C 08 03 A6 */	mtlr r0
/* 804DACE0 004A42A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DACE4 004A42A4  4E 80 00 20 */	blr 
.endfn func_804DACAC

.fn func_804DACE8, global
/* 804DACE8 004A42A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DACEC 004A42AC  7C 08 02 A6 */	mflr r0
/* 804DACF0 004A42B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DACF4 004A42B4  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 804DACF8 004A42B8  7C 7F 1B 78 */	mr r31, r3
/* 804DACFC 004A42BC  7C BC 2B 78 */	mr r28, r5
/* 804DAD00 004A42C0  7C DD 33 78 */	mr r29, r6
/* 804DAD04 004A42C4  7C FE 3B 78 */	mr r30, r7
/* 804DAD08 004A42C8  4B DE 79 B1 */	bl strcpy
/* 804DAD0C 004A42CC  38 00 00 00 */	li r0, 0
/* 804DAD10 004A42D0  93 9F 00 10 */	stw r28, 0x10(r31)
/* 804DAD14 004A42D4  38 6D C1 38 */	addi r3, r13, lbl_806682B8@sda21
/* 804DAD18 004A42D8  93 BF 00 14 */	stw r29, 0x14(r31)
/* 804DAD1C 004A42DC  9B DF 00 18 */	stb r30, 0x18(r31)
/* 804DAD20 004A42E0  98 1F 00 19 */	stb r0, 0x19(r31)
/* 804DAD24 004A42E4  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 804DAD28 004A42E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DAD2C 004A42EC  7C 08 03 A6 */	mtlr r0
/* 804DAD30 004A42F0  38 21 00 20 */	addi r1, r1, 0x20
/* 804DAD34 004A42F4  4E 80 00 20 */	blr 
.endfn func_804DACE8

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CNRequest, global
	.4byte __RTTI__CNRequest
	.4byte 0
	.4byte __dt__CNRequest
	.4byte 0
.endobj __vt__CNRequest

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj lbl_80666480, global
	.4byte lbl_8066D9C8
.endobj lbl_80666480


.obj lbl_80666484, global
	.4byte lbl_8066D9C8
.endobj lbl_80666484


.obj lbl_80666488, global
	.4byte lbl_8066D9C8
	.4byte 0
.endobj lbl_80666488

.obj __RTTI__CNReqtask, global
	.4byte CNReqtask_typestr
	.4byte 0
.endobj __RTTI__CNReqtask

.obj __RTTI__CNRequest, global
	.4byte CNRequest_typestr
	.4byte 0
.endobj __RTTI__CNRequest

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066D9C8, global
	.4byte 0
	.4byte 0
.endobj lbl_8066D9C8

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



.obj lbl_806626F0, global
	.skip 0xBC
.endobj lbl_806626F0

.obj lbl_806627AC, global
	.skip 0x8C
.endobj lbl_806627AC

.obj lbl_80662838, global
	.skip 0x44
.endobj lbl_80662838

.obj lbl_8066287C, global
	.skip 0x44
.endobj lbl_8066287C

.obj lbl_806628C0, global
	.skip 0x48
.endobj lbl_806628C0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_806682A8, global
	.skip 0x4
.endobj lbl_806682A8

.obj lbl_806682AC, global
	.skip 0x4
.endobj lbl_806682AC

.obj lbl_806682B0, global
	.skip 0x8
.endobj lbl_806682B0

.obj lbl_806682B8, global
	.skip 0x4
.endobj lbl_806682B8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_800206A0", local
.hidden "@etb_800206A0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206A0"

.obj "@etb_800206A8", local
.hidden "@etb_800206A8"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_800206A8"

.obj "@etb_800206B0", local
.hidden "@etb_800206B0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206B0"

.obj "@etb_800206B8", local
.hidden "@etb_800206B8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206B8"

.obj "@etb_800206C0", local
.hidden "@etb_800206C0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206C0"

.obj "@etb_800206C8", local
.hidden "@etb_800206C8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206C8"

.obj "@etb_800206D0", local
.hidden "@etb_800206D0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206D0"

.obj "@etb_800206D8", local
.hidden "@etb_800206D8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206D8"

.obj "@etb_800206E0", local
.hidden "@etb_800206E0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206E0"

.obj "@etb_800206E8", local
.hidden "@etb_800206E8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800206E8"

.obj "@etb_800206F0", local
.hidden "@etb_800206F0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_800206F0"

.obj "@etb_800206F8", local
.hidden "@etb_800206F8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800206F8"

.obj "@etb_80020700", local
.hidden "@etb_80020700"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_80020700"

.obj "@etb_80020708", local
.hidden "@etb_80020708"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020708"

.obj "@etb_80020710", local
.hidden "@etb_80020710"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020710"

.obj "@etb_80020718", local
.hidden "@etb_80020718"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80020718"

.obj "@etb_80020720", local
.hidden "@etb_80020720"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020720"

.obj "@etb_80020728", local
.hidden "@etb_80020728"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020728"

.obj "@etb_80020730", local
.hidden "@etb_80020730"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020730"

.obj "@etb_80020738", local
.hidden "@etb_80020738"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020738"

.obj "@etb_80020740", local
.hidden "@etb_80020740"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020740"

.obj "@etb_80020748", local
.hidden "@etb_80020748"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020748"

.obj "@etb_80020750", local
.hidden "@etb_80020750"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80020750"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8003863C", local
.hidden "@eti_8003863C"
	.4byte func_804DA4E0
	.4byte 0x00000060
	.4byte "@etb_800206A0"
.endobj "@eti_8003863C"

.obj "@eti_80038648", local
.hidden "@eti_80038648"
	.4byte func_804DA540
	.4byte 0x00000074
	.4byte "@etb_800206A8"
.endobj "@eti_80038648"

.obj "@eti_80038654", local
.hidden "@eti_80038654"
	.4byte func_804DA5B4
	.4byte 0x00000074
	.4byte "@etb_800206B0"
.endobj "@eti_80038654"

.obj "@eti_80038660", local
.hidden "@eti_80038660"
	.4byte func_804DA628
	.4byte 0x00000074
	.4byte "@etb_800206B8"
.endobj "@eti_80038660"

.obj "@eti_8003866C", local
.hidden "@eti_8003866C"
	.4byte func_804DA69C
	.4byte 0x00000070
	.4byte "@etb_800206C0"
.endobj "@eti_8003866C"

.obj "@eti_80038678", local
.hidden "@eti_80038678"
	.4byte func_804DA70C
	.4byte 0x00000060
	.4byte "@etb_800206C8"
.endobj "@eti_80038678"

.obj "@eti_80038684", local
.hidden "@eti_80038684"
	.4byte func_804DA76C
	.4byte 0x00000060
	.4byte "@etb_800206D0"
.endobj "@eti_80038684"

.obj "@eti_80038690", local
.hidden "@eti_80038690"
	.4byte func_804DA7CC
	.4byte 0x00000060
	.4byte "@etb_800206D8"
.endobj "@eti_80038690"

.obj "@eti_8003869C", local
.hidden "@eti_8003869C"
	.4byte func_804DA82C
	.4byte 0x0000006C
	.4byte "@etb_800206E0"
.endobj "@eti_8003869C"

.obj "@eti_800386A8", local
.hidden "@eti_800386A8"
	.4byte func_804DA898
	.4byte 0x00000084
	.4byte "@etb_800206E8"
.endobj "@eti_800386A8"

.obj "@eti_800386B4", local
.hidden "@eti_800386B4"
	.4byte func_804DA91C
	.4byte 0x00000060
	.4byte "@etb_800206F0"
.endobj "@eti_800386B4"

.obj "@eti_800386C0", local
.hidden "@eti_800386C0"
	.4byte func_804DA98C
	.4byte 0x00000038
	.4byte "@etb_800206F8"
.endobj "@eti_800386C0"

.obj "@eti_800386CC", local
.hidden "@eti_800386CC"
	.4byte func_804DA9C4
	.4byte 0x0000005C
	.4byte "@etb_80020700"
.endobj "@eti_800386CC"

.obj "@eti_800386D8", local
.hidden "@eti_800386D8"
	.4byte func_804DAA20
	.4byte 0x00000038
	.4byte "@etb_80020708"
.endobj "@eti_800386D8"

.obj "@eti_800386E4", local
.hidden "@eti_800386E4"
	.4byte __ct__CNRequest
	.4byte 0x00000050
	.4byte "@etb_80020710"
.endobj "@eti_800386E4"

.obj "@eti_800386F0", local
.hidden "@eti_800386F0"
	.4byte func_804DAAF8
	.4byte 0x00000088
	.4byte "@etb_80020718"
.endobj "@eti_800386F0"

.obj "@eti_800386FC", local
.hidden "@eti_800386FC"
	.4byte func_804DAB80
	.4byte 0x0000003C
	.4byte "@etb_80020720"
.endobj "@eti_800386FC"

.obj "@eti_80038708", local
.hidden "@eti_80038708"
	.4byte func_804DABBC
	.4byte 0x0000003C
	.4byte "@etb_80020728"
.endobj "@eti_80038708"

.obj "@eti_80038714", local
.hidden "@eti_80038714"
	.4byte func_804DABF8
	.4byte 0x0000003C
	.4byte "@etb_80020730"
.endobj "@eti_80038714"

.obj "@eti_80038720", local
.hidden "@eti_80038720"
	.4byte func_804DAC34
	.4byte 0x0000003C
	.4byte "@etb_80020738"
.endobj "@eti_80038720"

.obj "@eti_8003872C", local
.hidden "@eti_8003872C"
	.4byte func_804DAC70
	.4byte 0x0000003C
	.4byte "@etb_80020740"
.endobj "@eti_8003872C"

.obj "@eti_80038738", local
.hidden "@eti_80038738"
	.4byte func_804DACAC
	.4byte 0x0000003C
	.4byte "@etb_80020748"
.endobj "@eti_80038738"

.obj "@eti_80038744", local
.hidden "@eti_80038744"
	.4byte func_804DACE8
	.4byte 0x00000050
	.4byte "@etb_80020750"
.endobj "@eti_80038744"
