.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__Q44nw4r3snd6detail12EnvGeneratorFv, global
/* 804153C4 003DE984  C0 22 C3 B0 */	lfs f1, float_8066C730@sda21(r2)
/* 804153C8 003DE988  38 80 00 00 */	li r4, 0
/* 804153CC 003DE98C  C0 02 C3 B8 */	lfs f0, float_8066C738@sda21(r2)
/* 804153D0 003DE990  3C A0 80 52 */	lis r5, lbl_80523658@ha
/* 804153D4 003DE994  38 A5 36 58 */	addi r5, r5, lbl_80523658@l
/* 804153D8 003DE998  C0 42 C3 B4 */	lfs f2, float_8066C734@sda21(r2)
/* 804153DC 003DE99C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804153E0 003DE9A0  C0 25 01 FC */	lfs f1, 0x1fc(r5)
/* 804153E4 003DE9A4  38 00 00 7F */	li r0, 0x7f
/* 804153E8 003DE9A8  B0 83 00 16 */	sth r4, 0x16(r3)
/* 804153EC 003DE9AC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804153F0 003DE9B0  D0 43 00 08 */	stfs f2, 8(r3)
/* 804153F4 003DE9B4  98 03 00 14 */	stb r0, 0x14(r3)
/* 804153F8 003DE9B8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 804153FC 003DE9BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80415400 003DE9C0  90 83 00 00 */	stw r4, 0(r3)
/* 80415404 003DE9C4  4E 80 00 20 */	blr 
.endfn __ct__Q44nw4r3snd6detail12EnvGeneratorFv

.fn Init__Q44nw4r3snd6detail12EnvGeneratorFf, global
/* 80415408 003DE9C8  C0 02 C3 B8 */	lfs f0, float_8066C738@sda21(r2)
/* 8041540C 003DE9CC  38 80 00 00 */	li r4, 0
/* 80415410 003DE9D0  3C A0 80 52 */	lis r5, lbl_80523658@ha
/* 80415414 003DE9D4  C0 42 C3 B4 */	lfs f2, float_8066C734@sda21(r2)
/* 80415418 003DE9D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8041541C 003DE9DC  38 A5 36 58 */	addi r5, r5, lbl_80523658@l
/* 80415420 003DE9E0  C0 25 01 FC */	lfs f1, 0x1fc(r5)
/* 80415424 003DE9E4  38 00 00 7F */	li r0, 0x7f
/* 80415428 003DE9E8  B0 83 00 16 */	sth r4, 0x16(r3)
/* 8041542C 003DE9EC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80415430 003DE9F0  D0 43 00 08 */	stfs f2, 8(r3)
/* 80415434 003DE9F4  98 03 00 14 */	stb r0, 0x14(r3)
/* 80415438 003DE9F8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 8041543C 003DE9FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80415440 003DEA00  90 83 00 00 */	stw r4, 0(r3)
/* 80415444 003DEA04  4E 80 00 20 */	blr 
.endfn Init__Q44nw4r3snd6detail12EnvGeneratorFf

.fn Reset__Q44nw4r3snd6detail12EnvGeneratorFf, global
/* 80415448 003DEA08  C0 02 C3 B8 */	lfs f0, float_8066C738@sda21(r2)
/* 8041544C 003DEA0C  38 00 00 00 */	li r0, 0
/* 80415450 003DEA10  90 03 00 00 */	stw r0, 0(r3)
/* 80415454 003DEA14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80415458 003DEA18  D0 03 00 04 */	stfs f0, 4(r3)
/* 8041545C 003DEA1C  4E 80 00 20 */	blr 
.endfn Reset__Q44nw4r3snd6detail12EnvGeneratorFf

