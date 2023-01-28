.include "macros.inc"
.file "nw4r/lyt/lyt_picture.o"

# 0x80400C60 - 0x804012BC
.text
.balign 4

# nw4r::ut::Color::Color()
.fn __ct__Q34nw4r2ut5ColorFv, global
/* 80400C60 003CA220  38 00 FF FF */	li r0, -0x1
/* 80400C64 003CA224  90 03 00 00 */	stw r0, 0x0(r3)
/* 80400C68 003CA228  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r2ut5ColorFv

# nw4r::lyt::Picture::Picture(unsigned char)
.fn __ct__Q34nw4r3lyt7PictureFUc, global
/* 80400C6C 003CA22C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400C70 003CA230  7C 08 02 A6 */	mflr r0
/* 80400C74 003CA234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400C78 003CA238  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80400C7C 003CA23C  7C 9F 23 78 */	mr r31, r4
/* 80400C80 003CA240  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80400C84 003CA244  7C 7E 1B 78 */	mr r30, r3
/* 80400C88 003CA248  4B FF DC 7D */	bl __ct__Q34nw4r3lyt4PaneFv
/* 80400C8C 003CA24C  3C 60 80 57 */	lis r3, lbl_8056D298@ha
/* 80400C90 003CA250  3C 80 80 40 */	lis r4, __ct__Q34nw4r2ut5ColorFv@ha
/* 80400C94 003CA254  38 63 D2 98 */	addi r3, r3, lbl_8056D298@l
/* 80400C98 003CA258  3C A0 80 12 */	lis r5, fn_801252D0@ha
/* 80400C9C 003CA25C  90 7E 00 00 */	stw r3, 0x0(r30)
/* 80400CA0 003CA260  38 7E 00 D8 */	addi r3, r30, 0xd8
/* 80400CA4 003CA264  38 84 0C 60 */	addi r4, r4, __ct__Q34nw4r2ut5ColorFv@l
/* 80400CA8 003CA268  38 A5 52 D0 */	addi r5, r5, fn_801252D0@l
/* 80400CAC 003CA26C  38 C0 00 04 */	li r6, 0x4
/* 80400CB0 003CA270  38 E0 00 04 */	li r7, 0x4
/* 80400CB4 003CA274  4B EB 8E 4D */	bl __construct_array
/* 80400CB8 003CA278  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 80400CBC 003CA27C  48 00 93 ED */	bl __ct__Q44nw4r3lyt6detail11TexCoordAryFv
/* 80400CC0 003CA280  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 80400CC4 003CA284  38 80 00 01 */	li r4, 0x1
/* 80400CC8 003CA288  48 00 94 45 */	bl Reserve__Q44nw4r3lyt6detail11TexCoordAryFUc
/* 80400CCC 003CA28C  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80400CD0 003CA290  38 80 00 5C */	li r4, 0x5c
/* 80400CD4 003CA294  4B F4 8D BD */	bl MEMAllocFromAllocator
/* 80400CD8 003CA298  2C 03 00 00 */	cmpwi r3, 0x0
/* 80400CDC 003CA29C  41 82 00 10 */	beq .L_80400CEC
/* 80400CE0 003CA2A0  41 82 00 10 */	beq .L_80400CF0
/* 80400CE4 003CA2A4  48 00 4A BD */	bl __ct__Q34nw4r3lyt8MaterialFv
/* 80400CE8 003CA2A8  48 00 00 08 */	b .L_80400CF0
.L_80400CEC:
/* 80400CEC 003CA2AC  38 60 00 00 */	li r3, 0x0
.L_80400CF0:
/* 80400CF0 003CA2B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80400CF4 003CA2B4  90 7E 00 28 */	stw r3, 0x28(r30)
/* 80400CF8 003CA2B8  41 82 00 50 */	beq .L_80400D48
/* 80400CFC 003CA2BC  38 00 00 00 */	li r0, 0x0
/* 80400D00 003CA2C0  38 80 00 01 */	li r4, 0x1
/* 80400D04 003CA2C4  90 01 00 08 */	stw r0, 0x8(r1)
/* 80400D08 003CA2C8  38 A0 00 01 */	li r5, 0x1
/* 80400D0C 003CA2CC  38 C0 00 01 */	li r6, 0x1
/* 80400D10 003CA2D0  38 E0 00 00 */	li r7, 0x0
/* 80400D14 003CA2D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80400D18 003CA2D8  39 00 00 00 */	li r8, 0x0
/* 80400D1C 003CA2DC  39 20 00 00 */	li r9, 0x0
/* 80400D20 003CA2E0  39 40 00 00 */	li r10, 0x0
/* 80400D24 003CA2E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80400D28 003CA2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80400D2C 003CA2EC  48 00 56 09 */	bl ReserveGXMem__Q34nw4r3lyt8MaterialFUcUcUcUcbUcUcbbbb
/* 80400D30 003CA2F0  81 9E 00 00 */	lwz r12, 0x0(r30)
/* 80400D34 003CA2F4  7F C3 F3 78 */	mr r3, r30
/* 80400D38 003CA2F8  7F E4 FB 78 */	mr r4, r31
/* 80400D3C 003CA2FC  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80400D40 003CA300  7D 89 03 A6 */	mtctr r12
/* 80400D44 003CA304  4E 80 04 21 */	bctrl
.L_80400D48:
/* 80400D48 003CA308  7F C3 F3 78 */	mr r3, r30
/* 80400D4C 003CA30C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80400D50 003CA310  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80400D54 003CA314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400D58 003CA318  7C 08 03 A6 */	mtlr r0
/* 80400D5C 003CA31C  38 21 00 20 */	addi r1, r1, 0x20
/* 80400D60 003CA320  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt7PictureFUc

# nw4r::lyt::Picture::Picture(const nw4r::lyt::res::Picture*, const nw4r::lyt::ResBlockSet&)
.fn __ct__Q34nw4r3lyt7PictureFPCQ44nw4r3lyt3res7PictureRCQ34nw4r3lyt11ResBlockSet, global
/* 80400D64 003CA324  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80400D68 003CA328  7C 08 02 A6 */	mflr r0
/* 80400D6C 003CA32C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80400D70 003CA330  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80400D74 003CA334  7C 7F 1B 78 */	mr r31, r3
/* 80400D78 003CA338  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80400D7C 003CA33C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80400D80 003CA340  7C BD 2B 78 */	mr r29, r5
/* 80400D84 003CA344  93 81 00 20 */	stw r28, 0x20(r1)
/* 80400D88 003CA348  7C 9C 23 78 */	mr r28, r4
/* 80400D8C 003CA34C  4B FF DC A5 */	bl __ct__Q34nw4r3lyt4PaneFPCQ44nw4r3lyt3res4Pane
/* 80400D90 003CA350  3C 60 80 57 */	lis r3, lbl_8056D298@ha
/* 80400D94 003CA354  3C 80 80 40 */	lis r4, __ct__Q34nw4r2ut5ColorFv@ha
/* 80400D98 003CA358  38 63 D2 98 */	addi r3, r3, lbl_8056D298@l
/* 80400D9C 003CA35C  3C A0 80 12 */	lis r5, fn_801252D0@ha
/* 80400DA0 003CA360  90 7F 00 00 */	stw r3, 0x0(r31)
/* 80400DA4 003CA364  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 80400DA8 003CA368  38 84 0C 60 */	addi r4, r4, __ct__Q34nw4r2ut5ColorFv@l
/* 80400DAC 003CA36C  38 A5 52 D0 */	addi r5, r5, fn_801252D0@l
/* 80400DB0 003CA370  38 C0 00 04 */	li r6, 0x4
/* 80400DB4 003CA374  38 E0 00 04 */	li r7, 0x4
/* 80400DB8 003CA378  4B EB 8D 49 */	bl __construct_array
/* 80400DBC 003CA37C  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80400DC0 003CA380  48 00 92 E9 */	bl __ct__Q44nw4r3lyt6detail11TexCoordAryFv
/* 80400DC4 003CA384  88 1C 00 5E */	lbz r0, 0x5e(r28)
/* 80400DC8 003CA388  3B C0 00 08 */	li r30, 0x8
/* 80400DCC 003CA38C  28 00 00 08 */	cmplwi r0, 0x8
/* 80400DD0 003CA390  41 81 00 08 */	bgt .L_80400DD8
/* 80400DD4 003CA394  7C 1E 03 78 */	mr r30, r0
.L_80400DD8:
/* 80400DD8 003CA398  57 C4 06 3F */	clrlwi. r4, r30, 24
/* 80400DDC 003CA39C  41 82 00 0C */	beq .L_80400DE8
/* 80400DE0 003CA3A0  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80400DE4 003CA3A4  48 00 93 29 */	bl Reserve__Q44nw4r3lyt6detail11TexCoordAryFUc
.L_80400DE8:
/* 80400DE8 003CA3A8  80 DC 00 4C */	lwz r6, 0x4c(r28)
/* 80400DEC 003CA3AC  57 C5 06 3F */	clrlwi. r5, r30, 24
/* 80400DF0 003CA3B0  80 9C 00 50 */	lwz r4, 0x50(r28)
/* 80400DF4 003CA3B4  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 80400DF8 003CA3B8  80 1C 00 58 */	lwz r0, 0x58(r28)
/* 80400DFC 003CA3BC  90 DF 00 D8 */	stw r6, 0xd8(r31)
/* 80400E00 003CA3C0  90 9F 00 DC */	stw r4, 0xdc(r31)
/* 80400E04 003CA3C4  90 7F 00 E0 */	stw r3, 0xe0(r31)
/* 80400E08 003CA3C8  90 1F 00 E4 */	stw r0, 0xe4(r31)
/* 80400E0C 003CA3CC  41 82 00 1C */	beq .L_80400E28
/* 80400E10 003CA3D0  88 1F 00 E8 */	lbz r0, 0xe8(r31)
/* 80400E14 003CA3D4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80400E18 003CA3D8  41 82 00 10 */	beq .L_80400E28
/* 80400E1C 003CA3DC  38 7F 00 E8 */	addi r3, r31, 0xe8
/* 80400E20 003CA3E0  38 9C 00 60 */	addi r4, r28, 0x60
/* 80400E24 003CA3E4  48 00 94 D1 */	bl Copy__Q44nw4r3lyt6detail11TexCoordAryFPCvUc
.L_80400E28:
/* 80400E28 003CA3E8  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 80400E2C 003CA3EC  38 80 00 5C */	li r4, 0x5c
/* 80400E30 003CA3F0  80 FD 00 08 */	lwz r7, 0x8(r29)
/* 80400E34 003CA3F4  54 00 10 3A */	slwi r0, r0, 2
/* 80400E38 003CA3F8  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 80400E3C 003CA3FC  7C C7 02 14 */	add r6, r7, r0
/* 80400E40 003CA400  80 BD 00 04 */	lwz r5, 0x4(r29)
/* 80400E44 003CA404  80 C6 00 0C */	lwz r6, 0xc(r6)
/* 80400E48 003CA408  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80400E4C 003CA40C  90 61 00 08 */	stw r3, 0x8(r1)
/* 80400E50 003CA410  7F C7 32 14 */	add r30, r7, r6
/* 80400E54 003CA414  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80400E58 003CA418  90 A1 00 0C */	stw r5, 0xc(r1)
/* 80400E5C 003CA41C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 80400E60 003CA420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80400E64 003CA424  4B F4 8C 2D */	bl MEMAllocFromAllocator
/* 80400E68 003CA428  2C 03 00 00 */	cmpwi r3, 0x0
/* 80400E6C 003CA42C  41 82 00 18 */	beq .L_80400E84
/* 80400E70 003CA430  41 82 00 18 */	beq .L_80400E88
/* 80400E74 003CA434  7F C4 F3 78 */	mr r4, r30
/* 80400E78 003CA438  38 A1 00 08 */	addi r5, r1, 0x8
/* 80400E7C 003CA43C  48 00 4A 39 */	bl __ct__Q34nw4r3lyt8MaterialFPCQ44nw4r3lyt3res8MaterialRCQ34nw4r3lyt11ResBlockSet
/* 80400E80 003CA440  48 00 00 08 */	b .L_80400E88
.L_80400E84:
/* 80400E84 003CA444  38 60 00 00 */	li r3, 0x0
.L_80400E88:
/* 80400E88 003CA448  90 7F 00 28 */	stw r3, 0x28(r31)
/* 80400E8C 003CA44C  7F E3 FB 78 */	mr r3, r31
/* 80400E90 003CA450  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80400E94 003CA454  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80400E98 003CA458  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80400E9C 003CA45C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80400EA0 003CA460  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80400EA4 003CA464  7C 08 03 A6 */	mtlr r0
/* 80400EA8 003CA468  38 21 00 30 */	addi r1, r1, 0x30
/* 80400EAC 003CA46C  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt7PictureFPCQ44nw4r3lyt3res7PictureRCQ34nw4r3lyt11ResBlockSet

# nw4r::lyt::Picture::~Picture()
.fn __dt__Q34nw4r3lyt7PictureFv, global
/* 80400EB0 003CA470  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80400EB4 003CA474  7C 08 02 A6 */	mflr r0
/* 80400EB8 003CA478  2C 03 00 00 */	cmpwi r3, 0x0
/* 80400EBC 003CA47C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80400EC0 003CA480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80400EC4 003CA484  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80400EC8 003CA488  7C 9E 23 78 */	mr r30, r4
/* 80400ECC 003CA48C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80400ED0 003CA490  7C 7D 1B 78 */	mr r29, r3
/* 80400ED4 003CA494  41 82 00 94 */	beq .L_80400F68
/* 80400ED8 003CA498  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 80400EDC 003CA49C  3C 80 80 57 */	lis r4, lbl_8056D298@ha
/* 80400EE0 003CA4A0  38 84 D2 98 */	addi r4, r4, lbl_8056D298@l
/* 80400EE4 003CA4A4  2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 80400EE8 003CA4A8  90 83 00 00 */	stw r4, 0x0(r3)
/* 80400EEC 003CA4AC  41 86 00 40 */	beq cr1, .L_80400F2C
/* 80400EF0 003CA4B0  88 1F 00 59 */	lbz r0, 0x59(r31)
/* 80400EF4 003CA4B4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80400EF8 003CA4B8  40 82 00 34 */	bne .L_80400F2C
/* 80400EFC 003CA4BC  41 86 00 28 */	beq cr1, .L_80400F24
/* 80400F00 003CA4C0  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 80400F04 003CA4C4  7F E3 FB 78 */	mr r3, r31
/* 80400F08 003CA4C8  38 80 FF FF */	li r4, -0x1
/* 80400F0C 003CA4CC  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80400F10 003CA4D0  7D 89 03 A6 */	mtctr r12
/* 80400F14 003CA4D4  4E 80 04 21 */	bctrl
/* 80400F18 003CA4D8  80 6D BB D8 */	lwz r3, lbl_80667D58@sda21(r13)
/* 80400F1C 003CA4DC  7F E4 FB 78 */	mr r4, r31
/* 80400F20 003CA4E0  4B F4 8B 81 */	bl MEMFreeToAllocator
.L_80400F24:
/* 80400F24 003CA4E4  38 00 00 00 */	li r0, 0x0
/* 80400F28 003CA4E8  90 1D 00 28 */	stw r0, 0x28(r29)
.L_80400F2C:
/* 80400F2C 003CA4EC  38 7D 00 E8 */	addi r3, r29, 0xe8
/* 80400F30 003CA4F0  48 00 91 8D */	bl Free__Q44nw4r3lyt6detail11TexCoordAryFv
/* 80400F34 003CA4F4  3C 80 80 12 */	lis r4, fn_801252D0@ha
/* 80400F38 003CA4F8  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 80400F3C 003CA4FC  38 84 52 D0 */	addi r4, r4, fn_801252D0@l
/* 80400F40 003CA500  38 A0 00 04 */	li r5, 0x4
/* 80400F44 003CA504  38 C0 00 04 */	li r6, 0x4
/* 80400F48 003CA508  4B EB 8C B1 */	bl __destroy_arr
/* 80400F4C 003CA50C  7F A3 EB 78 */	mr r3, r29
/* 80400F50 003CA510  38 80 00 00 */	li r4, 0x0
/* 80400F54 003CA514  4B FF DC 15 */	bl __dt__Q34nw4r3lyt4PaneFv
/* 80400F58 003CA518  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80400F5C 003CA51C  40 81 00 0C */	ble .L_80400F68
/* 80400F60 003CA520  7F A3 EB 78 */	mr r3, r29
/* 80400F64 003CA524  48 03 3C C9 */	bl __dl__FPv
.L_80400F68:
/* 80400F68 003CA528  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80400F6C 003CA52C  7F A3 EB 78 */	mr r3, r29
/* 80400F70 003CA530  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80400F74 003CA534  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80400F78 003CA538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80400F7C 003CA53C  7C 08 03 A6 */	mtlr r0
/* 80400F80 003CA540  38 21 00 20 */	addi r1, r1, 0x20
/* 80400F84 003CA544  4E 80 00 20 */	blr
.endfn __dt__Q34nw4r3lyt7PictureFv

