.include "macros.inc"
.file "nw4r/ut/ut_LinkList.o"

# 0x8042B410 - 0x8042B57C
.text
.balign 4

# nw4r::ut::detail::LinkListImpl::~LinkListImpl()
.fn __dt__Q44nw4r2ut6detail12LinkListImplFv, global
/* 8042B410 003F49D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042B414 003F49D4  7C 08 02 A6 */	mflr r0
/* 8042B418 003F49D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042B41C 003F49DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042B420 003F49E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042B424 003F49E4  7C 7F 1B 78 */	mr r31, r3
/* 8042B428 003F49E8  41 82 00 54 */	beq .L_8042B47C
/* 8042B42C 003F49EC  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8042B430 003F49F0  38 C3 00 04 */	addi r6, r3, 0x4
/* 8042B434 003F49F4  38 00 00 00 */	li r0, 0x0
/* 8042B438 003F49F8  48 00 00 2C */	b .L_8042B464
.L_8042B43C:
/* 8042B43C 003F49FC  81 07 00 00 */	lwz r8, 0x0(r7)
/* 8042B440 003F4A00  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 8042B444 003F4A04  90 A8 00 04 */	stw r5, 0x4(r8)
/* 8042B448 003F4A08  91 05 00 00 */	stw r8, 0x0(r5)
/* 8042B44C 003F4A0C  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8042B450 003F4A10  38 A5 FF FF */	addi r5, r5, -0x1
/* 8042B454 003F4A14  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8042B458 003F4A18  90 07 00 00 */	stw r0, 0x0(r7)
/* 8042B45C 003F4A1C  90 07 00 04 */	stw r0, 0x4(r7)
/* 8042B460 003F4A20  7D 07 43 78 */	mr r7, r8
.L_8042B464:
/* 8042B464 003F4A24  7C 07 30 40 */	cmplw r7, r6
/* 8042B468 003F4A28  40 82 FF D4 */	bne .L_8042B43C
/* 8042B46C 003F4A2C  2C 04 00 00 */	cmpwi r4, 0x0
/* 8042B470 003F4A30  40 81 00 0C */	ble .L_8042B47C
/* 8042B474 003F4A34  7F E3 FB 78 */	mr r3, r31
/* 8042B478 003F4A38  48 00 97 B5 */	bl __dl__FPv
.L_8042B47C:
/* 8042B47C 003F4A3C  7F E3 FB 78 */	mr r3, r31
/* 8042B480 003F4A40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042B484 003F4A44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042B488 003F4A48  7C 08 03 A6 */	mtlr r0
/* 8042B48C 003F4A4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042B490 003F4A50  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r2ut6detail12LinkListImplFv

# nw4r::ut::detail::LinkListImpl::Erase(nw4r::ut::detail::LinkListImpl::Iterator)
.fn Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator, global
/* 8042B494 003F4A54  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042B498 003F4A58  38 00 00 00 */	li r0, 0x0
/* 8042B49C 003F4A5C  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 8042B4A0 003F4A60  48 00 00 2C */	b .L_8042B4CC
.L_8042B4A4:
/* 8042B4A4 003F4A64  80 E6 00 00 */	lwz r7, 0x0(r6)
/* 8042B4A8 003F4A68  80 86 00 04 */	lwz r4, 0x4(r6)
/* 8042B4AC 003F4A6C  90 87 00 04 */	stw r4, 0x4(r7)
/* 8042B4B0 003F4A70  90 E4 00 00 */	stw r7, 0x0(r4)
/* 8042B4B4 003F4A74  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8042B4B8 003F4A78  38 84 FF FF */	addi r4, r4, -0x1
/* 8042B4BC 003F4A7C  90 83 00 00 */	stw r4, 0x0(r3)
/* 8042B4C0 003F4A80  90 06 00 00 */	stw r0, 0x0(r6)
/* 8042B4C4 003F4A84  90 06 00 04 */	stw r0, 0x4(r6)
/* 8042B4C8 003F4A88  7C E6 3B 78 */	mr r6, r7
.L_8042B4CC:
/* 8042B4CC 003F4A8C  7C 06 28 40 */	cmplw r6, r5
/* 8042B4D0 003F4A90  40 82 FF D4 */	bne .L_8042B4A4
/* 8042B4D4 003F4A94  7C A3 2B 78 */	mr r3, r5
/* 8042B4D8 003F4A98  4E 80 00 20 */	blr
.endfn Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator

# nw4r::ut::detail::LinkListImpl::Clear()
.fn Clear__Q44nw4r2ut6detail12LinkListImplFv, global
/* 8042B4DC 003F4A9C  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8042B4E0 003F4AA0  38 A3 00 04 */	addi r5, r3, 0x4
/* 8042B4E4 003F4AA4  38 00 00 00 */	li r0, 0x0
/* 8042B4E8 003F4AA8  48 00 00 2C */	b .L_8042B514
.L_8042B4EC:
/* 8042B4EC 003F4AAC  80 E6 00 00 */	lwz r7, 0x0(r6)
/* 8042B4F0 003F4AB0  80 86 00 04 */	lwz r4, 0x4(r6)
/* 8042B4F4 003F4AB4  90 87 00 04 */	stw r4, 0x4(r7)
/* 8042B4F8 003F4AB8  90 E4 00 00 */	stw r7, 0x0(r4)
/* 8042B4FC 003F4ABC  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8042B500 003F4AC0  38 84 FF FF */	addi r4, r4, -0x1
/* 8042B504 003F4AC4  90 83 00 00 */	stw r4, 0x0(r3)
/* 8042B508 003F4AC8  90 06 00 00 */	stw r0, 0x0(r6)
/* 8042B50C 003F4ACC  90 06 00 04 */	stw r0, 0x4(r6)
/* 8042B510 003F4AD0  7C E6 3B 78 */	mr r6, r7
.L_8042B514:
/* 8042B514 003F4AD4  7C 06 28 40 */	cmplw r6, r5
/* 8042B518 003F4AD8  40 82 FF D4 */	bne .L_8042B4EC
/* 8042B51C 003F4ADC  4E 80 00 20 */	blr
.endfn Clear__Q44nw4r2ut6detail12LinkListImplFv

# nw4r::ut::detail::LinkListImpl::Insert(nw4r::ut::detail::LinkListImpl::Iterator, nw4r::ut::LinkListNode*)
.fn Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode, global
/* 8042B520 003F4AE0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 8042B524 003F4AE4  80 C4 00 04 */	lwz r6, 0x4(r4)
/* 8042B528 003F4AE8  90 85 00 00 */	stw r4, 0x0(r5)
/* 8042B52C 003F4AEC  90 C5 00 04 */	stw r6, 0x4(r5)
/* 8042B530 003F4AF0  90 A4 00 04 */	stw r5, 0x4(r4)
/* 8042B534 003F4AF4  90 A6 00 00 */	stw r5, 0x0(r6)
/* 8042B538 003F4AF8  80 83 00 00 */	lwz r4, 0x0(r3)
/* 8042B53C 003F4AFC  38 04 00 01 */	addi r0, r4, 0x1
/* 8042B540 003F4B00  90 03 00 00 */	stw r0, 0x0(r3)
/* 8042B544 003F4B04  7C A3 2B 78 */	mr r3, r5
/* 8042B548 003F4B08  4E 80 00 20 */	blr
.endfn Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode

# nw4r::ut::detail::LinkListImpl::Erase(nw4r::ut::LinkListNode*)
.fn Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode, global
/* 8042B54C 003F4B0C  80 C4 00 00 */	lwz r6, 0x0(r4)
/* 8042B550 003F4B10  38 00 00 00 */	li r0, 0x0
/* 8042B554 003F4B14  80 A4 00 04 */	lwz r5, 0x4(r4)
/* 8042B558 003F4B18  90 A6 00 04 */	stw r5, 0x4(r6)
/* 8042B55C 003F4B1C  90 C5 00 00 */	stw r6, 0x0(r5)
/* 8042B560 003F4B20  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 8042B564 003F4B24  38 A5 FF FF */	addi r5, r5, -0x1
/* 8042B568 003F4B28  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8042B56C 003F4B2C  7C C3 33 78 */	mr r3, r6
/* 8042B570 003F4B30  90 04 00 00 */	stw r0, 0x0(r4)
/* 8042B574 003F4B34  90 04 00 04 */	stw r0, 0x4(r4)
/* 8042B578 003F4B38  4E 80 00 20 */	blr
.endfn Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