.fn GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv, global
/* 80415460 003DEA20  80 03 00 00 */	lwz r0, 0(r3)
/* 80415464 003DEA24  2C 00 00 00 */	cmpwi r0, 0
/* 80415468 003DEA28  40 82 00 14 */	bne .L_8041547C
/* 8041546C 003DEA2C  C0 22 C3 BC */	lfs f1, float_8066C73C@sda21(r2)
/* 80415470 003DEA30  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80415474 003DEA34  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80415478 003DEA38  4D 82 00 20 */	beqlr 
.L_8041547C:
/* 8041547C 003DEA3C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80415480 003DEA40  C0 02 C3 B8 */	lfs f0, float_8066C738@sda21(r2)
/* 80415484 003DEA44  EC 21 00 24 */	fdivs f1, f1, f0
/* 80415488 003DEA48  4E 80 00 20 */	blr 
.endfn GetValue__Q44nw4r3snd6detail12EnvGeneratorCFv

.fn Update__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 8041548C 003DEA4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415490 003DEA50  80 03 00 00 */	lwz r0, 0(r3)
/* 80415494 003DEA54  2C 00 00 02 */	cmpwi r0, 2
/* 80415498 003DEA58  41 82 00 A8 */	beq .L_80415540
/* 8041549C 003DEA5C  40 80 00 14 */	bge .L_804154B0
/* 804154A0 003DEA60  2C 00 00 00 */	cmpwi r0, 0
/* 804154A4 003DEA64  41 82 00 18 */	beq .L_804154BC
/* 804154A8 003DEA68  40 80 00 60 */	bge .L_80415508
/* 804154AC 003DEA6C  48 00 01 34 */	b .L_804155E0
.L_804154B0:
/* 804154B0 003DEA70  2C 00 00 04 */	cmpwi r0, 4
/* 804154B4 003DEA74  41 82 00 FC */	beq .L_804155B0
/* 804154B8 003DEA78  48 00 01 28 */	b .L_804155E0
.L_804154BC:
/* 804154BC 003DEA7C  C0 02 C3 C0 */	lfs f0, float_8066C740@sda21(r2)
/* 804154C0 003DEA80  7C 89 03 A6 */	mtctr r4
/* 804154C4 003DEA84  2C 04 00 00 */	cmpwi r4, 0
/* 804154C8 003DEA88  40 81 01 18 */	ble .L_804155E0
.L_804154CC:
/* 804154CC 003DEA8C  C0 43 00 04 */	lfs f2, 4(r3)
/* 804154D0 003DEA90  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804154D4 003DEA94  EC 22 00 72 */	fmuls f1, f2, f1
/* 804154D8 003DEA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804154DC 003DEA9C  D0 23 00 04 */	stfs f1, 4(r3)
/* 804154E0 003DEAA0  40 81 00 20 */	ble .L_80415500
/* 804154E4 003DEAA4  C0 02 C3 BC */	lfs f0, float_8066C73C@sda21(r2)
/* 804154E8 003DEAA8  38 80 00 01 */	li r4, 1
/* 804154EC 003DEAAC  A0 03 00 16 */	lhz r0, 0x16(r3)
/* 804154F0 003DEAB0  D0 03 00 04 */	stfs f0, 4(r3)
/* 804154F4 003DEAB4  90 83 00 00 */	stw r4, 0(r3)
/* 804154F8 003DEAB8  B0 03 00 18 */	sth r0, 0x18(r3)
/* 804154FC 003DEABC  48 00 00 E4 */	b .L_804155E0
.L_80415500:
/* 80415500 003DEAC0  42 00 FF CC */	bdnz .L_804154CC
/* 80415504 003DEAC4  48 00 00 DC */	b .L_804155E0
.L_80415508:
/* 80415508 003DEAC8  A0 C3 00 18 */	lhz r6, 0x18(r3)
/* 8041550C 003DEACC  7C 04 30 00 */	cmpw r4, r6
/* 80415510 003DEAD0  40 80 00 10 */	bge .L_80415520
/* 80415514 003DEAD4  7C 04 30 50 */	subf r0, r4, r6
/* 80415518 003DEAD8  B0 03 00 18 */	sth r0, 0x18(r3)
/* 8041551C 003DEADC  48 00 00 18 */	b .L_80415534
.L_80415520:
/* 80415520 003DEAE0  38 A0 00 00 */	li r5, 0
/* 80415524 003DEAE4  38 00 00 02 */	li r0, 2
/* 80415528 003DEAE8  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 8041552C 003DEAEC  7C 86 20 50 */	subf r4, r6, r4
/* 80415530 003DEAF0  90 03 00 00 */	stw r0, 0(r3)
.L_80415534:
/* 80415534 003DEAF4  80 03 00 00 */	lwz r0, 0(r3)
/* 80415538 003DEAF8  2C 00 00 02 */	cmpwi r0, 2
/* 8041553C 003DEAFC  40 82 00 A4 */	bne .L_804155E0
.L_80415540:
/* 80415540 003DEB00  3C A0 43 30 */	lis r5, 0x4330
/* 80415544 003DEB04  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80415548 003DEB08  88 C3 00 14 */	lbz r6, 0x14(r3)
/* 8041554C 003DEB0C  3C 80 80 52 */	lis r4, DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator@ha
/* 80415550 003DEB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415554 003DEB14  38 84 35 58 */	addi r4, r4, DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator@l
/* 80415558 003DEB18  54 C0 08 3C */	slwi r0, r6, 1
/* 8041555C 003DEB1C  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 80415560 003DEB20  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80415564 003DEB24  7C 04 02 AE */	lhax r0, r4, r0
/* 80415568 003DEB28  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8041556C 003DEB2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80415570 003DEB30  C0 23 00 08 */	lfs f1, 8(r3)
/* 80415574 003DEB34  EC 40 18 28 */	fsubs f2, f0, f3
/* 80415578 003DEB38  90 01 00 0C */	stw r0, 0xc(r1)
/* 8041557C 003DEB3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80415580 003DEB40  90 A1 00 08 */	stw r5, 8(r1)
/* 80415584 003DEB44  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80415588 003DEB48  C8 41 00 08 */	lfd f2, 8(r1)
/* 8041558C 003DEB4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80415590 003DEB50  EC 22 18 28 */	fsubs f1, f2, f3
/* 80415594 003DEB54  D0 03 00 04 */	stfs f0, 4(r3)
/* 80415598 003DEB58  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8041559C 003DEB5C  40 80 00 44 */	bge .L_804155E0
/* 804155A0 003DEB60  38 00 00 03 */	li r0, 3
/* 804155A4 003DEB64  D0 23 00 04 */	stfs f1, 4(r3)
/* 804155A8 003DEB68  90 03 00 00 */	stw r0, 0(r3)
/* 804155AC 003DEB6C  48 00 00 34 */	b .L_804155E0
.L_804155B0:
/* 804155B0 003DEB70  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 804155B4 003DEB74  3C 00 43 30 */	lis r0, 0x4330
/* 804155B8 003DEB78  90 81 00 14 */	stw r4, 0x14(r1)
/* 804155BC 003DEB7C  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 804155C0 003DEB80  90 01 00 10 */	stw r0, 0x10(r1)
/* 804155C4 003DEB84  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 804155C8 003DEB88  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 804155CC 003DEB8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 804155D0 003DEB90  EC 42 18 28 */	fsubs f2, f2, f3
/* 804155D4 003DEB94  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804155D8 003DEB98  EC 00 08 28 */	fsubs f0, f0, f1
/* 804155DC 003DEB9C  D0 03 00 04 */	stfs f0, 4(r3)
.L_804155E0:
/* 804155E0 003DEBA0  38 21 00 20 */	addi r1, r1, 0x20
/* 804155E4 003DEBA4  4E 80 00 20 */	blr 
.endfn Update__Q44nw4r3snd6detail12EnvGeneratorFi

