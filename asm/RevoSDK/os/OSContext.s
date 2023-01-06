.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global __OSLoadFPUContext
__OSLoadFPUContext:
/* 80354610 0031DBD0  A0 A4 01 A2 */	lhz r5, 0x1a2(r4)
/* 80354614 0031DBD4  54 A5 07 FF */	clrlwi. r5, r5, 0x1f
/* 80354618 0031DBD8  41 82 01 18 */	beq .L_80354730
/* 8035461C 0031DBDC  C8 04 01 90 */	lfd f0, 0x190(r4)
/* 80354620 0031DBE0  FD FE 05 8E */	mtfsf 0xff, f0
/* 80354624 0031DBE4  7C B8 E2 A6 */	mfspr r5, 0x398
/* 80354628 0031DBE8  54 A5 1F FF */	rlwinm. r5, r5, 3, 0x1f, 0x1f
/* 8035462C 0031DBEC  41 82 00 84 */	beq .L_803546B0
/* 80354630 0031DBF0  E0 04 01 C8 */	psq_l f0, 456(r4), 0, qr0
/* 80354634 0031DBF4  E0 24 01 D0 */	psq_l f1, 464(r4), 0, qr0
/* 80354638 0031DBF8  E0 44 01 D8 */	psq_l f2, 472(r4), 0, qr0
/* 8035463C 0031DBFC  E0 64 01 E0 */	psq_l f3, 480(r4), 0, qr0
/* 80354640 0031DC00  E0 84 01 E8 */	psq_l f4, 488(r4), 0, qr0
/* 80354644 0031DC04  E0 A4 01 F0 */	psq_l f5, 496(r4), 0, qr0
/* 80354648 0031DC08  E0 C4 01 F8 */	psq_l f6, 504(r4), 0, qr0
/* 8035464C 0031DC0C  E0 E4 02 00 */	psq_l f7, 512(r4), 0, qr0
/* 80354650 0031DC10  E1 04 02 08 */	psq_l f8, 520(r4), 0, qr0
/* 80354654 0031DC14  E1 24 02 10 */	psq_l f9, 528(r4), 0, qr0
/* 80354658 0031DC18  E1 44 02 18 */	psq_l f10, 536(r4), 0, qr0
/* 8035465C 0031DC1C  E1 64 02 20 */	psq_l f11, 544(r4), 0, qr0
/* 80354660 0031DC20  E1 84 02 28 */	psq_l f12, 552(r4), 0, qr0
/* 80354664 0031DC24  E1 A4 02 30 */	psq_l f13, 560(r4), 0, qr0
/* 80354668 0031DC28  E1 C4 02 38 */	psq_l f14, 568(r4), 0, qr0
/* 8035466C 0031DC2C  E1 E4 02 40 */	psq_l f15, 576(r4), 0, qr0
/* 80354670 0031DC30  E2 04 02 48 */	psq_l f16, 584(r4), 0, qr0
/* 80354674 0031DC34  E2 24 02 50 */	psq_l f17, 592(r4), 0, qr0
/* 80354678 0031DC38  E2 44 02 58 */	psq_l f18, 600(r4), 0, qr0
/* 8035467C 0031DC3C  E2 64 02 60 */	psq_l f19, 608(r4), 0, qr0
/* 80354680 0031DC40  E2 84 02 68 */	psq_l f20, 616(r4), 0, qr0
/* 80354684 0031DC44  E2 A4 02 70 */	psq_l f21, 624(r4), 0, qr0
/* 80354688 0031DC48  E2 C4 02 78 */	psq_l f22, 632(r4), 0, qr0
/* 8035468C 0031DC4C  E2 E4 02 80 */	psq_l f23, 640(r4), 0, qr0
/* 80354690 0031DC50  E3 04 02 88 */	psq_l f24, 648(r4), 0, qr0
/* 80354694 0031DC54  E3 24 02 90 */	psq_l f25, 656(r4), 0, qr0
/* 80354698 0031DC58  E3 44 02 98 */	psq_l f26, 664(r4), 0, qr0
/* 8035469C 0031DC5C  E3 64 02 A0 */	psq_l f27, 672(r4), 0, qr0
/* 803546A0 0031DC60  E3 84 02 A8 */	psq_l f28, 680(r4), 0, qr0
/* 803546A4 0031DC64  E3 A4 02 B0 */	psq_l f29, 688(r4), 0, qr0
/* 803546A8 0031DC68  E3 C4 02 B8 */	psq_l f30, 696(r4), 0, qr0
/* 803546AC 0031DC6C  E3 E4 02 C0 */	psq_l f31, 704(r4), 0, qr0
.L_803546B0:
/* 803546B0 0031DC70  C8 04 00 90 */	lfd f0, 0x90(r4)
/* 803546B4 0031DC74  C8 24 00 98 */	lfd f1, 0x98(r4)
/* 803546B8 0031DC78  C8 44 00 A0 */	lfd f2, 0xa0(r4)
/* 803546BC 0031DC7C  C8 64 00 A8 */	lfd f3, 0xa8(r4)
/* 803546C0 0031DC80  C8 84 00 B0 */	lfd f4, 0xb0(r4)
/* 803546C4 0031DC84  C8 A4 00 B8 */	lfd f5, 0xb8(r4)
/* 803546C8 0031DC88  C8 C4 00 C0 */	lfd f6, 0xc0(r4)
/* 803546CC 0031DC8C  C8 E4 00 C8 */	lfd f7, 0xc8(r4)
/* 803546D0 0031DC90  C9 04 00 D0 */	lfd f8, 0xd0(r4)
/* 803546D4 0031DC94  C9 24 00 D8 */	lfd f9, 0xd8(r4)
/* 803546D8 0031DC98  C9 44 00 E0 */	lfd f10, 0xe0(r4)
/* 803546DC 0031DC9C  C9 64 00 E8 */	lfd f11, 0xe8(r4)
/* 803546E0 0031DCA0  C9 84 00 F0 */	lfd f12, 0xf0(r4)
/* 803546E4 0031DCA4  C9 A4 00 F8 */	lfd f13, 0xf8(r4)
/* 803546E8 0031DCA8  C9 C4 01 00 */	lfd f14, 0x100(r4)
/* 803546EC 0031DCAC  C9 E4 01 08 */	lfd f15, 0x108(r4)
/* 803546F0 0031DCB0  CA 04 01 10 */	lfd f16, 0x110(r4)
/* 803546F4 0031DCB4  CA 24 01 18 */	lfd f17, 0x118(r4)
/* 803546F8 0031DCB8  CA 44 01 20 */	lfd f18, 0x120(r4)
/* 803546FC 0031DCBC  CA 64 01 28 */	lfd f19, 0x128(r4)
/* 80354700 0031DCC0  CA 84 01 30 */	lfd f20, 0x130(r4)
/* 80354704 0031DCC4  CA A4 01 38 */	lfd f21, 0x138(r4)
/* 80354708 0031DCC8  CA C4 01 40 */	lfd f22, 0x140(r4)
/* 8035470C 0031DCCC  CA E4 01 48 */	lfd f23, 0x148(r4)
/* 80354710 0031DCD0  CB 04 01 50 */	lfd f24, 0x150(r4)
/* 80354714 0031DCD4  CB 24 01 58 */	lfd f25, 0x158(r4)
/* 80354718 0031DCD8  CB 44 01 60 */	lfd f26, 0x160(r4)
/* 8035471C 0031DCDC  CB 64 01 68 */	lfd f27, 0x168(r4)
/* 80354720 0031DCE0  CB 84 01 70 */	lfd f28, 0x170(r4)
/* 80354724 0031DCE4  CB A4 01 78 */	lfd f29, 0x178(r4)
/* 80354728 0031DCE8  CB C4 01 80 */	lfd f30, 0x180(r4)
/* 8035472C 0031DCEC  CB E4 01 88 */	lfd f31, 0x188(r4)
.L_80354730:
/* 80354730 0031DCF0  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSSaveFPUContext
__OSSaveFPUContext:
/* 80354740 0031DD00  A0 65 01 A2 */	lhz r3, 0x1a2(r5)
/* 80354744 0031DD04  60 63 00 01 */	ori r3, r3, 1
/* 80354748 0031DD08  B0 65 01 A2 */	sth r3, 0x1a2(r5)
/* 8035474C 0031DD0C  D8 05 00 90 */	stfd f0, 0x90(r5)
/* 80354750 0031DD10  D8 25 00 98 */	stfd f1, 0x98(r5)
/* 80354754 0031DD14  D8 45 00 A0 */	stfd f2, 0xa0(r5)
/* 80354758 0031DD18  D8 65 00 A8 */	stfd f3, 0xa8(r5)
/* 8035475C 0031DD1C  D8 85 00 B0 */	stfd f4, 0xb0(r5)
/* 80354760 0031DD20  D8 A5 00 B8 */	stfd f5, 0xb8(r5)
/* 80354764 0031DD24  D8 C5 00 C0 */	stfd f6, 0xc0(r5)
/* 80354768 0031DD28  D8 E5 00 C8 */	stfd f7, 0xc8(r5)
/* 8035476C 0031DD2C  D9 05 00 D0 */	stfd f8, 0xd0(r5)
/* 80354770 0031DD30  D9 25 00 D8 */	stfd f9, 0xd8(r5)
/* 80354774 0031DD34  D9 45 00 E0 */	stfd f10, 0xe0(r5)
/* 80354778 0031DD38  D9 65 00 E8 */	stfd f11, 0xe8(r5)
/* 8035477C 0031DD3C  D9 85 00 F0 */	stfd f12, 0xf0(r5)
/* 80354780 0031DD40  D9 A5 00 F8 */	stfd f13, 0xf8(r5)
/* 80354784 0031DD44  D9 C5 01 00 */	stfd f14, 0x100(r5)
/* 80354788 0031DD48  D9 E5 01 08 */	stfd f15, 0x108(r5)
/* 8035478C 0031DD4C  DA 05 01 10 */	stfd f16, 0x110(r5)
/* 80354790 0031DD50  DA 25 01 18 */	stfd f17, 0x118(r5)
/* 80354794 0031DD54  DA 45 01 20 */	stfd f18, 0x120(r5)
/* 80354798 0031DD58  DA 65 01 28 */	stfd f19, 0x128(r5)
/* 8035479C 0031DD5C  DA 85 01 30 */	stfd f20, 0x130(r5)
/* 803547A0 0031DD60  DA A5 01 38 */	stfd f21, 0x138(r5)
/* 803547A4 0031DD64  DA C5 01 40 */	stfd f22, 0x140(r5)
/* 803547A8 0031DD68  DA E5 01 48 */	stfd f23, 0x148(r5)
/* 803547AC 0031DD6C  DB 05 01 50 */	stfd f24, 0x150(r5)
/* 803547B0 0031DD70  DB 25 01 58 */	stfd f25, 0x158(r5)
/* 803547B4 0031DD74  DB 45 01 60 */	stfd f26, 0x160(r5)
/* 803547B8 0031DD78  DB 65 01 68 */	stfd f27, 0x168(r5)
/* 803547BC 0031DD7C  DB 85 01 70 */	stfd f28, 0x170(r5)
/* 803547C0 0031DD80  DB A5 01 78 */	stfd f29, 0x178(r5)
/* 803547C4 0031DD84  DB C5 01 80 */	stfd f30, 0x180(r5)
/* 803547C8 0031DD88  DB E5 01 88 */	stfd f31, 0x188(r5)
/* 803547CC 0031DD8C  FC 00 04 8E */	mffs f0
/* 803547D0 0031DD90  D8 05 01 90 */	stfd f0, 0x190(r5)
/* 803547D4 0031DD94  C8 05 00 90 */	lfd f0, 0x90(r5)
/* 803547D8 0031DD98  7C 78 E2 A6 */	mfspr r3, 0x398
/* 803547DC 0031DD9C  54 63 1F FF */	rlwinm. r3, r3, 3, 0x1f, 0x1f
/* 803547E0 0031DDA0  41 82 00 84 */	beq .L_80354864
/* 803547E4 0031DDA4  F0 05 01 C8 */	psq_st f0, 456(r5), 0, qr0
/* 803547E8 0031DDA8  F0 25 01 D0 */	psq_st f1, 464(r5), 0, qr0
/* 803547EC 0031DDAC  F0 45 01 D8 */	psq_st f2, 472(r5), 0, qr0
/* 803547F0 0031DDB0  F0 65 01 E0 */	psq_st f3, 480(r5), 0, qr0
/* 803547F4 0031DDB4  F0 85 01 E8 */	psq_st f4, 488(r5), 0, qr0
/* 803547F8 0031DDB8  F0 A5 01 F0 */	psq_st f5, 496(r5), 0, qr0
/* 803547FC 0031DDBC  F0 C5 01 F8 */	psq_st f6, 504(r5), 0, qr0
/* 80354800 0031DDC0  F0 E5 02 00 */	psq_st f7, 512(r5), 0, qr0
/* 80354804 0031DDC4  F1 05 02 08 */	psq_st f8, 520(r5), 0, qr0
/* 80354808 0031DDC8  F1 25 02 10 */	psq_st f9, 528(r5), 0, qr0
/* 8035480C 0031DDCC  F1 45 02 18 */	psq_st f10, 536(r5), 0, qr0
/* 80354810 0031DDD0  F1 65 02 20 */	psq_st f11, 544(r5), 0, qr0
/* 80354814 0031DDD4  F1 85 02 28 */	psq_st f12, 552(r5), 0, qr0
/* 80354818 0031DDD8  F1 A5 02 30 */	psq_st f13, 560(r5), 0, qr0
/* 8035481C 0031DDDC  F1 C5 02 38 */	psq_st f14, 568(r5), 0, qr0
/* 80354820 0031DDE0  F1 E5 02 40 */	psq_st f15, 576(r5), 0, qr0
/* 80354824 0031DDE4  F2 05 02 48 */	psq_st f16, 584(r5), 0, qr0
/* 80354828 0031DDE8  F2 25 02 50 */	psq_st f17, 592(r5), 0, qr0
/* 8035482C 0031DDEC  F2 45 02 58 */	psq_st f18, 600(r5), 0, qr0
/* 80354830 0031DDF0  F2 65 02 60 */	psq_st f19, 608(r5), 0, qr0
/* 80354834 0031DDF4  F2 85 02 68 */	psq_st f20, 616(r5), 0, qr0
/* 80354838 0031DDF8  F2 A5 02 70 */	psq_st f21, 624(r5), 0, qr0
/* 8035483C 0031DDFC  F2 C5 02 78 */	psq_st f22, 632(r5), 0, qr0
/* 80354840 0031DE00  F2 E5 02 80 */	psq_st f23, 640(r5), 0, qr0
/* 80354844 0031DE04  F3 05 02 88 */	psq_st f24, 648(r5), 0, qr0
/* 80354848 0031DE08  F3 25 02 90 */	psq_st f25, 656(r5), 0, qr0
/* 8035484C 0031DE0C  F3 45 02 98 */	psq_st f26, 664(r5), 0, qr0
/* 80354850 0031DE10  F3 65 02 A0 */	psq_st f27, 672(r5), 0, qr0
/* 80354854 0031DE14  F3 85 02 A8 */	psq_st f28, 680(r5), 0, qr0
/* 80354858 0031DE18  F3 A5 02 B0 */	psq_st f29, 688(r5), 0, qr0
/* 8035485C 0031DE1C  F3 C5 02 B8 */	psq_st f30, 696(r5), 0, qr0
/* 80354860 0031DE20  F3 E5 02 C0 */	psq_st f31, 704(r5), 0, qr0
.L_80354864:
/* 80354864 0031DE24  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSaveFPUContext
OSSaveFPUContext:
/* 80354870 0031DE30  38 A3 00 00 */	addi r5, r3, 0
/* 80354874 0031DE34  4B FF FE CC */	b __OSSaveFPUContext

