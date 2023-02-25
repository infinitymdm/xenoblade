.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_802B72F4, global
/* 802B72F4 002808B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B72F8 002808B8  7C 08 02 A6 */	mflr r0
/* 802B72FC 002808BC  3C 80 80 54 */	lis r4, __vt__CTitle@ha
/* 802B7300 002808C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7304 002808C4  38 84 E9 E0 */	addi r4, r4, __vt__CTitle@l
/* 802B7308 002808C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B730C 002808CC  7C 7F 1B 78 */	mr r31, r3
/* 802B7310 002808D0  90 83 00 00 */	stw r4, 0(r3)
/* 802B7314 002808D4  38 63 00 04 */	addi r3, r3, 4
/* 802B7318 002808D8  48 1A 82 4D */	bl __ct__8045F564
/* 802B731C 002808DC  38 A0 00 00 */	li r5, 0
/* 802B7320 002808E0  38 80 00 01 */	li r4, 1
/* 802B7324 002808E4  38 00 FF FF */	li r0, -1
/* 802B7328 002808E8  90 BF 00 14 */	stw r5, 0x14(r31)
/* 802B732C 002808EC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802B7330 002808F0  90 BF 00 18 */	stw r5, 0x18(r31)
/* 802B7334 002808F4  98 9F 00 1C */	stb r4, 0x1c(r31)
/* 802B7338 002808F8  90 BF 00 20 */	stw r5, 0x20(r31)
/* 802B733C 002808FC  98 BF 00 24 */	stb r5, 0x24(r31)
/* 802B7340 00280900  98 1F 00 25 */	stb r0, 0x25(r31)
/* 802B7344 00280904  4B FF EF E9 */	bl func_802B632C
/* 802B7348 00280908  38 7F 00 48 */	addi r3, r31, 0x48
/* 802B734C 0028090C  4B FF F5 A1 */	bl func_802B68EC
/* 802B7350 00280910  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B7354 00280914  38 80 00 00 */	li r4, 0
/* 802B7358 00280918  4B F1 B6 A5 */	bl __ct__CCur18
/* 802B735C 0028091C  7F E3 FB 78 */	mr r3, r31
/* 802B7360 00280920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7364 00280924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7368 00280928  7C 08 03 A6 */	mtlr r0
/* 802B736C 0028092C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7370 00280930  4E 80 00 20 */	blr 
.endfn func_802B72F4

.fn __dt__CTitle, global
/* 802B7374 00280934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7378 00280938  7C 08 02 A6 */	mflr r0
/* 802B737C 0028093C  2C 03 00 00 */	cmpwi r3, 0
/* 802B7380 00280940  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7384 00280944  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B7388 00280948  7C 7E 1B 78 */	mr r30, r3
/* 802B738C 0028094C  7C 9F 23 78 */	mr r31, r4
/* 802B7390 00280950  41 82 00 2C */	beq .L_802B73BC
/* 802B7394 00280954  38 80 FF FF */	li r4, -1
/* 802B7398 00280958  38 63 00 70 */	addi r3, r3, 0x70
/* 802B739C 0028095C  4B F1 B6 9D */	bl __dt__801D2A38
/* 802B73A0 00280960  38 7E 00 04 */	addi r3, r30, 4
/* 802B73A4 00280964  38 80 FF FF */	li r4, -1
/* 802B73A8 00280968  48 1A 81 D9 */	bl __dt__8045F580
/* 802B73AC 0028096C  2C 1F 00 00 */	cmpwi r31, 0
/* 802B73B0 00280970  40 81 00 0C */	ble .L_802B73BC
/* 802B73B4 00280974  7F C3 F3 78 */	mr r3, r30
/* 802B73B8 00280978  48 17 D8 75 */	bl __dl__FPv
.L_802B73BC:
/* 802B73BC 0028097C  7F C3 F3 78 */	mr r3, r30
/* 802B73C0 00280980  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B73C4 00280984  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B73C8 00280988  7C 08 03 A6 */	mtlr r0
/* 802B73CC 0028098C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B73D0 00280990  4E 80 00 20 */	blr 
.endfn __dt__CTitle

.fn func_802B73D4, global
/* 802B73D4 00280994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B73D8 00280998  7C 08 02 A6 */	mflr r0
/* 802B73DC 0028099C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B73E0 002809A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B73E4 002809A4  7C 7F 1B 78 */	mr r31, r3
/* 802B73E8 002809A8  48 17 CF B9 */	bl func_804343A0
/* 802B73EC 002809AC  3C 80 80 51 */	lis r4, CTitleMenu_strpool@ha
/* 802B73F0 002809B0  7F E5 FB 78 */	mr r5, r31
/* 802B73F4 002809B4  38 84 CA 50 */	addi r4, r4, CTitleMenu_strpool@l
/* 802B73F8 002809B8  38 C0 00 00 */	li r6, 0
/* 802B73FC 002809BC  38 84 01 33 */	addi r4, r4, 0x133
/* 802B7400 002809C0  38 E0 00 00 */	li r7, 0
/* 802B7404 002809C4  48 19 73 91 */	bl func_8044E794
/* 802B7408 002809C8  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802B740C 002809CC  48 19 7F F9 */	bl func_8044F404
/* 802B7410 002809D0  3C 60 80 2B */	lis r3, func_802B7948@ha
/* 802B7414 002809D4  38 63 79 48 */	addi r3, r3, func_802B7948@l
/* 802B7418 002809D8  4B F8 8A C5 */	bl func_8023FEDC
/* 802B741C 002809DC  2C 03 00 00 */	cmpwi r3, 0
/* 802B7420 002809E0  40 82 00 0C */	bne .L_802B742C
/* 802B7424 002809E4  38 00 00 00 */	li r0, 0
/* 802B7428 002809E8  98 1F 00 25 */	stb r0, 0x25(r31)
.L_802B742C:
/* 802B742C 002809EC  38 00 00 00 */	li r0, 0
/* 802B7430 002809F0  98 1F 00 1C */	stb r0, 0x1c(r31)
/* 802B7434 002809F4  93 ED B3 98 */	stw r31, lbl_80667518@sda21(r13)
/* 802B7438 002809F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B743C 002809FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7440 00280A00  7C 08 03 A6 */	mtlr r0
/* 802B7444 00280A04  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7448 00280A08  4E 80 00 20 */	blr 
.endfn func_802B73D4