.fn SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 804155E8 003DEBA8  3C A0 80 52 */	lis r5, lbl_80523658@ha
/* 804155EC 003DEBAC  54 80 10 3A */	slwi r0, r4, 2
/* 804155F0 003DEBB0  38 A5 36 58 */	addi r5, r5, lbl_80523658@l
/* 804155F4 003DEBB4  7C 05 04 2E */	lfsx f0, r5, r0
/* 804155F8 003DEBB8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804155FC 003DEBBC  4E 80 00 20 */	blr 
.endfn SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi

.fn SetHold__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 80415600 003DEBC0  38 04 00 01 */	addi r0, r4, 1
/* 80415604 003DEBC4  7C 00 01 D6 */	mullw r0, r0, r0
/* 80415608 003DEBC8  7C 00 16 70 */	srawi r0, r0, 2
/* 8041560C 003DEBCC  7C 00 01 94 */	addze r0, r0
/* 80415610 003DEBD0  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80415614 003DEBD4  4E 80 00 20 */	blr 
.endfn SetHold__Q44nw4r3snd6detail12EnvGeneratorFi

.fn SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 80415618 003DEBD8  2C 04 00 7F */	cmpwi r4, 0x7f
/* 8041561C 003DEBDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80415620 003DEBE0  40 82 00 0C */	bne .L_8041562C
/* 80415624 003DEBE4  C0 02 C3 B4 */	lfs f0, float_8066C734@sda21(r2)
/* 80415628 003DEBE8  48 00 00 84 */	b .L_804156AC
.L_8041562C:
/* 8041562C 003DEBEC  2C 04 00 7E */	cmpwi r4, 0x7e
/* 80415630 003DEBF0  40 82 00 0C */	bne .L_8041563C
/* 80415634 003DEBF4  C0 02 C3 D0 */	lfs f0, float_8066C750@sda21(r2)
/* 80415638 003DEBF8  48 00 00 74 */	b .L_804156AC
.L_8041563C:
/* 8041563C 003DEBFC  2C 04 00 32 */	cmpwi r4, 0x32
/* 80415640 003DEC00  40 80 00 3C */	bge .L_8041567C
/* 80415644 003DEC04  54 84 08 3C */	slwi r4, r4, 1
/* 80415648 003DEC08  3C 00 43 30 */	lis r0, 0x4330
/* 8041564C 003DEC0C  38 84 00 01 */	addi r4, r4, 1
/* 80415650 003DEC10  90 01 00 08 */	stw r0, 8(r1)
/* 80415654 003DEC14  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80415658 003DEC18  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 8041565C 003DEC1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80415660 003DEC20  C0 22 C3 D4 */	lfs f1, float_8066C754@sda21(r2)
/* 80415664 003DEC24  C8 41 00 08 */	lfd f2, 8(r1)
/* 80415668 003DEC28  C0 02 C3 D8 */	lfs f0, float_8066C758@sda21(r2)
/* 8041566C 003DEC2C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80415670 003DEC30  EC 22 00 72 */	fmuls f1, f2, f1
/* 80415674 003DEC34  EC 01 00 24 */	fdivs f0, f1, f0
/* 80415678 003DEC38  48 00 00 34 */	b .L_804156AC
.L_8041567C:
/* 8041567C 003DEC3C  20 84 00 7E */	subfic r4, r4, 0x7e
/* 80415680 003DEC40  3C 00 43 30 */	lis r0, 0x4330
/* 80415684 003DEC44  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80415688 003DEC48  90 01 00 10 */	stw r0, 0x10(r1)
/* 8041568C 003DEC4C  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 80415690 003DEC50  90 81 00 14 */	stw r4, 0x14(r1)
/* 80415694 003DEC54  C0 22 C3 DC */	lfs f1, float_8066C75C@sda21(r2)
/* 80415698 003DEC58  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 8041569C 003DEC5C  C0 02 C3 D8 */	lfs f0, float_8066C758@sda21(r2)
/* 804156A0 003DEC60  EC 42 18 28 */	fsubs f2, f2, f3
/* 804156A4 003DEC64  EC 21 10 24 */	fdivs f1, f1, f2
/* 804156A8 003DEC68  EC 01 00 24 */	fdivs f0, f1, f0
.L_804156AC:
/* 804156AC 003DEC6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804156B0 003DEC70  38 21 00 20 */	addi r1, r1, 0x20
/* 804156B4 003DEC74  4E 80 00 20 */	blr 
.endfn SetDecay__Q44nw4r3snd6detail12EnvGeneratorFi

