.include "macros.inc"
.file "CriWare/sofdec/mwply/mwsfx_Y84C44.o"

# 0x803A39AC - 0x803A3A48
.text
.balign 4

.fn mwPlyFxCnvFrmY84C44, global
/* 803A39AC 0036CF6C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 803A39B0 0036CF70  7C 08 02 A6 */	mflr r0
/* 803A39B4 0036CF74  90 01 01 24 */	stw r0, 0x124(r1)
/* 803A39B8 0036CF78  93 E1 01 1C */	stw r31, 0x11c(r1)
/* 803A39BC 0036CF7C  93 C1 01 18 */	stw r30, 0x118(r1)
/* 803A39C0 0036CF80  7C DE 33 78 */	mr r30, r6
/* 803A39C4 0036CF84  93 A1 01 14 */	stw r29, 0x114(r1)
/* 803A39C8 0036CF88  7C BD 2B 78 */	mr r29, r5
/* 803A39CC 0036CF8C  38 A1 00 78 */	addi r5, r1, 0x78
/* 803A39D0 0036CF90  93 81 01 10 */	stw r28, 0x110(r1)
/* 803A39D4 0036CF94  7C 9C 23 78 */	mr r28, r4
/* 803A39D8 0036CF98  83 E3 00 B8 */	lwz r31, 0xb8(r3)
/* 803A39DC 0036CF9C  4B FF A5 45 */	bl MWSFD_CnvFrmInfToSfx
/* 803A39E0 0036CFA0  7F E3 FB 78 */	mr r3, r31
/* 803A39E4 0036CFA4  38 80 00 01 */	li r4, 0x1
/* 803A39E8 0036CFA8  48 03 1C 21 */	bl SFX_SetBytePerPixelOutBuf
/* 803A39EC 0036CFAC  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 803A39F0 0036CFB0  7F E3 FB 78 */	mr r3, r31
/* 803A39F4 0036CFB4  7F A5 EB 78 */	mr r5, r29
/* 803A39F8 0036CFB8  7F C6 F3 78 */	mr r6, r30
/* 803A39FC 0036CFBC  90 01 00 08 */	stw r0, 0x8(r1)
/* 803A3A00 0036CFC0  38 81 00 78 */	addi r4, r1, 0x78
/* 803A3A04 0036CFC4  38 E1 00 10 */	addi r7, r1, 0x10
/* 803A3A08 0036CFC8  39 00 00 00 */	li r8, 0x0
/* 803A3A0C 0036CFCC  81 5C 00 0C */	lwz r10, 0xc(r28)
/* 803A3A10 0036CFD0  39 20 00 00 */	li r9, 0x0
/* 803A3A14 0036CFD4  48 03 1D 71 */	bl SFX_Make2PlaneCftDstBuf
/* 803A3A18 0036CFD8  7F E3 FB 78 */	mr r3, r31
/* 803A3A1C 0036CFDC  38 81 00 78 */	addi r4, r1, 0x78
/* 803A3A20 0036CFE0  38 A1 00 10 */	addi r5, r1, 0x10
/* 803A3A24 0036CFE4  48 03 35 ED */	bl SFX_CnvFrmY84C44ByCbFunc
/* 803A3A28 0036CFE8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 803A3A2C 0036CFEC  83 E1 01 1C */	lwz r31, 0x11c(r1)
/* 803A3A30 0036CFF0  83 C1 01 18 */	lwz r30, 0x118(r1)
/* 803A3A34 0036CFF4  83 A1 01 14 */	lwz r29, 0x114(r1)
/* 803A3A38 0036CFF8  83 81 01 10 */	lwz r28, 0x110(r1)
/* 803A3A3C 0036CFFC  7C 08 03 A6 */	mtlr r0
/* 803A3A40 0036D000  38 21 01 20 */	addi r1, r1, 0x120
/* 803A3A44 0036D004  4E 80 00 20 */	blr
.endfn mwPlyFxCnvFrmY84C44
