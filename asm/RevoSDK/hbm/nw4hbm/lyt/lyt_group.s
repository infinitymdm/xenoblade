.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __ct__Q36nw4hbm3lyt5GroupFPCQ46nw4hbm3lyt3res5GroupPQ36nw4hbm3lyt4Pane
__ct__Q36nw4hbm3lyt5GroupFPCQ46nw4hbm3lyt3res5GroupPQ36nw4hbm3lyt4Pane:
/* 8032D4E0 002F6AA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8032D4E4 002F6AA4  7C 08 02 A6 */	mflr r0
/* 8032D4E8 002F6AA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8032D4EC 002F6AAC  39 61 00 40 */	addi r11, r1, 0x40
/* 8032D4F0 002F6AB0  4B F8 CC 55 */	bl _savegpr_23
/* 8032D4F4 002F6AB4  3C C0 80 55 */	lis r6, lbl_8054D7D0@ha
/* 8032D4F8 002F6AB8  3B A0 00 00 */	li r29, 0
/* 8032D4FC 002F6ABC  38 03 00 10 */	addi r0, r3, 0x10
/* 8032D500 002F6AC0  93 A3 00 04 */	stw r29, 4(r3)
/* 8032D504 002F6AC4  38 C6 D7 D0 */	addi r6, r6, lbl_8054D7D0@l
/* 8032D508 002F6AC8  7C 98 23 78 */	mr r24, r4
/* 8032D50C 002F6ACC  7C B9 2B 78 */	mr r25, r5
/* 8032D510 002F6AD0  90 C3 00 00 */	stw r6, 0(r3)
/* 8032D514 002F6AD4  7C 77 1B 78 */	mr r23, r3
/* 8032D518 002F6AD8  38 A0 00 10 */	li r5, 0x10
/* 8032D51C 002F6ADC  93 A3 00 08 */	stw r29, 8(r3)
/* 8032D520 002F6AE0  38 84 00 08 */	addi r4, r4, 8
/* 8032D524 002F6AE4  93 A3 00 0C */	stw r29, 0xc(r3)
/* 8032D528 002F6AE8  90 03 00 10 */	stw r0, 0x10(r3)
/* 8032D52C 002F6AEC  90 03 00 14 */	stw r0, 0x14(r3)
/* 8032D530 002F6AF0  9B A3 00 28 */	stb r29, 0x28(r3)
/* 8032D534 002F6AF4  38 63 00 18 */	addi r3, r3, 0x18
/* 8032D538 002F6AF8  4B CD 6A C9 */	bl memcpy
/* 8032D53C 002F6AFC  3B 78 00 1C */	addi r27, r24, 0x1c
/* 8032D540 002F6B00  3B 40 00 00 */	li r26, 0
/* 8032D544 002F6B04  3B 80 00 00 */	li r28, 0
/* 8032D548 002F6B08  3F E0 80 5D */	lis r31, lbl_805CD7B8@ha
/* 8032D54C 002F6B0C  48 00 00 70 */	b .L_8032D5BC
.L_8032D550:
/* 8032D550 002F6B10  81 99 00 00 */	lwz r12, 0(r25)
/* 8032D554 002F6B14  7F 23 CB 78 */	mr r3, r25
/* 8032D558 002F6B18  7C 9B E2 14 */	add r4, r27, r28
/* 8032D55C 002F6B1C  38 A0 00 01 */	li r5, 1
/* 8032D560 002F6B20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8032D564 002F6B24  7D 89 03 A6 */	mtctr r12
/* 8032D568 002F6B28  4E 80 04 21 */	bctrl 
/* 8032D56C 002F6B2C  2C 03 00 00 */	cmpwi r3, 0
/* 8032D570 002F6B30  7C 7E 1B 78 */	mr r30, r3
/* 8032D574 002F6B34  41 82 00 40 */	beq .L_8032D5B4
/* 8032D578 002F6B38  80 7F D7 B8 */	lwz r3, lbl_805CD7B8@l(r31)
/* 8032D57C 002F6B3C  38 80 00 0C */	li r4, 0xc
/* 8032D580 002F6B40  48 01 C5 11 */	bl MEMAllocFromAllocator
/* 8032D584 002F6B44  2C 03 00 00 */	cmpwi r3, 0
/* 8032D588 002F6B48  41 82 00 2C */	beq .L_8032D5B4
/* 8032D58C 002F6B4C  7C 65 1B 78 */	mr r5, r3
/* 8032D590 002F6B50  41 82 00 0C */	beq .L_8032D59C
/* 8032D594 002F6B54  93 A3 00 00 */	stw r29, 0(r3)
/* 8032D598 002F6B58  93 A3 00 04 */	stw r29, 4(r3)
.L_8032D59C:
/* 8032D59C 002F6B5C  93 C3 00 08 */	stw r30, 8(r3)
/* 8032D5A0 002F6B60  38 17 00 10 */	addi r0, r23, 0x10
/* 8032D5A4 002F6B64  38 77 00 0C */	addi r3, r23, 0xc
/* 8032D5A8 002F6B68  38 81 00 08 */	addi r4, r1, 8
/* 8032D5AC 002F6B6C  90 01 00 08 */	stw r0, 8(r1)
/* 8032D5B0 002F6B70  48 00 B0 71 */	bl func_80338620
.L_8032D5B4:
/* 8032D5B4 002F6B74  3B 9C 00 10 */	addi r28, r28, 0x10
/* 8032D5B8 002F6B78  3B 5A 00 01 */	addi r26, r26, 1
.L_8032D5BC:
/* 8032D5BC 002F6B7C  A0 18 00 18 */	lhz r0, 0x18(r24)
/* 8032D5C0 002F6B80  7C 1A 00 00 */	cmpw r26, r0
/* 8032D5C4 002F6B84  41 80 FF 8C */	blt .L_8032D550
/* 8032D5C8 002F6B88  39 61 00 40 */	addi r11, r1, 0x40
/* 8032D5CC 002F6B8C  7E E3 BB 78 */	mr r3, r23
/* 8032D5D0 002F6B90  4B F8 CB C1 */	bl _restgpr_23
/* 8032D5D4 002F6B94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8032D5D8 002F6B98  7C 08 03 A6 */	mtlr r0
/* 8032D5DC 002F6B9C  38 21 00 40 */	addi r1, r1, 0x40
/* 8032D5E0 002F6BA0  4E 80 00 20 */	blr 

