.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8047CA88
func_8047CA88:
/* 8047CA88 00446048  88 0D C0 18 */	lbz r0, lbl_80668198@sda21(r13)
/* 8047CA8C 0044604C  7C 00 07 75 */	extsb. r0, r0
/* 8047CA90 00446050  40 82 00 0C */	bne .L_8047CA9C
/* 8047CA94 00446054  38 00 00 01 */	li r0, 1
/* 8047CA98 00446058  98 0D C0 18 */	stb r0, lbl_80668198@sda21(r13)
.L_8047CA9C:
/* 8047CA9C 0044605C  3C 60 80 66 */	lis r3, lbl_8065ADD0@ha
/* 8047CAA0 00446060  38 63 AD D0 */	addi r3, r3, lbl_8065ADD0@l
/* 8047CAA4 00446064  4E 80 00 20 */	blr 

.global func_8047CAA8
func_8047CAA8:
/* 8047CAA8 00446068  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047CAAC 0044606C  7C 08 02 A6 */	mflr r0
/* 8047CAB0 00446070  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047CAB4 00446074  38 A1 00 08 */	addi r5, r1, 8
/* 8047CAB8 00446078  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8047CABC 0044607C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8047CAC0 00446080  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8047CAC4 00446084  7C 9D 23 78 */	mr r29, r4
/* 8047CAC8 00446088  93 81 00 20 */	stw r28, 0x20(r1)
/* 8047CACC 0044608C  7C 7C 1B 78 */	mr r28, r3
/* 8047CAD0 00446090  80 C3 00 04 */	lwz r6, 4(r3)
/* 8047CAD4 00446094  E0 44 00 04 */	psq_l f2, 4(r4), 0, qr0
/* 8047CAD8 00446098  E0 26 00 00 */	psq_l f1, 0(r6), 0, qr0
/* 8047CADC 0044609C  E0 63 00 0C */	psq_l f3, 12(r3), 0, qr0
/* 8047CAE0 004460A0  10 02 08 28 */	ps_sub f0, f2, f1
/* 8047CAE4 004460A4  E0 44 80 0C */	psq_l f2, 12(r4), 1, qr0
/* 8047CAE8 004460A8  E0 26 80 08 */	psq_l f1, 8(r6), 1, qr0
/* 8047CAEC 004460AC  F0 05 00 00 */	psq_st f0, 0(r5), 0, qr0
/* 8047CAF0 004460B0  10 02 08 28 */	ps_sub f0, f2, f1
/* 8047CAF4 004460B4  E0 A3 80 08 */	psq_l f5, 8(r3), 1, qr0
/* 8047CAF8 004460B8  E0 85 80 00 */	psq_l f4, 0(r5), 1, qr0
/* 8047CAFC 004460BC  F0 05 80 08 */	psq_st f0, 8(r5), 1, qr0
/* 8047CB00 004460C0  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8047CB04 004460C4  E0 45 00 04 */	psq_l f2, 4(r5), 0, qr0
/* 8047CB08 004460C8  C0 02 CC B0 */	lfs f0, float_8066D030@sda21(r2)
/* 8047CB0C 004460CC  10 63 00 B2 */	ps_mul f3, f3, f2
/* 8047CB10 004460D0  10 45 19 3A */	ps_madd f2, f5, f4, f3
/* 8047CB14 004460D4  10 42 18 D4 */	ps_sum0 f2, f2, f3, f3
/* 8047CB18 004460D8  EC 81 00 B2 */	fmuls f4, f1, f2
/* 8047CB1C 004460DC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8047CB20 004460E0  40 81 00 08 */	ble .L_8047CB28
/* 8047CB24 004460E4  FC 80 00 90 */	fmr f4, f0
.L_8047CB28:
/* 8047CB28 004460E8  C0 02 CC B4 */	lfs f0, float_8066D034@sda21(r2)
/* 8047CB2C 004460EC  FC 00 20 40 */	fcmpo cr0, f0, f4
/* 8047CB30 004460F0  40 80 00 08 */	bge .L_8047CB38
/* 8047CB34 004460F4  FC 80 00 90 */	fmr f4, f0
.L_8047CB38:
/* 8047CB38 004460F8  E0 03 00 08 */	psq_l f0, 8(r3), 0, qr0
/* 8047CB3C 004460FC  38 A1 00 08 */	addi r5, r1, 8
/* 8047CB40 00446100  80 C3 00 04 */	lwz r6, 4(r3)
/* 8047CB44 00446104  10 60 01 18 */	ps_muls0 f3, f0, f4
/* 8047CB48 00446108  C0 0D BF DC */	lfs f0, float_8066815C@sda21(r13)
/* 8047CB4C 0044610C  E0 A6 00 00 */	psq_l f5, 0(r6), 0, qr0
/* 8047CB50 00446110  EC 44 00 32 */	fmuls f2, f4, f0
/* 8047CB54 00446114  E0 03 80 10 */	psq_l f0, 16(r3), 1, qr0
/* 8047CB58 00446118  10 20 18 90 */	ps_mr f1, f3
/* 8047CB5C 0044611C  F0 65 00 00 */	psq_st f3, 0(r5), 0, qr0
/* 8047CB60 00446120  10 60 01 18 */	ps_muls0 f3, f0, f4
/* 8047CB64 00446124  E0 C4 00 04 */	psq_l f6, 4(r4), 0, qr0
/* 8047CB68 00446128  10 85 08 2A */	ps_add f4, f5, f1
/* 8047CB6C 0044612C  E0 A6 80 08 */	psq_l f5, 8(r6), 1, qr0
/* 8047CB70 00446130  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8047CB74 00446134  F0 85 00 00 */	psq_st f4, 0(r5), 0, qr0
/* 8047CB78 00446138  10 85 18 2A */	ps_add f4, f5, f3
/* 8047CB7C 0044613C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8047CB80 00446140  E0 65 00 00 */	psq_l f3, 0(r5), 0, qr0
/* 8047CB84 00446144  EC 01 00 BA */	fmadds f0, f1, f2, f0
/* 8047CB88 00446148  10 26 18 28 */	ps_sub f1, f6, f3
/* 8047CB8C 0044614C  E0 C4 80 0C */	psq_l f6, 12(r4), 1, qr0
/* 8047CB90 00446150  F0 25 00 00 */	psq_st f1, 0(r5), 0, qr0
/* 8047CB94 00446154  10 26 20 28 */	ps_sub f1, f6, f4
/* 8047CB98 00446158  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047CB9C 0044615C  F0 25 80 08 */	psq_st f1, 8(r5), 1, qr0
/* 8047CBA0 00446160  E0 45 80 00 */	psq_l f2, 0(r5), 1, qr0
/* 8047CBA4 00446164  E0 25 00 04 */	psq_l f1, 4(r5), 0, qr0
/* 8047CBA8 00446168  10 21 00 72 */	ps_mul f1, f1, f1
/* 8047CBAC 0044616C  10 42 08 BA */	ps_madd f2, f2, f2, f1
/* 8047CBB0 00446170  10 22 08 54 */	ps_sum0 f1, f2, f1, f1
/* 8047CBB4 00446174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047CBB8 00446178  40 80 00 74 */	bge .L_8047CC2C
/* 8047CBBC 0044617C  88 04 00 01 */	lbz r0, 1(r4)
/* 8047CBC0 00446180  2C 00 00 00 */	cmpwi r0, 0
/* 8047CBC4 00446184  41 82 00 4C */	beq .L_8047CC10
/* 8047CBC8 00446188  A0 04 00 02 */	lhz r0, 2(r4)
/* 8047CBCC 0044618C  3B A0 00 00 */	li r29, 0
/* 8047CBD0 00446190  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8047CBD4 00446194  54 00 08 3C */	slwi r0, r0, 1
/* 8047CBD8 00446198  8B C4 00 00 */	lbz r30, 0(r4)
/* 8047CBDC 0044619C  7F E3 02 14 */	add r31, r3, r0
/* 8047CBE0 004461A0  48 00 00 24 */	b .L_8047CC04
.L_8047CBE4:
/* 8047CBE4 004461A4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8047CBE8 004461A8  7F 83 E3 78 */	mr r3, r28
/* 8047CBEC 004461AC  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 8047CBF0 004461B0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8047CBF4 004461B4  7C 84 02 14 */	add r4, r4, r0
/* 8047CBF8 004461B8  4B FF FE B1 */	bl func_8047CAA8
/* 8047CBFC 004461BC  3B FF 00 02 */	addi r31, r31, 2
/* 8047CC00 004461C0  3B BD 00 01 */	addi r29, r29, 1
.L_8047CC04:
/* 8047CC04 004461C4  7C 1D F0 00 */	cmpw r29, r30
/* 8047CC08 004461C8  41 80 FF DC */	blt .L_8047CBE4
/* 8047CC0C 004461CC  48 00 00 20 */	b .L_8047CC2C
.L_8047CC10:
/* 8047CC10 004461D0  4B FF F4 25 */	bl func_8047C034
/* 8047CC14 004461D4  A0 1D 00 02 */	lhz r0, 2(r29)
/* 8047CC18 004461D8  80 9C 00 20 */	lwz r4, 0x20(r28)
/* 8047CC1C 004461DC  54 00 18 38 */	slwi r0, r0, 3
/* 8047CC20 004461E0  88 BD 00 00 */	lbz r5, 0(r29)
/* 8047CC24 004461E4  7C 84 02 14 */	add r4, r4, r0
/* 8047CC28 004461E8  4B FF F4 19 */	bl func_8047C040
.L_8047CC2C:
/* 8047CC2C 004461EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047CC30 004461F0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8047CC34 004461F4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8047CC38 004461F8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8047CC3C 004461FC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 8047CC40 00446200  7C 08 03 A6 */	mtlr r0
/* 8047CC44 00446204  38 21 00 30 */	addi r1, r1, 0x30
/* 8047CC48 00446208  4E 80 00 20 */	blr 