.balign 16, 0
.global OSSetCurrentContext
OSSetCurrentContext:
/* 80354880 0031DE40  3C 80 80 00 */	lis r4, 0x800000D4@ha
/* 80354884 0031DE44  90 64 00 D4 */	stw r3, 0x800000D4@l(r4)
/* 80354888 0031DE48  54 65 00 BE */	clrlwi r5, r3, 2
/* 8035488C 0031DE4C  90 A4 00 C0 */	stw r5, 0xc0(r4)
/* 80354890 0031DE50  80 A4 00 D8 */	lwz r5, 0xd8(r4)
/* 80354894 0031DE54  7C 05 18 00 */	cmpw r5, r3
/* 80354898 0031DE58  40 82 00 20 */	bne .L_803548B8
/* 8035489C 0031DE5C  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 803548A0 0031DE60  60 C6 20 00 */	ori r6, r6, 0x2000
/* 803548A4 0031DE64  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 803548A8 0031DE68  7C C0 00 A6 */	mfmsr r6
/* 803548AC 0031DE6C  60 C6 00 02 */	ori r6, r6, 2
/* 803548B0 0031DE70  7C C0 01 24 */	mtmsr r6
/* 803548B4 0031DE74  4E 80 00 20 */	blr
.L_803548B8:
/* 803548B8 0031DE78  80 C3 01 9C */	lwz r6, 0x19c(r3)
/* 803548BC 0031DE7C  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 803548C0 0031DE80  90 C3 01 9C */	stw r6, 0x19c(r3)
/* 803548C4 0031DE84  7C C0 00 A6 */	mfmsr r6
/* 803548C8 0031DE88  54 C6 04 E2 */	rlwinm r6, r6, 0, 0x13, 0x11
/* 803548CC 0031DE8C  60 C6 00 02 */	ori r6, r6, 2
/* 803548D0 0031DE90  7C C0 01 24 */	mtmsr r6
/* 803548D4 0031DE94  4C 00 01 2C */	isync 
/* 803548D8 0031DE98  4E 80 00 20 */	blr 