.fn SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 804156B8 003DEC78  98 83 00 14 */	stb r4, 0x14(r3)
/* 804156BC 003DEC7C  4E 80 00 20 */	blr 
.endfn SetSustain__Q44nw4r3snd6detail12EnvGeneratorFi

.fn SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi, global
/* 804156C0 003DEC80  2C 04 00 7F */	cmpwi r4, 0x7f
/* 804156C4 003DEC84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804156C8 003DEC88  40 82 00 0C */	bne .L_804156D4
/* 804156CC 003DEC8C  C0 02 C3 B4 */	lfs f0, float_8066C734@sda21(r2)
/* 804156D0 003DEC90  48 00 00 84 */	b .L_80415754
.L_804156D4:
/* 804156D4 003DEC94  2C 04 00 7E */	cmpwi r4, 0x7e
/* 804156D8 003DEC98  40 82 00 0C */	bne .L_804156E4
/* 804156DC 003DEC9C  C0 02 C3 D0 */	lfs f0, float_8066C750@sda21(r2)
/* 804156E0 003DECA0  48 00 00 74 */	b .L_80415754
.L_804156E4:
/* 804156E4 003DECA4  2C 04 00 32 */	cmpwi r4, 0x32
/* 804156E8 003DECA8  40 80 00 3C */	bge .L_80415724
/* 804156EC 003DECAC  54 84 08 3C */	slwi r4, r4, 1
/* 804156F0 003DECB0  3C 00 43 30 */	lis r0, 0x4330
/* 804156F4 003DECB4  38 84 00 01 */	addi r4, r4, 1
/* 804156F8 003DECB8  90 01 00 08 */	stw r0, 8(r1)
/* 804156FC 003DECBC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80415700 003DECC0  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 80415704 003DECC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80415708 003DECC8  C0 22 C3 D4 */	lfs f1, float_8066C754@sda21(r2)
/* 8041570C 003DECCC  C8 41 00 08 */	lfd f2, 8(r1)
/* 80415710 003DECD0  C0 02 C3 D8 */	lfs f0, float_8066C758@sda21(r2)
/* 80415714 003DECD4  EC 42 18 28 */	fsubs f2, f2, f3
/* 80415718 003DECD8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8041571C 003DECDC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80415720 003DECE0  48 00 00 34 */	b .L_80415754
.L_80415724:
/* 80415724 003DECE4  20 84 00 7E */	subfic r4, r4, 0x7e
/* 80415728 003DECE8  3C 00 43 30 */	lis r0, 0x4330
/* 8041572C 003DECEC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80415730 003DECF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80415734 003DECF4  C8 62 C3 C8 */	lfd f3, double_8066C748@sda21(r2)
/* 80415738 003DECF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8041573C 003DECFC  C0 22 C3 DC */	lfs f1, float_8066C75C@sda21(r2)
/* 80415740 003DED00  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 80415744 003DED04  C0 02 C3 D8 */	lfs f0, float_8066C758@sda21(r2)
/* 80415748 003DED08  EC 42 18 28 */	fsubs f2, f2, f3
/* 8041574C 003DED0C  EC 21 10 24 */	fdivs f1, f1, f2
/* 80415750 003DED10  EC 01 00 24 */	fdivs f0, f1, f0
.L_80415754:
/* 80415754 003DED14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80415758 003DED18  38 21 00 20 */	addi r1, r1, 0x20
/* 8041575C 003DED1C  4E 80 00 20 */	blr 
.endfn SetRelease__Q44nw4r3snd6detail12EnvGeneratorFi

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8