.global func_8047CC4C
func_8047CC4C:
/* 8047CC4C 0044620C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047CC50 00446210  7C 08 02 A6 */	mflr r0
/* 8047CC54 00446214  C0 02 CC B4 */	lfs f0, float_8066D034@sda21(r2)
/* 8047CC58 00446218  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047CC5C 0044621C  38 E1 00 08 */	addi r7, r1, 8
/* 8047CC60 00446220  80 04 00 24 */	lwz r0, 0x24(r4)
/* 8047CC64 00446224  90 A3 00 04 */	stw r5, 4(r3)
/* 8047CC68 00446228  7D 04 02 14 */	add r8, r4, r0
/* 8047CC6C 0044622C  38 08 00 20 */	addi r0, r8, 0x20
/* 8047CC70 00446230  E0 66 00 00 */	psq_l f3, 0(r6), 0, qr0
/* 8047CC74 00446234  10 43 00 58 */	ps_muls0 f2, f3, f1
/* 8047CC78 00446238  E0 66 80 08 */	psq_l f3, 8(r6), 1, qr0
/* 8047CC7C 0044623C  F0 47 00 00 */	psq_st f2, 0(r7), 0, qr0
/* 8047CC80 00446240  10 43 00 58 */	ps_muls0 f2, f3, f1
/* 8047CC84 00446244  F0 47 80 08 */	psq_st f2, 8(r7), 1, qr0
/* 8047CC88 00446248  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8047CC8C 0044624C  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8047CC90 00446250  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8047CC94 00446254  C0 61 00 08 */	lfs f3, 8(r1)
/* 8047CC98 00446258  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8047CC9C 0044625C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 8047CCA0 00446260  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8047CCA4 00446264  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8047CCA8 00446268  80 E1 00 14 */	lwz r7, 0x14(r1)
/* 8047CCAC 0044626C  90 E3 00 08 */	stw r7, 8(r3)
/* 8047CCB0 00446270  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8047CCB4 00446274  E0 63 80 08 */	psq_l f3, 8(r3), 1, qr0
/* 8047CCB8 00446278  90 A3 00 10 */	stw r5, 0x10(r3)
/* 8047CCBC 0044627C  E0 43 00 0C */	psq_l f2, 12(r3), 0, qr0
/* 8047CCC0 00446280  10 42 00 B2 */	ps_mul f2, f2, f2
/* 8047CCC4 00446284  10 63 10 FA */	ps_madd f3, f3, f3, f2
/* 8047CCC8 00446288  10 43 10 94 */	ps_sum0 f2, f3, f2, f2
/* 8047CCCC 0044628C  EC 00 10 24 */	fdivs f0, f0, f2
/* 8047CCD0 00446290  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8047CCD4 00446294  80 A8 00 04 */	lwz r5, 4(r8)
/* 8047CCD8 00446298  7C A4 2A 14 */	add r5, r4, r5
/* 8047CCDC 0044629C  90 A3 00 20 */	stw r5, 0x20(r3)
/* 8047CCE0 004462A0  80 A8 00 08 */	lwz r5, 8(r8)
/* 8047CCE4 004462A4  7C 84 2A 14 */	add r4, r4, r5
/* 8047CCE8 004462A8  90 83 00 24 */	stw r4, 0x24(r3)
/* 8047CCEC 004462AC  7C 04 03 78 */	mr r4, r0
/* 8047CCF0 004462B0  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 8047CCF4 004462B4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8047CCF8 004462B8  4B FF FD B1 */	bl func_8047CAA8
/* 8047CCFC 004462BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047CD00 004462C0  7C 08 03 A6 */	mtlr r0
/* 8047CD04 004462C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8047CD08 004462C8  4E 80 00 20 */	blr 