.balign 16, 0
.global __dt__Q36nw4hbm3lyt5GroupFv
__dt__Q36nw4hbm3lyt5GroupFv:
/* 8032D5F0 002F6BB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032D5F4 002F6BB4  7C 08 02 A6 */	mflr r0
/* 8032D5F8 002F6BB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032D5FC 002F6BBC  39 61 00 30 */	addi r11, r1, 0x30
/* 8032D600 002F6BC0  4B F8 CB 51 */	bl _savegpr_26
/* 8032D604 002F6BC4  2C 03 00 00 */	cmpwi r3, 0
/* 8032D608 002F6BC8  7C 7A 1B 78 */	mr r26, r3
/* 8032D60C 002F6BCC  7C 9B 23 78 */	mr r27, r4
/* 8032D610 002F6BD0  41 82 00 6C */	beq .L_8032D67C
/* 8032D614 002F6BD4  3C 80 80 55 */	lis r4, lbl_8054D7D0@ha
/* 8032D618 002F6BD8  83 E3 00 10 */	lwz r31, 0x10(r3)
/* 8032D61C 002F6BDC  38 84 D7 D0 */	addi r4, r4, lbl_8054D7D0@l
/* 8032D620 002F6BE0  90 83 00 00 */	stw r4, 0(r3)
/* 8032D624 002F6BE4  3B C3 00 10 */	addi r30, r3, 0x10
/* 8032D628 002F6BE8  3F A0 80 5D */	lis r29, lbl_805CD7B8@ha
/* 8032D62C 002F6BEC  48 00 00 28 */	b .L_8032D654
.L_8032D630:
/* 8032D630 002F6BF0  7F FC FB 78 */	mr r28, r31
/* 8032D634 002F6BF4  83 FF 00 00 */	lwz r31, 0(r31)
/* 8032D638 002F6BF8  38 7A 00 0C */	addi r3, r26, 0xc
/* 8032D63C 002F6BFC  38 81 00 08 */	addi r4, r1, 8
/* 8032D640 002F6C00  93 81 00 08 */	stw r28, 8(r1)
/* 8032D644 002F6C04  48 00 AF 8D */	bl func_803385D0
/* 8032D648 002F6C08  80 7D D7 B8 */	lwz r3, lbl_805CD7B8@l(r29)
/* 8032D64C 002F6C0C  7F 84 E3 78 */	mr r4, r28
/* 8032D650 002F6C10  48 01 C4 51 */	bl MEMFreeToAllocator
.L_8032D654:
/* 8032D654 002F6C14  7C 1F F0 40 */	cmplw r31, r30
/* 8032D658 002F6C18  40 82 FF D8 */	bne .L_8032D630
/* 8032D65C 002F6C1C  34 7A 00 0C */	addic. r3, r26, 0xc
/* 8032D660 002F6C20  41 82 00 0C */	beq .L_8032D66C
/* 8032D664 002F6C24  38 80 00 00 */	li r4, 0
/* 8032D668 002F6C28  48 00 AE D9 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8032D66C:
/* 8032D66C 002F6C2C  2C 1B 00 00 */	cmpwi r27, 0
/* 8032D670 002F6C30  40 81 00 0C */	ble .L_8032D67C
/* 8032D674 002F6C34  7F 43 D3 78 */	mr r3, r26
/* 8032D678 002F6C38  48 10 75 B5 */	bl __dl__FPv
.L_8032D67C:
/* 8032D67C 002F6C3C  39 61 00 30 */	addi r11, r1, 0x30
/* 8032D680 002F6C40  7F 43 D3 78 */	mr r3, r26
/* 8032D684 002F6C44  4B F8 CB 19 */	bl _restgpr_26
/* 8032D688 002F6C48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032D68C 002F6C4C  7C 08 03 A6 */	mtlr r0
/* 8032D690 002F6C50  38 21 00 30 */	addi r1, r1, 0x30
/* 8032D694 002F6C54  4E 80 00 20 */	blr 