.balign 16, 0
.global OSGetCurrentContext
OSGetCurrentContext:
/* 803548E0 0031DEA0  3C 60 80 00 */	lis r3, 0x800000D4@ha
/* 803548E4 0031DEA4  80 63 00 D4 */	lwz r3, 0x800000D4@l(r3)
/* 803548E8 0031DEA8  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSaveContext
OSSaveContext:
/* 803548F0 0031DEB0  BD A3 00 34 */	stmw r13, 0x34(r3)
/* 803548F4 0031DEB4  7C 11 E2 A6 */	mfspr r0, 0x391
/* 803548F8 0031DEB8  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 803548FC 0031DEBC  7C 12 E2 A6 */	mfspr r0, 0x392
/* 80354900 0031DEC0  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 80354904 0031DEC4  7C 13 E2 A6 */	mfspr r0, 0x393
/* 80354908 0031DEC8  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 8035490C 0031DECC  7C 14 E2 A6 */	mfspr r0, 0x394
/* 80354910 0031DED0  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 80354914 0031DED4  7C 15 E2 A6 */	mfspr r0, 0x395
/* 80354918 0031DED8  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 8035491C 0031DEDC  7C 16 E2 A6 */	mfspr r0, 0x396
/* 80354920 0031DEE0  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 80354924 0031DEE4  7C 17 E2 A6 */	mfspr r0, 0x397
/* 80354928 0031DEE8  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 8035492C 0031DEEC  7C 00 00 26 */	mfcr r0
/* 80354930 0031DEF0  90 03 00 80 */	stw r0, 0x80(r3)
/* 80354934 0031DEF4  7C 08 02 A6 */	mflr r0
/* 80354938 0031DEF8  90 03 00 84 */	stw r0, 0x84(r3)
/* 8035493C 0031DEFC  90 03 01 98 */	stw r0, 0x198(r3)
/* 80354940 0031DF00  7C 00 00 A6 */	mfmsr r0
/* 80354944 0031DF04  90 03 01 9C */	stw r0, 0x19c(r3)
/* 80354948 0031DF08  7C 09 02 A6 */	mfctr r0
/* 8035494C 0031DF0C  90 03 00 88 */	stw r0, 0x88(r3)
/* 80354950 0031DF10  7C 01 02 A6 */	mfxer r0
/* 80354954 0031DF14  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80354958 0031DF18  90 23 00 04 */	stw r1, 4(r3)
/* 8035495C 0031DF1C  90 43 00 08 */	stw r2, 8(r3)
/* 80354960 0031DF20  38 00 00 01 */	li r0, 1
/* 80354964 0031DF24  90 03 00 0C */	stw r0, 0xc(r3)
/* 80354968 0031DF28  38 60 00 00 */	li r3, 0
/* 8035496C 0031DF2C  4E 80 00 20 */	blr 

