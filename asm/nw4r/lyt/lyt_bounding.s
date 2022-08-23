.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global lbl_804053A4
lbl_804053A4:
/* 804053A4 003CE964  80 63 01 00 */	lwz r3, 0x100(r3)
/* 804053A8 003CE968  54 80 18 38 */	slwi r0, r4, 3
/* 804053AC 003CE96C  7C 63 02 14 */	add r3, r3, r0
/* 804053B0 003CE970  80 63 00 04 */	lwz r3, 4(r3)
/* 804053B4 003CE974  4E 80 00 20 */	blr 

.global func_804053B8
func_804053B8:
/* 804053B8 003CE978  81 83 00 00 */	lwz r12, 0(r3)
/* 804053BC 003CE97C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804053C0 003CE980  7D 89 03 A6 */	mtctr r12
/* 804053C4 003CE984  4E 80 04 20 */	bctr 

.global func_804053C8
func_804053C8:
/* 804053C8 003CE988  38 6D BB F0 */	addi r3, r13, lbl_80667D70@sda21
/* 804053CC 003CE98C  4E 80 00 20 */	blr 
.global sinit_804053D0
sinit_804053D0:
/* 804053D0 003CE990  38 0D BB D0 */	addi r0, r13, lbl_80667D50@sda21
/* 804053D4 003CE994  90 0D BB F0 */	stw r0, lbl_80667D70@sda21(r13)
/* 804053D8 003CE998  4E 80 00 20 */	blr 

.global func_804053DC
func_804053DC:
/* 804053DC 003CE99C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804053E0 003CE9A0  7C 08 02 A6 */	mflr r0
/* 804053E4 003CE9A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804053E8 003CE9A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804053EC 003CE9AC  7C 7F 1B 78 */	mr r31, r3
/* 804053F0 003CE9B0  4B FF 96 41 */	bl __ct__Q34nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pane
/* 804053F4 003CE9B4  3C 80 80 57 */	lis r4, lbl_8056D460@ha
/* 804053F8 003CE9B8  7F E3 FB 78 */	mr r3, r31
/* 804053FC 003CE9BC  38 84 D4 60 */	addi r4, r4, lbl_8056D460@l
/* 80405400 003CE9C0  90 9F 00 00 */	stw r4, 0(r31)
/* 80405404 003CE9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405408 003CE9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040540C 003CE9CC  7C 08 03 A6 */	mtlr r0
/* 80405410 003CE9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80405414 003CE9D4  4E 80 00 20 */	blr

.global func_80405418
func_80405418:
/* 80405418 003CE9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040541C 003CE9DC  7C 08 02 A6 */	mflr r0
/* 80405420 003CE9E0  2C 03 00 00 */	cmpwi r3, 0
/* 80405424 003CE9E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80405428 003CE9E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8040542C 003CE9EC  7C 9F 23 78 */	mr r31, r4
/* 80405430 003CE9F0  93 C1 00 08 */	stw r30, 8(r1)
/* 80405434 003CE9F4  7C 7E 1B 78 */	mr r30, r3
/* 80405438 003CE9F8  41 82 00 1C */	beq lbl_80405454
/* 8040543C 003CE9FC  38 80 00 00 */	li r4, 0
/* 80405440 003CEA00  4B FF 97 29 */	bl __dt__Q34nw4r3lyt4PaneFv
/* 80405444 003CEA04  2C 1F 00 00 */	cmpwi r31, 0
/* 80405448 003CEA08  40 81 00 0C */	ble lbl_80405454
/* 8040544C 003CEA0C  7F C3 F3 78 */	mr r3, r30
/* 80405450 003CEA10  48 02 F7 DD */	bl __dl__FPv
lbl_80405454:
/* 80405454 003CEA14  7F C3 F3 78 */	mr r3, r30
/* 80405458 003CEA18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8040545C 003CEA1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405460 003CEA20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405464 003CEA24  7C 08 03 A6 */	mtlr r0
/* 80405468 003CEA28  38 21 00 10 */	addi r1, r1, 0x10
/* 8040546C 003CEA2C  4E 80 00 20 */	blr 