.fn func_802B744C, global
/* 802B744C 00280A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7450 00280A10  7C 08 02 A6 */	mflr r0
/* 802B7454 00280A14  3C 80 80 54 */	lis r4, lbl_8053E98C@ha
/* 802B7458 00280A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B745C 00280A1C  38 84 E9 8C */	addi r4, r4, lbl_8053E98C@l
/* 802B7460 00280A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7464 00280A24  7C 7F 1B 78 */	mr r31, r3
/* 802B7468 00280A28  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B746C 00280A2C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802B7470 00280A30  7D 84 02 14 */	add r12, r4, r0
/* 802B7474 00280A34  48 00 28 E9 */	bl __ptmf_scall
/* 802B7478 00280A38  60 00 00 00 */	nop 
/* 802B747C 00280A3C  38 7F 00 2C */	addi r3, r31, 0x2c
/* 802B7480 00280A40  4B FF EF B5 */	bl func_802B6434
/* 802B7484 00280A44  38 7F 00 48 */	addi r3, r31, 0x48
/* 802B7488 00280A48  4B FF F6 09 */	bl func_802B6A90
/* 802B748C 00280A4C  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B7490 00280A50  4B F1 AB 9D */	bl func_801D202C
/* 802B7494 00280A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7498 00280A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B749C 00280A5C  7C 08 03 A6 */	mtlr r0
/* 802B74A0 00280A60  38 21 00 10 */	addi r1, r1, 0x10
/* 802B74A4 00280A64  4E 80 00 20 */	blr 
.endfn func_802B744C

.fn func_802B74A8, global
/* 802B74A8 00280A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B74AC 00280A6C  7C 08 02 A6 */	mflr r0
/* 802B74B0 00280A70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B74B4 00280A74  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B74B8 00280A78  7C 7E 1B 78 */	mr r30, r3
/* 802B74BC 00280A7C  7C 9F 23 78 */	mr r31, r4
/* 802B74C0 00280A80  38 63 00 2C */	addi r3, r3, 0x2c
/* 802B74C4 00280A84  4B FF EF E9 */	bl func_802B64AC
/* 802B74C8 00280A88  7F E4 FB 78 */	mr r4, r31
/* 802B74CC 00280A8C  38 7E 00 48 */	addi r3, r30, 0x48
/* 802B74D0 00280A90  4B FF F6 39 */	bl func_802B6B08
/* 802B74D4 00280A94  7F E4 FB 78 */	mr r4, r31
/* 802B74D8 00280A98  38 7E 00 70 */	addi r3, r30, 0x70
/* 802B74DC 00280A9C  4B F1 AB D5 */	bl func_801D20B0
/* 802B74E0 00280AA0  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B74E4 00280AA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B74E8 00280AA8  7C 08 03 A6 */	mtlr r0
/* 802B74EC 00280AAC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B74F0 00280AB0  4E 80 00 20 */	blr 
.endfn func_802B74A8

.fn func_802B74F4, global
/* 802B74F4 00280AB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B74F8 00280AB8  7C 08 02 A6 */	mflr r0
/* 802B74FC 00280ABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7500 00280AC0  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B7504 00280AC4  7C 7E 1B 78 */	mr r30, r3
/* 802B7508 00280AC8  38 63 00 14 */	addi r3, r3, 0x14
/* 802B750C 00280ACC  4B E8 1B D5 */	bl func_801390E0
/* 802B7510 00280AD0  38 7E 00 2C */	addi r3, r30, 0x2c
/* 802B7514 00280AD4  4B FF EF C9 */	bl func_802B64DC
/* 802B7518 00280AD8  38 7E 00 48 */	addi r3, r30, 0x48
/* 802B751C 00280ADC  4B FF F6 1D */	bl func_802B6B38
/* 802B7520 00280AE0  81 9E 00 70 */	lwz r12, 0x70(r30)
/* 802B7524 00280AE4  38 7E 00 70 */	addi r3, r30, 0x70
/* 802B7528 00280AE8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802B752C 00280AEC  7D 89 03 A6 */	mtctr r12
/* 802B7530 00280AF0  4E 80 04 21 */	bctrl 
/* 802B7534 00280AF4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802B7538 00280AF8  4B E8 1B ED */	bl func_80139124
/* 802B753C 00280AFC  3B E0 00 00 */	li r31, 0
/* 802B7540 00280B00  93 FE 00 18 */	stw r31, 0x18(r30)
/* 802B7544 00280B04  38 7E 00 04 */	addi r3, r30, 4
/* 802B7548 00280B08  48 1A 82 31 */	bl func_8045F778
/* 802B754C 00280B0C  93 ED B3 98 */	stw r31, lbl_80667518@sda21(r13)
/* 802B7550 00280B10  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B7554 00280B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7558 00280B18  7C 08 03 A6 */	mtlr r0
/* 802B755C 00280B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7560 00280B20  4E 80 00 20 */	blr 
.endfn func_802B74F4

.fn func_802B7564, global
/* 802B7564 00280B24  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 802B7568 00280B28  38 80 00 00 */	li r4, 0
/* 802B756C 00280B2C  2C 00 00 00 */	cmpwi r0, 0
/* 802B7570 00280B30  41 82 00 18 */	beq .L_802B7588
/* 802B7574 00280B34  88 03 00 25 */	lbz r0, 0x25(r3)
/* 802B7578 00280B38  7C 00 07 74 */	extsb r0, r0
/* 802B757C 00280B3C  2C 00 FF FF */	cmpwi r0, -1
/* 802B7580 00280B40  41 82 00 08 */	beq .L_802B7588
/* 802B7584 00280B44  38 80 00 01 */	li r4, 1
.L_802B7588:
/* 802B7588 00280B48  7C 83 23 78 */	mr r3, r4
/* 802B758C 00280B4C  4E 80 00 20 */	blr 
.endfn func_802B7564

.fn func_802B7590, global
/* 802B7590 00280B50  88 03 00 45 */	lbz r0, 0x45(r3)
/* 802B7594 00280B54  38 80 00 00 */	li r4, 0
/* 802B7598 00280B58  2C 00 00 00 */	cmpwi r0, 0
/* 802B759C 00280B5C  41 82 00 14 */	beq .L_802B75B0
/* 802B75A0 00280B60  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 802B75A4 00280B64  2C 00 00 00 */	cmpwi r0, 0
/* 802B75A8 00280B68  41 82 00 08 */	beq .L_802B75B0
/* 802B75AC 00280B6C  38 80 00 01 */	li r4, 1
.L_802B75B0:
/* 802B75B0 00280B70  7C 83 23 78 */	mr r3, r4
/* 802B75B4 00280B74  4E 80 00 20 */	blr
.endfn func_802B7590