.balign 16, 0
.global OSLoadContext
OSLoadContext:
/* 80354970 0031DF30  3C 80 80 36 */	lis r4, OSDisableInterrupts@ha
/* 80354974 0031DF34  80 C3 01 98 */	lwz r6, 0x198(r3)
/* 80354978 0031DF38  38 A4 89 B0 */	addi r5, r4, OSDisableInterrupts@l
/* 8035497C 0031DF3C  7C 06 28 40 */	cmplw r6, r5
/* 80354980 0031DF40  40 81 00 18 */	ble .L_80354998
/* 80354984 0031DF44  3C 80 80 36 */	lis r4, __RAS_OSDisableInterrupts_end@ha
/* 80354988 0031DF48  38 04 89 BC */	addi r0, r4, __RAS_OSDisableInterrupts_end@l
/* 8035498C 0031DF4C  7C 06 00 40 */	cmplw r6, r0
/* 80354990 0031DF50  40 80 00 08 */	bge .L_80354998
/* 80354994 0031DF54  90 A3 01 98 */	stw r5, 0x198(r3)
.L_80354998:
/* 80354998 0031DF58  80 03 00 00 */	lwz r0, 0(r3)
/* 8035499C 0031DF5C  80 23 00 04 */	lwz r1, 4(r3)
/* 803549A0 0031DF60  80 43 00 08 */	lwz r2, 8(r3)
/* 803549A4 0031DF64  A0 83 01 A2 */	lhz r4, 0x1a2(r3)
/* 803549A8 0031DF68  54 85 07 BD */	rlwinm. r5, r4, 0, 0x1e, 0x1e
/* 803549AC 0031DF6C  41 82 00 14 */	beq .L_803549C0
/* 803549B0 0031DF70  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 803549B4 0031DF74  B0 83 01 A2 */	sth r4, 0x1a2(r3)
/* 803549B8 0031DF78  B8 A3 00 14 */	lmw r5, 0x14(r3)
/* 803549BC 0031DF7C  48 00 00 08 */	b .L_803549C4
.L_803549C0:
/* 803549C0 0031DF80  B9 A3 00 34 */	lmw r13, 0x34(r3)
.L_803549C4:
/* 803549C4 0031DF84  80 83 01 A8 */	lwz r4, 0x1a8(r3)
/* 803549C8 0031DF88  7C 91 E3 A6 */	mtspr 0x391, r4
/* 803549CC 0031DF8C  80 83 01 AC */	lwz r4, 0x1ac(r3)
/* 803549D0 0031DF90  7C 92 E3 A6 */	mtspr 0x392, r4
/* 803549D4 0031DF94  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 803549D8 0031DF98  7C 93 E3 A6 */	mtspr 0x393, r4
/* 803549DC 0031DF9C  80 83 01 B4 */	lwz r4, 0x1b4(r3)
/* 803549E0 0031DFA0  7C 94 E3 A6 */	mtspr 0x394, r4
/* 803549E4 0031DFA4  80 83 01 B8 */	lwz r4, 0x1b8(r3)
/* 803549E8 0031DFA8  7C 95 E3 A6 */	mtspr 0x395, r4
/* 803549EC 0031DFAC  80 83 01 BC */	lwz r4, 0x1bc(r3)
/* 803549F0 0031DFB0  7C 96 E3 A6 */	mtspr 0x396, r4
/* 803549F4 0031DFB4  80 83 01 C0 */	lwz r4, 0x1c0(r3)
/* 803549F8 0031DFB8  7C 97 E3 A6 */	mtspr 0x397, r4
/* 803549FC 0031DFBC  80 83 00 80 */	lwz r4, 0x80(r3)
/* 80354A00 0031DFC0  7C 8F F1 20 */	mtcrf 0xff, r4
/* 80354A04 0031DFC4  80 83 00 84 */	lwz r4, 0x84(r3)
/* 80354A08 0031DFC8  7C 88 03 A6 */	mtlr r4
/* 80354A0C 0031DFCC  80 83 00 88 */	lwz r4, 0x88(r3)
/* 80354A10 0031DFD0  7C 89 03 A6 */	mtctr r4
/* 80354A14 0031DFD4  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 80354A18 0031DFD8  7C 81 03 A6 */	mtxer r4
/* 80354A1C 0031DFDC  7C 80 00 A6 */	mfmsr r4
/* 80354A20 0031DFE0  54 84 04 5E */	rlwinm r4, r4, 0, 0x11, 0xf
/* 80354A24 0031DFE4  54 84 07 FA */	rlwinm r4, r4, 0, 0x1f, 0x1d
/* 80354A28 0031DFE8  7C 80 01 24 */	mtmsr r4
/* 80354A2C 0031DFEC  80 83 01 98 */	lwz r4, 0x198(r3)
/* 80354A30 0031DFF0  7C 9A 03 A6 */	mtspr 0x1a, r4
/* 80354A34 0031DFF4  80 83 01 9C */	lwz r4, 0x19c(r3)
/* 80354A38 0031DFF8  7C 9B 03 A6 */	mtspr 0x1b, r4
/* 80354A3C 0031DFFC  80 83 00 10 */	lwz r4, 0x10(r3)
/* 80354A40 0031E000  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80354A44 0031E004  4C 00 00 64 */	rfi 