# nw4r::lyt::Picture::Append(const nw4r::lyt::TexMap&)
.fn Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap, global
/* 80400F88 003CA548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80400F8C 003CA54C  7C 08 02 A6 */	mflr r0
/* 80400F90 003CA550  90 01 00 34 */	stw r0, 0x34(r1)
/* 80400F94 003CA554  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80400F98 003CA558  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80400F9C 003CA55C  7C 7E 1B 78 */	mr r30, r3
/* 80400FA0 003CA560  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80400FA4 003CA564  93 81 00 20 */	stw r28, 0x20(r1)
/* 80400FA8 003CA568  7C 9C 23 78 */	mr r28, r4
/* 80400FAC 003CA56C  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80400FB0 003CA570  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 80400FB4 003CA574  80 65 00 38 */	lwz r3, 0x38(r5)
/* 80400FB8 003CA578  54 1F 27 3E */	srwi r31, r0, 28
/* 80400FBC 003CA57C  54 60 27 3E */	srwi r0, r3, 28
/* 80400FC0 003CA580  7C 1F 00 40 */	cmplw r31, r0
/* 80400FC4 003CA584  40 80 01 58 */	bge .L_8040111C
/* 80400FC8 003CA588  54 60 67 3E */	extrwi r0, r3, 4, 8
/* 80400FCC 003CA58C  7C 1F 00 40 */	cmplw r31, r0
/* 80400FD0 003CA590  41 80 00 08 */	blt .L_80400FD8
/* 80400FD4 003CA594  48 00 01 48 */	b .L_8040111C
.L_80400FD8:
/* 80400FD8 003CA598  38 1F 00 01 */	addi r0, r31, 0x1
/* 80400FDC 003CA59C  7C A3 2B 78 */	mr r3, r5
/* 80400FE0 003CA5A0  54 04 06 3E */	clrlwi r4, r0, 24
/* 80400FE4 003CA5A4  48 00 5D 9D */	bl SetTextureNum__Q34nw4r3lyt8MaterialFUc
/* 80400FE8 003CA5A8  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80400FEC 003CA5AC  48 00 5A BD */	bl GetTexMapAry__Q34nw4r3lyt8MaterialFv
/* 80400FF0 003CA5B0  1C 1F 00 1C */	mulli r0, r31, 0x1c
/* 80400FF4 003CA5B4  80 DC 00 00 */	lwz r6, 0x0(r28)
/* 80400FF8 003CA5B8  80 BC 00 04 */	lwz r5, 0x4(r28)
/* 80400FFC 003CA5BC  A0 9C 00 08 */	lhz r4, 0x8(r28)
/* 80401000 003CA5C0  7C E3 02 14 */	add r7, r3, r0
/* 80401004 003CA5C4  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 80401008 003CA5C8  90 C7 00 00 */	stw r6, 0x0(r7)
/* 8040100C 003CA5CC  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80401010 003CA5D0  90 A7 00 04 */	stw r5, 0x4(r7)
/* 80401014 003CA5D4  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80401018 003CA5D8  B0 87 00 08 */	sth r4, 0x8(r7)
/* 8040101C 003CA5DC  A0 9C 00 14 */	lhz r4, 0x14(r28)
/* 80401020 003CA5E0  B0 07 00 0A */	sth r0, 0xa(r7)
/* 80401024 003CA5E4  A0 7C 00 16 */	lhz r3, 0x16(r28)
/* 80401028 003CA5E8  D0 27 00 0C */	stfs f1, 0xc(r7)
/* 8040102C 003CA5EC  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80401030 003CA5F0  D0 07 00 10 */	stfs f0, 0x10(r7)
/* 80401034 003CA5F4  B0 87 00 14 */	sth r4, 0x14(r7)
/* 80401038 003CA5F8  B0 67 00 16 */	sth r3, 0x16(r7)
/* 8040103C 003CA5FC  90 07 00 18 */	stw r0, 0x18(r7)
/* 80401040 003CA600  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80401044 003CA604  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 80401048 003CA608  54 04 27 3E */	srwi r4, r0, 28
/* 8040104C 003CA60C  48 00 5D C5 */	bl SetTexCoordGenNum__Q34nw4r3lyt8MaterialFUc
/* 80401050 003CA610  3B 80 00 00 */	li r28, 0x0
/* 80401054 003CA614  3B A0 00 01 */	li r29, 0x1
/* 80401058 003CA618  38 80 00 04 */	li r4, 0x4
/* 8040105C 003CA61C  38 00 00 3C */	li r0, 0x3c
/* 80401060 003CA620  9B 81 00 0B */	stb r28, 0xb(r1)
/* 80401064 003CA624  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80401068 003CA628  9B A1 00 08 */	stb r29, 0x8(r1)
/* 8040106C 003CA62C  98 81 00 09 */	stb r4, 0x9(r1)
/* 80401070 003CA630  98 01 00 0A */	stb r0, 0xa(r1)
/* 80401074 003CA634  80 01 00 08 */	lwz r0, 0x8(r1)
/* 80401078 003CA638  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040107C 003CA63C  48 00 5A 65 */	bl GetTexCoordGenAry__Q34nw4r3lyt8MaterialFv
/* 80401080 003CA640  57 E0 15 BA */	clrlslwi r0, r31, 24, 2
/* 80401084 003CA644  88 81 00 0C */	lbz r4, 0xc(r1)
/* 80401088 003CA648  7C A3 02 14 */	add r5, r3, r0
/* 8040108C 003CA64C  88 01 00 0D */	lbz r0, 0xd(r1)
/* 80401090 003CA650  98 85 00 00 */	stb r4, 0x0(r5)
/* 80401094 003CA654  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 80401098 003CA658  88 81 00 0E */	lbz r4, 0xe(r1)
/* 8040109C 003CA65C  98 05 00 01 */	stb r0, 0x1(r5)
/* 804010A0 003CA660  88 01 00 0F */	lbz r0, 0xf(r1)
/* 804010A4 003CA664  98 85 00 02 */	stb r4, 0x2(r5)
/* 804010A8 003CA668  98 05 00 03 */	stb r0, 0x3(r5)
/* 804010AC 003CA66C  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804010B0 003CA670  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 804010B4 003CA674  54 04 27 3E */	srwi r4, r0, 28
/* 804010B8 003CA678  48 00 90 E9 */	bl SetSize__Q44nw4r3lyt6detail11TexCoordAryFUc
/* 804010BC 003CA67C  C0 22 C1 E0 */	lfs f1, lbl_8066C560@sda21(r2)
/* 804010C0 003CA680  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 804010C4 003CA684  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804010C8 003CA688  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804010CC 003CA68C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804010D0 003CA690  40 82 00 14 */	bne .L_804010E4
/* 804010D4 003CA694  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 804010D8 003CA698  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 804010DC 003CA69C  40 82 00 08 */	bne .L_804010E4
/* 804010E0 003CA6A0  7F BC EB 78 */	mr r28, r29
.L_804010E4:
/* 804010E4 003CA6A4  2C 1C 00 00 */	cmpwi r28, 0x0
/* 804010E8 003CA6A8  41 82 00 34 */	beq .L_8040111C
/* 804010EC 003CA6AC  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 804010F0 003CA6B0  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 804010F4 003CA6B4  54 00 27 3E */	srwi r0, r0, 28
/* 804010F8 003CA6B8  28 00 00 01 */	cmplwi r0, 0x1
/* 804010FC 003CA6BC  40 82 00 20 */	bne .L_8040111C
/* 80401100 003CA6C0  38 61 00 10 */	addi r3, r1, 0x10
/* 80401104 003CA6C4  38 A0 00 00 */	li r5, 0x0
/* 80401108 003CA6C8  48 00 71 85 */	bl GetTextureSize__Q34nw4r3lyt6detailFPQ34nw4r3lyt8MaterialUc
/* 8040110C 003CA6CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80401110 003CA6D0  D0 1E 00 4C */	stfs f0, 0x4c(r30)
/* 80401114 003CA6D4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80401118 003CA6D8  D0 1E 00 50 */	stfs f0, 0x50(r30)
.L_8040111C:
/* 8040111C 003CA6DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80401120 003CA6E0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80401124 003CA6E4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80401128 003CA6E8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8040112C 003CA6EC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80401130 003CA6F0  7C 08 03 A6 */	mtlr r0
/* 80401134 003CA6F4  38 21 00 30 */	addi r1, r1, 0x30
/* 80401138 003CA6F8  4E 80 00 20 */	blr
.endfn Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap

# nw4r::lyt::Picture::SetTexCoord(unsigned long, const nw4r::math::VEC2*)
.fn SetTexCoord__Q34nw4r3lyt7PictureFUlPCQ34nw4r4math4VEC2, global
/* 8040113C 003CA6FC  38 63 00 E8 */	addi r3, r3, 0xe8
/* 80401140 003CA700  48 00 91 4C */	b SetCoord__Q44nw4r3lyt6detail11TexCoordAryFUlPCQ34nw4r4math4VEC2
.endfn SetTexCoord__Q34nw4r3lyt7PictureFUlPCQ34nw4r4math4VEC2

# nw4r::lyt::Picture::GetVtxColor(unsigned long) const
.fn GetVtxColor__Q34nw4r3lyt7PictureCFUl, global
/* 80401144 003CA704  54 A0 10 3A */	slwi r0, r5, 2
/* 80401148 003CA708  7C E4 02 14 */	add r7, r4, r0
/* 8040114C 003CA70C  88 C7 00 D8 */	lbz r6, 0xd8(r7)
/* 80401150 003CA710  88 A7 00 D9 */	lbz r5, 0xd9(r7)
/* 80401154 003CA714  88 87 00 DA */	lbz r4, 0xda(r7)
/* 80401158 003CA718  88 07 00 DB */	lbz r0, 0xdb(r7)
/* 8040115C 003CA71C  98 C3 00 00 */	stb r6, 0x0(r3)
/* 80401160 003CA720  98 A3 00 01 */	stb r5, 0x1(r3)
/* 80401164 003CA724  98 83 00 02 */	stb r4, 0x2(r3)
/* 80401168 003CA728  98 03 00 03 */	stb r0, 0x3(r3)
/* 8040116C 003CA72C  4E 80 00 20 */	blr
.endfn GetVtxColor__Q34nw4r3lyt7PictureCFUl