.obj DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator, local
	.2byte 0xFD2D
	.2byte 0xFD2E
	.2byte 0xFD2F
	.2byte 0xFD75
	.2byte 0xFDA7
	.2byte 0xFDCE
	.2byte 0xFDEE
	.2byte 0xFE09
	.2byte 0xFE20
	.2byte 0xFE34
	.2byte 0xFE46
	.2byte 0xFE57
	.2byte 0xFE66
	.2byte 0xFE74
	.2byte 0xFE81
	.2byte 0xFE8D
	.2byte 0xFE98
	.2byte 0xFEA3
	.2byte 0xFEAD
	.2byte 0xFEB6
	.2byte 0xFEBF
	.2byte 0xFEC7
	.2byte 0xFECF
	.2byte 0xFED7
	.2byte 0xFEDF
	.2byte 0xFEE6
	.2byte 0xFEEC
	.2byte 0xFEF3
	.2byte 0xFEF9
	.2byte 0xFEFF
	.2byte 0xFF05
	.2byte 0xFF0B
	.2byte 0xFF11
	.2byte 0xFF16
	.2byte 0xFF1B
	.2byte 0xFF20
	.2byte 0xFF25
	.2byte 0xFF2A
	.2byte 0xFF2E
	.2byte 0xFF33
	.2byte 0xFF37
	.2byte 0xFF3C
	.2byte 0xFF40
	.2byte 0xFF44
	.2byte 0xFF48
	.2byte 0xFF4C
	.2byte 0xFF50
	.2byte 0xFF53
	.2byte 0xFF57
	.2byte 0xFF5B
	.2byte 0xFF5E
	.2byte 0xFF62
	.2byte 0xFF65
	.2byte 0xFF68
	.2byte 0xFF6B
	.2byte 0xFF6F
	.2byte 0xFF72
	.2byte 0xFF75
	.2byte 0xFF78
	.2byte 0xFF7B
	.2byte 0xFF7E
	.2byte 0xFF81
	.2byte 0xFF83
	.2byte 0xFF86
	.2byte 0xFF89
	.2byte 0xFF8C
	.2byte 0xFF8E
	.2byte 0xFF91
	.2byte 0xFF93
	.2byte 0xFF96
	.2byte 0xFF99
	.2byte 0xFF9B
	.2byte 0xFF9D
	.2byte 0xFFA0
	.2byte 0xFFA2
	.2byte 0xFFA5
	.2byte 0xFFA7
	.2byte 0xFFA9
	.2byte 0xFFAB
	.2byte 0xFFAE
	.2byte 0xFFB0
	.2byte 0xFFB2
	.2byte 0xFFB4
	.2byte 0xFFB6
	.2byte 0xFFB8
	.2byte 0xFFBA
	.2byte 0xFFBC
	.2byte 0xFFBE
	.2byte 0xFFC0
	.2byte 0xFFC2
	.2byte 0xFFC4
	.2byte 0xFFC6
	.2byte 0xFFC8
	.2byte 0xFFCA
	.2byte 0xFFCC
	.2byte 0xFFCE
	.2byte 0xFFCF
	.2byte 0xFFD1
	.2byte 0xFFD3
	.2byte 0xFFD5
	.2byte 0xFFD6
	.2byte 0xFFD8
	.2byte 0xFFDA
	.2byte 0xFFDC
	.2byte 0xFFDD
	.2byte 0xFFDF
	.2byte 0xFFE1
	.2byte 0xFFE2
	.2byte 0xFFE4
	.2byte 0xFFE5
	.2byte 0xFFE7
	.2byte 0xFFE9
	.2byte 0xFFEA
	.2byte 0xFFEC
	.2byte 0xFFED
	.2byte 0xFFEF
	.2byte 0xFFF0
	.2byte 0xFFF2
	.2byte 0xFFF3
	.2byte 0xFFF5
	.2byte 0xFFF6
	.2byte 0xFFF8
	.2byte 0xFFF9
	.2byte 0xFFFA
	.2byte 0xFFFC
	.2byte 0xFFFD
	.2byte 0xFFFF
	.2byte 0x0000