.balign 16, 0
.global OSGetStackPointer
OSGetStackPointer:
/* 80354A50 0031E010  7C 23 0B 78 */	mr r3, r1
/* 80354A54 0031E014  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSwitchFiber
OSSwitchFiber:
/* 80354A60 0031E020  7C 08 02 A6 */	mflr r0
/* 80354A64 0031E024  7C 25 0B 78 */	mr r5, r1
/* 80354A68 0031E028  94 A4 FF F8 */	stwu r5, -8(r4)
/* 80354A6C 0031E02C  7C 81 23 78 */	mr r1, r4
/* 80354A70 0031E030  90 05 00 04 */	stw r0, 4(r5)
/* 80354A74 0031E034  7C 68 03 A6 */	mtlr r3
/* 80354A78 0031E038  4E 80 00 21 */	blrl 
/* 80354A7C 0031E03C  80 A1 00 00 */	lwz r5, 0(r1)
/* 80354A80 0031E040  80 05 00 04 */	lwz r0, 4(r5)
/* 80354A84 0031E044  7C 08 03 A6 */	mtlr r0
/* 80354A88 0031E048  7C A1 2B 78 */	mr r1, r5
/* 80354A8C 0031E04C  4E 80 00 20 */	blr 

.balign 16, 0
.global OSSwitchFiberEx
OSSwitchFiberEx:
/* 80354A90 0031E050  7C 08 02 A6 */	mflr r0
/* 80354A94 0031E054  7C 29 0B 78 */	mr r9, r1
/* 80354A98 0031E058  95 28 FF F8 */	stwu r9, -8(r8)
/* 80354A9C 0031E05C  7D 01 43 78 */	mr r1, r8
/* 80354AA0 0031E060  90 09 00 04 */	stw r0, 4(r9)
/* 80354AA4 0031E064  7C E8 03 A6 */	mtlr r7
/* 80354AA8 0031E068  4E 80 00 21 */	blrl 
/* 80354AAC 0031E06C  80 A1 00 00 */	lwz r5, 0(r1)
/* 80354AB0 0031E070  80 05 00 04 */	lwz r0, 4(r5)
/* 80354AB4 0031E074  7C 08 03 A6 */	mtlr r0
/* 80354AB8 0031E078  7C A1 2B 78 */	mr r1, r5
/* 80354ABC 0031E07C  4E 80 00 20 */	blr 

.balign 16, 0
.global OSClearContext
OSClearContext:
/* 80354AC0 0031E080  38 A0 00 00 */	li r5, 0
/* 80354AC4 0031E084  B0 A3 01 A0 */	sth r5, 0x1a0(r3)
/* 80354AC8 0031E088  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 80354ACC 0031E08C  B0 A3 01 A2 */	sth r5, 0x1a2(r3)
/* 80354AD0 0031E090  80 04 00 D8 */	lwz r0, 0x800000D8@l(r4)
/* 80354AD4 0031E094  7C 03 00 40 */	cmplw r3, r0
/* 80354AD8 0031E098  4C 82 00 20 */	bnelr 
/* 80354ADC 0031E09C  90 A4 00 D8 */	stw r5, 0xd8(r4)
/* 80354AE0 0031E0A0  4E 80 00 20 */	blr 

.balign 16, 0
.global OSInitContext
OSInitContext:
/* 80354AF0 0031E0B0  90 83 01 98 */	stw r4, 0x198(r3)
/* 80354AF4 0031E0B4  90 A3 00 04 */	stw r5, 4(r3)
/* 80354AF8 0031E0B8  39 60 00 00 */	li r11, 0
/* 80354AFC 0031E0BC  61 6B 90 32 */	ori r11, r11, 0x9032
/* 80354B00 0031E0C0  91 63 01 9C */	stw r11, 0x19c(r3)
/* 80354B04 0031E0C4  38 00 00 00 */	li r0, 0
/* 80354B08 0031E0C8  90 03 00 80 */	stw r0, 0x80(r3)
/* 80354B0C 0031E0CC  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80354B10 0031E0D0  90 43 00 08 */	stw r2, 8(r3)
/* 80354B14 0031E0D4  91 A3 00 34 */	stw r13, 0x34(r3)
/* 80354B18 0031E0D8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80354B1C 0031E0DC  90 03 00 10 */	stw r0, 0x10(r3)
/* 80354B20 0031E0E0  90 03 00 14 */	stw r0, 0x14(r3)
/* 80354B24 0031E0E4  90 03 00 18 */	stw r0, 0x18(r3)
/* 80354B28 0031E0E8  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80354B2C 0031E0EC  90 03 00 20 */	stw r0, 0x20(r3)
/* 80354B30 0031E0F0  90 03 00 24 */	stw r0, 0x24(r3)
/* 80354B34 0031E0F4  90 03 00 28 */	stw r0, 0x28(r3)
/* 80354B38 0031E0F8  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80354B3C 0031E0FC  90 03 00 30 */	stw r0, 0x30(r3)
/* 80354B40 0031E100  90 03 00 38 */	stw r0, 0x38(r3)
/* 80354B44 0031E104  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80354B48 0031E108  90 03 00 40 */	stw r0, 0x40(r3)
/* 80354B4C 0031E10C  90 03 00 44 */	stw r0, 0x44(r3)
/* 80354B50 0031E110  90 03 00 48 */	stw r0, 0x48(r3)
/* 80354B54 0031E114  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80354B58 0031E118  90 03 00 50 */	stw r0, 0x50(r3)
/* 80354B5C 0031E11C  90 03 00 54 */	stw r0, 0x54(r3)
/* 80354B60 0031E120  90 03 00 58 */	stw r0, 0x58(r3)
/* 80354B64 0031E124  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80354B68 0031E128  90 03 00 60 */	stw r0, 0x60(r3)
/* 80354B6C 0031E12C  90 03 00 64 */	stw r0, 0x64(r3)
/* 80354B70 0031E130  90 03 00 68 */	stw r0, 0x68(r3)
/* 80354B74 0031E134  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80354B78 0031E138  90 03 00 70 */	stw r0, 0x70(r3)
/* 80354B7C 0031E13C  90 03 00 74 */	stw r0, 0x74(r3)
/* 80354B80 0031E140  90 03 00 78 */	stw r0, 0x78(r3)
/* 80354B84 0031E144  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80354B88 0031E148  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 80354B8C 0031E14C  90 03 01 A8 */	stw r0, 0x1a8(r3)
/* 80354B90 0031E150  90 03 01 AC */	stw r0, 0x1ac(r3)
/* 80354B94 0031E154  90 03 01 B0 */	stw r0, 0x1b0(r3)
/* 80354B98 0031E158  90 03 01 B4 */	stw r0, 0x1b4(r3)
/* 80354B9C 0031E15C  90 03 01 B8 */	stw r0, 0x1b8(r3)
/* 80354BA0 0031E160  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 80354BA4 0031E164  90 03 01 C0 */	stw r0, 0x1c0(r3)
/* 80354BA8 0031E168  4B FF FF 18 */	b OSClearContext