.fn func_802B75B8, global
/* 802B75B8 00280B78  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B75BC 00280B7C  2C 00 00 00 */	cmpwi r0, 0
/* 802B75C0 00280B80  4C 82 00 20 */	bnelr 
/* 802B75C4 00280B84  38 00 00 01 */	li r0, 1
/* 802B75C8 00280B88  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B75CC 00280B8C  38 63 00 48 */	addi r3, r3, 0x48
/* 802B75D0 00280B90  4B FF F5 C0 */	b func_802B6B90
/* 802B75D4 00280B94  4E 80 00 20 */	blr 
.endfn func_802B75B8

.fn func_802B75D8, global
/* 802B75D8 00280B98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B75DC 00280B9C  7C 08 02 A6 */	mflr r0
/* 802B75E0 00280BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B75E4 00280BA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B75E8 00280BA8  7C 7F 1B 78 */	mr r31, r3
/* 802B75EC 00280BAC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B75F0 00280BB0  28 00 00 05 */	cmplwi r0, 5
/* 802B75F4 00280BB4  40 82 00 28 */	bne .L_802B761C
/* 802B75F8 00280BB8  38 00 00 06 */	li r0, 6
/* 802B75FC 00280BBC  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B7600 00280BC0  38 63 00 2C */	addi r3, r3, 0x2c
/* 802B7604 00280BC4  4B FF EF 7D */	bl func_802B6580
/* 802B7608 00280BC8  38 7F 00 48 */	addi r3, r31, 0x48
/* 802B760C 00280BCC  4B FF F6 69 */	bl func_802B6C74
/* 802B7610 00280BD0  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B7614 00280BD4  38 80 00 00 */	li r4, 0
/* 802B7618 00280BD8  4B F1 AB 55 */	bl func_801D216C
.L_802B761C:
/* 802B761C 00280BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7620 00280BE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7624 00280BE4  7C 08 03 A6 */	mtlr r0
/* 802B7628 00280BE8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B762C 00280BEC  4E 80 00 20 */	blr 
.endfn func_802B75D8

.fn func_802B7630, global
/* 802B7630 00280BF0  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B7634 00280BF4  28 00 00 02 */	cmplwi r0, 2
/* 802B7638 00280BF8  4C 82 00 20 */	bnelr 
/* 802B763C 00280BFC  38 00 00 03 */	li r0, 3
/* 802B7640 00280C00  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B7644 00280C04  38 63 00 48 */	addi r3, r3, 0x48
/* 802B7648 00280C08  4B FF F5 94 */	b func_802B6BDC
/* 802B764C 00280C0C  4E 80 00 20 */	blr 
.endfn func_802B7630

.fn func_802B7650, global
/* 802B7650 00280C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B7654 00280C14  7C 08 02 A6 */	mflr r0
/* 802B7658 00280C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B765C 00280C1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B7660 00280C20  7C 7F 1B 78 */	mr r31, r3
/* 802B7664 00280C24  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B7668 00280C28  28 00 00 05 */	cmplwi r0, 5
/* 802B766C 00280C2C  40 82 00 54 */	bne .L_802B76C0
/* 802B7670 00280C30  88 83 00 25 */	lbz r4, 0x25(r3)
/* 802B7674 00280C34  38 04 FF FF */	addi r0, r4, -1
/* 802B7678 00280C38  98 03 00 25 */	stb r0, 0x25(r3)
/* 802B767C 00280C3C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B7680 00280C40  7C 00 07 75 */	extsb. r0, r0
/* 802B7684 00280C44  40 80 00 0C */	bge .L_802B7690
/* 802B7688 00280C48  38 00 00 02 */	li r0, 2
/* 802B768C 00280C4C  98 03 00 25 */	stb r0, 0x25(r3)
.L_802B7690:
/* 802B7690 00280C50  88 BF 00 25 */	lbz r5, 0x25(r31)
/* 802B7694 00280C54  38 61 00 08 */	addi r3, r1, 8
/* 802B7698 00280C58  38 9F 00 48 */	addi r4, r31, 0x48
/* 802B769C 00280C5C  4B FF F6 21 */	bl func_802B6CBC
/* 802B76A0 00280C60  81 9F 00 70 */	lwz r12, 0x70(r31)
/* 802B76A4 00280C64  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B76A8 00280C68  38 81 00 08 */	addi r4, r1, 8
/* 802B76AC 00280C6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B76B0 00280C70  7D 89 03 A6 */	mtctr r12
/* 802B76B4 00280C74  4E 80 04 21 */	bctrl 
/* 802B76B8 00280C78  38 60 00 01 */	li r3, 1
/* 802B76BC 00280C7C  4B E8 09 BD */	bl func_80138078
.L_802B76C0:
/* 802B76C0 00280C80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B76C4 00280C84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B76C8 00280C88  7C 08 03 A6 */	mtlr r0
/* 802B76CC 00280C8C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B76D0 00280C90  4E 80 00 20 */	blr 
.endfn func_802B7650

.fn func_802B76D4, global
/* 802B76D4 00280C94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B76D8 00280C98  7C 08 02 A6 */	mflr r0
/* 802B76DC 00280C9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B76E0 00280CA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B76E4 00280CA4  7C 7F 1B 78 */	mr r31, r3
/* 802B76E8 00280CA8  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B76EC 00280CAC  28 00 00 05 */	cmplwi r0, 5
/* 802B76F0 00280CB0  40 82 00 58 */	bne .L_802B7748
/* 802B76F4 00280CB4  88 83 00 25 */	lbz r4, 0x25(r3)
/* 802B76F8 00280CB8  38 04 00 01 */	addi r0, r4, 1
/* 802B76FC 00280CBC  98 03 00 25 */	stb r0, 0x25(r3)
/* 802B7700 00280CC0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802B7704 00280CC4  7C 00 07 74 */	extsb r0, r0
/* 802B7708 00280CC8  2C 00 00 03 */	cmpwi r0, 3
/* 802B770C 00280CCC  41 80 00 0C */	blt .L_802B7718
/* 802B7710 00280CD0  38 00 00 00 */	li r0, 0
/* 802B7714 00280CD4  98 03 00 25 */	stb r0, 0x25(r3)
.L_802B7718:
/* 802B7718 00280CD8  88 BF 00 25 */	lbz r5, 0x25(r31)
/* 802B771C 00280CDC  38 61 00 08 */	addi r3, r1, 8
/* 802B7720 00280CE0  38 9F 00 48 */	addi r4, r31, 0x48
/* 802B7724 00280CE4  4B FF F5 99 */	bl func_802B6CBC
/* 802B7728 00280CE8  81 9F 00 70 */	lwz r12, 0x70(r31)
/* 802B772C 00280CEC  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B7730 00280CF0  38 81 00 08 */	addi r4, r1, 8
/* 802B7734 00280CF4  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B7738 00280CF8  7D 89 03 A6 */	mtctr r12
/* 802B773C 00280CFC  4E 80 04 21 */	bctrl 
/* 802B7740 00280D00  38 60 00 01 */	li r3, 1
/* 802B7744 00280D04  4B E8 09 35 */	bl func_80138078
.L_802B7748:
/* 802B7748 00280D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B774C 00280D0C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B7750 00280D10  7C 08 03 A6 */	mtlr r0
/* 802B7754 00280D14  38 21 00 20 */	addi r1, r1, 0x20
/* 802B7758 00280D18  4E 80 00 20 */	blr 
.endfn func_802B76D4