.global func_8047CD0C
func_8047CD0C:
/* 8047CD0C 004462CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047CD10 004462D0  7C 08 02 A6 */	mflr r0
/* 8047CD14 004462D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047CD18 004462D8  38 00 00 00 */	li r0, 0
/* 8047CD1C 004462DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047CD20 004462E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047CD24 004462E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8047CD28 004462E8  7C 7D 1B 78 */	mr r29, r3
/* 8047CD2C 004462EC  90 03 00 00 */	stw r0, 0(r3)
/* 8047CD30 004462F0  80 A4 00 00 */	lwz r5, 0(r4)
/* 8047CD34 004462F4  3C 05 A8 B0 */	addis r0, r5, 0xa8b0
/* 8047CD38 004462F8  28 00 4F 49 */	cmplwi r0, 0x4f49
/* 8047CD3C 004462FC  40 82 00 64 */	bne .L_8047CDA0
/* 8047CD40 00446300  38 84 00 0C */	addi r4, r4, 0xc
/* 8047CD44 00446304  90 83 00 00 */	stw r4, 0(r3)
/* 8047CD48 00446308  3C 60 80 66 */	lis r3, lbl_8065AE18@ha
/* 8047CD4C 0044630C  38 63 AE 18 */	addi r3, r3, lbl_8065AE18@l
/* 8047CD50 00446310  48 00 13 C1 */	bl func_8047E110
/* 8047CD54 00446314  3C 60 80 66 */	lis r3, lbl_8065ADF8@ha
/* 8047CD58 00446318  80 9D 00 00 */	lwz r4, 0(r29)
/* 8047CD5C 0044631C  38 63 AD F8 */	addi r3, r3, lbl_8065ADF8@l
/* 8047CD60 00446320  48 00 03 91 */	bl func_8047D0F0
/* 8047CD64 00446324  80 1D 00 08 */	lwz r0, 8(r29)
/* 8047CD68 00446328  2C 00 00 00 */	cmpwi r0, 0
/* 8047CD6C 0044632C  41 82 00 34 */	beq .L_8047CDA0
/* 8047CD70 00446330  3B E0 00 00 */	li r31, 0
/* 8047CD74 00446334  3B C0 00 00 */	li r30, 0
/* 8047CD78 00446338  48 00 00 1C */	b .L_8047CD94
.L_8047CD7C:
/* 8047CD7C 0044633C  80 1D 00 04 */	lwz r0, 4(r29)
/* 8047CD80 00446340  7F E4 FB 78 */	mr r4, r31
/* 8047CD84 00446344  7C 60 F2 14 */	add r3, r0, r30
/* 8047CD88 00446348  48 00 12 DD */	bl func_8047E064
/* 8047CD8C 0044634C  3B DE 00 28 */	addi r30, r30, 0x28
/* 8047CD90 00446350  3B FF 00 01 */	addi r31, r31, 1
.L_8047CD94:
/* 8047CD94 00446354  80 1D 00 08 */	lwz r0, 8(r29)
/* 8047CD98 00446358  7C 1F 00 00 */	cmpw r31, r0
/* 8047CD9C 0044635C  41 80 FF E0 */	blt .L_8047CD7C
.L_8047CDA0:
/* 8047CDA0 00446360  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047CDA4 00446364  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047CDA8 00446368  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047CDAC 0044636C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8047CDB0 00446370  7C 08 03 A6 */	mtlr r0
/* 8047CDB4 00446374  38 21 00 20 */	addi r1, r1, 0x20
/* 8047CDB8 00446378  4E 80 00 20 */	blr 