.balign 16, 0
.global OSDumpContext
OSDumpContext:
/* 80354BB0 0031E170  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 80354BB4 0031E174  7C 08 02 A6 */	mflr r0
/* 80354BB8 0031E178  90 01 02 F4 */	stw r0, 0x2f4(r1)
/* 80354BBC 0031E17C  39 61 02 F0 */	addi r11, r1, 0x2f0
/* 80354BC0 0031E180  4B F6 55 8D */	bl _savegpr_25
/* 80354BC4 0031E184  3F 80 80 55 */	lis r28, lbl_80551A70@ha
/* 80354BC8 0031E188  7C 7E 1B 78 */	mr r30, r3
/* 80354BCC 0031E18C  3B 9C 1A 70 */	addi r28, r28, lbl_80551A70@l
/* 80354BD0 0031E190  7F C4 F3 78 */	mr r4, r30
/* 80354BD4 0031E194  38 7C 00 00 */	addi r3, r28, 0
/* 80354BD8 0031E198  4C C6 31 82 */	crclr 6
/* 80354BDC 0031E19C  48 00 03 15 */	bl OSReport
/* 80354BE0 0031E1A0  7F DA F3 78 */	mr r26, r30
/* 80354BE4 0031E1A4  3B 20 00 00 */	li r25, 0
.L_80354BE8:
/* 80354BE8 0031E1A8  81 1A 00 40 */	lwz r8, 0x40(r26)
/* 80354BEC 0031E1AC  7F 24 CB 78 */	mr r4, r25
/* 80354BF0 0031E1B0  80 BA 00 00 */	lwz r5, 0(r26)
/* 80354BF4 0031E1B4  38 7C 00 48 */	addi r3, r28, 0x48
/* 80354BF8 0031E1B8  7D 09 43 78 */	mr r9, r8
/* 80354BFC 0031E1BC  38 F9 00 10 */	addi r7, r25, 0x10
/* 80354C00 0031E1C0  7C A6 2B 78 */	mr r6, r5
/* 80354C04 0031E1C4  4C C6 31 82 */	crclr 6
/* 80354C08 0031E1C8  48 00 02 E9 */	bl OSReport
/* 80354C0C 0031E1CC  3B 39 00 01 */	addi r25, r25, 1
/* 80354C10 0031E1D0  3B 5A 00 04 */	addi r26, r26, 4
/* 80354C14 0031E1D4  28 19 00 10 */	cmplwi r25, 0x10
/* 80354C18 0031E1D8  41 80 FF D0 */	blt .L_80354BE8
/* 80354C1C 0031E1DC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80354C20 0031E1E0  38 7C 00 78 */	addi r3, r28, 0x78
/* 80354C24 0031E1E4  80 BE 00 80 */	lwz r5, 0x80(r30)
/* 80354C28 0031E1E8  4C C6 31 82 */	crclr 6
/* 80354C2C 0031E1EC  48 00 02 C5 */	bl OSReport
/* 80354C30 0031E1F0  80 9E 01 98 */	lwz r4, 0x198(r30)
/* 80354C34 0031E1F4  38 7C 00 A8 */	addi r3, r28, 0xa8
/* 80354C38 0031E1F8  80 BE 01 9C */	lwz r5, 0x19c(r30)
/* 80354C3C 0031E1FC  4C C6 31 82 */	crclr 6
/* 80354C40 0031E200  48 00 02 B1 */	bl OSReport
/* 80354C44 0031E204  38 7C 00 D8 */	addi r3, r28, 0xd8
/* 80354C48 0031E208  4C C6 31 82 */	crclr 6
/* 80354C4C 0031E20C  48 00 02 A5 */	bl OSReport
/* 80354C50 0031E210  7F DA F3 78 */	mr r26, r30
/* 80354C54 0031E214  3B 20 00 00 */	li r25, 0
.L_80354C58:
/* 80354C58 0031E218  80 BA 01 A4 */	lwz r5, 0x1a4(r26)
/* 80354C5C 0031E21C  7F 24 CB 78 */	mr r4, r25
/* 80354C60 0031E220  80 FA 01 B4 */	lwz r7, 0x1b4(r26)
/* 80354C64 0031E224  38 7C 00 EC */	addi r3, r28, 0xec
/* 80354C68 0031E228  38 D9 00 04 */	addi r6, r25, 4
/* 80354C6C 0031E22C  4C C6 31 82 */	crclr 6
/* 80354C70 0031E230  48 00 02 81 */	bl OSReport
/* 80354C74 0031E234  3B 39 00 01 */	addi r25, r25, 1
/* 80354C78 0031E238  3B 5A 00 04 */	addi r26, r26, 4
/* 80354C7C 0031E23C  28 19 00 04 */	cmplwi r25, 4
/* 80354C80 0031E240  41 80 FF D8 */	blt .L_80354C58
/* 80354C84 0031E244  A0 1E 01 A2 */	lhz r0, 0x1a2(r30)
/* 80354C88 0031E248  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80354C8C 0031E24C  41 82 01 18 */	beq .L_80354DA4
/* 80354C90 0031E250  48 00 3D 21 */	bl OSDisableInterrupts
/* 80354C94 0031E254  3C C0 80 00 */	lis r6, 0x800000D4@ha
/* 80354C98 0031E258  38 A0 00 00 */	li r5, 0
/* 80354C9C 0031E25C  83 66 00 D4 */	lwz r27, 0x800000D4@l(r6)
/* 80354CA0 0031E260  38 81 00 08 */	addi r4, r1, 8
/* 80354CA4 0031E264  7C 7F 1B 78 */	mr r31, r3
/* 80354CA8 0031E268  B0 A1 01 A8 */	sth r5, 0x1a8(r1)
/* 80354CAC 0031E26C  B0 A1 01 AA */	sth r5, 0x1aa(r1)
/* 80354CB0 0031E270  80 06 00 D8 */	lwz r0, 0xd8(r6)
/* 80354CB4 0031E274  7C 04 00 40 */	cmplw r4, r0
/* 80354CB8 0031E278  40 82 00 08 */	bne .L_80354CC0
/* 80354CBC 0031E27C  90 A6 00 D8 */	stw r5, 0xd8(r6)
.L_80354CC0:
/* 80354CC0 0031E280  38 61 00 08 */	addi r3, r1, 8
/* 80354CC4 0031E284  4B FF FB BD */	bl OSSetCurrentContext
/* 80354CC8 0031E288  38 7C 01 10 */	addi r3, r28, 0x110
/* 80354CCC 0031E28C  4C C6 31 82 */	crclr 6
/* 80354CD0 0031E290  48 00 02 21 */	bl OSReport
/* 80354CD4 0031E294  7F DA F3 78 */	mr r26, r30
/* 80354CD8 0031E298  3B 20 00 00 */	li r25, 0
.L_80354CDC:
/* 80354CDC 0031E29C  C8 3A 00 98 */	lfd f1, 0x98(r26)
/* 80354CE0 0031E2A0  4B F6 53 4D */	bl __cvt_fp2unsigned
/* 80354CE4 0031E2A4  C8 3A 00 90 */	lfd f1, 0x90(r26)
/* 80354CE8 0031E2A8  7C 7D 1B 78 */	mr r29, r3
/* 80354CEC 0031E2AC  4B F6 53 41 */	bl __cvt_fp2unsigned
/* 80354CF0 0031E2B0  7C 65 1B 78 */	mr r5, r3
/* 80354CF4 0031E2B4  7F 24 CB 78 */	mr r4, r25
/* 80354CF8 0031E2B8  7F A7 EB 78 */	mr r7, r29
/* 80354CFC 0031E2BC  38 7C 01 24 */	addi r3, r28, 0x124
/* 80354D00 0031E2C0  38 D9 00 01 */	addi r6, r25, 1
/* 80354D04 0031E2C4  4C C6 31 82 */	crclr 6
/* 80354D08 0031E2C8  48 00 01 E9 */	bl OSReport
/* 80354D0C 0031E2CC  3B 39 00 02 */	addi r25, r25, 2
/* 80354D10 0031E2D0  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80354D14 0031E2D4  28 19 00 20 */	cmplwi r25, 0x20
/* 80354D18 0031E2D8  41 80 FF C4 */	blt .L_80354CDC
/* 80354D1C 0031E2DC  38 7C 01 40 */	addi r3, r28, 0x140
/* 80354D20 0031E2E0  4C C6 31 82 */	crclr 6
/* 80354D24 0031E2E4  48 00 01 CD */	bl OSReport
/* 80354D28 0031E2E8  7F DA F3 78 */	mr r26, r30
/* 80354D2C 0031E2EC  3B 20 00 00 */	li r25, 0
.L_80354D30:
/* 80354D30 0031E2F0  C8 3A 01 D0 */	lfd f1, 0x1d0(r26)
/* 80354D34 0031E2F4  4B F6 52 F9 */	bl __cvt_fp2unsigned
/* 80354D38 0031E2F8  C8 3A 01 C8 */	lfd f1, 0x1c8(r26)
/* 80354D3C 0031E2FC  7C 7D 1B 78 */	mr r29, r3
/* 80354D40 0031E300  4B F6 52 ED */	bl __cvt_fp2unsigned
/* 80354D44 0031E304  7C 65 1B 78 */	mr r5, r3
/* 80354D48 0031E308  7F 24 CB 78 */	mr r4, r25
/* 80354D4C 0031E30C  7F A7 EB 78 */	mr r7, r29
/* 80354D50 0031E310  38 7C 01 54 */	addi r3, r28, 0x154
/* 80354D54 0031E314  38 D9 00 01 */	addi r6, r25, 1
/* 80354D58 0031E318  4C C6 31 82 */	crclr 6
/* 80354D5C 0031E31C  48 00 01 95 */	bl OSReport
/* 80354D60 0031E320  3B 39 00 02 */	addi r25, r25, 2
/* 80354D64 0031E324  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80354D68 0031E328  28 19 00 20 */	cmplwi r25, 0x20
/* 80354D6C 0031E32C  41 80 FF C4 */	blt .L_80354D30
/* 80354D70 0031E330  38 A0 00 00 */	li r5, 0
/* 80354D74 0031E334  B0 A1 01 A8 */	sth r5, 0x1a8(r1)
/* 80354D78 0031E338  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80354D7C 0031E33C  38 81 00 08 */	addi r4, r1, 8
/* 80354D80 0031E340  B0 A1 01 AA */	sth r5, 0x1aa(r1)
/* 80354D84 0031E344  80 03 00 D8 */	lwz r0, 0x800000D8@l(r3)
/* 80354D88 0031E348  7C 04 00 40 */	cmplw r4, r0
/* 80354D8C 0031E34C  40 82 00 08 */	bne .L_80354D94
/* 80354D90 0031E350  90 A3 00 D8 */	stw r5, 0xd8(r3)
.L_80354D94:
/* 80354D94 0031E354  7F 63 DB 78 */	mr r3, r27
/* 80354D98 0031E358  4B FF FA E9 */	bl OSSetCurrentContext
/* 80354D9C 0031E35C  7F E3 FB 78 */	mr r3, r31
/* 80354DA0 0031E360  48 00 3C 51 */	bl OSRestoreInterrupts
.L_80354DA4:
/* 80354DA4 0031E364  38 7C 01 74 */	addi r3, r28, 0x174
/* 80354DA8 0031E368  4C C6 31 82 */	crclr 6
/* 80354DAC 0031E36C  48 00 01 45 */	bl OSReport
/* 80354DB0 0031E370  83 3E 00 04 */	lwz r25, 4(r30)
/* 80354DB4 0031E374  3B 40 00 00 */	li r26, 0
/* 80354DB8 0031E378  48 00 00 20 */	b .L_80354DD8
.L_80354DBC:
/* 80354DBC 0031E37C  80 B9 00 00 */	lwz r5, 0(r25)
/* 80354DC0 0031E380  7F 24 CB 78 */	mr r4, r25
/* 80354DC4 0031E384  80 D9 00 04 */	lwz r6, 4(r25)
/* 80354DC8 0031E388  38 7C 01 9C */	addi r3, r28, 0x19c
/* 80354DCC 0031E38C  4C C6 31 82 */	crclr 6
/* 80354DD0 0031E390  48 00 01 21 */	bl OSReport
/* 80354DD4 0031E394  83 39 00 00 */	lwz r25, 0(r25)
.L_80354DD8:
/* 80354DD8 0031E398  2C 19 00 00 */	cmpwi r25, 0
/* 80354DDC 0031E39C  41 82 00 1C */	beq .L_80354DF8
/* 80354DE0 0031E3A0  3C 19 00 01 */	addis r0, r25, 1
/* 80354DE4 0031E3A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80354DE8 0031E3A8  41 82 00 10 */	beq .L_80354DF8
/* 80354DEC 0031E3AC  28 1A 00 10 */	cmplwi r26, 0x10
/* 80354DF0 0031E3B0  3B 5A 00 01 */	addi r26, r26, 1
/* 80354DF4 0031E3B4  41 80 FF C8 */	blt .L_80354DBC
.L_80354DF8:
/* 80354DF8 0031E3B8  39 61 02 F0 */	addi r11, r1, 0x2f0
/* 80354DFC 0031E3BC  4B F6 53 9D */	bl _restgpr_25
/* 80354E00 0031E3C0  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 80354E04 0031E3C4  7C 08 03 A6 */	mtlr r0
/* 80354E08 0031E3C8  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 80354E0C 0031E3CC  4E 80 00 20 */	blr

