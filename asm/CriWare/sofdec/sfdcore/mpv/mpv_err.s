.include "macros.inc"
.file "CriWare/sofdec/sfdcore/mpv/mpv_err.o"

# 0x803A6154 - 0x803A62C4
.text
.balign 4

.fn MPVERR_Init, global
/* 803A6154 0036F714  3C 80 80 60 */	lis r4, lbl_80605F38@ha
/* 803A6158 0036F718  38 00 00 00 */	li r0, 0x0
/* 803A615C 0036F71C  38 64 5F 38 */	addi r3, r4, lbl_80605F38@l
/* 803A6160 0036F720  90 04 5F 38 */	stw r0, lbl_80605F38@l(r4)
/* 803A6164 0036F724  90 03 00 04 */	stw r0, 0x4(r3)
/* 803A6168 0036F728  90 03 00 08 */	stw r0, 0x8(r3)
/* 803A616C 0036F72C  90 03 00 0C */	stw r0, 0xc(r3)
/* 803A6170 0036F730  90 03 00 10 */	stw r0, 0x10(r3)
/* 803A6174 0036F734  4E 80 00 20 */	blr
.endfn MPVERR_Init

.fn MPVERR_InitErrInf, global
/* 803A6178 0036F738  38 00 00 00 */	li r0, 0x0
/* 803A617C 0036F73C  90 03 00 00 */	stw r0, 0x0(r3)
/* 803A6180 0036F740  90 03 00 04 */	stw r0, 0x4(r3)
/* 803A6184 0036F744  90 03 00 08 */	stw r0, 0x8(r3)
/* 803A6188 0036F748  90 03 00 0C */	stw r0, 0xc(r3)
/* 803A618C 0036F74C  90 03 00 10 */	stw r0, 0x10(r3)
/* 803A6190 0036F750  4E 80 00 20 */	blr
.endfn MPVERR_InitErrInf

.fn MPV_SetErrFunc, global
/* 803A6194 0036F754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6198 0036F758  7C 08 02 A6 */	mflr r0
/* 803A619C 0036F75C  2C 03 00 00 */	cmpwi r3, 0x0
/* 803A61A0 0036F760  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A61A4 0036F764  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A61A8 0036F768  7C 7F 1B 78 */	mr r31, r3
/* 803A61AC 0036F76C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A61B0 0036F770  7C BE 2B 78 */	mr r30, r5
/* 803A61B4 0036F774  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A61B8 0036F778  7C 9D 23 78 */	mr r29, r4
/* 803A61BC 0036F77C  40 82 00 10 */	bne .L_803A61CC
/* 803A61C0 0036F780  3C 80 80 60 */	lis r4, lbl_80605F38@ha
/* 803A61C4 0036F784  38 84 5F 38 */	addi r4, r4, lbl_80605F38@l
/* 803A61C8 0036F788  48 00 00 4C */	b .L_803A6214
.L_803A61CC:
/* 803A61CC 0036F78C  48 00 28 0D */	bl MPVLIB_CheckHn
/* 803A61D0 0036F790  2C 03 00 00 */	cmpwi r3, 0x0
/* 803A61D4 0036F794  41 82 00 3C */	beq .L_803A6210
/* 803A61D8 0036F798  3C 60 80 60 */	lis r3, lbl_80605F38@ha
/* 803A61DC 0036F79C  3C 80 FF 03 */	lis r4, 0xff03
/* 803A61E0 0036F7A0  81 83 5F 38 */	lwz r12, lbl_80605F38@l(r3)
/* 803A61E4 0036F7A4  38 84 02 03 */	addi r4, r4, 0x203
/* 803A61E8 0036F7A8  38 63 5F 38 */	addi r3, r3, lbl_80605F38@l
/* 803A61EC 0036F7AC  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803A61F0 0036F7B0  90 83 00 08 */	stw r4, 0x8(r3)
/* 803A61F4 0036F7B4  41 82 00 10 */	beq .L_803A6204
/* 803A61F8 0036F7B8  80 63 00 04 */	lwz r3, 0x4(r3)
/* 803A61FC 0036F7BC  7D 89 03 A6 */	mtctr r12
/* 803A6200 0036F7C0  4E 80 04 21 */	bctrl
.L_803A6204:
/* 803A6204 0036F7C4  3C 60 FF 03 */	lis r3, 0xff03
/* 803A6208 0036F7C8  38 63 02 03 */	addi r3, r3, 0x203
/* 803A620C 0036F7CC  48 00 00 14 */	b .L_803A6220
.L_803A6210:
/* 803A6210 0036F7D0  38 9F 0B DC */	addi r4, r31, 0xbdc
.L_803A6214:
/* 803A6214 0036F7D4  93 A4 00 00 */	stw r29, 0x0(r4)
/* 803A6218 0036F7D8  38 60 00 00 */	li r3, 0x0
/* 803A621C 0036F7DC  93 C4 00 04 */	stw r30, 0x4(r4)
.L_803A6220:
/* 803A6220 0036F7E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6224 0036F7E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A6228 0036F7E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A622C 0036F7EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A6230 0036F7F0  7C 08 03 A6 */	mtlr r0
/* 803A6234 0036F7F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6238 0036F7F8  4E 80 00 20 */	blr
.endfn MPV_SetErrFunc