.fn func_802B775C, global
/* 802B775C 00280D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7760 00280D20  7C 08 02 A6 */	mflr r0
/* 802B7764 00280D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7768 00280D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B776C 00280D2C  7C 7F 1B 78 */	mr r31, r3
/* 802B7770 00280D30  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B7774 00280D34  28 00 00 05 */	cmplwi r0, 5
/* 802B7778 00280D38  41 82 00 0C */	beq .L_802B7784
/* 802B777C 00280D3C  38 60 00 00 */	li r3, 0
/* 802B7780 00280D40  48 00 00 6C */	b .L_802B77EC
.L_802B7784:
/* 802B7784 00280D44  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802B7788 00280D48  88 9F 00 25 */	lbz r4, 0x25(r31)
/* 802B778C 00280D4C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B7790 00280D50  7C 84 07 74 */	extsb r4, r4
/* 802B7794 00280D54  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802B7798 00280D58  7D 89 03 A6 */	mtctr r12
/* 802B779C 00280D5C  4E 80 04 21 */	bctrl 
/* 802B77A0 00280D60  88 1F 00 25 */	lbz r0, 0x25(r31)
/* 802B77A4 00280D64  38 60 00 00 */	li r3, 0
/* 802B77A8 00280D68  2C 00 00 01 */	cmpwi r0, 1
/* 802B77AC 00280D6C  40 82 00 14 */	bne .L_802B77C0
/* 802B77B0 00280D70  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 802B77B4 00280D74  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 802B77B8 00280D78  41 82 00 08 */	beq .L_802B77C0
/* 802B77BC 00280D7C  38 60 00 01 */	li r3, 1
.L_802B77C0:
/* 802B77C0 00280D80  2C 03 00 00 */	cmpwi r3, 0
/* 802B77C4 00280D84  41 82 00 10 */	beq .L_802B77D4
/* 802B77C8 00280D88  38 60 00 05 */	li r3, 5
/* 802B77CC 00280D8C  4B E8 08 AD */	bl func_80138078
/* 802B77D0 00280D90  48 00 00 0C */	b .L_802B77DC
.L_802B77D4:
/* 802B77D4 00280D94  38 60 00 04 */	li r3, 4
/* 802B77D8 00280D98  4B E8 08 A1 */	bl func_80138078
.L_802B77DC:
/* 802B77DC 00280D9C  88 1F 00 25 */	lbz r0, 0x25(r31)
/* 802B77E0 00280DA0  7C 00 07 74 */	extsb r0, r0
/* 802B77E4 00280DA4  7C 00 00 34 */	cntlzw r0, r0
/* 802B77E8 00280DA8  54 03 D9 7E */	srwi r3, r0, 5
.L_802B77EC:
/* 802B77EC 00280DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B77F0 00280DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B77F4 00280DB4  7C 08 03 A6 */	mtlr r0
/* 802B77F8 00280DB8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B77FC 00280DBC  4E 80 00 20 */	blr 
.endfn func_802B775C

.fn func_802B7800, global
/* 802B7800 00280DC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B7804 00280DC4  7C 08 02 A6 */	mflr r0
/* 802B7808 00280DC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B780C 00280DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7810 00280DD0  7C 7F 1B 78 */	mr r31, r3
/* 802B7814 00280DD4  38 63 00 2C */	addi r3, r3, 0x2c
/* 802B7818 00280DD8  4B FF ED B1 */	bl func_802B65C8
/* 802B781C 00280DDC  38 7F 00 48 */	addi r3, r31, 0x48
/* 802B7820 00280DE0  4B FF F5 3D */	bl func_802B6D5C
/* 802B7824 00280DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7828 00280DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B782C 00280DEC  7C 08 03 A6 */	mtlr r0
/* 802B7830 00280DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802B7834 00280DF4  4E 80 00 20 */	blr 
.endfn func_802B7800

.fn func_802B7838, global
/* 802B7838 00280DF8  4E 80 00 20 */	blr 
.endfn func_802B7838

.fn func_802B783C, global
/* 802B783C 00280DFC  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 802B7840 00280E00  2C 00 00 00 */	cmpwi r0, 0
/* 802B7844 00280E04  4D 82 00 20 */	beqlr 
/* 802B7848 00280E08  38 00 00 02 */	li r0, 2
/* 802B784C 00280E0C  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B7850 00280E10  4E 80 00 20 */	blr 
.endfn func_802B783C

.fn func_802B7854, global
/* 802B7854 00280E14  4E 80 00 20 */	blr 
.endfn func_802B7854

.fn func_802B7858, global
/* 802B7858 00280E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B785C 00280E1C  7C 08 02 A6 */	mflr r0
/* 802B7860 00280E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7864 00280E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B7868 00280E28  7C 7F 1B 78 */	mr r31, r3
/* 802B786C 00280E2C  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 802B7870 00280E30  2C 00 00 00 */	cmpwi r0, 0
/* 802B7874 00280E34  41 82 00 1C */	beq .L_802B7890
/* 802B7878 00280E38  38 00 00 04 */	li r0, 4
/* 802B787C 00280E3C  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B7880 00280E40  38 63 00 2C */	addi r3, r3, 0x2c
/* 802B7884 00280E44  4B FF EC B1 */	bl func_802B6534
/* 802B7888 00280E48  38 7F 00 48 */	addi r3, r31, 0x48
/* 802B788C 00280E4C  4B FF F3 99 */	bl func_802B6C24
.L_802B7890:
/* 802B7890 00280E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7894 00280E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B7898 00280E58  7C 08 03 A6 */	mtlr r0
/* 802B789C 00280E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B78A0 00280E60  4E 80 00 20 */	blr 
.endfn func_802B7858