.endobj DecibelSquareTable__Q44nw4r3snd6detail12EnvGenerator


#@LOCAL@SetAttack__Q44nw4r3snd6detail12EnvGeneratorFi@attackTable
.obj lbl_80523658, global
	.float 0.9992175
	.float 0.9984326
	.float 0.9976452
	.float 0.9968553
	.float 0.9960629
	.float 0.9952679
	.float 0.9944704
	.float 0.9936704
	.float 0.9928677
	.float 0.9920625
	.float 0.9912546
	.float 0.9904441
	.float 0.9896309
	.float 0.9888151
	.float 0.9879965
	.float 0.9871752
	.float 0.9863512
	.float 0.9855244
	.float 0.9846949
	.float 0.9838625
	.float 0.9830273
	.float 0.9821893
	.float 0.9813483
	.float 0.9805045
	.float 0.9796578
	.float 0.9788081
	.float 0.9779555
	.float 0.9770999
	.float 0.9762413
	.float 0.9753797
	.float 0.974515
	.float 0.9736472
	.float 0.9727763
	.float 0.9719023
	.float 0.9710251
	.float 0.9701448
	.float 0.9692612
	.float 0.9683744
	.float 0.9674844
	.float 0.966591
	.float 0.9656944
	.float 0.9647944
	.float 0.963891
	.float 0.9629842
	.float 0.962074
	.float 0.9611604
	.float 0.9602433
	.float 0.9593226
	.float 0.9583984
	.float 0.9574706
	.float 0.9565392
	.float 0.9556042
	.float 0.9546655
	.float 0.9537231
	.float 0.9527769
	.float 0.951827
	.float 0.9508732
	.float 0.9499157
	.float 0.9489542
	.float 0.9479888
	.float 0.9470195
	.float 0.9460462
	.float 0.9450689
	.float 0.9440875
	.float 0.943102
	.float 0.9421124
	.float 0.9411186
	.float 0.9401206
	.float 0.9391184
	.float 0.9381118
	.float 0.9371009
	.float 0.9360856
	.float 0.9350659
	.float 0.9340417
	.float 0.9330131
	.float 0.9319798
	.float 0.930942
	.float 0.9298995
	.float 0.9288523
	.float 0.9278004
	.float 0.9267436
	.float 0.9256821
	.float 0.9246156
	.float 0.9235442
	.float 0.9224678
	.float 0.9213864
	.float 0.9202998
	.float 0.9192081
	.float 0.9181112
	.float 0.9170091
	.float 0.9159016
	.float 0.9147887
	.float 0.9136703
	.float 0.9125465
	.float 0.9114171
	.float 0.9102821
	.float 0.9091414
	.float 0.9079949
	.float 0.9068427
	.float 0.9056845
	.float 0.9045204
	.float 0.9033502
	.float 0.902174
	.float 0.9009916
	.float 0.8998029
	.float 0.898608
	.float 0.8974066
	.float 0.8961988
	.float 0.8949844
	.float 0.8900599
	.float 0.8824622
	.float 0.8759247
	.float 0.8691861
	.float 0.8636406
	.float 0.8535788
	.float 0.8430189
	.float 0.8286135
	.float 0.8149099
	.float 0.8002172
	.float 0.7780663
	.float 0.755475
	.float 0.7242125
	.float 0.6828239
	.float 0.6329169
	.float 0.5592135
	.float 0.4551411
	.float 0.329877
	.4byte 0
.endobj lbl_80523658

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

#.balign 8

.obj float_8066C734, global
	.float 65535
.endobj float_8066C734


.obj float_8066C738, global
	.float 10.0
.endobj float_8066C738


.obj float_8066C73C, global
	.float 0
.endobj float_8066C73C


.obj float_8066C740, global
	.float -0.03125 #0xBD000000
	.4byte 0
.endobj float_8066C740


.obj double_8066C748, global
	.8byte 0x4330000080000000 #signed int to float constant
.endobj double_8066C748

.obj float_8066C750, global
	.float 24
.endobj float_8066C750


.obj float_8066C754, global
	.float 0.0078125 #0x3C000000
.endobj float_8066C754


.obj float_8066C758, global
	.float 5
.endobj float_8066C758


.obj float_8066C75C, global
	.4byte 0x42700000
.endobj float_8066C75C