.balign 16, 0
.global __dt__Q36nw4hbm3lyt14GroupContainerFv
__dt__Q36nw4hbm3lyt14GroupContainerFv:
/* 8032D6A0 002F6C60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032D6A4 002F6C64  7C 08 02 A6 */	mflr r0
/* 8032D6A8 002F6C68  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032D6AC 002F6C6C  39 61 00 30 */	addi r11, r1, 0x30
/* 8032D6B0 002F6C70  4B F8 CA A1 */	bl _savegpr_26
/* 8032D6B4 002F6C74  2C 03 00 00 */	cmpwi r3, 0
/* 8032D6B8 002F6C78  7C 7A 1B 78 */	mr r26, r3
/* 8032D6BC 002F6C7C  7C 9B 23 78 */	mr r27, r4
/* 8032D6C0 002F6C80  41 82 00 8C */	beq .L_8032D74C
/* 8032D6C4 002F6C84  83 E3 00 04 */	lwz r31, 4(r3)
/* 8032D6C8 002F6C88  3B C3 00 04 */	addi r30, r3, 4
/* 8032D6CC 002F6C8C  3F A0 80 5D */	lis r29, lbl_805CD7B8@ha
/* 8032D6D0 002F6C90  48 00 00 50 */	b .L_8032D720
.L_8032D6D4:
/* 8032D6D4 002F6C94  7F FC FB 78 */	mr r28, r31
/* 8032D6D8 002F6C98  83 FF 00 00 */	lwz r31, 0(r31)
/* 8032D6DC 002F6C9C  7F 43 D3 78 */	mr r3, r26
/* 8032D6E0 002F6CA0  38 81 00 08 */	addi r4, r1, 8
/* 8032D6E4 002F6CA4  93 81 00 08 */	stw r28, 8(r1)
/* 8032D6E8 002F6CA8  48 00 AE E9 */	bl func_803385D0
/* 8032D6EC 002F6CAC  88 1C 00 24 */	lbz r0, 0x24(r28)
/* 8032D6F0 002F6CB0  2C 00 00 00 */	cmpwi r0, 0
/* 8032D6F4 002F6CB4  40 82 00 2C */	bne .L_8032D720
/* 8032D6F8 002F6CB8  3B 9C FF FC */	addi r28, r28, -4
/* 8032D6FC 002F6CBC  38 80 FF FF */	li r4, -1
/* 8032D700 002F6CC0  81 9C 00 00 */	lwz r12, 0(r28)
/* 8032D704 002F6CC4  7F 83 E3 78 */	mr r3, r28
/* 8032D708 002F6CC8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8032D70C 002F6CCC  7D 89 03 A6 */	mtctr r12
/* 8032D710 002F6CD0  4E 80 04 21 */	bctrl 
/* 8032D714 002F6CD4  80 7D D7 B8 */	lwz r3, lbl_805CD7B8@l(r29)
/* 8032D718 002F6CD8  7F 84 E3 78 */	mr r4, r28
/* 8032D71C 002F6CDC  48 01 C3 85 */	bl MEMFreeToAllocator
.L_8032D720:
/* 8032D720 002F6CE0  7C 1F F0 40 */	cmplw r31, r30
/* 8032D724 002F6CE4  40 82 FF B0 */	bne .L_8032D6D4
/* 8032D728 002F6CE8  2C 1A 00 00 */	cmpwi r26, 0
/* 8032D72C 002F6CEC  41 82 00 10 */	beq .L_8032D73C
/* 8032D730 002F6CF0  7F 43 D3 78 */	mr r3, r26
/* 8032D734 002F6CF4  38 80 00 00 */	li r4, 0
/* 8032D738 002F6CF8  48 00 AE 09 */	bl __dt__Q46nw4hbm2ut6detail12LinkListImplFv
.L_8032D73C:
/* 8032D73C 002F6CFC  2C 1B 00 00 */	cmpwi r27, 0
/* 8032D740 002F6D00  40 81 00 0C */	ble .L_8032D74C
/* 8032D744 002F6D04  7F 43 D3 78 */	mr r3, r26
/* 8032D748 002F6D08  48 10 74 E5 */	bl __dl__FPv
.L_8032D74C:
/* 8032D74C 002F6D0C  39 61 00 30 */	addi r11, r1, 0x30
/* 8032D750 002F6D10  7F 43 D3 78 */	mr r3, r26
/* 8032D754 002F6D14  4B F8 CA 49 */	bl _restgpr_26
/* 8032D758 002F6D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032D75C 002F6D1C  7C 08 03 A6 */	mtlr r0
/* 8032D760 002F6D20  38 21 00 30 */	addi r1, r1, 0x30
/* 8032D764 002F6D24  4E 80 00 20 */	blr 

