.include "macros.inc"
.file "nw4r/lyt/lyt_texMap.o"

# 0x804082FC - 0x80408668
.text
.balign 4

# nw4r::lyt::TexMap::Get(_GXTexObj*) const
.fn Get__Q34nw4r3lyt6TexMapCFP9_GXTexObj, global
/* 804082FC 003D18BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80408300 003D18C0  7C 08 02 A6 */	mflr r0
/* 80408304 003D18C4  81 43 00 18 */	lwz r10, 0x18(r3)
/* 80408308 003D18C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040830C 003D18CC  55 47 27 3E */	srwi r7, r10, 28
/* 80408310 003D18D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80408314 003D18D4  38 07 FF F8 */	addi r0, r7, -0x8
/* 80408318 003D18D8  28 00 00 02 */	cmplwi r0, 0x2
/* 8040831C 003D18DC  7C 9F 23 78 */	mr r31, r4
/* 80408320 003D18E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80408324 003D18E4  7C 7E 1B 78 */	mr r30, r3
/* 80408328 003D18E8  41 81 00 3C */	bgt .L_80408364
/* 8040832C 003D18EC  7F E3 FB 78 */	mr r3, r31
/* 80408330 003D18F0  4B F1 44 D1 */	bl GXGetTexObjTlut
/* 80408334 003D18F4  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80408338 003D18F8  90 61 00 08 */	stw r3, 0x8(r1)
/* 8040833C 003D18FC  7F E3 FB 78 */	mr r3, r31
/* 80408340 003D1900  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80408344 003D1904  54 07 27 3E */	srwi r7, r0, 28
/* 80408348 003D1908  A0 BE 00 08 */	lhz r5, 0x8(r30)
/* 8040834C 003D190C  54 08 3F BE */	extrwi r8, r0, 2, 5
/* 80408350 003D1910  A0 DE 00 0A */	lhz r6, 0xa(r30)
/* 80408354 003D1914  54 09 4F BE */	extrwi r9, r0, 2, 7
/* 80408358 003D1918  54 0A 2F FE */	extrwi r10, r0, 1, 4
/* 8040835C 003D191C  4B F1 41 65 */	bl GXInitTexObjCI
/* 80408360 003D1920  48 00 00 24 */	b .L_80408384
.L_80408364:
/* 80408364 003D1924  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 80408368 003D1928  7F E3 FB 78 */	mr r3, r31
/* 8040836C 003D192C  A0 BE 00 08 */	lhz r5, 0x8(r30)
/* 80408370 003D1930  55 48 3F BE */	extrwi r8, r10, 2, 5
/* 80408374 003D1934  55 49 4F BE */	extrwi r9, r10, 2, 7
/* 80408378 003D1938  A0 DE 00 0A */	lhz r6, 0xa(r30)
/* 8040837C 003D193C  55 4A 2F FE */	extrwi r10, r10, 1, 4
/* 80408380 003D1940  4B F1 3F 31 */	bl GXInitTexObj
.L_80408384:
/* 80408384 003D1944  A0 9E 00 14 */	lhz r4, 0x14(r30)
/* 80408388 003D1948  3C A0 43 30 */	lis r5, 0x4330
/* 8040838C 003D194C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80408390 003D1950  7F E3 FB 78 */	mr r3, r31
/* 80408394 003D1954  90 81 00 14 */	stw r4, 0x14(r1)
/* 80408398 003D1958  C8 62 C2 40 */	lfd f3, lbl_8066C5C0@sda21(r2)
/* 8040839C 003D195C  54 04 67 7E */	extrwi r4, r0, 3, 9
/* 804083A0 003D1960  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804083A4 003D1964  54 05 6F FE */	extrwi r5, r0, 1, 12
/* 804083A8 003D1968  C0 02 C2 38 */	lfs f0, lbl_8066C5B8@sda21(r2)
/* 804083AC 003D196C  54 06 77 FE */	extrwi r6, r0, 1, 13
/* 804083B0 003D1970  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 804083B4 003D1974  54 07 7F FE */	extrwi r7, r0, 1, 14
/* 804083B8 003D1978  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 804083BC 003D197C  54 08 8F BE */	extrwi r8, r0, 2, 15
/* 804083C0 003D1980  EC 61 18 28 */	fsubs f3, f1, f3
/* 804083C4 003D1984  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804083C8 003D1988  EC 63 00 32 */	fmuls f3, f3, f0
/* 804083CC 003D198C  4B F1 41 45 */	bl GXInitTexObjLOD
/* 804083D0 003D1990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804083D4 003D1994  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804083D8 003D1998  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804083DC 003D199C  7C 08 03 A6 */	mtlr r0
/* 804083E0 003D19A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804083E4 003D19A4  4E 80 00 20 */	blr
.endfn Get__Q34nw4r3lyt6TexMapCFP9_GXTexObj