.fn func_802B78A4, global
/* 802B78A4 00280E64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B78A8 00280E68  7C 08 02 A6 */	mflr r0
/* 802B78AC 00280E6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B78B0 00280E70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B78B4 00280E74  7C 7F 1B 78 */	mr r31, r3
/* 802B78B8 00280E78  88 03 00 45 */	lbz r0, 0x45(r3)
/* 802B78BC 00280E7C  2C 00 00 00 */	cmpwi r0, 0
/* 802B78C0 00280E80  41 82 00 4C */	beq .L_802B790C
/* 802B78C4 00280E84  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 802B78C8 00280E88  2C 00 00 00 */	cmpwi r0, 0
/* 802B78CC 00280E8C  41 82 00 40 */	beq .L_802B790C
/* 802B78D0 00280E90  38 00 00 05 */	li r0, 5
/* 802B78D4 00280E94  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B78D8 00280E98  38 80 00 01 */	li r4, 1
/* 802B78DC 00280E9C  38 63 00 70 */	addi r3, r3, 0x70
/* 802B78E0 00280EA0  4B F1 A8 8D */	bl func_801D216C
/* 802B78E4 00280EA4  88 BF 00 25 */	lbz r5, 0x25(r31)
/* 802B78E8 00280EA8  38 61 00 08 */	addi r3, r1, 8
/* 802B78EC 00280EAC  38 9F 00 48 */	addi r4, r31, 0x48
/* 802B78F0 00280EB0  4B FF F3 CD */	bl func_802B6CBC
/* 802B78F4 00280EB4  81 9F 00 70 */	lwz r12, 0x70(r31)
/* 802B78F8 00280EB8  38 7F 00 70 */	addi r3, r31, 0x70
/* 802B78FC 00280EBC  38 81 00 08 */	addi r4, r1, 8
/* 802B7900 00280EC0  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802B7904 00280EC4  7D 89 03 A6 */	mtctr r12
/* 802B7908 00280EC8  4E 80 04 21 */	bctrl 
.L_802B790C:
/* 802B790C 00280ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B7910 00280ED0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B7914 00280ED4  7C 08 03 A6 */	mtlr r0
/* 802B7918 00280ED8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B791C 00280EDC  4E 80 00 20 */	blr 
.endfn func_802B78A4

.fn func_802B7920, global
/* 802B7920 00280EE0  4E 80 00 20 */	blr 
.endfn func_802B7920

.fn func_802B7924, global
/* 802B7924 00280EE4  88 03 00 45 */	lbz r0, 0x45(r3)
/* 802B7928 00280EE8  2C 00 00 00 */	cmpwi r0, 0
/* 802B792C 00280EEC  4D 82 00 20 */	beqlr 
/* 802B7930 00280EF0  88 03 00 6D */	lbz r0, 0x6d(r3)
/* 802B7934 00280EF4  2C 00 00 00 */	cmpwi r0, 0
/* 802B7938 00280EF8  4D 82 00 20 */	beqlr 
/* 802B793C 00280EFC  38 00 00 00 */	li r0, 0
/* 802B7940 00280F00  98 03 00 24 */	stb r0, 0x24(r3)
/* 802B7944 00280F04  4E 80 00 20 */	blr
.endfn func_802B7924

.fn func_802B7948, global
/* 802B7948 00280F08  80 6D B3 98 */	lwz r3, lbl_80667518@sda21(r13)
/* 802B794C 00280F0C  2C 03 00 00 */	cmpwi r3, 0
/* 802B7950 00280F10  4D 82 00 20 */	beqlr 
/* 802B7954 00280F14  98 A3 00 25 */	stb r5, 0x25(r3)
/* 802B7958 00280F18  4E 80 00 20 */	blr 
.endfn func_802B7948