.global func_8047CDBC
func_8047CDBC:
/* 8047CDBC 0044637C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047CDC0 00446380  7C 08 02 A6 */	mflr r0
/* 8047CDC4 00446384  3C E0 80 66 */	lis r7, lbl_8065ADF8@ha
/* 8047CDC8 00446388  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047CDCC 0044638C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047CDD0 00446390  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047CDD4 00446394  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8047CDD8 00446398  7C DD 33 78 */	mr r29, r6
/* 8047CDDC 0044639C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8047CDE0 004463A0  7C 7C 1B 78 */	mr r28, r3
/* 8047CDE4 004463A4  38 67 AD F8 */	addi r3, r7, lbl_8065ADF8@l
/* 8047CDE8 004463A8  48 00 02 51 */	bl func_8047D038
/* 8047CDEC 004463AC  90 7C 00 04 */	stw r3, 4(r28)
/* 8047CDF0 004463B0  3B E0 00 00 */	li r31, 0
/* 8047CDF4 004463B4  3B C0 00 00 */	li r30, 0
/* 8047CDF8 004463B8  93 BC 00 08 */	stw r29, 8(r28)
/* 8047CDFC 004463BC  48 00 00 18 */	b .L_8047CE14
.L_8047CE00:
/* 8047CE00 004463C0  80 1C 00 04 */	lwz r0, 4(r28)
/* 8047CE04 004463C4  7C 60 F2 14 */	add r3, r0, r30
/* 8047CE08 004463C8  48 00 12 F9 */	bl func_8047E100
/* 8047CE0C 004463CC  3B DE 00 28 */	addi r30, r30, 0x28
/* 8047CE10 004463D0  3B FF 00 01 */	addi r31, r31, 1
.L_8047CE14:
/* 8047CE14 004463D4  80 1C 00 08 */	lwz r0, 8(r28)
/* 8047CE18 004463D8  7C 1F 00 00 */	cmpw r31, r0
/* 8047CE1C 004463DC  41 80 FF E4 */	blt .L_8047CE00
/* 8047CE20 004463E0  80 1C 00 00 */	lwz r0, 0(r28)
/* 8047CE24 004463E4  2C 00 00 00 */	cmpwi r0, 0
/* 8047CE28 004463E8  41 82 00 34 */	beq .L_8047CE5C
/* 8047CE2C 004463EC  3B E0 00 00 */	li r31, 0
/* 8047CE30 004463F0  3B C0 00 00 */	li r30, 0
/* 8047CE34 004463F4  48 00 00 1C */	b .L_8047CE50
.L_8047CE38:
/* 8047CE38 004463F8  80 1C 00 04 */	lwz r0, 4(r28)
/* 8047CE3C 004463FC  7F E4 FB 78 */	mr r4, r31
/* 8047CE40 00446400  7C 60 F2 14 */	add r3, r0, r30
/* 8047CE44 00446404  48 00 12 21 */	bl func_8047E064
/* 8047CE48 00446408  3B DE 00 28 */	addi r30, r30, 0x28
/* 8047CE4C 0044640C  3B FF 00 01 */	addi r31, r31, 1
.L_8047CE50:
/* 8047CE50 00446410  80 1C 00 08 */	lwz r0, 8(r28)
/* 8047CE54 00446414  7C 1F 00 00 */	cmpw r31, r0
/* 8047CE58 00446418  41 80 FF E0 */	blt .L_8047CE38
.L_8047CE5C:
/* 8047CE5C 0044641C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047CE60 00446420  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047CE64 00446424  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047CE68 00446428  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8047CE6C 0044642C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8047CE70 00446430  7C 08 03 A6 */	mtlr r0
/* 8047CE74 00446434  38 21 00 20 */	addi r1, r1, 0x20
/* 8047CE78 00446438  4E 80 00 20 */	blr 