.global func_80405470
func_80405470:
/* 80405470 003CEA30  4E 80 00 20 */	blr

.global func_80405474
func_80405474:
/* 80405474 003CEA34  38 6D BB F8 */	addi r3, r13, lbl_80667D78@sda21
/* 80405478 003CEA38  4E 80 00 20 */	blr


.global sinit_8040547C
sinit_8040547C:
/* 8040547C 003CEA3C  38 0D BB D0 */	addi r0, r13, lbl_80667D50@sda21
/* 80405480 003CEA40  90 0D BB F8 */	stw r0, lbl_80667D78@sda21(r13)
/* 80405484 003CEA44  4E 80 00 20 */	blr 

.global func_80405488
func_80405488:
/* 80405488 003CEA48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8040548C 003CEA4C  7C 08 02 A6 */	mflr r0
/* 80405490 003CEA50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80405494 003CEA54  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80405498 003CEA58  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 8040549C 003CEA5C  C0 24 00 08 */	lfs f1, 8(r4)
/* 804054A0 003CEA60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804054A4 003CEA64  7C 9F 23 78 */	mr r31, r4
/* 804054A8 003CEA68  C0 42 C2 18 */	lfs f2, lbl_8066C598@sda21(r2)
/* 804054AC 003CEA6C  C0 02 C2 1C */	lfs f0, lbl_8066C59C@sda21(r2)
/* 804054B0 003CEA70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804054B4 003CEA74  7C 7E 1B 78 */	mr r30, r3
/* 804054B8 003CEA78  EC 20 00 72 */	fmuls f1, f0, f1
/* 804054BC 003CEA7C  D0 41 00 08 */	stfs f2, 8(r1)
/* 804054C0 003CEA80  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 804054C4 003CEA84  48 00 58 D1 */	bl CosFIdx__Q24nw4r4mathFf
/* 804054C8 003CEA88  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804054CC 003CEA8C  FF E0 08 90 */	fmr f31, f1
/* 804054D0 003CEA90  C0 02 C2 1C */	lfs f0, lbl_8066C59C@sda21(r2)
/* 804054D4 003CEA94  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804054D8 003CEA98  48 00 58 55 */	bl SinFIdx__Q24nw4r4mathFf
/* 804054DC 003CEA9C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 804054E0 003CEAA0  FC A0 08 50 */	fneg f5, f1
/* 804054E4 003CEAA4  C0 41 00 08 */	lfs f2, 8(r1)
/* 804054E8 003CEAA8  ED 21 00 F2 */	fmuls f9, f1, f3
/* 804054EC 003CEAAC  C1 02 C2 20 */	lfs f8, lbl_8066C5A0@sda21(r2)
/* 804054F0 003CEAB0  ED 7F 00 F2 */	fmuls f11, f31, f3
/* 804054F4 003CEAB4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804054F8 003CEAB8  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 804054FC 003CEABC  FC 80 10 50 */	fneg f4, f2
/* 80405500 003CEAC0  ED 85 00 32 */	fmuls f12, f5, f0
/* 80405504 003CEAC4  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80405508 003CEAC8  ED 5F 00 32 */	fmuls f10, f31, f0
/* 8040550C 003CEACC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80405510 003CEAD0  EC A3 10 2A */	fadds f5, f3, f2
/* 80405514 003CEAD4  C0 02 C2 24 */	lfs f0, lbl_8066C5A4@sda21(r2)
/* 80405518 003CEAD8  EC 41 30 2A */	fadds f2, f1, f6
/* 8040551C 003CEADC  D1 7E 00 00 */	stfs f11, 0(r30)
/* 80405520 003CEAE0  FC E0 30 50 */	fneg f7, f6
/* 80405524 003CEAE4  EC 29 01 32 */	fmuls f1, f9, f4
/* 80405528 003CEAE8  D1 9E 00 04 */	stfs f12, 4(r30)
/* 8040552C 003CEAEC  EC 6B 01 32 */	fmuls f3, f11, f4
/* 80405530 003CEAF0  EC CC 01 F2 */	fmuls f6, f12, f7
/* 80405534 003CEAF4  D1 1E 00 08 */	stfs f8, 8(r30)
/* 80405538 003CEAF8  EC 22 08 2A */	fadds f1, f2, f1
/* 8040553C 003CEAFC  EC 85 18 2A */	fadds f4, f5, f3
/* 80405540 003CEB00  D1 3E 00 10 */	stfs f9, 0x10(r30)
/* 80405544 003CEB04  EC 6A 01 F2 */	fmuls f3, f10, f7
/* 80405548 003CEB08  D1 5E 00 14 */	stfs f10, 0x14(r30)
/* 8040554C 003CEB0C  EC 46 20 2A */	fadds f2, f6, f4
/* 80405550 003CEB10  EC 23 08 2A */	fadds f1, f3, f1
/* 80405554 003CEB14  D1 1E 00 18 */	stfs f8, 0x18(r30)
/* 80405558 003CEB18  D0 5E 00 0C */	stfs f2, 0xc(r30)
/* 8040555C 003CEB1C  D0 3E 00 1C */	stfs f1, 0x1c(r30)
/* 80405560 003CEB20  D1 1E 00 20 */	stfs f8, 0x20(r30)
/* 80405564 003CEB24  D1 1E 00 24 */	stfs f8, 0x24(r30)
/* 80405568 003CEB28  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8040556C 003CEB2C  D1 1E 00 2C */	stfs f8, 0x2c(r30)
/* 80405570 003CEB30  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 80405574 003CEB34  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80405578 003CEB38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040557C 003CEB3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80405580 003CEB40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80405584 003CEB44  7C 08 03 A6 */	mtlr r0
/* 80405588 003CEB48  38 21 00 30 */	addi r1, r1, 0x30
/* 8040558C 003CEB4C  4E 80 00 20 */	blr 