.fn func_802B795C, global
/* 802B795C 00280F1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B7960 00280F20  7C 08 02 A6 */	mflr r0
/* 802B7964 00280F24  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B7968 00280F28  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 802B796C 00280F2C  7C 7C 1B 78 */	mr r28, r3
/* 802B7970 00280F30  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802B7974 00280F34  80 04 00 04 */	lwz r0, 4(r4)
/* 802B7978 00280F38  7C 05 00 40 */	cmplw r5, r0
/* 802B797C 00280F3C  40 82 00 FC */	bne .L_802B7A78
/* 802B7980 00280F40  48 17 CA 21 */	bl func_804343A0
/* 802B7984 00280F44  3F C0 80 51 */	lis r30, CTitleMenu_strpool@ha
/* 802B7988 00280F48  7C 64 1B 78 */	mr r4, r3
/* 802B798C 00280F4C  3B DE CA 50 */	addi r30, r30, CTitleMenu_strpool@l
/* 802B7990 00280F50  38 7C 00 04 */	addi r3, r28, 4
/* 802B7994 00280F54  38 DE 01 43 */	addi r6, r30, 0x143
/* 802B7998 00280F58  3C A0 00 01 */	lis r5, 1
/* 802B799C 00280F5C  38 E0 00 01 */	li r7, 1
/* 802B79A0 00280F60  48 1A 7C E1 */	bl func_8045F680
/* 802B79A4 00280F64  38 61 00 08 */	addi r3, r1, 8
/* 802B79A8 00280F68  38 9C 00 04 */	addi r4, r28, 4
/* 802B79AC 00280F6C  48 1A 7E AD */	bl func_8045F858
/* 802B79B0 00280F70  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 802B79B4 00280F74  3B E0 00 00 */	li r31, 0
/* 802B79B8 00280F78  38 60 00 00 */	li r3, 0
/* 802B79BC 00280F7C  83 A4 00 04 */	lwz r29, 4(r4)
/* 802B79C0 00280F80  93 E4 00 04 */	stw r31, 4(r4)
/* 802B79C4 00280F84  48 17 D0 89 */	bl func_80434A4C
/* 802B79C8 00280F88  48 1A 77 ED */	bl CLibLayout_getArcResourceAccessorInstance
/* 802B79CC 00280F8C  90 7C 00 18 */	stw r3, 0x18(r28)
/* 802B79D0 00280F90  7F A4 EB 78 */	mr r4, r29
/* 802B79D4 00280F94  38 BE 01 4A */	addi r5, r30, 0x14a
/* 802B79D8 00280F98  48 15 25 31 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 802B79DC 00280F9C  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 802B79E0 00280FA0  38 7C 00 2C */	addi r3, r28, 0x2c
/* 802B79E4 00280FA4  4B FF E9 C1 */	bl func_802B63A4
/* 802B79E8 00280FA8  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 802B79EC 00280FAC  38 7C 00 48 */	addi r3, r28, 0x48
/* 802B79F0 00280FB0  4B FF EF 81 */	bl func_802B6970
/* 802B79F4 00280FB4  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 802B79F8 00280FB8  38 61 00 10 */	addi r3, r1, 0x10
/* 802B79FC 00280FBC  4B F1 B0 01 */	bl __ct__CCur18
/* 802B7A00 00280FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B7A04 00280FC4  38 61 00 10 */	addi r3, r1, 0x10
/* 802B7A08 00280FC8  90 1C 00 74 */	stw r0, 0x74(r28)
/* 802B7A0C 00280FCC  38 80 FF FF */	li r4, -1
/* 802B7A10 00280FD0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802B7A14 00280FD4  90 1C 00 78 */	stw r0, 0x78(r28)
/* 802B7A18 00280FD8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802B7A1C 00280FDC  90 1C 00 7C */	stw r0, 0x7c(r28)
/* 802B7A20 00280FE0  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802B7A24 00280FE4  90 1C 00 80 */	stw r0, 0x80(r28)
/* 802B7A28 00280FE8  88 01 00 24 */	lbz r0, 0x24(r1)
/* 802B7A2C 00280FEC  98 1C 00 84 */	stb r0, 0x84(r28)
/* 802B7A30 00280FF0  88 01 00 25 */	lbz r0, 0x25(r1)
/* 802B7A34 00280FF4  98 1C 00 85 */	stb r0, 0x85(r28)
/* 802B7A38 00280FF8  4B F1 B0 01 */	bl __dt__801D2A38
/* 802B7A3C 00280FFC  81 9C 00 70 */	lwz r12, 0x70(r28)
/* 802B7A40 00281000  38 7C 00 70 */	addi r3, r28, 0x70
/* 802B7A44 00281004  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B7A48 00281008  7D 89 03 A6 */	mtctr r12
/* 802B7A4C 0028100C  4E 80 04 21 */	bctrl 
/* 802B7A50 00281010  38 00 00 01 */	li r0, 1
/* 802B7A54 00281014  98 1C 00 1C */	stb r0, 0x1c(r28)
/* 802B7A58 00281018  38 7C 00 04 */	addi r3, r28, 4
/* 802B7A5C 0028101C  93 FC 00 14 */	stw r31, 0x14(r28)
/* 802B7A60 00281020  48 1A 7D B1 */	bl func_8045F810
/* 802B7A64 00281024  38 61 00 08 */	addi r3, r1, 8
/* 802B7A68 00281028  38 80 FF FF */	li r4, -1
/* 802B7A6C 0028102C  48 1A 7E 5D */	bl __dt__8045F8C8
/* 802B7A70 00281030  38 60 00 01 */	li r3, 1
/* 802B7A74 00281034  48 00 00 08 */	b .L_802B7A7C
.L_802B7A78:
/* 802B7A78 00281038  38 60 00 00 */	li r3, 0
.L_802B7A7C:
/* 802B7A7C 0028103C  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 802B7A80 00281040  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B7A84 00281044  7C 08 03 A6 */	mtlr r0
/* 802B7A88 00281048  38 21 00 40 */	addi r1, r1, 0x40
/* 802B7A8C 0028104C  4E 80 00 20 */	blr 
.endfn func_802B795C