.global func_8047CE7C
func_8047CE7C:
/* 8047CE7C 0044643C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047CE80 00446440  7C 08 02 A6 */	mflr r0
/* 8047CE84 00446444  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047CE88 00446448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047CE8C 0044644C  93 C1 00 08 */	stw r30, 8(r1)
/* 8047CE90 00446450  7C 7E 1B 78 */	mr r30, r3
/* 8047CE94 00446454  80 03 00 00 */	lwz r0, 0(r3)
/* 8047CE98 00446458  2C 00 00 00 */	cmpwi r0, 0
/* 8047CE9C 0044645C  41 82 00 68 */	beq .L_8047CF04
/* 8047CEA0 00446460  80 03 00 08 */	lwz r0, 8(r3)
/* 8047CEA4 00446464  38 E0 00 00 */	li r7, 0
/* 8047CEA8 00446468  38 A0 00 00 */	li r5, 0
/* 8047CEAC 0044646C  7C 09 03 A6 */	mtctr r0
/* 8047CEB0 00446470  2C 00 00 00 */	cmpwi r0, 0
/* 8047CEB4 00446474  40 81 00 50 */	ble .L_8047CF04
.L_8047CEB8:
/* 8047CEB8 00446478  80 C3 00 04 */	lwz r6, 4(r3)
/* 8047CEBC 0044647C  7C 86 2A 14 */	add r4, r6, r5
/* 8047CEC0 00446480  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 8047CEC4 00446484  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047CEC8 00446488  40 82 00 30 */	bne .L_8047CEF8
/* 8047CECC 0044648C  1F E7 00 28 */	mulli r31, r7, 0x28
/* 8047CED0 00446490  7C 66 FA 14 */	add r3, r6, r31
/* 8047CED4 00446494  48 00 11 E5 */	bl func_8047E0B8
/* 8047CED8 00446498  80 1E 00 04 */	lwz r0, 4(r30)
/* 8047CEDC 0044649C  7C 60 FA 14 */	add r3, r0, r31
/* 8047CEE0 004464A0  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8047CEE4 004464A4  70 00 FF 83 */	andi. r0, r0, 0xff83
/* 8047CEE8 004464A8  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8047CEEC 004464AC  80 1E 00 04 */	lwz r0, 4(r30)
/* 8047CEF0 004464B0  7C 60 FA 14 */	add r3, r0, r31
/* 8047CEF4 004464B4  48 00 00 14 */	b .L_8047CF08
.L_8047CEF8:
/* 8047CEF8 004464B8  38 A5 00 28 */	addi r5, r5, 0x28
/* 8047CEFC 004464BC  38 E7 00 01 */	addi r7, r7, 1
/* 8047CF00 004464C0  42 00 FF B8 */	bdnz .L_8047CEB8
.L_8047CF04:
/* 8047CF04 004464C4  38 60 00 00 */	li r3, 0
.L_8047CF08:
/* 8047CF08 004464C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047CF0C 004464CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047CF10 004464D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047CF14 004464D4  7C 08 03 A6 */	mtlr r0
/* 8047CF18 004464D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8047CF1C 004464DC  4E 80 00 20 */	blr 

.global func_8047CF20
func_8047CF20:
/* 8047CF20 004464E0  80 03 00 00 */	lwz r0, 0(r3)
/* 8047CF24 004464E4  2C 00 00 00 */	cmpwi r0, 0
/* 8047CF28 004464E8  4D 82 00 20 */	beqlr 
/* 8047CF2C 004464EC  2C 04 00 00 */	cmpwi r4, 0
/* 8047CF30 004464F0  41 82 00 54 */	beq .L_8047CF84
/* 8047CF34 004464F4  80 03 00 08 */	lwz r0, 8(r3)
/* 8047CF38 004464F8  38 E0 00 00 */	li r7, 0
/* 8047CF3C 004464FC  38 A0 00 00 */	li r5, 0
/* 8047CF40 00446500  7C 09 03 A6 */	mtctr r0
/* 8047CF44 00446504  2C 00 00 00 */	cmpwi r0, 0
/* 8047CF48 00446508  4C 81 00 20 */	blelr 
.L_8047CF4C:
/* 8047CF4C 0044650C  80 C3 00 04 */	lwz r6, 4(r3)
/* 8047CF50 00446510  7C 06 2A 14 */	add r0, r6, r5
/* 8047CF54 00446514  7C 04 00 40 */	cmplw r4, r0
/* 8047CF58 00446518  40 82 00 1C */	bne .L_8047CF74
/* 8047CF5C 0044651C  1C 07 00 28 */	mulli r0, r7, 0x28
/* 8047CF60 00446520  7C 66 02 14 */	add r3, r6, r0
/* 8047CF64 00446524  A0 03 00 10 */	lhz r0, 0x10(r3)
/* 8047CF68 00446528  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8047CF6C 0044652C  B0 03 00 10 */	sth r0, 0x10(r3)
/* 8047CF70 00446530  4E 80 00 20 */	blr
.L_8047CF74:
/* 8047CF74 00446534  38 A5 00 28 */	addi r5, r5, 0x28
/* 8047CF78 00446538  38 E7 00 01 */	addi r7, r7, 1
/* 8047CF7C 0044653C  42 00 FF D0 */	bdnz .L_8047CF4C
/* 8047CF80 00446540  4E 80 00 20 */	blr
.L_8047CF84:
/* 8047CF84 00446544  38 C0 00 00 */	li r6, 0
/* 8047CF88 00446548  38 A0 00 00 */	li r5, 0
/* 8047CF8C 0044654C  48 00 00 20 */	b .L_8047CFAC
.L_8047CF90:
/* 8047CF90 00446550  80 03 00 04 */	lwz r0, 4(r3)
/* 8047CF94 00446554  38 C6 00 01 */	addi r6, r6, 1
/* 8047CF98 00446558  7C 80 2A 14 */	add r4, r0, r5
/* 8047CF9C 0044655C  38 A5 00 28 */	addi r5, r5, 0x28
/* 8047CFA0 00446560  A0 04 00 10 */	lhz r0, 0x10(r4)
/* 8047CFA4 00446564  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8047CFA8 00446568  B0 04 00 10 */	sth r0, 0x10(r4)
.L_8047CFAC:
/* 8047CFAC 0044656C  80 03 00 08 */	lwz r0, 8(r3)
/* 8047CFB0 00446570  7C 06 00 00 */	cmpw r6, r0
/* 8047CFB4 00446574  41 80 FF DC */	blt .L_8047CF90
/* 8047CFB8 00446578  4E 80 00 20 */	blr 