.global func_80405590
func_80405590:
/* 80405590 003CEB50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80405594 003CEB54  7C 08 02 A6 */	mflr r0
/* 80405598 003CEB58  C0 44 00 00 */	lfs f2, 0(r4)
/* 8040559C 003CEB5C  38 A0 00 00 */	li r5, 0
/* 804055A0 003CEB60  C0 64 00 04 */	lfs f3, 4(r4)
/* 804055A4 003CEB64  FD 00 12 10 */	fabs f8, f2
/* 804055A8 003CEB68  C0 02 C2 24 */	lfs f0, lbl_8066C5A4@sda21(r2)
/* 804055AC 003CEB6C  C0 84 00 08 */	lfs f4, 8(r4)
/* 804055B0 003CEB70  FD 20 1A 10 */	fabs f9, f3
/* 804055B4 003CEB74  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 804055B8 003CEB78  C0 C4 00 10 */	lfs f6, 0x10(r4)
/* 804055BC 003CEB7C  C0 E4 00 14 */	lfs f7, 0x14(r4)
/* 804055C0 003CEB80  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 804055C4 003CEB84  FD 40 22 10 */	fabs f10, f4
/* 804055C8 003CEB88  90 01 00 24 */	stw r0, 0x24(r1)
/* 804055CC 003CEB8C  FD 60 2A 10 */	fabs f11, f5
/* 804055D0 003CEB90  FD 80 32 10 */	fabs f12, f6
/* 804055D4 003CEB94  FD A0 3A 10 */	fabs f13, f7
/* 804055D8 003CEB98  4C 41 13 82 */	cror 2, 1, 2
/* 804055DC 003CEB9C  41 82 00 40 */	beq lbl_8040561C
/* 804055E0 003CEBA0  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 804055E4 003CEBA4  4C 41 13 82 */	cror 2, 1, 2
/* 804055E8 003CEBA8  41 82 00 34 */	beq lbl_8040561C
/* 804055EC 003CEBAC  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 804055F0 003CEBB0  4C 41 13 82 */	cror 2, 1, 2
/* 804055F4 003CEBB4  41 82 00 28 */	beq lbl_8040561C
/* 804055F8 003CEBB8  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 804055FC 003CEBBC  4C 41 13 82 */	cror 2, 1, 2
/* 80405600 003CEBC0  41 82 00 1C */	beq lbl_8040561C
/* 80405604 003CEBC4  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 80405608 003CEBC8  4C 41 13 82 */	cror 2, 1, 2
/* 8040560C 003CEBCC  41 82 00 10 */	beq lbl_8040561C
/* 80405610 003CEBD0  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 80405614 003CEBD4  4C 41 13 82 */	cror 2, 1, 2
/* 80405618 003CEBD8  40 82 00 98 */	bne lbl_804056B0
lbl_8040561C:
/* 8040561C 003CEBDC  C0 22 C2 18 */	lfs f1, lbl_8066C598@sda21(r2)
/* 80405620 003CEBE0  C0 02 C2 24 */	lfs f0, lbl_8066C5A4@sda21(r2)
lbl_80405624:
/* 80405624 003CEBE4  7C A0 07 74 */	extsb r0, r5
/* 80405628 003CEBE8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 8040562C 003CEBEC  40 80 01 2C */	bge lbl_80405758
/* 80405630 003CEBF0  ED 08 00 72 */	fmuls f8, f8, f1
/* 80405634 003CEBF4  EC 42 00 72 */	fmuls f2, f2, f1
/* 80405638 003CEBF8  EC 63 00 72 */	fmuls f3, f3, f1
/* 8040563C 003CEBFC  FC 08 00 40 */	fcmpo cr0, f8, f0
/* 80405640 003CEC00  EC 84 00 72 */	fmuls f4, f4, f1
/* 80405644 003CEC04  EC A5 00 72 */	fmuls f5, f5, f1
/* 80405648 003CEC08  EC C6 00 72 */	fmuls f6, f6, f1
/* 8040564C 003CEC0C  EC E7 00 72 */	fmuls f7, f7, f1
/* 80405650 003CEC10  ED 29 00 72 */	fmuls f9, f9, f1
/* 80405654 003CEC14  ED 4A 00 72 */	fmuls f10, f10, f1
/* 80405658 003CEC18  ED 6B 00 72 */	fmuls f11, f11, f1
/* 8040565C 003CEC1C  ED 8C 00 72 */	fmuls f12, f12, f1
/* 80405660 003CEC20  ED AD 00 72 */	fmuls f13, f13, f1
/* 80405664 003CEC24  4C 41 13 82 */	cror 2, 1, 2
/* 80405668 003CEC28  38 A5 00 01 */	addi r5, r5, 1
/* 8040566C 003CEC2C  41 82 FF B8 */	beq lbl_80405624
/* 80405670 003CEC30  FC 09 00 40 */	fcmpo cr0, f9, f0
/* 80405674 003CEC34  4C 41 13 82 */	cror 2, 1, 2
/* 80405678 003CEC38  41 82 FF AC */	beq lbl_80405624
/* 8040567C 003CEC3C  FC 0A 00 40 */	fcmpo cr0, f10, f0
/* 80405680 003CEC40  4C 41 13 82 */	cror 2, 1, 2
/* 80405684 003CEC44  41 82 FF A0 */	beq lbl_80405624
/* 80405688 003CEC48  FC 0B 00 40 */	fcmpo cr0, f11, f0
/* 8040568C 003CEC4C  4C 41 13 82 */	cror 2, 1, 2
/* 80405690 003CEC50  41 82 FF 94 */	beq lbl_80405624
/* 80405694 003CEC54  FC 0C 00 40 */	fcmpo cr0, f12, f0
/* 80405698 003CEC58  4C 41 13 82 */	cror 2, 1, 2
/* 8040569C 003CEC5C  41 82 FF 88 */	beq lbl_80405624
/* 804056A0 003CEC60  FC 0D 00 40 */	fcmpo cr0, f13, f0
/* 804056A4 003CEC64  4C 41 13 82 */	cror 2, 1, 2
/* 804056A8 003CEC68  41 82 FF 7C */	beq lbl_80405624
/* 804056AC 003CEC6C  48 00 00 AC */	b lbl_80405758
lbl_804056B0:
/* 804056B0 003CEC70  C0 22 C2 18 */	lfs f1, lbl_8066C598@sda21(r2)
/* 804056B4 003CEC74  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 804056B8 003CEC78  40 80 00 A0 */	bge lbl_80405758
/* 804056BC 003CEC7C  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 804056C0 003CEC80  40 80 00 98 */	bge lbl_80405758
/* 804056C4 003CEC84  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 804056C8 003CEC88  40 80 00 90 */	bge lbl_80405758
/* 804056CC 003CEC8C  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 804056D0 003CEC90  40 80 00 88 */	bge lbl_80405758
/* 804056D4 003CEC94  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 804056D8 003CEC98  40 80 00 80 */	bge lbl_80405758
/* 804056DC 003CEC9C  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 804056E0 003CECA0  40 80 00 78 */	bge lbl_80405758
/* 804056E4 003CECA4  C0 02 C2 28 */	lfs f0, lbl_8066C5A8@sda21(r2)
lbl_804056E8:
/* 804056E8 003CECA8  ED 08 00 32 */	fmuls f8, f8, f0
/* 804056EC 003CECAC  38 A5 FF FF */	addi r5, r5, -1
/* 804056F0 003CECB0  EC 42 00 32 */	fmuls f2, f2, f0
/* 804056F4 003CECB4  EC 63 00 32 */	fmuls f3, f3, f0
/* 804056F8 003CECB8  FC 08 08 40 */	fcmpo cr0, f8, f1
/* 804056FC 003CECBC  EC 84 00 32 */	fmuls f4, f4, f0
/* 80405700 003CECC0  EC A5 00 32 */	fmuls f5, f5, f0
/* 80405704 003CECC4  EC C6 00 32 */	fmuls f6, f6, f0
/* 80405708 003CECC8  EC E7 00 32 */	fmuls f7, f7, f0
/* 8040570C 003CECCC  ED 29 00 32 */	fmuls f9, f9, f0
/* 80405710 003CECD0  ED 4A 00 32 */	fmuls f10, f10, f0
/* 80405714 003CECD4  ED 6B 00 32 */	fmuls f11, f11, f0
/* 80405718 003CECD8  ED 8C 00 32 */	fmuls f12, f12, f0
/* 8040571C 003CECDC  ED AD 00 32 */	fmuls f13, f13, f0
/* 80405720 003CECE0  40 80 00 38 */	bge lbl_80405758
/* 80405724 003CECE4  FC 09 08 40 */	fcmpo cr0, f9, f1
/* 80405728 003CECE8  40 80 00 30 */	bge lbl_80405758
/* 8040572C 003CECEC  FC 0A 08 40 */	fcmpo cr0, f10, f1
/* 80405730 003CECF0  40 80 00 28 */	bge lbl_80405758
/* 80405734 003CECF4  FC 0B 08 40 */	fcmpo cr0, f11, f1
/* 80405738 003CECF8  40 80 00 20 */	bge lbl_80405758
/* 8040573C 003CECFC  FC 0C 08 40 */	fcmpo cr0, f12, f1
/* 80405740 003CED00  40 80 00 18 */	bge lbl_80405758
/* 80405744 003CED04  FC 0D 08 40 */	fcmpo cr0, f13, f1
/* 80405748 003CED08  40 80 00 10 */	bge lbl_80405758
/* 8040574C 003CED0C  7C A0 07 74 */	extsb r0, r5
/* 80405750 003CED10  2C 00 FF EF */	cmpwi r0, -17
/* 80405754 003CED14  41 81 FF 94 */	bgt lbl_804056E8
lbl_80405758:
/* 80405758 003CED18  D0 41 00 08 */	stfs f2, 8(r1)
/* 8040575C 003CED1C  38 81 00 08 */	addi r4, r1, 8
/* 80405760 003CED20  7C A5 07 74 */	extsb r5, r5
/* 80405764 003CED24  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80405768 003CED28  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8040576C 003CED2C  D0 A1 00 14 */	stfs f5, 0x14(r1)
/* 80405770 003CED30  D0 C1 00 18 */	stfs f6, 0x18(r1)
/* 80405774 003CED34  D0 E1 00 1C */	stfs f7, 0x1c(r1)
/* 80405778 003CED38  4B F1 7A 59 */	bl GXSetIndTexMtx
/* 8040577C 003CED3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80405780 003CED40  7C 08 03 A6 */	mtlr r0
/* 80405784 003CED44  38 21 00 20 */	addi r1, r1, 0x20
/* 80405788 003CED48  4E 80 00 20 */	blr