.fn func_802B7A90, global
/* 802B7A90 00281050  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B7A94 00281054  7C 08 02 A6 */	mflr r0
/* 802B7A98 00281058  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B7A9C 0028105C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B7AA0 00281060  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B7AA4 00281064  7C 7E 1B 78 */	mr r30, r3
/* 802B7AA8 00281068  38 60 00 00 */	li r3, 0
/* 802B7AAC 0028106C  4B DC B2 A9 */	bl func_80082D54
/* 802B7AB0 00281070  4B E0 81 B9 */	bl func_800BFC68
/* 802B7AB4 00281074  2C 03 00 00 */	cmpwi r3, 0
/* 802B7AB8 00281078  7C 7F 1B 78 */	mr r31, r3
/* 802B7ABC 0028107C  41 82 00 FC */	beq .L_802B7BB8
/* 802B7AC0 00281080  88 1E 00 0C */	lbz r0, 0xc(r30)
/* 802B7AC4 00281084  2C 00 00 00 */	cmpwi r0, 0
/* 802B7AC8 00281088  41 82 00 40 */	beq .L_802B7B08
/* 802B7ACC 0028108C  80 63 00 04 */	lwz r3, 4(r3)
/* 802B7AD0 00281090  81 83 00 00 */	lwz r12, 0(r3)
/* 802B7AD4 00281094  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B7AD8 00281098  7D 89 03 A6 */	mtctr r12
/* 802B7ADC 0028109C  4E 80 04 21 */	bctrl 
/* 802B7AE0 002810A0  80 03 00 00 */	lwz r0, 0(r3)
/* 802B7AE4 002810A4  7F E3 FB 78 */	mr r3, r31
/* 802B7AE8 002810A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B7AEC 002810AC  38 81 00 14 */	addi r4, r1, 0x14
/* 802B7AF0 002810B0  38 A0 00 07 */	li r5, 7
/* 802B7AF4 002810B4  4B EB D1 A5 */	bl func_80174C98
/* 802B7AF8 002810B8  2C 03 00 00 */	cmpwi r3, 0
/* 802B7AFC 002810BC  40 82 00 0C */	bne .L_802B7B08
/* 802B7B00 002810C0  38 60 00 01 */	li r3, 1
/* 802B7B04 002810C4  48 00 00 B8 */	b .L_802B7BBC
.L_802B7B08:
/* 802B7B08 002810C8  88 1E 00 0D */	lbz r0, 0xd(r30)
/* 802B7B0C 002810CC  2C 00 00 00 */	cmpwi r0, 0
/* 802B7B10 002810D0  41 82 00 40 */	beq .L_802B7B50
/* 802B7B14 002810D4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B7B18 002810D8  81 83 00 00 */	lwz r12, 0(r3)
/* 802B7B1C 002810DC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B7B20 002810E0  7D 89 03 A6 */	mtctr r12
/* 802B7B24 002810E4  4E 80 04 21 */	bctrl 
/* 802B7B28 002810E8  80 03 00 00 */	lwz r0, 0(r3)
/* 802B7B2C 002810EC  7F E3 FB 78 */	mr r3, r31
/* 802B7B30 002810F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802B7B34 002810F4  38 81 00 10 */	addi r4, r1, 0x10
/* 802B7B38 002810F8  3C A0 08 00 */	lis r5, 0x800
/* 802B7B3C 002810FC  4B EB D1 5D */	bl func_80174C98
/* 802B7B40 00281100  2C 03 00 00 */	cmpwi r3, 0
/* 802B7B44 00281104  40 82 00 0C */	bne .L_802B7B50
/* 802B7B48 00281108  38 60 00 01 */	li r3, 1
/* 802B7B4C 0028110C  48 00 00 70 */	b .L_802B7BBC
.L_802B7B50:
/* 802B7B50 00281110  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B7B54 00281114  81 83 00 00 */	lwz r12, 0(r3)
/* 802B7B58 00281118  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B7B5C 0028111C  7D 89 03 A6 */	mtctr r12
/* 802B7B60 00281120  4E 80 04 21 */	bctrl 
/* 802B7B64 00281124  80 03 00 00 */	lwz r0, 0(r3)
/* 802B7B68 00281128  7F E3 FB 78 */	mr r3, r31
/* 802B7B6C 0028112C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802B7B70 00281130  38 81 00 0C */	addi r4, r1, 0xc
/* 802B7B74 00281134  38 A0 00 07 */	li r5, 7
/* 802B7B78 00281138  4B EB D1 21 */	bl func_80174C98
/* 802B7B7C 0028113C  98 7E 00 0C */	stb r3, 0xc(r30)
/* 802B7B80 00281140  80 7F 00 04 */	lwz r3, 4(r31)
/* 802B7B84 00281144  81 83 00 00 */	lwz r12, 0(r3)
/* 802B7B88 00281148  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B7B8C 0028114C  7D 89 03 A6 */	mtctr r12
/* 802B7B90 00281150  4E 80 04 21 */	bctrl 
/* 802B7B94 00281154  80 03 00 00 */	lwz r0, 0(r3)
/* 802B7B98 00281158  7F E3 FB 78 */	mr r3, r31
/* 802B7B9C 0028115C  90 01 00 08 */	stw r0, 8(r1)
/* 802B7BA0 00281160  38 81 00 08 */	addi r4, r1, 8
/* 802B7BA4 00281164  3C A0 08 00 */	lis r5, 0x800
/* 802B7BA8 00281168  4B EB D0 F1 */	bl func_80174C98
/* 802B7BAC 0028116C  98 7E 00 0D */	stb r3, 0xd(r30)
/* 802B7BB0 00281170  38 60 00 00 */	li r3, 0
/* 802B7BB4 00281174  48 00 00 08 */	b .L_802B7BBC
.L_802B7BB8:
/* 802B7BB8 00281178  38 60 00 00 */	li r3, 0
.L_802B7BBC:
/* 802B7BBC 0028117C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B7BC0 00281180  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B7BC4 00281184  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B7BC8 00281188  7C 08 03 A6 */	mtlr r0
/* 802B7BCC 0028118C  38 21 00 20 */	addi r1, r1, 0x20
/* 802B7BD0 00281190  4E 80 00 20 */	blr 
.endfn func_802B7A90

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0



.global CTitleMenu_typestr
CTitleMenu_typestr:
	.asciz "CTitleMenu"
	.balign 4

.global CTitleLogo_typestr
CTitleLogo_typestr:
	.asciz "CTitleLogo"
	.balign 4


.global CTitleMenu_strpool
CTitleMenu_strpool:
	.asciz "mf99_title00.brlyt"
	.asciz "mf99_title00_in.brlan"
	.asciz "mf99_title00_roop.brlan"
	.asciz "mf99_title00_out.brlan"
	.asciz "mf99_title01.brlyt"
	.asciz "mf99_title01_anykey_in.brlan"
	.asciz "mf99_title01_anykey_roop.brlan"
	.asciz "mf99_title01_anykey_on.brlan"
	.asciz "mf99_title01_in.brlan"
	.asciz "mf99_title01_roop.brlan"
	.asciz "mf99_title01_out.brlan"
	.asciz "pic_menu01_00"
	.asciz "nul_menu%02d"
	.asciz "nul_proportion"
	.asciz "/menu/Title.arc"
	.asciz "CTitle"
	.asciz "arc"
	.2byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global lbl_8053E908
lbl_8053E908:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6660
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6664
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B66B8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B66C4


.global lbl_8053E938
lbl_8053E938:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6DF4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6DF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6E4C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6E58
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6EA4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6EF8
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B6F04


.global lbl_8053E98C
lbl_8053E98C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B7838
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B783C
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B7854
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B7858
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B78A4
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B7920
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802B7924


.global __vt__CTitle
__vt__CTitle:
	.4byte __RTTI__CTitle
	.4byte 0
	.4byte __dt__CTitle
	.4byte IWorkEvent_80039E28
	.4byte func_802B795C
	.4byte IWorkEvent_80039E18
	.4byte IWorkEvent_80039E10
	.4byte IWorkEvent_80039E0C
	.4byte IWorkEvent_80039E04
	.4byte IWorkEvent_80039DFC
	.4byte IWorkEvent_80039DF4
	.4byte IWorkEvent_80039DEC
	.4byte IWorkEvent_80039DE4
	.4byte IWorkEvent_80039DDC
	.4byte IWorkEvent_80039DD4
	.4byte IWorkEvent_80039DCC
	.4byte IWorkEvent_80039DC4
	.4byte IWorkEvent_80039DBC
	.4byte IWorkEvent_80039DB4
	.4byte IWorkEvent_80039DAC
	.4byte IWorkEvent_80039DA4
	.4byte IWorkEvent_80039D9C
	.4byte IWorkEvent_80039D94
	.4byte IWorkEvent_80039D8C
	.4byte IWorkEvent_80039D84
	.4byte IWorkEvent_80039D7C
	.4byte IWorkEvent_80039D74
	.4byte IWorkEvent_80039D6C
	.4byte IWorkEvent_80039D64
	.4byte IWorkEvent_80039D5C
	.4byte IWorkEvent_80039D54
	.4byte IWorkEvent_80039D4C
	.4byte IWorkEvent_80039D44
	.4byte IWorkEvent_80039D40