.global func_8047CFBC
func_8047CFBC:
/* 8047CFBC 0044657C  38 00 00 00 */	li r0, 0
/* 8047CFC0 00446580  90 03 00 00 */	stw r0, 0(r3)
/* 8047CFC4 00446584  3C 60 80 66 */	lis r3, lbl_8065ADF8@ha
/* 8047CFC8 00446588  38 63 AD F8 */	addi r3, r3, lbl_8065ADF8@l
/* 8047CFCC 0044658C  48 00 00 60 */	b func_8047D02C

.global func_8047CFD0
func_8047CFD0:
/* 8047CFD0 00446590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047CFD4 00446594  7C 08 02 A6 */	mflr r0
/* 8047CFD8 00446598  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047CFDC 0044659C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047CFE0 004465A0  3F E0 80 66 */	lis r31, lbl_8065ADF8@ha
/* 8047CFE4 004465A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8047CFE8 004465A8  7C 7E 1B 78 */	mr r30, r3
/* 8047CFEC 004465AC  38 7F AD F8 */	addi r3, r31, lbl_8065ADF8@l
/* 8047CFF0 004465B0  48 00 01 C1 */	bl func_8047D1B0
/* 8047CFF4 004465B4  38 00 00 00 */	li r0, 0
/* 8047CFF8 004465B8  90 1E 00 04 */	stw r0, 4(r30)
/* 8047CFFC 004465BC  38 7F AD F8 */	addi r3, r31, lbl_8065ADF8@l
/* 8047D000 004465C0  90 1E 00 08 */	stw r0, 8(r30)
/* 8047D004 004465C4  90 1E 00 00 */	stw r0, 0(r30)
/* 8047D008 004465C8  48 00 00 25 */	bl func_8047D02C
/* 8047D00C 004465CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D010 004465D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D014 004465D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047D018 004465D8  7C 08 03 A6 */	mtlr r0
/* 8047D01C 004465DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D020 004465E0  4E 80 00 20 */	blr 

.global func_8047D024
func_8047D024:
/* 8047D024 004465E4  48 00 01 E4 */	b func_8047D208

.global func_8047D028
func_8047D028:
/* 8047D028 004465E8  48 00 02 30 */	b func_8047D258

.global func_8047D02C
func_8047D02C:
/* 8047D02C 004465EC  38 00 00 00 */	li r0, 0
/* 8047D030 004465F0  90 03 00 18 */	stw r0, 0x18(r3)
/* 8047D034 004465F4  4E 80 00 20 */	blr 

.global func_8047D038
func_8047D038:
/* 8047D038 004465F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047D03C 004465FC  7C 08 02 A6 */	mflr r0
/* 8047D040 00446600  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047D044 00446604  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047D048 00446608  7C DF 33 78 */	mr r31, r6
/* 8047D04C 0044660C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8047D050 00446610  7C BE 2B 78 */	mr r30, r5
/* 8047D054 00446614  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8047D058 00446618  7C 9D 23 78 */	mr r29, r4
/* 8047D05C 0044661C  93 81 00 10 */	stw r28, 0x10(r1)
/* 8047D060 00446620  7C 7C 1B 78 */	mr r28, r3
/* 8047D064 00446624  80 0D C0 20 */	lwz r0, lbl_806681A0@sda21(r13)
/* 8047D068 00446628  2C 00 00 00 */	cmpwi r0, 0
/* 8047D06C 0044662C  40 82 00 38 */	bne .L_8047D0A4
/* 8047D070 00446630  80 63 00 00 */	lwz r3, 0(r3)
/* 8047D074 00446634  2C 03 00 00 */	cmpwi r3, 0
/* 8047D078 00446638  41 82 00 14 */	beq .L_8047D08C
/* 8047D07C 0044663C  41 82 00 10 */	beq .L_8047D08C
/* 8047D080 00446640  4B FB 74 59 */	bl func_804344D8
/* 8047D084 00446644  38 00 00 00 */	li r0, 0
/* 8047D088 00446648  90 1C 00 00 */	stw r0, 0(r28)
.L_8047D08C:
/* 8047D08C 0044664C  7F A3 EB 78 */	mr r3, r29
/* 8047D090 00446650  7F C4 F3 78 */	mr r4, r30
/* 8047D094 00446654  38 A0 00 20 */	li r5, 0x20
/* 8047D098 00446658  4B FB 73 95 */	bl func_8043442C
/* 8047D09C 0044665C  90 7C 00 00 */	stw r3, 0(r28)
/* 8047D0A0 00446660  48 00 00 08 */	b .L_8047D0A8
.L_8047D0A4:
/* 8047D0A4 00446664  90 03 00 00 */	stw r0, 0(r3)
.L_8047D0A8:
/* 8047D0A8 00446668  1C 9F 00 28 */	mulli r4, r31, 0x28
/* 8047D0AC 0044666C  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 8047D0B0 00446670  80 7C 00 00 */	lwz r3, 0(r28)
/* 8047D0B4 00446674  60 00 00 01 */	ori r0, r0, 1
/* 8047D0B8 00446678  93 FC 00 10 */	stw r31, 0x10(r28)
/* 8047D0BC 0044667C  7C A4 F0 50 */	subf r5, r4, r30
/* 8047D0C0 00446680  7C 83 22 14 */	add r4, r3, r4
/* 8047D0C4 00446684  90 BC 00 04 */	stw r5, 4(r28)
/* 8047D0C8 00446688  90 9C 00 08 */	stw r4, 8(r28)
/* 8047D0CC 0044668C  90 1C 00 18 */	stw r0, 0x18(r28)
/* 8047D0D0 00446690  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8047D0D4 00446694  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8047D0D8 00446698  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8047D0DC 0044669C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8047D0E0 004466A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047D0E4 004466A4  7C 08 03 A6 */	mtlr r0
/* 8047D0E8 004466A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8047D0EC 004466AC  4E 80 00 20 */	blr 