# nw4r::lyt::Picture::SetVtxColor(unsigned long, nw4r::ut::Color)
.fn SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color, global
/* 80401170 003CA730  54 80 10 3A */	slwi r0, r4, 2
/* 80401174 003CA734  88 C5 00 00 */	lbz r6, 0x0(r5)
/* 80401178 003CA738  7C 83 02 14 */	add r4, r3, r0
/* 8040117C 003CA73C  88 05 00 01 */	lbz r0, 0x1(r5)
/* 80401180 003CA740  98 C4 00 D8 */	stb r6, 0xd8(r4)
/* 80401184 003CA744  88 65 00 02 */	lbz r3, 0x2(r5)
/* 80401188 003CA748  98 04 00 D9 */	stb r0, 0xd9(r4)
/* 8040118C 003CA74C  88 05 00 03 */	lbz r0, 0x3(r5)
/* 80401190 003CA750  98 64 00 DA */	stb r3, 0xda(r4)
/* 80401194 003CA754  98 04 00 DB */	stb r0, 0xdb(r4)
/* 80401198 003CA758  4E 80 00 20 */	blr
.endfn SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color

# nw4r::lyt::Picture::GetVtxColorElement(unsigned long) const
.fn GetVtxColorElement__Q34nw4r3lyt7PictureCFUl, global
/* 8040119C 003CA75C  54 85 00 3A */	clrrwi r5, r4, 2
/* 804011A0 003CA760  54 80 07 BE */	clrlwi r0, r4, 30
/* 804011A4 003CA764  7C 63 2A 14 */	add r3, r3, r5
/* 804011A8 003CA768  7C 63 02 14 */	add r3, r3, r0
/* 804011AC 003CA76C  88 63 00 D8 */	lbz r3, 0xd8(r3)
/* 804011B0 003CA770  4E 80 00 20 */	blr
.endfn GetVtxColorElement__Q34nw4r3lyt7PictureCFUl