.balign 16, 0
.global OSSwitchFPUContext
OSSwitchFPUContext:
/* 80354E10 0031E3D0  7C A0 00 A6 */	mfmsr r5
/* 80354E14 0031E3D4  60 A5 20 00 */	ori r5, r5, 0x2000
/* 80354E18 0031E3D8  7C A0 01 24 */	mtmsr r5
/* 80354E1C 0031E3DC  4C 00 01 2C */	isync 
/* 80354E20 0031E3E0  80 A4 01 9C */	lwz r5, 0x19c(r4)
/* 80354E24 0031E3E4  60 A5 20 00 */	ori r5, r5, 0x2000
/* 80354E28 0031E3E8  7C BB 03 A6 */	mtspr 0x1b, r5
/* 80354E2C 0031E3EC  3C 60 80 00 */	lis r3, 0x800000D8@ha
/* 80354E30 0031E3F0  80 A3 00 D8 */	lwz r5, 0x800000D8@l(r3)
/* 80354E34 0031E3F4  90 83 00 D8 */	stw r4, 0xd8(r3)
/* 80354E38 0031E3F8  7C 05 20 00 */	cmpw r5, r4
/* 80354E3C 0031E3FC  41 82 00 14 */	beq .L_80354E50
/* 80354E40 0031E400  2C 05 00 00 */	cmpwi r5, 0
/* 80354E44 0031E404  41 82 00 08 */	beq .L_80354E4C
/* 80354E48 0031E408  4B FF F8 F9 */	bl __OSSaveFPUContext
.L_80354E4C:
/* 80354E4C 0031E40C  4B FF F7 C5 */	bl __OSLoadFPUContext
.L_80354E50:
/* 80354E50 0031E410  80 64 00 80 */	lwz r3, 0x80(r4)
/* 80354E54 0031E414  7C 6F F1 20 */	mtcrf 0xff, r3
/* 80354E58 0031E418  80 64 00 84 */	lwz r3, 0x84(r4)
/* 80354E5C 0031E41C  7C 68 03 A6 */	mtlr r3
/* 80354E60 0031E420  80 64 01 98 */	lwz r3, 0x198(r4)
/* 80354E64 0031E424  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 80354E68 0031E428  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80354E6C 0031E42C  7C 69 03 A6 */	mtctr r3
/* 80354E70 0031E430  80 64 00 8C */	lwz r3, 0x8c(r4)
/* 80354E74 0031E434  7C 61 03 A6 */	mtxer r3
/* 80354E78 0031E438  A0 64 01 A2 */	lhz r3, 0x1a2(r4)
/* 80354E7C 0031E43C  54 63 07 FA */	rlwinm r3, r3, 0, 0x1f, 0x1d
/* 80354E80 0031E440  B0 64 01 A2 */	sth r3, 0x1a2(r4)
/* 80354E84 0031E444  80 A4 00 14 */	lwz r5, 0x14(r4)
/* 80354E88 0031E448  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80354E8C 0031E44C  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80354E90 0031E450  4C 00 00 64 */	rfi 