.global func_8040578C
func_8040578C:
/* 8040578C 003CED4C  C0 24 00 00 */	lfs f1, 0(r4)
/* 80405790 003CED50  C0 04 00 04 */	lfs f0, 4(r4)
/* 80405794 003CED54  D0 23 00 00 */	stfs f1, 0(r3)
/* 80405798 003CED58  D0 03 00 04 */	stfs f0, 4(r3)
/* 8040579C 003CED5C  4E 80 00 20 */	blr 

.global func_804057A0
func_804057A0:
/* 804057A0 003CED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804057A4 003CED64  7C 08 02 A6 */	mflr r0
/* 804057A8 003CED68  3C C0 80 57 */	lis r6, lbl_8056D518@ha
/* 804057AC 003CED6C  3C 80 80 40 */	lis r4, func_80400C60@ha
/* 804057B0 003CED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 804057B4 003CED74  3C A0 80 12 */	lis r5, func_801252D0@ha
/* 804057B8 003CED78  39 03 00 08 */	addi r8, r3, 8
/* 804057BC 003CED7C  38 C6 D5 18 */	addi r6, r6, lbl_8056D518@l
/* 804057C0 003CED80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804057C4 003CED84  3B E0 00 00 */	li r31, 0
/* 804057C8 003CED88  38 84 0C 60 */	addi r4, r4, func_80400C60@l
/* 804057CC 003CED8C  38 A5 52 D0 */	addi r5, r5, func_801252D0@l
/* 804057D0 003CED90  93 C1 00 08 */	stw r30, 8(r1)
/* 804057D4 003CED94  7C 7E 1B 78 */	mr r30, r3
/* 804057D8 003CED98  38 E0 00 04 */	li r7, 4
/* 804057DC 003CED9C  93 E3 00 08 */	stw r31, 8(r3)
/* 804057E0 003CEDA0  93 E3 00 0C */	stw r31, 0xc(r3)
/* 804057E4 003CEDA4  90 C3 00 00 */	stw r6, 0(r3)
/* 804057E8 003CEDA8  38 C0 00 04 */	li r6, 4
/* 804057EC 003CEDAC  93 E3 00 04 */	stw r31, 4(r3)
/* 804057F0 003CEDB0  91 03 00 08 */	stw r8, 8(r3)
/* 804057F4 003CEDB4  91 03 00 0C */	stw r8, 0xc(r3)
/* 804057F8 003CEDB8  38 63 00 28 */	addi r3, r3, 0x28
/* 804057FC 003CEDBC  4B EB 43 05 */	bl __construct_array
/* 80405800 003CEDC0  38 A2 D9 70 */	addi r5, r2, lbl_8066DCF0@sda21
/* 80405804 003CEDC4  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80405808 003CEDC8  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 8040580C 003CEDCC  38 E0 00 FF */	li r7, 0xff
/* 80405810 003CEDD0  A9 42 D9 70 */	lha r10, lbl_8066DCF0@sda21(r2)
/* 80405814 003CEDD4  54 00 06 FE */	clrlwi r0, r0, 0x1b
/* 80405818 003CEDD8  54 66 06 FE */	clrlwi r6, r3, 0x1b
/* 8040581C 003CEDDC  A8 85 00 02 */	lha r4, 2(r5)
/* 80405820 003CEDE0  A9 25 00 04 */	lha r9, 4(r5)
/* 80405824 003CEDE4  38 7E 00 44 */	addi r3, r30, 0x44
/* 80405828 003CEDE8  A9 05 00 06 */	lha r8, 6(r5)
/* 8040582C 003CEDEC  38 A0 00 15 */	li r5, 0x15
/* 80405830 003CEDF0  B0 9E 00 12 */	sth r4, 0x12(r30)
/* 80405834 003CEDF4  38 80 00 00 */	li r4, 0
/* 80405838 003CEDF8  B1 5E 00 10 */	sth r10, 0x10(r30)
/* 8040583C 003CEDFC  B1 3E 00 14 */	sth r9, 0x14(r30)
/* 80405840 003CEE00  B1 1E 00 16 */	sth r8, 0x16(r30)
/* 80405844 003CEE04  B0 FE 00 18 */	sth r7, 0x18(r30)
/* 80405848 003CEE08  B0 FE 00 1A */	sth r7, 0x1a(r30)
/* 8040584C 003CEE0C  B0 FE 00 1C */	sth r7, 0x1c(r30)
/* 80405850 003CEE10  B0 FE 00 1E */	sth r7, 0x1e(r30)
/* 80405854 003CEE14  B0 FE 00 20 */	sth r7, 0x20(r30)
/* 80405858 003CEE18  B0 FE 00 22 */	sth r7, 0x22(r30)
/* 8040585C 003CEE1C  B0 FE 00 24 */	sth r7, 0x24(r30)
/* 80405860 003CEE20  B0 FE 00 26 */	sth r7, 0x26(r30)
/* 80405864 003CEE24  90 DE 00 38 */	stw r6, 0x38(r30)
/* 80405868 003CEE28  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8040586C 003CEE2C  9B FE 00 59 */	stb r31, 0x59(r30)
/* 80405870 003CEE30  93 FE 00 40 */	stw r31, 0x40(r30)
/* 80405874 003CEE34  4B BF EA DD */	bl memset
/* 80405878 003CEE38  7F C3 F3 78 */	mr r3, r30
/* 8040587C 003CEE3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80405880 003CEE40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80405884 003CEE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80405888 003CEE48  7C 08 03 A6 */	mtlr r0
/* 8040588C 003CEE4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80405890 003CEE50  4E 80 00 20 */	blr 

.global func_80405894
func_80405894:
/* 80405894 003CEE54  38 00 00 00 */	li r0, 0
/* 80405898 003CEE58  38 83 00 04 */	addi r4, r3, 4
/* 8040589C 003CEE5C  90 03 00 04 */	stw r0, 4(r3)
/* 804058A0 003CEE60  90 03 00 08 */	stw r0, 8(r3)
/* 804058A4 003CEE64  90 03 00 00 */	stw r0, 0(r3)
/* 804058A8 003CEE68  90 83 00 04 */	stw r4, 4(r3)
/* 804058AC 003CEE6C  90 83 00 08 */	stw r4, 8(r3)
/* 804058B0 003CEE70  4E 80 00 20 */	blr 
