.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ieee754_log
__ieee754_log:
/* 802C7DD4 00291394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C7DD8 00291398  3C 00 00 10 */	lis r0, 0x10
/* 802C7DDC 0029139C  38 E0 00 00 */	li r7, 0
/* 802C7DE0 002913A0  D8 21 00 08 */	stfd f1, 8(r1)
/* 802C7DE4 002913A4  81 01 00 08 */	lwz r8, 8(r1)
/* 802C7DE8 002913A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802C7DEC 002913AC  7C 08 00 00 */	cmpw r8, r0
/* 802C7DF0 002913B0  40 80 00 54 */	bge lbl_802C7E44
/* 802C7DF4 002913B4  55 00 00 7E */	clrlwi r0, r8, 1
/* 802C7DF8 002913B8  7C 00 1B 79 */	or. r0, r0, r3
/* 802C7DFC 002913BC  40 82 00 14 */	bne lbl_802C7E10
/* 802C7E00 002913C0  C8 22 B6 88 */	lfd f1, lbl_8066BA08@sda21(r2)
/* 802C7E04 002913C4  C8 0D B3 D0 */	lfd f0, lbl_80667550@sda21(r13)
/* 802C7E08 002913C8  FC 21 00 24 */	fdiv f1, f1, f0
/* 802C7E0C 002913CC  48 00 02 74 */	b lbl_802C8080
lbl_802C7E10:
/* 802C7E10 002913D0  2C 08 00 00 */	cmpwi r8, 0
/* 802C7E14 002913D4  40 80 00 1C */	bge lbl_802C7E30
/* 802C7E18 002913D8  FC 21 08 28 */	fsub f1, f1, f1
/* 802C7E1C 002913DC  C8 0D B3 D0 */	lfd f0, lbl_80667550@sda21(r13)
/* 802C7E20 002913E0  38 00 00 21 */	li r0, 0x21
/* 802C7E24 002913E4  90 0D B3 B0 */	stw r0, lbl_80667530@sda21(r13)
/* 802C7E28 002913E8  FC 21 00 24 */	fdiv f1, f1, f0
/* 802C7E2C 002913EC  48 00 02 54 */	b lbl_802C8080
lbl_802C7E30:
/* 802C7E30 002913F0  C8 02 B6 90 */	lfd f0, lbl_8066BA10@sda21(r2)
/* 802C7E34 002913F4  38 E0 FF CA */	li r7, -54
/* 802C7E38 002913F8  FC 21 00 32 */	fmul f1, f1, f0
/* 802C7E3C 002913FC  D8 21 00 08 */	stfd f1, 8(r1)
/* 802C7E40 00291400  81 01 00 08 */	lwz r8, 8(r1)
lbl_802C7E44:
/* 802C7E44 00291404  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802C7E48 00291408  7C 08 00 00 */	cmpw r8, r0
/* 802C7E4C 0029140C  41 80 00 0C */	blt lbl_802C7E58
/* 802C7E50 00291410  FC 21 08 2A */	fadd f1, f1, f1
/* 802C7E54 00291414  48 00 02 2C */	b lbl_802C8080
lbl_802C7E58:
/* 802C7E58 00291418  7D 05 A6 70 */	srawi r5, r8, 0x14
/* 802C7E5C 0029141C  55 08 03 3E */	clrlwi r8, r8, 0xc
/* 802C7E60 00291420  3C 68 00 09 */	addis r3, r8, 9
/* 802C7E64 00291424  C8 02 B6 98 */	lfd f0, lbl_8066BA18@sda21(r2)
/* 802C7E68 00291428  38 83 5F 64 */	addi r4, r3, 0x5f64
/* 802C7E6C 0029142C  38 08 00 02 */	addi r0, r8, 2
/* 802C7E70 00291430  54 83 02 D6 */	rlwinm r3, r4, 0, 0xb, 0xb
/* 802C7E74 00291434  7C A7 2A 14 */	add r5, r7, r5
/* 802C7E78 00291438  6C 63 3F F0 */	xoris r3, r3, 0x3ff0
/* 802C7E7C 0029143C  54 00 03 3E */	clrlwi r0, r0, 0xc
/* 802C7E80 00291440  7D 03 1B 78 */	or r3, r8, r3
/* 802C7E84 00291444  90 61 00 08 */	stw r3, 8(r1)
/* 802C7E88 00291448  2C 00 00 03 */	cmpwi r0, 3
/* 802C7E8C 0029144C  38 E5 FC 01 */	addi r7, r5, -1023
/* 802C7E90 00291450  C8 21 00 08 */	lfd f1, 8(r1)
/* 802C7E94 00291454  54 80 67 FE */	rlwinm r0, r4, 0xc, 0x1f, 0x1f
/* 802C7E98 00291458  7C E7 02 14 */	add r7, r7, r0
/* 802C7E9C 0029145C  FC 01 00 28 */	fsub f0, f1, f0
/* 802C7EA0 00291460  40 80 00 B4 */	bge lbl_802C7F54
/* 802C7EA4 00291464  C8 2D B3 D0 */	lfd f1, lbl_80667550@sda21(r13)
/* 802C7EA8 00291468  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802C7EAC 0029146C  40 82 00 44 */	bne lbl_802C7EF0
/* 802C7EB0 00291470  2C 07 00 00 */	cmpwi r7, 0
/* 802C7EB4 00291474  40 82 00 08 */	bne lbl_802C7EBC
/* 802C7EB8 00291478  48 00 01 C8 */	b lbl_802C8080
lbl_802C7EBC:
/* 802C7EBC 0029147C  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 802C7EC0 00291480  3C 00 43 30 */	lis r0, 0x4330
/* 802C7EC4 00291484  90 61 00 14 */	stw r3, 0x14(r1)
/* 802C7EC8 00291488  C8 62 B7 00 */	lfd f3, lbl_8066BA80@sda21(r2)
/* 802C7ECC 0029148C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7ED0 00291490  C8 22 B6 A0 */	lfd f1, lbl_8066BA20@sda21(r2)
/* 802C7ED4 00291494  C8 41 00 10 */	lfd f2, 0x10(r1)
/* 802C7ED8 00291498  C8 02 B6 A8 */	lfd f0, lbl_8066BA28@sda21(r2)
/* 802C7EDC 0029149C  FC 42 18 28 */	fsub f2, f2, f3
/* 802C7EE0 002914A0  FC 21 00 B2 */	fmul f1, f1, f2
/* 802C7EE4 002914A4  FC 00 00 B2 */	fmul f0, f0, f2
/* 802C7EE8 002914A8  FC 21 00 2A */	fadd f1, f1, f0
/* 802C7EEC 002914AC  48 00 01 94 */	b lbl_802C8080
lbl_802C7EF0:
/* 802C7EF0 002914B0  C8 62 B6 B8 */	lfd f3, lbl_8066BA38@sda21(r2)
/* 802C7EF4 002914B4  FC 20 00 32 */	fmul f1, f0, f0
/* 802C7EF8 002914B8  C8 42 B6 B0 */	lfd f2, lbl_8066BA30@sda21(r2)
/* 802C7EFC 002914BC  2C 07 00 00 */	cmpwi r7, 0
/* 802C7F00 002914C0  FC 63 00 32 */	fmul f3, f3, f0
/* 802C7F04 002914C4  FC 42 18 28 */	fsub f2, f2, f3
/* 802C7F08 002914C8  FC A2 00 72 */	fmul f5, f2, f1
/* 802C7F0C 002914CC  40 82 00 0C */	bne lbl_802C7F18
/* 802C7F10 002914D0  FC 20 28 28 */	fsub f1, f0, f5
/* 802C7F14 002914D4  48 00 01 6C */	b lbl_802C8080
lbl_802C7F18:
/* 802C7F18 002914D8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 802C7F1C 002914DC  3C 00 43 30 */	lis r0, 0x4330
/* 802C7F20 002914E0  90 61 00 14 */	stw r3, 0x14(r1)
/* 802C7F24 002914E4  C8 82 B7 00 */	lfd f4, lbl_8066BA80@sda21(r2)
/* 802C7F28 002914E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7F2C 002914EC  C8 22 B6 A8 */	lfd f1, lbl_8066BA28@sda21(r2)
/* 802C7F30 002914F0  C8 61 00 10 */	lfd f3, 0x10(r1)
/* 802C7F34 002914F4  C8 42 B6 A0 */	lfd f2, lbl_8066BA20@sda21(r2)
/* 802C7F38 002914F8  FC 63 20 28 */	fsub f3, f3, f4
/* 802C7F3C 002914FC  FC 21 00 F2 */	fmul f1, f1, f3
/* 802C7F40 00291500  FC 42 00 F2 */	fmul f2, f2, f3
/* 802C7F44 00291504  FC 25 08 28 */	fsub f1, f5, f1
/* 802C7F48 00291508  FC 01 00 28 */	fsub f0, f1, f0
/* 802C7F4C 0029150C  FC 22 00 28 */	fsub f1, f2, f0
/* 802C7F50 00291510  48 00 01 30 */	b lbl_802C8080
lbl_802C7F54:
/* 802C7F54 00291514  C8 22 B6 C0 */	lfd f1, lbl_8066BA40@sda21(r2)
/* 802C7F58 00291518  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 802C7F5C 0029151C  3C 80 43 30 */	lis r4, 0x4330
/* 802C7F60 00291520  3C 60 00 07 */	lis r3, 0x0006B851@ha
/* 802C7F64 00291524  FC 21 00 2A */	fadd f1, f1, f0
/* 802C7F68 00291528  3C C8 FF FA */	addis r6, r8, 0xfffa
/* 802C7F6C 0029152C  38 03 B8 51 */	addi r0, r3, 0x0006B851@l
/* 802C7F70 00291530  C8 A2 B6 F8 */	lfd f5, lbl_8066BA78@sda21(r2)
/* 802C7F74 00291534  C8 82 B6 F0 */	lfd f4, lbl_8066BA70@sda21(r2)
/* 802C7F78 00291538  7C 08 00 50 */	subf r0, r8, r0
/* 802C7F7C 0029153C  FC 20 08 24 */	fdiv f1, f0, f1
/* 802C7F80 00291540  38 C6 EB 86 */	addi r6, r6, -5242
/* 802C7F84 00291544  C9 02 B6 D8 */	lfd f8, lbl_8066BA58@sda21(r2)
/* 802C7F88 00291548  7C C6 03 79 */	or. r6, r6, r0
/* 802C7F8C 0029154C  C8 E2 B6 D0 */	lfd f7, lbl_8066BA50@sda21(r2)
/* 802C7F90 00291550  C8 62 B6 E8 */	lfd f3, lbl_8066BA68@sda21(r2)
/* 802C7F94 00291554  FD 61 00 72 */	fmul f11, f1, f1
/* 802C7F98 00291558  C8 C2 B6 C8 */	lfd f6, lbl_8066BA48@sda21(r2)
/* 802C7F9C 0029155C  C8 42 B6 E0 */	lfd f2, lbl_8066BA60@sda21(r2)
/* 802C7FA0 00291560  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802C7FA4 00291564  C9 42 B7 00 */	lfd f10, lbl_8066BA80@sda21(r2)
/* 802C7FA8 00291568  FD 8B 02 F2 */	fmul f12, f11, f11
/* 802C7FAC 0029156C  90 81 00 10 */	stw r4, 0x10(r1)
/* 802C7FB0 00291570  C9 21 00 10 */	lfd f9, 0x10(r1)
/* 802C7FB4 00291574  FC A5 03 32 */	fmul f5, f5, f12
/* 802C7FB8 00291578  FD 08 03 32 */	fmul f8, f8, f12
/* 802C7FBC 0029157C  FC 84 28 2A */	fadd f4, f4, f5
/* 802C7FC0 00291580  FD 29 50 28 */	fsub f9, f9, f10
/* 802C7FC4 00291584  FC A7 40 2A */	fadd f5, f7, f8
/* 802C7FC8 00291588  FC 8C 01 32 */	fmul f4, f12, f4
/* 802C7FCC 0029158C  FC AC 01 72 */	fmul f5, f12, f5
/* 802C7FD0 00291590  FC 63 20 2A */	fadd f3, f3, f4
/* 802C7FD4 00291594  FC 86 28 2A */	fadd f4, f6, f5
/* 802C7FD8 00291598  FC 6C 00 F2 */	fmul f3, f12, f3
/* 802C7FDC 0029159C  FC 8C 01 32 */	fmul f4, f12, f4
/* 802C7FE0 002915A0  FC 42 18 2A */	fadd f2, f2, f3
/* 802C7FE4 002915A4  FC 4B 00 B2 */	fmul f2, f11, f2
/* 802C7FE8 002915A8  FC 62 20 2A */	fadd f3, f2, f4
/* 802C7FEC 002915AC  40 81 00 58 */	ble lbl_802C8044
/* 802C7FF0 002915B0  C8 42 B6 B0 */	lfd f2, lbl_8066BA30@sda21(r2)
/* 802C7FF4 002915B4  2C 07 00 00 */	cmpwi r7, 0
/* 802C7FF8 002915B8  FC 42 00 32 */	fmul f2, f2, f0
/* 802C7FFC 002915BC  FC A2 00 32 */	fmul f5, f2, f0
/* 802C8000 002915C0  40 82 00 18 */	bne lbl_802C8018
/* 802C8004 002915C4  FC 45 18 2A */	fadd f2, f5, f3
/* 802C8008 002915C8  FC 21 00 B2 */	fmul f1, f1, f2
/* 802C800C 002915CC  FC 25 08 28 */	fsub f1, f5, f1
/* 802C8010 002915D0  FC 20 08 28 */	fsub f1, f0, f1
/* 802C8014 002915D4  48 00 00 6C */	b lbl_802C8080
lbl_802C8018:
/* 802C8018 002915D8  FC 65 18 2A */	fadd f3, f5, f3
/* 802C801C 002915DC  C8 42 B6 A8 */	lfd f2, lbl_8066BA28@sda21(r2)
/* 802C8020 002915E0  C8 82 B6 A0 */	lfd f4, lbl_8066BA20@sda21(r2)
/* 802C8024 002915E4  FC 42 02 72 */	fmul f2, f2, f9
/* 802C8028 002915E8  FC 21 00 F2 */	fmul f1, f1, f3
/* 802C802C 002915EC  FC 64 02 72 */	fmul f3, f4, f9
/* 802C8030 002915F0  FC 21 10 2A */	fadd f1, f1, f2
/* 802C8034 002915F4  FC 25 08 28 */	fsub f1, f5, f1
/* 802C8038 002915F8  FC 01 00 28 */	fsub f0, f1, f0
/* 802C803C 002915FC  FC 23 00 28 */	fsub f1, f3, f0
/* 802C8040 00291600  48 00 00 40 */	b lbl_802C8080
lbl_802C8044:
/* 802C8044 00291604  2C 07 00 00 */	cmpwi r7, 0
/* 802C8048 00291608  40 82 00 14 */	bne lbl_802C805C
/* 802C804C 0029160C  FC 40 18 28 */	fsub f2, f0, f3
/* 802C8050 00291610  FC 21 00 B2 */	fmul f1, f1, f2
/* 802C8054 00291614  FC 20 08 28 */	fsub f1, f0, f1
/* 802C8058 00291618  48 00 00 28 */	b lbl_802C8080
lbl_802C805C:
/* 802C805C 0029161C  FC 60 18 28 */	fsub f3, f0, f3
/* 802C8060 00291620  C8 42 B6 A8 */	lfd f2, lbl_8066BA28@sda21(r2)
/* 802C8064 00291624  C8 82 B6 A0 */	lfd f4, lbl_8066BA20@sda21(r2)
/* 802C8068 00291628  FC 42 02 72 */	fmul f2, f2, f9
/* 802C806C 0029162C  FC 21 00 F2 */	fmul f1, f1, f3
/* 802C8070 00291630  FC 64 02 72 */	fmul f3, f4, f9
/* 802C8074 00291634  FC 21 10 28 */	fsub f1, f1, f2
/* 802C8078 00291638  FC 01 00 28 */	fsub f0, f1, f0
/* 802C807C 0029163C  FC 23 00 28 */	fsub f1, f3, f0
lbl_802C8080:
/* 802C8080 00291640  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8084 00291644  4E 80 00 20 */	blr