.global CTitle_hierarchy
CTitle_hierarchy:
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte 0


.global __vt__CTitleMenu
__vt__CTitleMenu:
	.4byte __RTTI__CTitleMenu
	.4byte 0
	.4byte __dt__CTitleMenu


.global __vt__CTitleLogo
__vt__CTitleLogo:
	.4byte __RTTI__CTitleLogo
	.4byte 0
	.4byte __dt__CTitleLogo
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CTitle
__RTTI__CTitle:
	.4byte CTitle_typestr
	.4byte CTitle_hierarchy

.global __RTTI__CTitleMenu
__RTTI__CTitleMenu:
	.4byte CTitleMenu_typestr
	.4byte 0

.global __RTTI__CTitleLogo
__RTTI__CTitleLogo:
	.4byte CTitleLogo_typestr
	.4byte 0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_80667518
lbl_80667518:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BC54", local
.hidden "@etb_8001BC54"
	.4byte 0x08080000
	.4byte 0x00000028
	.4byte 0x0000003C
	.4byte 0x00000068
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0780001F
	.4byte 0x00000048
	.4byte __dt__CTitleMenu
	.4byte 0x0780001F
	.4byte 0x0000002C
	.4byte __dt__CTitleLogo
	.4byte 0x0780001F
	.4byte 0x00000004
	.4byte __dt__8045F580
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_8001BC54"

.obj "@etb_8001BC9C", local
.hidden "@etb_8001BC9C"
	.4byte 0x10080000
	.4byte 0x00000038
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000070
	.4byte __dt__801D2A38
	.4byte 0x0780001E
	.4byte 0x00000048
	.4byte __dt__CTitleMenu
	.4byte 0x8780001E
	.4byte 0x0000002C
	.4byte __dt__CTitleLogo
.endobj "@etb_8001BC9C"

.obj "@etb_8001BCD0", local
.hidden "@etb_8001BCD0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BCD0"

.obj "@etb_8001BCD8", local
.hidden "@etb_8001BCD8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BCD8"

.obj "@etb_8001BCE0", local
.hidden "@etb_8001BCE0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BCE0"

.obj "@etb_8001BCE8", local
.hidden "@etb_8001BCE8"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BCE8"

.obj "@etb_8001BCF0", local
.hidden "@etb_8001BCF0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BCF0"

.obj "@etb_8001BCF8", local
.hidden "@etb_8001BCF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BCF8"

.obj "@etb_8001BD00", local
.hidden "@etb_8001BD00"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD00"

.obj "@etb_8001BD08", local
.hidden "@etb_8001BD08"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD08"

.obj "@etb_8001BD10", local
.hidden "@etb_8001BD10"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD10"

.obj "@etb_8001BD18", local
.hidden "@etb_8001BD18"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD18"

.obj "@etb_8001BD20", local
.hidden "@etb_8001BD20"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BD20"

.obj "@etb_8001BD28", local
.hidden "@etb_8001BD28"
	.4byte 0x20080000
	.4byte 0x0000006C
	.4byte 0x00270010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_8001BD28"

.obj "@etb_8001BD40", local
.hidden "@etb_8001BD40"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BD40"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033800", local
.hidden "@eti_80033800"
	.4byte func_802B72F4
	.4byte 0x00000080
	.4byte "@etb_8001BC54"
.endobj "@eti_80033800"

.obj "@eti_8003380C", local
.hidden "@eti_8003380C"
	.4byte __dt__CTitle
	.4byte 0x00000060
	.4byte "@etb_8001BC9C"
.endobj "@eti_8003380C"

.obj "@eti_80033818", local
.hidden "@eti_80033818"
	.4byte func_802B73D4
	.4byte 0x00000078
	.4byte "@etb_8001BCD0"
.endobj "@eti_80033818"

.obj "@eti_80033824", local
.hidden "@eti_80033824"
	.4byte func_802B744C
	.4byte 0x0000005C
	.4byte "@etb_8001BCD8"
.endobj "@eti_80033824"

.obj "@eti_80033830", local
.hidden "@eti_80033830"
	.4byte func_802B74A8
	.4byte 0x0000004C
	.4byte "@etb_8001BCE0"
.endobj "@eti_80033830"

.obj "@eti_8003383C", local
.hidden "@eti_8003383C"
	.4byte func_802B74F4
	.4byte 0x00000070
	.4byte "@etb_8001BCE8"
.endobj "@eti_8003383C"

.obj "@eti_80033848", local
.hidden "@eti_80033848"
	.4byte func_802B75D8
	.4byte 0x00000058
	.4byte "@etb_8001BCF0"
.endobj "@eti_80033848"

.obj "@eti_80033854", local
.hidden "@eti_80033854"
	.4byte func_802B7650
	.4byte 0x00000084
	.4byte "@etb_8001BCF8"
.endobj "@eti_80033854"

.obj "@eti_80033860", local
.hidden "@eti_80033860"
	.4byte func_802B76D4
	.4byte 0x00000088
	.4byte "@etb_8001BD00"
.endobj "@eti_80033860"

.obj "@eti_8003386C", local
.hidden "@eti_8003386C"
	.4byte func_802B775C
	.4byte 0x000000A4
	.4byte "@etb_8001BD08"
.endobj "@eti_8003386C"

.obj "@eti_80033878", local
.hidden "@eti_80033878"
	.4byte func_802B7800
	.4byte 0x00000038
	.4byte "@etb_8001BD10"
.endobj "@eti_80033878"

.obj "@eti_80033884", local
.hidden "@eti_80033884"
	.4byte func_802B7858
	.4byte 0x0000004C
	.4byte "@etb_8001BD18"
.endobj "@eti_80033884"

.obj "@eti_80033890", local
.hidden "@eti_80033890"
	.4byte func_802B78A4
	.4byte 0x0000007C
	.4byte "@etb_8001BD20"
.endobj "@eti_80033890"

.obj "@eti_8003389C", local
.hidden "@eti_8003389C"
	.4byte func_802B795C
	.4byte 0x00000134
	.4byte "@etb_8001BD28"
.endobj "@eti_8003389C"

.obj "@eti_800338A8", local
.hidden "@eti_800338A8"
	.4byte func_802B7A90
	.4byte 0x00000144
	.4byte "@etb_8001BD40"
.endobj "@eti_800338A8"