# nw4r::lyt::TexMap::Get(_GXTlutObj*) const
.fn Get__Q34nw4r3lyt6TexMapCFP10_GXTlutObj, global
/* 804083E8 003D19A8  7C 65 1B 78 */	mr r5, r3
/* 804083EC 003D19AC  7C 83 23 78 */	mr r3, r4
/* 804083F0 003D19B0  80 05 00 18 */	lwz r0, 0x18(r5)
/* 804083F4 003D19B4  80 85 00 04 */	lwz r4, 0x4(r5)
/* 804083F8 003D19B8  A0 C5 00 16 */	lhz r6, 0x16(r5)
/* 804083FC 003D19BC  54 05 9F BE */	extrwi r5, r0, 2, 17
/* 80408400 003D19C0  4B F1 45 E0 */	b GXInitTlutObj
.endfn Get__Q34nw4r3lyt6TexMapCFP10_GXTlutObj

# nw4r::lyt::TexMap::Set(TPLPalette*, unsigned long)
.fn Set__Q34nw4r3lyt6TexMapFP10TPLPaletteUl, global
/* 80408404 003D19C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80408408 003D19C8  7C 08 02 A6 */	mflr r0
/* 8040840C 003D19CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80408410 003D19D0  3C 00 80 00 */	lis r0, 0x8000
/* 80408414 003D19D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80408418 003D19D8  7C BF 2B 78 */	mr r31, r5
/* 8040841C 003D19DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80408420 003D19E0  7C 9E 23 78 */	mr r30, r4
/* 80408424 003D19E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80408428 003D19E8  7C 7D 1B 78 */	mr r29, r3
/* 8040842C 003D19EC  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 80408430 003D19F0  7C 06 00 40 */	cmplw r6, r0
/* 80408434 003D19F4  40 80 00 0C */	bge .L_80408440
/* 80408438 003D19F8  7F C3 F3 78 */	mr r3, r30
/* 8040843C 003D19FC  4B F5 A3 85 */	bl TPLBind
.L_80408440:
/* 80408440 003D1A00  7F C3 F3 78 */	mr r3, r30
/* 80408444 003D1A04  7F E4 FB 78 */	mr r4, r31
/* 80408448 003D1A08  4B F5 A4 99 */	bl TPLGet
/* 8040844C 003D1A0C  7C 64 1B 78 */	mr r4, r3
/* 80408450 003D1A10  7F A3 EB 78 */	mr r3, r29
/* 80408454 003D1A14  48 00 00 21 */	bl Set__Q34nw4r3lyt6TexMapFPC13TPLDescriptor
/* 80408458 003D1A18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040845C 003D1A1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80408460 003D1A20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80408464 003D1A24  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80408468 003D1A28  7C 08 03 A6 */	mtlr r0
/* 8040846C 003D1A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80408470 003D1A30  4E 80 00 20 */	blr
.endfn Set__Q34nw4r3lyt6TexMapFP10TPLPaletteUl