.balign 16, 0
.global AppendGroup__Q36nw4hbm3lyt14GroupContainerFPQ36nw4hbm3lyt5Group
AppendGroup__Q36nw4hbm3lyt14GroupContainerFPQ36nw4hbm3lyt5Group:
/* 8032D770 002F6D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8032D774 002F6D34  7C 08 02 A6 */	mflr r0
/* 8032D778 002F6D38  7C 85 23 78 */	mr r5, r4
/* 8032D77C 002F6D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032D780 002F6D40  38 03 00 04 */	addi r0, r3, 4
/* 8032D784 002F6D44  38 81 00 08 */	addi r4, r1, 8
/* 8032D788 002F6D48  38 A5 00 04 */	addi r5, r5, 4
/* 8032D78C 002F6D4C  90 01 00 08 */	stw r0, 8(r1)
/* 8032D790 002F6D50  48 00 AE 91 */	bl func_80338620
/* 8032D794 002F6D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8032D798 002F6D58  7C 08 03 A6 */	mtlr r0
/* 8032D79C 002F6D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8032D7A0 002F6D60  4E 80 00 20 */	blr 

.balign 16, 0
.global FindGroupByName__Q36nw4hbm3lyt14GroupContainerFPCc
FindGroupByName__Q36nw4hbm3lyt14GroupContainerFPCc:
/* 8032D7B0 002F6D70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032D7B4 002F6D74  7C 08 02 A6 */	mflr r0
/* 8032D7B8 002F6D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032D7BC 002F6D7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8032D7C0 002F6D80  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8032D7C4 002F6D84  3B C3 00 04 */	addi r30, r3, 4
/* 8032D7C8 002F6D88  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8032D7CC 002F6D8C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8032D7D0 002F6D90  7C 9C 23 78 */	mr r28, r4
/* 8032D7D4 002F6D94  83 E3 00 04 */	lwz r31, 4(r3)
/* 8032D7D8 002F6D98  48 00 00 28 */	b .L_8032D800
.L_8032D7DC:
/* 8032D7DC 002F6D9C  3B BF FF FC */	addi r29, r31, -4
/* 8032D7E0 002F6DA0  7F 84 E3 78 */	mr r4, r28
/* 8032D7E4 002F6DA4  38 7D 00 18 */	addi r3, r29, 0x18
/* 8032D7E8 002F6DA8  4B FF ED A9 */	bl EqualsPaneName__Q36nw4hbm3lyt6detailFPCcPCc
/* 8032D7EC 002F6DAC  2C 03 00 00 */	cmpwi r3, 0
/* 8032D7F0 002F6DB0  41 82 00 0C */	beq .L_8032D7FC
/* 8032D7F4 002F6DB4  7F A3 EB 78 */	mr r3, r29
/* 8032D7F8 002F6DB8  48 00 00 14 */	b .L_8032D80C
.L_8032D7FC:
/* 8032D7FC 002F6DBC  83 FF 00 00 */	lwz r31, 0(r31)
.L_8032D800:
/* 8032D800 002F6DC0  7C 1F F0 40 */	cmplw r31, r30
/* 8032D804 002F6DC4  40 82 FF D8 */	bne .L_8032D7DC
/* 8032D808 002F6DC8  38 60 00 00 */	li r3, 0
.L_8032D80C:
/* 8032D80C 002F6DCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032D810 002F6DD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8032D814 002F6DD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8032D818 002F6DD8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8032D81C 002F6DDC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8032D820 002F6DE0  7C 08 03 A6 */	mtlr r0
/* 8032D824 002F6DE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8032D828 002F6DE8  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8054D7D0
lbl_8054D7D0:
	# ROM: 0x5498D0
	.4byte lbl_8054D7F0
	.4byte 0
	.4byte __dt__Q36nw4hbm3lyt5GroupFv

.global lbl_8054D7DC
lbl_8054D7DC:
	.asciz "nw4hbm::lyt::Group"
	.balign 4

.global lbl_8054D7F0
lbl_8054D7F0:
	.4byte lbl_8054D7DC
	.4byte 0