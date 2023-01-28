.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common/signal.o"

# 0x802C2610 - 0x802C26B8
.text
.balign 4

.fn raise, global
/* 802C2610 0028BBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C2614 0028BBD4  7C 08 02 A6 */	mflr r0
/* 802C2618 0028BBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C261C 0028BBDC  38 03 FF FF */	addi r0, r3, -0x1
/* 802C2620 0028BBE0  28 00 00 06 */	cmplwi r0, 0x6
/* 802C2624 0028BBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C2628 0028BBE8  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802C262C 0028BBEC  7C 7E 1B 78 */	mr r30, r3
/* 802C2630 0028BBF0  40 81 00 0C */	ble .L_802C263C
/* 802C2634 0028BBF4  38 60 FF FF */	li r3, -0x1
/* 802C2638 0028BBF8  48 00 00 68 */	b .L_802C26A0
.L_802C263C:
/* 802C263C 0028BBFC  3C 80 80 58 */	lis r4, lbl_8057B348@ha
/* 802C2640 0028BC00  54 05 10 3A */	slwi r5, r0, 2
/* 802C2644 0028BC04  38 84 B3 48 */	addi r4, r4, lbl_8057B348@l
/* 802C2648 0028BC08  7F E4 28 2E */	lwzx r31, r4, r5
/* 802C264C 0028BC0C  28 1F 00 01 */	cmplwi r31, 0x1
/* 802C2650 0028BC10  41 82 00 0C */	beq .L_802C265C
/* 802C2654 0028BC14  38 00 00 00 */	li r0, 0x0
/* 802C2658 0028BC18  7C 04 29 2E */	stwx r0, r4, r5
.L_802C265C:
/* 802C265C 0028BC1C  28 1F 00 01 */	cmplwi r31, 0x1
/* 802C2660 0028BC20  41 82 00 14 */	beq .L_802C2674
/* 802C2664 0028BC24  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C2668 0028BC28  40 82 00 14 */	bne .L_802C267C
/* 802C266C 0028BC2C  2C 03 00 01 */	cmpwi r3, 0x1
/* 802C2670 0028BC30  40 82 00 0C */	bne .L_802C267C
.L_802C2674:
/* 802C2674 0028BC34  38 60 00 00 */	li r3, 0x0
/* 802C2678 0028BC38  48 00 00 28 */	b .L_802C26A0
.L_802C267C:
/* 802C267C 0028BC3C  2C 1F 00 00 */	cmpwi r31, 0x0
/* 802C2680 0028BC40  40 82 00 0C */	bne .L_802C268C
/* 802C2684 0028BC44  38 60 00 00 */	li r3, 0x0
/* 802C2688 0028BC48  48 09 CD 39 */	bl exit
.L_802C268C:
/* 802C268C 0028BC4C  7F EC FB 78 */	mr r12, r31
/* 802C2690 0028BC50  7F C3 F3 78 */	mr r3, r30
/* 802C2694 0028BC54  7D 89 03 A6 */	mtctr r12
/* 802C2698 0028BC58  4E 80 04 21 */	bctrl
/* 802C269C 0028BC5C  38 60 00 00 */	li r3, 0x0
.L_802C26A0:
/* 802C26A0 0028BC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C26A4 0028BC64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C26A8 0028BC68  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802C26AC 0028BC6C  7C 08 03 A6 */	mtlr r0
/* 802C26B0 0028BC70  38 21 00 10 */	addi r1, r1, 0x10
/* 802C26B4 0028BC74  4E 80 00 20 */	blr
.endfn raise

# 0x8057B348 - 0x8057B368
.section .bss, "wa", @nobits
.balign 8
.sym lbl_8057B348, local
	.skip 0x20