# nw4r::lyt::TexMap::Set(const TPLDescriptor*)
.fn Set__Q34nw4r3lyt6TexMapFPC13TPLDescriptor, global
/* 80408474 003D1A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80408478 003D1A38  3C 00 43 30 */	lis r0, 0x4330
/* 8040847C 003D1A3C  80 E4 00 00 */	lwz r7, 0x0(r4)
/* 80408480 003D1A40  81 04 00 04 */	lwz r8, 0x4(r4)
/* 80408484 003D1A44  80 87 00 08 */	lwz r4, 0x8(r7)
/* 80408488 003D1A48  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 8040848C 003D1A4C  2C 08 00 00 */	cmpwi r8, 0x0
/* 80408490 003D1A50  90 83 00 00 */	stw r4, 0x0(r3)
/* 80408494 003D1A54  C8 62 C2 40 */	lfd f3, lbl_8066C5C0@sda21(r2)
/* 80408498 003D1A58  A0 A7 00 00 */	lhz r5, 0x0(r7)
/* 8040849C 003D1A5C  A0 87 00 02 */	lhz r4, 0x2(r7)
/* 804084A0 003D1A60  90 01 00 08 */	stw r0, 0x8(r1)
/* 804084A4 003D1A64  C0 02 C2 48 */	lfs f0, lbl_8066C5C8@sda21(r2)
/* 804084A8 003D1A68  B0 83 00 08 */	sth r4, 0x8(r3)
/* 804084AC 003D1A6C  B0 A3 00 0A */	sth r5, 0xa(r3)
/* 804084B0 003D1A70  80 87 00 04 */	lwz r4, 0x4(r7)
/* 804084B4 003D1A74  90 01 00 10 */	stw r0, 0x10(r1)
/* 804084B8 003D1A78  50 86 E0 06 */	rlwimi r6, r4, 28, 0, 3
/* 804084BC 003D1A7C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 804084C0 003D1A80  80 07 00 0C */	lwz r0, 0xc(r7)
/* 804084C4 003D1A84  80 87 00 10 */	lwz r4, 0x10(r7)
/* 804084C8 003D1A88  50 06 C9 4C */	rlwimi r6, r0, 25, 5, 6
/* 804084CC 003D1A8C  50 86 B9 D0 */	rlwimi r6, r4, 23, 7, 8
/* 804084D0 003D1A90  90 C3 00 18 */	stw r6, 0x18(r3)
/* 804084D4 003D1A94  88 A7 00 21 */	lbz r5, 0x21(r7)
/* 804084D8 003D1A98  88 07 00 22 */	lbz r0, 0x22(r7)
/* 804084DC 003D1A9C  7C 85 00 50 */	subf r4, r5, r0
/* 804084E0 003D1AA0  7C 00 28 50 */	subf r0, r0, r5
/* 804084E4 003D1AA4  7C 80 03 78 */	or r0, r4, r0
/* 804084E8 003D1AA8  50 06 E1 08 */	rlwimi r6, r0, 28, 4, 4
/* 804084EC 003D1AAC  90 C3 00 18 */	stw r6, 0x18(r3)
/* 804084F0 003D1AB0  80 07 00 14 */	lwz r0, 0x14(r7)
/* 804084F4 003D1AB4  80 87 00 18 */	lwz r4, 0x18(r7)
/* 804084F8 003D1AB8  50 06 A2 56 */	rlwimi r6, r0, 20, 9, 11
/* 804084FC 003D1ABC  50 86 9B 18 */	rlwimi r6, r4, 19, 12, 12
/* 80408500 003D1AC0  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80408504 003D1AC4  88 87 00 22 */	lbz r4, 0x22(r7)
/* 80408508 003D1AC8  88 07 00 21 */	lbz r0, 0x21(r7)
/* 8040850C 003D1ACC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80408510 003D1AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80408514 003D1AD4  C8 41 00 08 */	lfd f2, 0x8(r1)
/* 80408518 003D1AD8  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 8040851C 003D1ADC  EC 42 18 28 */	fsubs f2, f2, f3
/* 80408520 003D1AE0  EC 21 18 28 */	fsubs f1, f1, f3
/* 80408524 003D1AE4  D0 43 00 10 */	stfs f2, 0x10(r3)
/* 80408528 003D1AE8  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 8040852C 003D1AEC  C0 27 00 1C */	lfs f1, 0x1c(r7)
/* 80408530 003D1AF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80408534 003D1AF4  FC 00 00 1E */	fctiwz f0, f0
/* 80408538 003D1AF8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8040853C 003D1AFC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80408540 003D1B00  B0 03 00 14 */	sth r0, 0x14(r3)
/* 80408544 003D1B04  88 87 00 20 */	lbz r4, 0x20(r7)
/* 80408548 003D1B08  7C 04 00 D0 */	neg r0, r4
/* 8040854C 003D1B0C  7C 00 23 78 */	or r0, r0, r4
/* 80408550 003D1B10  50 06 93 9C */	rlwimi r6, r0, 18, 14, 14
/* 80408554 003D1B14  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80408558 003D1B18  41 82 00 24 */	beq .L_8040857C
/* 8040855C 003D1B1C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 80408560 003D1B20  90 03 00 04 */	stw r0, 0x4(r3)
/* 80408564 003D1B24  80 08 00 04 */	lwz r0, 0x4(r8)
/* 80408568 003D1B28  50 06 6C 64 */	rlwimi r6, r0, 13, 17, 18
/* 8040856C 003D1B2C  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80408570 003D1B30  A0 08 00 00 */	lhz r0, 0x0(r8)
/* 80408574 003D1B34  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80408578 003D1B38  48 00 00 18 */	b .L_80408590
.L_8040857C:
/* 8040857C 003D1B3C  38 80 00 00 */	li r4, 0x0
/* 80408580 003D1B40  54 C0 04 E0 */	rlwinm r0, r6, 0, 19, 16
/* 80408584 003D1B44  90 83 00 04 */	stw r4, 0x4(r3)
/* 80408588 003D1B48  90 03 00 18 */	stw r0, 0x18(r3)
/* 8040858C 003D1B4C  B0 83 00 16 */	sth r4, 0x16(r3)
.L_80408590:
/* 80408590 003D1B50  38 21 00 20 */	addi r1, r1, 0x20
/* 80408594 003D1B54  4E 80 00 20 */	blr
.endfn Set__Q34nw4r3lyt6TexMapFPC13TPLDescriptor