.global func_8047D0F0
func_8047D0F0:
/* 8047D0F0 004466B0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8047D0F4 004466B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8047D0F8 004466B8  4D 82 00 20 */	beqlr 
/* 8047D0FC 004466BC  80 A4 00 00 */	lwz r5, 0(r4)
/* 8047D100 004466C0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8047D104 004466C4  28 05 01 F4 */	cmplwi r5, 0x1f4
/* 8047D108 004466C8  54 A0 F8 7E */	srwi r0, r5, 1
/* 8047D10C 004466CC  54 84 08 3C */	slwi r4, r4, 1
/* 8047D110 004466D0  7C 84 22 14 */	add r4, r4, r4
/* 8047D114 004466D4  38 E4 00 28 */	addi r7, r4, 0x28
/* 8047D118 004466D8  40 80 00 08 */	bge .L_8047D120
/* 8047D11C 004466DC  7C A0 2B 78 */	mr r0, r5
.L_8047D120:
/* 8047D120 004466E0  54 00 08 3C */	slwi r0, r0, 1
/* 8047D124 004466E4  7C 05 02 14 */	add r0, r5, r0
/* 8047D128 004466E8  54 00 08 3C */	slwi r0, r0, 1
/* 8047D12C 004466EC  7C 00 38 40 */	cmplw r0, r7
/* 8047D130 004466F0  40 81 00 08 */	ble .L_8047D138
/* 8047D134 004466F4  7C 07 03 78 */	mr r7, r0
.L_8047D138:
/* 8047D138 004466F8  54 E4 06 FE */	clrlwi r4, r7, 0x1b
/* 8047D13C 004466FC  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8047D140 00446700  20 84 00 1F */	subfic r4, r4, 0x1f
/* 8047D144 00446704  80 A3 00 04 */	lwz r5, 4(r3)
/* 8047D148 00446708  7C E7 22 14 */	add r7, r7, r4
/* 8047D14C 0044670C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 8047D150 00446710  7C A7 28 50 */	subf r5, r7, r5
/* 8047D154 00446714  60 00 00 02 */	ori r0, r0, 2
/* 8047D158 00446718  7C 85 23 96 */	divwu r4, r5, r4
/* 8047D15C 0044671C  80 C3 00 08 */	lwz r6, 8(r3)
/* 8047D160 00446720  90 03 00 18 */	stw r0, 0x18(r3)
/* 8047D164 00446724  7C A6 3A 14 */	add r5, r6, r7
/* 8047D168 00446728  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8047D16C 0044672C  54 80 F8 7E */	srwi r0, r4, 1
/* 8047D170 00446730  90 03 00 14 */	stw r0, 0x14(r3)
/* 8047D174 00446734  4E 80 00 20 */	blr 

.global func_8047D178
func_8047D178:
/* 8047D178 00446738  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8047D17C 0044673C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8047D180 00446740  41 82 00 28 */	beq .L_8047D1A8
/* 8047D184 00446744  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8047D188 00446748  7C 00 20 40 */	cmplw r0, r4
/* 8047D18C 0044674C  40 81 00 1C */	ble .L_8047D1A8
/* 8047D190 00446750  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8047D194 00446754  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8047D198 00446758  7C 04 01 D6 */	mullw r0, r4, r0
/* 8047D19C 0044675C  54 00 08 3C */	slwi r0, r0, 1
/* 8047D1A0 00446760  7C 63 02 14 */	add r3, r3, r0
/* 8047D1A4 00446764  4E 80 00 20 */	blr
.L_8047D1A8:
/* 8047D1A8 00446768  38 60 00 00 */	li r3, 0
/* 8047D1AC 0044676C  4E 80 00 20 */	blr 

.global func_8047D1B0
func_8047D1B0:
/* 8047D1B0 00446770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D1B4 00446774  7C 08 02 A6 */	mflr r0
/* 8047D1B8 00446778  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D1BC 0044677C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047D1C0 00446780  7C 7F 1B 78 */	mr r31, r3
/* 8047D1C4 00446784  80 0D C0 20 */	lwz r0, lbl_806681A0@sda21(r13)
/* 8047D1C8 00446788  2C 00 00 00 */	cmpwi r0, 0
/* 8047D1CC 0044678C  40 82 00 1C */	bne .L_8047D1E8
/* 8047D1D0 00446790  80 63 00 00 */	lwz r3, 0(r3)
/* 8047D1D4 00446794  2C 03 00 00 */	cmpwi r3, 0
/* 8047D1D8 00446798  41 82 00 10 */	beq .L_8047D1E8
/* 8047D1DC 0044679C  4B FB 72 FD */	bl func_804344D8
/* 8047D1E0 004467A0  38 00 00 00 */	li r0, 0
/* 8047D1E4 004467A4  90 1F 00 00 */	stw r0, 0(r31)
.L_8047D1E8:
/* 8047D1E8 004467A8  38 00 00 00 */	li r0, 0
/* 8047D1EC 004467AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8047D1F0 004467B0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8047D1F4 004467B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D1F8 004467B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D1FC 004467BC  7C 08 03 A6 */	mtlr r0
/* 8047D200 004467C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D204 004467C4  4E 80 00 20 */	blr