.fn MPVERR_SetCode, global
/* 803A623C 0036F7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A6240 0036F800  7C 08 02 A6 */	mflr r0
/* 803A6244 0036F804  2C 03 00 00 */	cmpwi r3, 0x0
/* 803A6248 0036F808  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A624C 0036F80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A6250 0036F810  7C 9F 23 78 */	mr r31, r4
/* 803A6254 0036F814  40 82 00 34 */	bne .L_803A6288
/* 803A6258 0036F818  3C A0 80 60 */	lis r5, lbl_80605F38@ha
/* 803A625C 0036F81C  2C 04 00 00 */	cmpwi r4, 0x0
/* 803A6260 0036F820  38 65 5F 38 */	addi r3, r5, lbl_80605F38@l
/* 803A6264 0036F824  90 83 00 08 */	stw r4, 0x8(r3)
/* 803A6268 0036F828  41 82 00 44 */	beq .L_803A62AC
/* 803A626C 0036F82C  81 85 5F 38 */	lwz r12, lbl_80605F38@l(r5)
/* 803A6270 0036F830  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803A6274 0036F834  41 82 00 38 */	beq .L_803A62AC
/* 803A6278 0036F838  80 63 00 04 */	lwz r3, 0x4(r3)
/* 803A627C 0036F83C  7D 89 03 A6 */	mtctr r12
/* 803A6280 0036F840  4E 80 04 21 */	bctrl
/* 803A6284 0036F844  48 00 00 28 */	b .L_803A62AC
.L_803A6288:
/* 803A6288 0036F848  2C 04 00 00 */	cmpwi r4, 0x0
/* 803A628C 0036F84C  90 83 0B E4 */	stw r4, 0xbe4(r3)
/* 803A6290 0036F850  41 82 00 1C */	beq .L_803A62AC
/* 803A6294 0036F854  81 83 0B DC */	lwz r12, 0xbdc(r3)
/* 803A6298 0036F858  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803A629C 0036F85C  41 82 00 10 */	beq .L_803A62AC
/* 803A62A0 0036F860  80 63 0B E0 */	lwz r3, 0xbe0(r3)
/* 803A62A4 0036F864  7D 89 03 A6 */	mtctr r12
/* 803A62A8 0036F868  4E 80 04 21 */	bctrl
.L_803A62AC:
/* 803A62AC 0036F86C  7F E3 FB 78 */	mr r3, r31
/* 803A62B0 0036F870  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A62B4 0036F874  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A62B8 0036F878  7C 08 03 A6 */	mtlr r0
/* 803A62BC 0036F87C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A62C0 0036F880  4E 80 00 20 */	blr
.endfn MPVERR_SetCode

# 0x80605F38 - 0x80605F50
.section .bss, "wa", @nobits
.balign 8
.sym lbl_80605F38, local
	.skip 0x18