# nw4r::lyt::TexMap::ReplaceImage(TPLPalette*, unsigned long)
.fn ReplaceImage__Q34nw4r3lyt6TexMapFP10TPLPaletteUl, global
/* 80408598 003D1B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040859C 003D1B5C  7C 08 02 A6 */	mflr r0
/* 804085A0 003D1B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 804085A4 003D1B64  3C 00 80 00 */	lis r0, 0x8000
/* 804085A8 003D1B68  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804085AC 003D1B6C  7C BF 2B 78 */	mr r31, r5
/* 804085B0 003D1B70  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804085B4 003D1B74  7C 9E 23 78 */	mr r30, r4
/* 804085B8 003D1B78  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804085BC 003D1B7C  7C 7D 1B 78 */	mr r29, r3
/* 804085C0 003D1B80  80 C4 00 08 */	lwz r6, 0x8(r4)
/* 804085C4 003D1B84  7C 06 00 40 */	cmplw r6, r0
/* 804085C8 003D1B88  40 80 00 0C */	bge .L_804085D4
/* 804085CC 003D1B8C  7F C3 F3 78 */	mr r3, r30
/* 804085D0 003D1B90  4B F5 A1 F1 */	bl TPLBind
.L_804085D4:
/* 804085D4 003D1B94  7F C3 F3 78 */	mr r3, r30
/* 804085D8 003D1B98  7F E4 FB 78 */	mr r4, r31
/* 804085DC 003D1B9C  4B F5 A3 05 */	bl TPLGet
/* 804085E0 003D1BA0  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 804085E4 003D1BA4  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 804085E8 003D1BA8  80 06 00 08 */	lwz r0, 0x8(r6)
/* 804085EC 003D1BAC  90 1D 00 00 */	stw r0, 0x0(r29)
/* 804085F0 003D1BB0  A0 A6 00 00 */	lhz r5, 0x0(r6)
/* 804085F4 003D1BB4  A0 06 00 02 */	lhz r0, 0x2(r6)
/* 804085F8 003D1BB8  B0 1D 00 08 */	sth r0, 0x8(r29)
/* 804085FC 003D1BBC  B0 BD 00 0A */	sth r5, 0xa(r29)
/* 80408600 003D1BC0  80 06 00 04 */	lwz r0, 0x4(r6)
/* 80408604 003D1BC4  50 04 E0 06 */	rlwimi r4, r0, 28, 0, 3
/* 80408608 003D1BC8  90 9D 00 18 */	stw r4, 0x18(r29)
/* 8040860C 003D1BCC  80 63 00 04 */	lwz r3, 0x4(r3)
/* 80408610 003D1BD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80408614 003D1BD4  41 82 00 24 */	beq .L_80408638
/* 80408618 003D1BD8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8040861C 003D1BDC  90 1D 00 04 */	stw r0, 0x4(r29)
/* 80408620 003D1BE0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 80408624 003D1BE4  50 04 6C 64 */	rlwimi r4, r0, 13, 17, 18
/* 80408628 003D1BE8  90 9D 00 18 */	stw r4, 0x18(r29)
/* 8040862C 003D1BEC  A0 03 00 00 */	lhz r0, 0x0(r3)
/* 80408630 003D1BF0  B0 1D 00 16 */	sth r0, 0x16(r29)
/* 80408634 003D1BF4  48 00 00 18 */	b .L_8040864C
.L_80408638:
/* 80408638 003D1BF8  38 60 00 00 */	li r3, 0x0
/* 8040863C 003D1BFC  54 80 04 E0 */	rlwinm r0, r4, 0, 19, 16
/* 80408640 003D1C00  90 7D 00 04 */	stw r3, 0x4(r29)
/* 80408644 003D1C04  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80408648 003D1C08  B0 7D 00 16 */	sth r3, 0x16(r29)
.L_8040864C:
/* 8040864C 003D1C0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80408650 003D1C10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80408654 003D1C14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80408658 003D1C18  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8040865C 003D1C1C  7C 08 03 A6 */	mtlr r0
/* 80408660 003D1C20  38 21 00 20 */	addi r1, r1, 0x20
/* 80408664 003D1C24  4E 80 00 20 */	blr
.endfn ReplaceImage__Q34nw4r3lyt6TexMapFP10TPLPaletteUl

# 0x8066C5B8 - 0x8066C5D0
.section .sdata2, "a"
.balign 8
.sym lbl_8066C5B8, local
	.4byte 0x3B800000
	.4byte 0x00000000
.sym lbl_8066C5C0, local
	.4byte 0x43300000
	.4byte 0x00000000
.sym lbl_8066C5C8, local
	.4byte 0x43800000
	.4byte 0x00000000