.global func_8047D208
func_8047D208:
/* 8047D208 004467C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D20C 004467CC  7C 08 02 A6 */	mflr r0
/* 8047D210 004467D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D214 004467D4  80 6D C0 20 */	lwz r3, lbl_806681A0@sda21(r13)
/* 8047D218 004467D8  2C 03 00 00 */	cmpwi r3, 0
/* 8047D21C 004467DC  41 82 00 14 */	beq .L_8047D230
/* 8047D220 004467E0  41 82 00 10 */	beq .L_8047D230
/* 8047D224 004467E4  4B FB 72 B5 */	bl func_804344D8
/* 8047D228 004467E8  38 00 00 00 */	li r0, 0
/* 8047D22C 004467EC  90 0D C0 20 */	stw r0, lbl_806681A0@sda21(r13)
.L_8047D230:
/* 8047D230 004467F0  4B FB 71 69 */	bl func_80434398
/* 8047D234 004467F4  3C 80 00 0B */	lis r4, 0x000AF000@ha
/* 8047D238 004467F8  38 A0 00 20 */	li r5, 0x20
/* 8047D23C 004467FC  38 84 F0 00 */	addi r4, r4, 0x000AF000@l
/* 8047D240 00446800  4B FB 71 ED */	bl func_8043442C
/* 8047D244 00446804  90 6D C0 20 */	stw r3, lbl_806681A0@sda21(r13)
/* 8047D248 00446808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D24C 0044680C  7C 08 03 A6 */	mtlr r0
/* 8047D250 00446810  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D254 00446814  4E 80 00 20 */	blr

.global func_8047D258
func_8047D258:
/* 8047D258 00446818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047D25C 0044681C  7C 08 02 A6 */	mflr r0
/* 8047D260 00446820  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047D264 00446824  80 6D C0 20 */	lwz r3, lbl_806681A0@sda21(r13)
/* 8047D268 00446828  2C 03 00 00 */	cmpwi r3, 0
/* 8047D26C 0044682C  41 82 00 0C */	beq .L_8047D278
/* 8047D270 00446830  41 82 00 08 */	beq .L_8047D278
/* 8047D274 00446834  4B FB 72 65 */	bl func_804344D8
.L_8047D278:
/* 8047D278 00446838  38 00 00 00 */	li r0, 0
/* 8047D27C 0044683C  90 0D C0 20 */	stw r0, lbl_806681A0@sda21(r13)
/* 8047D280 00446840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D284 00446844  7C 08 03 A6 */	mtlr r0
/* 8047D288 00446848  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D28C 0044684C  4E 80 00 20 */	blr

.global sinit_8047D290
sinit_8047D290:
/* 8047D290 00446850  3C 80 80 66 */	lis r4, lbl_8065ADF8@ha
/* 8047D294 00446854  38 00 00 00 */	li r0, 0
/* 8047D298 00446858  38 64 AD F8 */	addi r3, r4, lbl_8065ADF8@l
/* 8047D29C 0044685C  90 04 AD F8 */	stw r0, lbl_8065ADF8@l(r4)
/* 8047D2A0 00446860  90 03 00 04 */	stw r0, 4(r3)
/* 8047D2A4 00446864  90 03 00 18 */	stw r0, 0x18(r3)
/* 8047D2A8 00446868  4E 80 00 20 */	blr 

.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.4byte sinit_8047D290


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global float_8066D030
float_8066D030:
	.float 0


.global float_8066D034
float_8066D034:
	.float 1.0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_8065ADD0
lbl_8065ADD0:
	.skip 0x28
.global lbl_8065ADF8
lbl_8065ADF8:
	.skip 0x20


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.global lbl_80668198
lbl_80668198:
	.skip 0x8
.global lbl_806681A0
lbl_806681A0:
	.skip 0x8

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001E0E0
lbl_8001E0E0:
	.4byte 0x200A0000
	.4byte 0

.global lbl_8001E0E8
lbl_8001E0E8:
	.4byte 0x000A0000
	.4byte 0

.global lbl_8001E0F0
lbl_8001E0F0:
	.4byte 0x18080000
	.4byte 0

.global lbl_8001E0F8
lbl_8001E0F8:
	.4byte 0x20080000
	.4byte 0

.global lbl_8001E100
lbl_8001E100:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001E108
lbl_8001E108:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001E110
lbl_8001E110:
	.4byte 0x20080000
	.4byte 0

.global lbl_8001E118
lbl_8001E118:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001E120
lbl_8001E120:
	.4byte 0x00080000
	.4byte 0

.global lbl_8001E128
lbl_8001E128:
	.4byte 0x00080000
	.4byte 0


.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte func_8047CAA8
	.4byte 0x000001A4
	.4byte lbl_8001E0E0
	.4byte func_8047CC4C
	.4byte 0x000000C0
	.4byte lbl_8001E0E8
	.4byte func_8047CD0C
	.4byte 0x000000B0
	.4byte lbl_8001E0F0
	.4byte func_8047CDBC
	.4byte 0x000000C0
	.4byte lbl_8001E0F8
	.4byte func_8047CE7C
	.4byte 0x000000A4
	.4byte lbl_8001E100
	.4byte func_8047CFD0
	.4byte 0x00000054
	.4byte lbl_8001E108
	.4byte func_8047D038
	.4byte 0x000000B8
	.4byte lbl_8001E110
	.4byte func_8047D1B0
	.4byte 0x00000058
	.4byte lbl_8001E118
	.4byte func_8047D208
	.4byte 0x00000050
	.4byte lbl_8001E120
	.4byte func_8047D258
	.4byte 0x00000038
	.4byte lbl_8001E128