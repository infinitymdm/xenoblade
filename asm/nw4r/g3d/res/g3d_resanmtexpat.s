.include "macros.inc"
.file "nw4r/g3d/res/g3d_resanmtexpat.o"

# 0x803DDE40 - 0x803DE1DC
.text
.balign 4

# nw4r::g3d::_unnamed_g3d_resanmtexpat_cpp_::SearchFrame(const nw4r::g3d::ResAnmTexPatAnmData*, float)
.fn SearchFrame__Q34nw4r3g3d30_unnamed_g3d_resanmtexpat_cpp_FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf, global
/* 803DDE40 003A7400  A0 A3 00 00 */	lhz r5, 0x0(r3)
/* 803DDE44 003A7404  38 C3 00 08 */	addi r6, r3, 0x8
/* 803DDE48 003A7408  C0 43 00 08 */	lfs f2, 0x8(r3)
/* 803DDE4C 003A740C  38 05 FF FF */	addi r0, r5, -0x1
/* 803DDE50 003A7410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDE54 003A7414  54 00 18 38 */	slwi r0, r0, 3
/* 803DDE58 003A7418  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 803DDE5C 003A741C  7C 83 02 14 */	add r4, r3, r0
/* 803DDE60 003A7420  38 84 00 08 */	addi r4, r4, 0x8
/* 803DDE64 003A7424  4C 40 13 82 */	cror eq, lt, eq
/* 803DDE68 003A7428  40 82 00 0C */	bne .L_803DDE74
/* 803DDE6C 003A742C  7C C3 33 78 */	mr r3, r6
/* 803DDE70 003A7430  48 00 00 74 */	b .L_803DDEE4
.L_803DDE74:
/* 803DDE74 003A7434  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 803DDE78 003A7438  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803DDE7C 003A743C  4C 40 13 82 */	cror eq, lt, eq
/* 803DDE80 003A7440  40 82 00 0C */	bne .L_803DDE8C
/* 803DDE84 003A7444  7C 83 23 78 */	mr r3, r4
/* 803DDE88 003A7448  48 00 00 5C */	b .L_803DDEE4
.L_803DDE8C:
/* 803DDE8C 003A744C  B0 A1 00 08 */	sth r5, 0x8(r1)
/* 803DDE90 003A7450  EC 61 10 28 */	fsubs f3, f1, f2
/* 803DDE94 003A7454  E0 41 B0 08 */	psq_l f2, 0x8(r1), 1, qr3
/* 803DDE98 003A7458  C0 03 00 04 */	lfs f0, 0x4(r3)
/* 803DDE9C 003A745C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 803DDEA0 003A7460  EC 00 00 B2 */	fmuls f0, f0, f2
/* 803DDEA4 003A7464  F0 01 B0 0C */	psq_st f0, 0xc(r1), 1, qr3
/* 803DDEA8 003A7468  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 803DDEAC 003A746C  54 00 18 38 */	slwi r0, r0, 3
/* 803DDEB0 003A7470  7C 63 02 14 */	add r3, r3, r0
/* 803DDEB4 003A7474  C4 03 00 08 */	lfsu f0, 0x8(r3)
/* 803DDEB8 003A7478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DDEBC 003A747C  40 80 00 14 */	bge .L_803DDED0
.L_803DDEC0:
/* 803DDEC0 003A7480  C4 03 FF F8 */	lfsu f0, -0x8(r3)
/* 803DDEC4 003A7484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803DDEC8 003A7488  41 80 FF F8 */	blt .L_803DDEC0
/* 803DDECC 003A748C  48 00 00 18 */	b .L_803DDEE4
.L_803DDED0:
/* 803DDED0 003A7490  C4 03 00 08 */	lfsu f0, 0x8(r3)
/* 803DDED4 003A7494  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 803DDED8 003A7498  4C 40 13 82 */	cror eq, lt, eq
/* 803DDEDC 003A749C  41 82 FF F4 */	beq .L_803DDED0
/* 803DDEE0 003A74A0  38 63 FF F8 */	addi r3, r3, -0x8
.L_803DDEE4:
/* 803DDEE4 003A74A4  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDEE8 003A74A8  4E 80 00 20 */	blr
.endfn SearchFrame__Q34nw4r3g3d30_unnamed_g3d_resanmtexpat_cpp_FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf

# nw4r::g3d::ResAnmTexPat::GetAnmResult(nw4r::g3d::TexPatAnmResult*, unsigned long, float) const
.fn GetAnmResult__Q34nw4r3g3d12ResAnmTexPatCFPQ34nw4r3g3d15TexPatAnmResultUlf, global
/* 803DDEEC 003A74AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DDEF0 003A74B0  7C 08 02 A6 */	mflr r0
/* 803DDEF4 003A74B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DDEF8 003A74B8  39 61 00 38 */	addi r11, r1, 0x38
/* 803DDEFC 003A74BC  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 803DDF00 003A74C0  4B ED C2 45 */	bl _savegpr_23
/* 803DDF04 003A74C4  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 803DDF08 003A74C8  FF E0 08 90 */	fmr f31, f1
/* 803DDF0C 003A74CC  7C 98 23 78 */	mr r24, r4
/* 803DDF10 003A74D0  80 06 00 10 */	lwz r0, 0x10(r6)
/* 803DDF14 003A74D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DDF18 003A74D8  41 82 00 0C */	beq .L_803DDF24
/* 803DDF1C 003A74DC  7C 06 02 14 */	add r0, r6, r0
/* 803DDF20 003A74E0  48 00 00 08 */	b .L_803DDF28
.L_803DDF24:
/* 803DDF24 003A74E4  38 00 00 00 */	li r0, 0x0
.L_803DDF28:
/* 803DDF28 003A74E8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DDF2C 003A74EC  41 82 00 2C */	beq .L_803DDF58
/* 803DDF30 003A74F0  38 A5 00 01 */	addi r5, r5, 0x1
/* 803DDF34 003A74F4  54 A5 20 36 */	slwi r5, r5, 4
/* 803DDF38 003A74F8  7C A0 2A 14 */	add r5, r0, r5
/* 803DDF3C 003A74FC  80 A5 00 14 */	lwz r5, 0x14(r5)
/* 803DDF40 003A7500  2C 05 00 00 */	cmpwi r5, 0x0
/* 803DDF44 003A7504  41 82 00 0C */	beq .L_803DDF50
/* 803DDF48 003A7508  7F E0 2A 14 */	add r31, r0, r5
/* 803DDF4C 003A750C  48 00 00 10 */	b .L_803DDF5C
.L_803DDF50:
/* 803DDF50 003A7510  3B E0 00 00 */	li r31, 0x0
/* 803DDF54 003A7514  48 00 00 08 */	b .L_803DDF5C
.L_803DDF58:
/* 803DDF58 003A7518  3B E0 00 00 */	li r31, 0x0
.L_803DDF5C:
/* 803DDF5C 003A751C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 803DDF60 003A7520  3B 7F 00 08 */	addi r27, r31, 0x8
/* 803DDF64 003A7524  83 5F 00 04 */	lwz r26, 0x4(r31)
/* 803DDF68 003A7528  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803DDF6C 003A752C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DDF70 003A7530  41 82 00 0C */	beq .L_803DDF7C
/* 803DDF74 003A7534  7F C3 02 14 */	add r30, r3, r0
/* 803DDF78 003A7538  48 00 00 08 */	b .L_803DDF80
.L_803DDF7C:
/* 803DDF7C 003A753C  3B C0 00 00 */	li r30, 0x0
.L_803DDF80:
/* 803DDF80 003A7540  80 03 00 20 */	lwz r0, 0x20(r3)
/* 803DDF84 003A7544  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DDF88 003A7548  41 82 00 0C */	beq .L_803DDF94
/* 803DDF8C 003A754C  7F A3 02 14 */	add r29, r3, r0
/* 803DDF90 003A7550  48 00 00 08 */	b .L_803DDF98
.L_803DDF94:
/* 803DDF94 003A7554  3B A0 00 00 */	li r29, 0x0
.L_803DDF98:
/* 803DDF98 003A7558  38 00 00 00 */	li r0, 0x0
/* 803DDF9C 003A755C  7F 1C C3 78 */	mr r28, r24
/* 803DDFA0 003A7560  98 04 00 00 */	stb r0, 0x0(r4)
/* 803DDFA4 003A7564  3B 20 00 00 */	li r25, 0x0
/* 803DDFA8 003A7568  3A E0 00 01 */	li r23, 0x1
/* 803DDFAC 003A756C  98 04 00 01 */	stb r0, 0x1(r4)
.L_803DDFB0:
/* 803DDFB0 003A7570  57 40 07 FF */	clrlwi. r0, r26, 31
/* 803DDFB4 003A7574  41 82 00 88 */	beq .L_803DE03C
/* 803DDFB8 003A7578  57 40 07 BD */	rlwinm. r0, r26, 0, 30, 30
/* 803DDFBC 003A757C  41 82 00 10 */	beq .L_803DDFCC
/* 803DDFC0 003A7580  A0 9B 00 00 */	lhz r4, 0x0(r27)
/* 803DDFC4 003A7584  A0 7B 00 02 */	lhz r3, 0x2(r27)
/* 803DDFC8 003A7588  48 00 00 1C */	b .L_803DDFE4
.L_803DDFCC:
/* 803DDFCC 003A758C  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 803DDFD0 003A7590  FC 20 F8 90 */	fmr f1, f31
/* 803DDFD4 003A7594  7C 60 FA 14 */	add r3, r0, r31
/* 803DDFD8 003A7598  4B FF FE 69 */	bl SearchFrame__Q34nw4r3g3d30_unnamed_g3d_resanmtexpat_cpp_FPCQ34nw4r3g3d19ResAnmTexPatAnmDataf
/* 803DDFDC 003A759C  A0 83 00 04 */	lhz r4, 0x4(r3)
/* 803DDFE0 003A75A0  A0 63 00 06 */	lhz r3, 0x6(r3)
.L_803DDFE4:
/* 803DDFE4 003A75A4  57 40 07 7B */	rlwinm. r0, r26, 0, 29, 29
/* 803DDFE8 003A75A8  7E E5 C8 30 */	slw r5, r23, r25
/* 803DDFEC 003A75AC  41 82 00 24 */	beq .L_803DE010
/* 803DDFF0 003A75B0  54 80 10 3A */	slwi r0, r4, 2
/* 803DDFF4 003A75B4  7C 1E 00 2E */	lwzx r0, r30, r0
/* 803DDFF8 003A75B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DDFFC 003A75BC  41 82 00 14 */	beq .L_803DE010
/* 803DE000 003A75C0  90 1C 00 04 */	stw r0, 0x4(r28)
/* 803DE004 003A75C4  88 18 00 00 */	lbz r0, 0x0(r24)
/* 803DE008 003A75C8  7C 00 2B 78 */	or r0, r0, r5
/* 803DE00C 003A75CC  98 18 00 00 */	stb r0, 0x0(r24)
.L_803DE010:
/* 803DE010 003A75D0  57 40 07 39 */	rlwinm. r0, r26, 0, 28, 28
/* 803DE014 003A75D4  41 82 00 24 */	beq .L_803DE038
/* 803DE018 003A75D8  54 60 10 3A */	slwi r0, r3, 2
/* 803DE01C 003A75DC  7C 1D 00 2E */	lwzx r0, r29, r0
/* 803DE020 003A75E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE024 003A75E4  41 82 00 14 */	beq .L_803DE038
/* 803DE028 003A75E8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 803DE02C 003A75EC  88 18 00 01 */	lbz r0, 0x1(r24)
/* 803DE030 003A75F0  7C 00 2B 78 */	or r0, r0, r5
/* 803DE034 003A75F4  98 18 00 01 */	stb r0, 0x1(r24)
.L_803DE038:
/* 803DE038 003A75F8  3B 7B 00 04 */	addi r27, r27, 0x4
.L_803DE03C:
/* 803DE03C 003A75FC  3B 39 00 01 */	addi r25, r25, 0x1
/* 803DE040 003A7600  57 5A E1 3E */	srwi r26, r26, 4
/* 803DE044 003A7604  2C 19 00 08 */	cmpwi r25, 0x8
/* 803DE048 003A7608  3B 9C 00 04 */	addi r28, r28, 0x4
/* 803DE04C 003A760C  41 80 FF 64 */	blt .L_803DDFB0
/* 803DE050 003A7610  39 61 00 38 */	addi r11, r1, 0x38
/* 803DE054 003A7614  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 803DE058 003A7618  4B ED C1 39 */	bl _restgpr_23
/* 803DE05C 003A761C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DE060 003A7620  7C 08 03 A6 */	mtlr r0
/* 803DE064 003A7624  38 21 00 40 */	addi r1, r1, 0x40
/* 803DE068 003A7628  4E 80 00 20 */	blr
.endfn GetAnmResult__Q34nw4r3g3d12ResAnmTexPatCFPQ34nw4r3g3d15TexPatAnmResultUlf