# nw4r::lyt::Picture::SetVtxColorElement(unsigned long, unsigned char)
.fn SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc, global
/* 804011B4 003CA774  54 86 00 3A */	clrrwi r6, r4, 2
/* 804011B8 003CA778  54 80 07 BE */	clrlwi r0, r4, 30
/* 804011BC 003CA77C  7C 63 32 14 */	add r3, r3, r6
/* 804011C0 003CA780  7C 63 02 14 */	add r3, r3, r0
/* 804011C4 003CA784  98 A3 00 D8 */	stb r5, 0xd8(r3)
/* 804011C8 003CA788  4E 80 00 20 */	blr
.endfn SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc

# nw4r::lyt::Picture::DrawSelf(const nw4r::lyt::DrawInfo&)
.fn DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo, global
/* 804011CC 003CA78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804011D0 003CA790  7C 08 02 A6 */	mflr r0
/* 804011D4 003CA794  90 01 00 24 */	stw r0, 0x24(r1)
/* 804011D8 003CA798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804011DC 003CA79C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804011E0 003CA7A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804011E4 003CA7A4  93 81 00 10 */	stw r28, 0x10(r1)
/* 804011E8 003CA7A8  7C 7C 1B 78 */	mr r28, r3
/* 804011EC 003CA7AC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 804011F0 003CA7B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 804011F4 003CA7B4  41 82 00 94 */	beq .L_80401288
/* 804011F8 003CA7B8  81 83 00 00 */	lwz r12, 0x0(r3)
/* 804011FC 003CA7BC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80401200 003CA7C0  7D 89 03 A6 */	mtctr r12
/* 80401204 003CA7C4  4E 80 04 21 */	bctrl
/* 80401208 003CA7C8  8B BC 00 B9 */	lbz r29, 0xb9(r28)
/* 8040120C 003CA7CC  38 7C 00 D8 */	addi r3, r28, 0xd8
/* 80401210 003CA7D0  7F A4 EB 78 */	mr r4, r29
/* 80401214 003CA7D4  48 00 91 75 */	bl IsModulateVertexColor__Q34nw4r3lyt6detailFPQ34nw4r2ut5ColorUc
/* 80401218 003CA7D8  7C 64 1B 78 */	mr r4, r3
/* 8040121C 003CA7DC  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80401220 003CA7E0  7F A5 EB 78 */	mr r5, r29
/* 80401224 003CA7E4  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80401228 003CA7E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8040122C 003CA7EC  7D 89 03 A6 */	mtctr r12
/* 80401230 003CA7F0  4E 80 04 21 */	bctrl
/* 80401234 003CA7F4  88 9C 00 E9 */	lbz r4, 0xe9(r28)
/* 80401238 003CA7F8  7C 7D 1B 78 */	mr r29, r3
/* 8040123C 003CA7FC  48 00 92 09 */	bl SetVertexFormat__Q34nw4r3lyt6detailFbUc
/* 80401240 003CA800  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80401244 003CA804  41 82 00 0C */	beq .L_80401250
/* 80401248 003CA808  3B DC 00 D8 */	addi r30, r28, 0xd8
/* 8040124C 003CA80C  48 00 00 08 */	b .L_80401254
.L_80401250:
/* 80401250 003CA810  3B C0 00 00 */	li r30, 0x0
.L_80401254:
/* 80401254 003CA814  83 BC 00 EC */	lwz r29, 0xec(r28)
/* 80401258 003CA818  7F 83 E3 78 */	mr r3, r28
/* 8040125C 003CA81C  8B FC 00 E9 */	lbz r31, 0xe9(r28)
/* 80401260 003CA820  4B FF E5 A1 */	bl GetVtxPos__Q34nw4r3lyt4PaneCFv
/* 80401264 003CA824  90 81 00 0C */	stw r4, 0xc(r1)
/* 80401268 003CA828  7F E5 FB 78 */	mr r5, r31
/* 8040126C 003CA82C  7F A6 EB 78 */	mr r6, r29
/* 80401270 003CA830  7F C7 F3 78 */	mr r7, r30
/* 80401274 003CA834  90 61 00 08 */	stw r3, 0x8(r1)
/* 80401278 003CA838  38 61 00 08 */	addi r3, r1, 0x8
/* 8040127C 003CA83C  38 9C 00 4C */	addi r4, r28, 0x4c
/* 80401280 003CA840  89 1C 00 B9 */	lbz r8, 0xb9(r28)
/* 80401284 003CA844  48 00 98 05 */	bl DrawQuad__Q34nw4r3lyt6detailFRCQ34nw4r4math4VEC2RCQ34nw4r3lyt4SizeUcPA4_CQ34nw4r4math4VEC2PCQ34nw4r2ut5ColorUc
.L_80401288:
/* 80401288 003CA848  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040128C 003CA84C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80401290 003CA850  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80401294 003CA854  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80401298 003CA858  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8040129C 003CA85C  7C 08 03 A6 */	mtlr r0
/* 804012A0 003CA860  38 21 00 20 */	addi r1, r1, 0x20
/* 804012A4 003CA864  4E 80 00 20 */	blr
.endfn DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo

# nw4r::lyt::Picture::GetRuntimeTypeInfo() const
.fn GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv, global
/* 804012A8 003CA868  38 6D BB E0 */	addi r3, r13, lbl_80667D60@sda21
/* 804012AC 003CA86C  4E 80 00 20 */	blr
.endfn GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv

.fn sinit_804012B0, global
/* 804012B0 003CA870  38 0D BB D0 */	addi r0, r13, lbl_80667D50@sda21
/* 804012B4 003CA874  90 0D BB E0 */	stw r0, lbl_80667D60@sda21(r13)
/* 804012B8 003CA878  4E 80 00 20 */	blr
.endfn sinit_804012B0

# 0x804F5A08 - 0x804F5A0C
.section .ctors, "a"
.balign 4
	.4byte sinit_804012B0

# 0x8056D298 - 0x8056D310
.data
.balign 8
.sym lbl_8056D298, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte __dt__Q34nw4r3lyt7PictureFv
	.4byte GetRuntimeTypeInfo__Q34nw4r3lyt7PictureCFv
	.4byte CalculateMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Draw__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte DrawSelf__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt8DrawInfo
	.4byte Animate__Q34nw4r3lyt4PaneFUl
	.4byte AnimateSelf__Q34nw4r3lyt4PaneFUl
	.4byte GetVtxColor__Q34nw4r3lyt7PictureCFUl
	.4byte SetVtxColor__Q34nw4r3lyt7PictureFUlQ34nw4r2ut5Color
	.4byte GetColorElement__Q34nw4r3lyt4PaneCFUl
	.4byte SetColorElement__Q34nw4r3lyt4PaneFUlUc
	.4byte GetVtxColorElement__Q34nw4r3lyt7PictureCFUl
	.4byte SetVtxColorElement__Q34nw4r3lyt7PictureFUlUc
	.4byte FindPaneByName__Q34nw4r3lyt4PaneFPCcb
	.4byte FindMaterialByName__Q34nw4r3lyt4PaneFPCcb
	.4byte BindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte UnbindAnimation__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformb
	.4byte UnbindAllAnimation__Q34nw4r3lyt4PaneFb
	.4byte UnbindAnimationSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransform
	.4byte FindAnimationLinkSelf__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResource
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFPQ34nw4r3lyt13AnimTransformbb
	.4byte SetAnimationEnable__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt12AnimResourcebb
	.4byte GetMaterialNum__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFv
	.4byte GetMaterial__Q34nw4r3lyt4PaneCFUl
	.4byte LoadMtx__Q34nw4r3lyt4PaneFRCQ34nw4r3lyt8DrawInfo
	.4byte Append__Q34nw4r3lyt7PictureFRCQ34nw4r3lyt6TexMap

# 0x80667D60 - 0x80667D68
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667D60, local
	.skip 0x8

# 0x8066C560 - 0x8066C568
.section .sdata2, "a"
.balign 8
.sym lbl_8066C560, local
	.4byte 0x00000000
	.4byte 0x00000000