.balign 16, 0
.global __OSContextInit
__OSContextInit:
/* 80354EA0 0031E460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80354EA4 0031E464  7C 08 02 A6 */	mflr r0
/* 80354EA8 0031E468  3C 80 80 35 */	lis r4, OSSwitchFPUContext@ha
/* 80354EAC 0031E46C  38 60 00 07 */	li r3, 7
/* 80354EB0 0031E470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80354EB4 0031E474  38 84 4E 10 */	addi r4, r4, OSSwitchFPUContext@l
/* 80354EB8 0031E478  4B FF DC A9 */	bl __OSSetExceptionHandler
/* 80354EBC 0031E47C  3C 80 80 00 */	lis r4, 0x800000D8@ha
/* 80354EC0 0031E480  38 00 00 00 */	li r0, 0
/* 80354EC4 0031E484  3C 60 80 55 */	lis r3, lbl_80551C28@ha
/* 80354EC8 0031E488  90 04 00 D8 */	stw r0, 0x800000D8@l(r4)
/* 80354ECC 0031E48C  38 63 1C 28 */	addi r3, r3, lbl_80551C28@l
/* 80354ED0 0031E490  4C C6 31 82 */	crclr 6
/* 80354ED4 0031E494  4B FB 42 ED */	bl DBPrintf
/* 80354ED8 0031E498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80354EDC 0031E49C  7C 08 03 A6 */	mtlr r0
/* 80354EE0 0031E4A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80354EE4 0031E4A4  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_80551A70
lbl_80551A70:
	.asciz "------------------------- Context 0x%08x -------------------------\n"
	.4byte 0
	.asciz "r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n"
	.asciz "LR   = 0x%08x                   CR   = 0x%08x\n"
	.balign 4
	.asciz "SRR0 = 0x%08x                   SRR1 = 0x%08x\n"
	.balign 4
	.asciz "\nGQRs----------\n"
	.balign 4
	.asciz "gqr%d = 0x%08x \t gqr%d = 0x%08x\n"
	.balign 4
	.asciz "\n\nFPRs----------\n"
	.balign 4
	.asciz "fr%d \t= %d \t fr%d \t= %d\n"
	.balign 4
	.asciz "\n\nPSFs----------\n"
	.balign 4
	.asciz "ps%d \t= 0x%x \t ps%d \t= 0x%x\n"
	.balign 4
	.asciz "\nAddress:      Back Chain    LR Save\n"
	.balign 4
	.asciz "0x%08x:   0x%08x    0x%08x\n"


.global lbl_80551C28
lbl_80551C28:
	.asciz "FPU-unavailable handler installed\n"
	.balign 4
	.4byte 0