# nw4r::g3d::ResAnmTexPat::Bind(nw4r::g3d::ResFile)
.fn Bind__Q34nw4r3g3d12ResAnmTexPatFQ34nw4r3g3d7ResFile, global
/* 803DE06C 003A762C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803DE070 003A7630  7C 08 02 A6 */	mflr r0
/* 803DE074 003A7634  90 01 00 44 */	stw r0, 0x44(r1)
/* 803DE078 003A7638  39 61 00 40 */	addi r11, r1, 0x40
/* 803DE07C 003A763C  4B ED C0 C5 */	bl _savegpr_22
/* 803DE080 003A7640  80 63 00 00 */	lwz r3, 0x0(r3)
/* 803DE084 003A7644  7C 9C 23 78 */	mr r28, r4
/* 803DE088 003A7648  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803DE08C 003A764C  A3 E3 00 34 */	lhz r31, 0x34(r3)
/* 803DE090 003A7650  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE094 003A7654  A3 C3 00 36 */	lhz r30, 0x36(r3)
/* 803DE098 003A7658  41 82 00 0C */	beq .L_803DE0A4
/* 803DE09C 003A765C  7F 63 02 14 */	add r27, r3, r0
/* 803DE0A0 003A7660  48 00 00 08 */	b .L_803DE0A8
.L_803DE0A4:
/* 803DE0A4 003A7664  3B 60 00 00 */	li r27, 0x0
.L_803DE0A8:
/* 803DE0A8 003A7668  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803DE0AC 003A766C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE0B0 003A7670  41 82 00 0C */	beq .L_803DE0BC
/* 803DE0B4 003A7674  7F 43 02 14 */	add r26, r3, r0
/* 803DE0B8 003A7678  48 00 00 08 */	b .L_803DE0C0
.L_803DE0BC:
/* 803DE0BC 003A767C  3B 40 00 00 */	li r26, 0x0
.L_803DE0C0:
/* 803DE0C0 003A7680  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 803DE0C4 003A7684  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE0C8 003A7688  41 82 00 0C */	beq .L_803DE0D4
/* 803DE0CC 003A768C  7F 03 02 14 */	add r24, r3, r0
/* 803DE0D0 003A7690  48 00 00 08 */	b .L_803DE0D8
.L_803DE0D4:
/* 803DE0D4 003A7694  3B 00 00 00 */	li r24, 0x0
.L_803DE0D8:
/* 803DE0D8 003A7698  80 03 00 20 */	lwz r0, 0x20(r3)
/* 803DE0DC 003A769C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE0E0 003A76A0  41 82 00 0C */	beq .L_803DE0EC
/* 803DE0E4 003A76A4  7F 23 02 14 */	add r25, r3, r0
/* 803DE0E8 003A76A8  48 00 00 08 */	b .L_803DE0F0
.L_803DE0EC:
/* 803DE0EC 003A76AC  3B 20 00 00 */	li r25, 0x0
.L_803DE0F0:
/* 803DE0F0 003A76B0  7F 77 DB 78 */	mr r23, r27
/* 803DE0F4 003A76B4  3B A0 00 00 */	li r29, 0x0
/* 803DE0F8 003A76B8  3A C0 00 00 */	li r22, 0x0
/* 803DE0FC 003A76BC  48 00 00 50 */	b .L_803DE14C
.L_803DE100:
/* 803DE100 003A76C0  80 18 00 00 */	lwz r0, 0x0(r24)
/* 803DE104 003A76C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE108 003A76C8  41 82 00 0C */	beq .L_803DE114
/* 803DE10C 003A76CC  3B BD 00 01 */	addi r29, r29, 0x1
/* 803DE110 003A76D0  48 00 00 30 */	b .L_803DE140
.L_803DE114:
/* 803DE114 003A76D4  80 17 00 00 */	lwz r0, 0x0(r23)
/* 803DE118 003A76D8  7F 83 E3 78 */	mr r3, r28
/* 803DE11C 003A76DC  38 81 00 0C */	addi r4, r1, 0xc
/* 803DE120 003A76E0  7C BB 02 14 */	add r5, r27, r0
/* 803DE124 003A76E4  38 05 FF FC */	addi r0, r5, -0x4
/* 803DE128 003A76E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803DE12C 003A76EC  4B FF 9E A1 */	bl GetResTex__Q34nw4r3g3d7ResFileCFQ34nw4r3g3d7ResName
/* 803DE130 003A76F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 803DE134 003A76F4  41 82 00 0C */	beq .L_803DE140
/* 803DE138 003A76F8  90 78 00 00 */	stw r3, 0x0(r24)
/* 803DE13C 003A76FC  3B BD 00 01 */	addi r29, r29, 0x1
.L_803DE140:
/* 803DE140 003A7700  3B 18 00 04 */	addi r24, r24, 0x4
/* 803DE144 003A7704  3A F7 00 04 */	addi r23, r23, 0x4
/* 803DE148 003A7708  3A D6 00 01 */	addi r22, r22, 0x1
.L_803DE14C:
/* 803DE14C 003A770C  7C 16 F8 00 */	cmpw r22, r31
/* 803DE150 003A7710  41 80 FF B0 */	blt .L_803DE100
/* 803DE154 003A7714  7F 5B D3 78 */	mr r27, r26
/* 803DE158 003A7718  3A C0 00 00 */	li r22, 0x0
/* 803DE15C 003A771C  48 00 00 50 */	b .L_803DE1AC
.L_803DE160:
/* 803DE160 003A7720  80 19 00 00 */	lwz r0, 0x0(r25)
/* 803DE164 003A7724  2C 00 00 00 */	cmpwi r0, 0x0
/* 803DE168 003A7728  41 82 00 0C */	beq .L_803DE174
/* 803DE16C 003A772C  3B BD 00 01 */	addi r29, r29, 0x1
/* 803DE170 003A7730  48 00 00 30 */	b .L_803DE1A0
.L_803DE174:
/* 803DE174 003A7734  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 803DE178 003A7738  7F 83 E3 78 */	mr r3, r28
/* 803DE17C 003A773C  38 81 00 08 */	addi r4, r1, 0x8
/* 803DE180 003A7740  7C BA 02 14 */	add r5, r26, r0
/* 803DE184 003A7744  38 05 FF FC */	addi r0, r5, -0x4
/* 803DE188 003A7748  90 01 00 08 */	stw r0, 0x8(r1)
/* 803DE18C 003A774C  4B FF 9C C9 */	bl GetResPltt__Q34nw4r3g3d7ResFileCFQ34nw4r3g3d7ResName
/* 803DE190 003A7750  2C 03 00 00 */	cmpwi r3, 0x0
/* 803DE194 003A7754  41 82 00 0C */	beq .L_803DE1A0
/* 803DE198 003A7758  90 79 00 00 */	stw r3, 0x0(r25)
/* 803DE19C 003A775C  3B BD 00 01 */	addi r29, r29, 0x1
.L_803DE1A0:
/* 803DE1A0 003A7760  3B 39 00 04 */	addi r25, r25, 0x4
/* 803DE1A4 003A7764  3B 7B 00 04 */	addi r27, r27, 0x4
/* 803DE1A8 003A7768  3A D6 00 01 */	addi r22, r22, 0x1
.L_803DE1AC:
/* 803DE1AC 003A776C  7C 16 F0 00 */	cmpw r22, r30
/* 803DE1B0 003A7770  41 80 FF B0 */	blt .L_803DE160
/* 803DE1B4 003A7774  7C 1F F2 14 */	add r0, r31, r30
/* 803DE1B8 003A7778  39 61 00 40 */	addi r11, r1, 0x40
/* 803DE1BC 003A777C  7C 1D 00 50 */	subf r0, r29, r0
/* 803DE1C0 003A7780  7C 00 00 34 */	cntlzw r0, r0
/* 803DE1C4 003A7784  54 03 D9 7E */	srwi r3, r0, 5
/* 803DE1C8 003A7788  4B ED BF C5 */	bl _restgpr_22
/* 803DE1CC 003A778C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803DE1D0 003A7790  7C 08 03 A6 */	mtlr r0
/* 803DE1D4 003A7794  38 21 00 40 */	addi r1, r1, 0x40
/* 803DE1D8 003A7798  4E 80 00 20 */	blr
.endfn Bind__Q34nw4r3g3d12ResAnmTexPatFQ34nw4r3g3d7ResFile
