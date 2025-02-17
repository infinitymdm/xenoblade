.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CSelShopWin, global
/* 8022C6B4 001F5C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C6B8 001F5C78  7C 08 02 A6 */	mflr r0
/* 8022C6BC 001F5C7C  3C 80 80 54 */	lis r4, __vt__CSelShopWin@ha
/* 8022C6C0 001F5C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C6C4 001F5C84  38 84 9D 60 */	addi r4, r4, __vt__CSelShopWin@l
/* 8022C6C8 001F5C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022C6CC 001F5C8C  7C 7F 1B 78 */	mr r31, r3
/* 8022C6D0 001F5C90  90 83 00 00 */	stw r4, 0(r3)
/* 8022C6D4 001F5C94  38 63 00 04 */	addi r3, r3, 4
/* 8022C6D8 001F5C98  48 23 2E 8D */	bl __ct__UnkClass_8045F564
/* 8022C6DC 001F5C9C  38 80 00 00 */	li r4, 0
/* 8022C6E0 001F5CA0  38 00 00 01 */	li r0, 1
/* 8022C6E4 001F5CA4  90 9F 00 14 */	stw r4, 0x14(r31)
/* 8022C6E8 001F5CA8  7F E3 FB 78 */	mr r3, r31
/* 8022C6EC 001F5CAC  90 9F 00 18 */	stw r4, 0x18(r31)
/* 8022C6F0 001F5CB0  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 8022C6F4 001F5CB4  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8022C6F8 001F5CB8  98 9F 00 24 */	stb r4, 0x24(r31)
/* 8022C6FC 001F5CBC  98 1F 00 25 */	stb r0, 0x25(r31)
/* 8022C700 001F5CC0  98 9F 00 26 */	stb r4, 0x26(r31)
/* 8022C704 001F5CC4  98 1F 00 27 */	stb r0, 0x27(r31)
/* 8022C708 001F5CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022C70C 001F5CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C710 001F5CD0  7C 08 03 A6 */	mtlr r0
/* 8022C714 001F5CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C718 001F5CD8  4E 80 00 20 */	blr 
.endfn __ct__CSelShopWin

.fn __dt__CSelShopWin, global
/* 8022C71C 001F5CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C720 001F5CE0  7C 08 02 A6 */	mflr r0
/* 8022C724 001F5CE4  2C 03 00 00 */	cmpwi r3, 0
/* 8022C728 001F5CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C72C 001F5CEC  BF C1 00 08 */	stmw r30, 8(r1)
/* 8022C730 001F5CF0  7C 7E 1B 78 */	mr r30, r3
/* 8022C734 001F5CF4  7C 9F 23 78 */	mr r31, r4
/* 8022C738 001F5CF8  41 82 00 20 */	beq .L_8022C758
/* 8022C73C 001F5CFC  38 80 FF FF */	li r4, -1
/* 8022C740 001F5D00  38 63 00 04 */	addi r3, r3, 4
/* 8022C744 001F5D04  48 23 2E 3D */	bl __dt__UnkClass_8045F564
/* 8022C748 001F5D08  2C 1F 00 00 */	cmpwi r31, 0
/* 8022C74C 001F5D0C  40 81 00 0C */	ble .L_8022C758
/* 8022C750 001F5D10  7F C3 F3 78 */	mr r3, r30
/* 8022C754 001F5D14  48 20 84 D9 */	bl __dl__FPv
.L_8022C758:
/* 8022C758 001F5D18  7F C3 F3 78 */	mr r3, r30
/* 8022C75C 001F5D1C  BB C1 00 08 */	lmw r30, 8(r1)
/* 8022C760 001F5D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C764 001F5D24  7C 08 03 A6 */	mtlr r0
/* 8022C768 001F5D28  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C76C 001F5D2C  4E 80 00 20 */	blr 
.endfn __dt__CSelShopWin

.fn func_8022C770, global
/* 8022C770 001F5D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C774 001F5D34  7C 08 02 A6 */	mflr r0
/* 8022C778 001F5D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C77C 001F5D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022C780 001F5D40  7C 7F 1B 78 */	mr r31, r3
/* 8022C784 001F5D44  48 20 7C 1D */	bl Heap_getRegionIndex2
/* 8022C788 001F5D48  3C 80 80 50 */	lis r4, CSelShopWin_strpool@ha
/* 8022C78C 001F5D4C  7F E5 FB 78 */	mr r5, r31
/* 8022C790 001F5D50  38 84 5D 2C */	addi r4, r4, CSelShopWin_strpool@l
/* 8022C794 001F5D54  38 C0 00 00 */	li r6, 0
/* 8022C798 001F5D58  38 E0 00 00 */	li r7, 0
/* 8022C79C 001F5D5C  48 22 1F F9 */	bl CDeviceFile_openFile1
/* 8022C7A0 001F5D60  38 00 00 00 */	li r0, 0
/* 8022C7A4 001F5D64  90 7F 00 14 */	stw r3, 0x14(r31)
/* 8022C7A8 001F5D68  98 1F 00 25 */	stb r0, 0x25(r31)
/* 8022C7AC 001F5D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022C7B0 001F5D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C7B4 001F5D74  7C 08 03 A6 */	mtlr r0
/* 8022C7B8 001F5D78  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C7BC 001F5D7C  4E 80 00 20 */	blr 
.endfn func_8022C770

.fn func_8022C7C0, global
/* 8022C7C0 001F5D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C7C4 001F5D84  7C 08 02 A6 */	mflr r0
/* 8022C7C8 001F5D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C7CC 001F5D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022C7D0 001F5D90  7C 7F 1B 78 */	mr r31, r3
/* 8022C7D4 001F5D94  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8022C7D8 001F5D98  2C 00 00 00 */	cmpwi r0, 0
/* 8022C7DC 001F5D9C  41 82 00 40 */	beq .L_8022C81C
/* 8022C7E0 001F5DA0  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022C7E4 001F5DA4  2C 00 00 01 */	cmpwi r0, 1
/* 8022C7E8 001F5DA8  41 82 00 10 */	beq .L_8022C7F8
/* 8022C7EC 001F5DAC  2C 00 00 03 */	cmpwi r0, 3
/* 8022C7F0 001F5DB0  41 82 00 10 */	beq .L_8022C800
/* 8022C7F4 001F5DB4  48 00 00 10 */	b .L_8022C804
.L_8022C7F8:
/* 8022C7F8 001F5DB8  48 00 01 DD */	bl func_8022C9D4
/* 8022C7FC 001F5DBC  48 00 00 08 */	b .L_8022C804
.L_8022C800:
/* 8022C800 001F5DC0  48 00 02 21 */	bl func_8022CA20
.L_8022C804:
/* 8022C804 001F5DC4  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022C808 001F5DC8  38 80 00 00 */	li r4, 0
/* 8022C80C 001F5DCC  81 83 00 00 */	lwz r12, 0(r3)
/* 8022C810 001F5DD0  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022C814 001F5DD4  7D 89 03 A6 */	mtctr r12
/* 8022C818 001F5DD8  4E 80 04 21 */	bctrl 
.L_8022C81C:
/* 8022C81C 001F5DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C820 001F5DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022C824 001F5DE4  7C 08 03 A6 */	mtlr r0
/* 8022C828 001F5DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C82C 001F5DEC  4E 80 00 20 */	blr 
.endfn func_8022C7C0

.fn func_8022C830, global
/* 8022C830 001F5DF0  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8022C834 001F5DF4  2C 00 00 00 */	cmpwi r0, 0
/* 8022C838 001F5DF8  4D 82 00 20 */	beqlr 
/* 8022C83C 001F5DFC  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022C840 001F5E00  2C 00 00 00 */	cmpwi r0, 0
/* 8022C844 001F5E04  4D 82 00 20 */	beqlr 
/* 8022C848 001F5E08  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8022C84C 001F5E0C  38 A0 00 00 */	li r5, 0
/* 8022C850 001F5E10  38 C0 00 01 */	li r6, 1
/* 8022C854 001F5E14  4B F0 A7 E4 */	b func_80137038
/* 8022C858 001F5E18  4E 80 00 20 */	blr 
.endfn func_8022C830

.fn func_8022C85C, global
/* 8022C85C 001F5E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C860 001F5E20  7C 08 02 A6 */	mflr r0
/* 8022C864 001F5E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C868 001F5E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022C86C 001F5E2C  7C 7F 1B 78 */	mr r31, r3
/* 8022C870 001F5E30  38 63 00 14 */	addi r3, r3, 0x14
/* 8022C874 001F5E34  4B F0 C8 6D */	bl func_801390E0
/* 8022C878 001F5E38  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022C87C 001F5E3C  38 00 00 00 */	li r0, 0
/* 8022C880 001F5E40  98 1F 00 24 */	stb r0, 0x24(r31)
/* 8022C884 001F5E44  2C 03 00 00 */	cmpwi r3, 0
/* 8022C888 001F5E48  41 82 00 24 */	beq .L_8022C8AC
/* 8022C88C 001F5E4C  41 82 00 18 */	beq .L_8022C8A4
/* 8022C890 001F5E50  81 83 00 00 */	lwz r12, 0(r3)
/* 8022C894 001F5E54  38 80 00 01 */	li r4, 1
/* 8022C898 001F5E58  81 8C 00 08 */	lwz r12, 8(r12)
/* 8022C89C 001F5E5C  7D 89 03 A6 */	mtctr r12
/* 8022C8A0 001F5E60  4E 80 04 21 */	bctrl 
.L_8022C8A4:
/* 8022C8A4 001F5E64  38 00 00 00 */	li r0, 0
/* 8022C8A8 001F5E68  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_8022C8AC:
/* 8022C8AC 001F5E6C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8022C8B0 001F5E70  4B F0 C8 75 */	bl func_80139124
/* 8022C8B4 001F5E74  38 7F 00 04 */	addi r3, r31, 4
/* 8022C8B8 001F5E78  48 23 2E C1 */	bl func_8045F778
/* 8022C8BC 001F5E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022C8C0 001F5E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022C8C4 001F5E84  7C 08 03 A6 */	mtlr r0
/* 8022C8C8 001F5E88  38 21 00 10 */	addi r1, r1, 0x10
/* 8022C8CC 001F5E8C  4E 80 00 20 */	blr 
.endfn func_8022C85C

.fn func_8022C8D0, global
/* 8022C8D0 001F5E90  88 63 00 25 */	lbz r3, 0x25(r3)
/* 8022C8D4 001F5E94  4E 80 00 20 */	blr 
.endfn func_8022C8D0

.fn func_8022C8D8, global
/* 8022C8D8 001F5E98  88 63 00 27 */	lbz r3, 0x27(r3)
/* 8022C8DC 001F5E9C  4E 80 00 20 */	blr 
.endfn func_8022C8D8

.fn func_8022C8E0, global
/* 8022C8E0 001F5EA0  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022C8E4 001F5EA4  2C 00 00 00 */	cmpwi r0, 0
/* 8022C8E8 001F5EA8  4C 82 00 20 */	bnelr 
/* 8022C8EC 001F5EAC  38 80 00 01 */	li r4, 1
/* 8022C8F0 001F5EB0  38 00 00 00 */	li r0, 0
/* 8022C8F4 001F5EB4  98 83 00 26 */	stb r4, 0x26(r3)
/* 8022C8F8 001F5EB8  98 03 00 27 */	stb r0, 0x27(r3)
/* 8022C8FC 001F5EBC  38 60 00 0D */	li r3, 0xd
/* 8022C900 001F5EC0  4B F0 B7 78 */	b func_80138078
/* 8022C904 001F5EC4  4E 80 00 20 */	blr 
.endfn func_8022C8E0

.fn func_8022C908, global
/* 8022C908 001F5EC8  88 03 00 26 */	lbz r0, 0x26(r3)
/* 8022C90C 001F5ECC  28 00 00 02 */	cmplwi r0, 2
/* 8022C910 001F5ED0  4C 82 00 20 */	bnelr 
/* 8022C914 001F5ED4  38 80 00 03 */	li r4, 3
/* 8022C918 001F5ED8  38 00 00 00 */	li r0, 0
/* 8022C91C 001F5EDC  98 83 00 26 */	stb r4, 0x26(r3)
/* 8022C920 001F5EE0  98 03 00 27 */	stb r0, 0x27(r3)
/* 8022C924 001F5EE4  38 60 00 0E */	li r3, 0xe
/* 8022C928 001F5EE8  4B F0 B7 50 */	b func_80138078
/* 8022C92C 001F5EEC  4E 80 00 20 */	blr 
.endfn func_8022C908

.fn func_8022C930, global
/* 8022C930 001F5EF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022C934 001F5EF4  7C 08 02 A6 */	mflr r0
/* 8022C938 001F5EF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022C93C 001F5EFC  BF 81 00 30 */	stmw r28, 0x30(r1)
/* 8022C940 001F5F00  3F E0 80 50 */	lis r31, CSelShopWin_strpool@ha
/* 8022C944 001F5F04  7C 7C 1B 78 */	mr r28, r3
/* 8022C948 001F5F08  7C 9D 23 78 */	mr r29, r4
/* 8022C94C 001F5F0C  3B FF 5D 2C */	addi r31, r31, CSelShopWin_strpool@l
/* 8022C950 001F5F10  38 61 00 08 */	addi r3, r1, 8
/* 8022C954 001F5F14  38 9F 00 15 */	addi r4, r31, 0x15
/* 8022C958 001F5F18  4C C6 31 82 */	crclr 6
/* 8022C95C 001F5F1C  38 A5 00 01 */	addi r5, r5, 1
/* 8022C960 001F5F20  48 09 46 D9 */	bl sprintf
/* 8022C964 001F5F24  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8022C968 001F5F28  38 81 00 08 */	addi r4, r1, 8
/* 8022C96C 001F5F2C  38 A0 00 01 */	li r5, 1
/* 8022C970 001F5F30  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022C974 001F5F34  81 83 00 00 */	lwz r12, 0(r3)
/* 8022C978 001F5F38  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022C97C 001F5F3C  7D 89 03 A6 */	mtctr r12
/* 8022C980 001F5F40  4E 80 04 21 */	bctrl 
/* 8022C984 001F5F44  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 8022C988 001F5F48  7C 7E 1B 78 */	mr r30, r3
/* 8022C98C 001F5F4C  38 9F 00 1E */	addi r4, r31, 0x1e
/* 8022C990 001F5F50  38 A0 00 01 */	li r5, 1
/* 8022C994 001F5F54  80 66 00 10 */	lwz r3, 0x10(r6)
/* 8022C998 001F5F58  81 83 00 00 */	lwz r12, 0(r3)
/* 8022C99C 001F5F5C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022C9A0 001F5F60  7D 89 03 A6 */	mtctr r12
/* 8022C9A4 001F5F64  4E 80 04 21 */	bctrl 
/* 8022C9A8 001F5F68  80 DD 00 1C */	lwz r6, 0x1c(r29)
/* 8022C9AC 001F5F6C  7C 65 1B 78 */	mr r5, r3
/* 8022C9B0 001F5F70  7F 83 E3 78 */	mr r3, r28
/* 8022C9B4 001F5F74  7F C4 F3 78 */	mr r4, r30
/* 8022C9B8 001F5F78  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 8022C9BC 001F5F7C  4B F0 AF 69 */	bl func_80137924
/* 8022C9C0 001F5F80  BB 81 00 30 */	lmw r28, 0x30(r1)
/* 8022C9C4 001F5F84  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022C9C8 001F5F88  7C 08 03 A6 */	mtlr r0
/* 8022C9CC 001F5F8C  38 21 00 40 */	addi r1, r1, 0x40
/* 8022C9D0 001F5F90  4E 80 00 20 */	blr 
.endfn func_8022C930

.fn func_8022C9D4, global
/* 8022C9D4 001F5F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022C9D8 001F5F98  7C 08 02 A6 */	mflr r0
/* 8022C9DC 001F5F9C  C0 22 AB 40 */	lfs f1, float_8066AEC0@sda21(r2)
/* 8022C9E0 001F5FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022C9E4 001F5FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022C9E8 001F5FA8  7C 7F 1B 78 */	mr r31, r3
/* 8022C9EC 001F5FAC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8022C9F0 001F5FB0  4B F0 AA 55 */	bl func_80137444
/* 8022C9F4 001F5FB4  2C 03 00 00 */	cmpwi r3, 0
/* 8022C9F8 001F5FB8  41 82 00 14 */	beq .L_8022CA0C
/* 8022C9FC 001F5FBC  38 60 00 02 */	li r3, 2
/* 8022CA00 001F5FC0  38 00 00 01 */	li r0, 1
/* 8022CA04 001F5FC4  98 7F 00 26 */	stb r3, 0x26(r31)
/* 8022CA08 001F5FC8  98 1F 00 27 */	stb r0, 0x27(r31)
.L_8022CA0C:
/* 8022CA0C 001F5FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CA10 001F5FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CA14 001F5FD4  7C 08 03 A6 */	mtlr r0
/* 8022CA18 001F5FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CA1C 001F5FDC  4E 80 00 20 */	blr 
.endfn func_8022C9D4

.fn func_8022CA20, global
/* 8022CA20 001F5FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CA24 001F5FE4  7C 08 02 A6 */	mflr r0
/* 8022CA28 001F5FE8  C0 22 AB 40 */	lfs f1, float_8066AEC0@sda21(r2)
/* 8022CA2C 001F5FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CA30 001F5FF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CA34 001F5FF4  7C 7F 1B 78 */	mr r31, r3
/* 8022CA38 001F5FF8  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8022CA3C 001F5FFC  4B F0 AA D5 */	bl func_80137510
/* 8022CA40 001F6000  2C 03 00 00 */	cmpwi r3, 0
/* 8022CA44 001F6004  41 82 00 14 */	beq .L_8022CA58
/* 8022CA48 001F6008  38 60 00 00 */	li r3, 0
/* 8022CA4C 001F600C  38 00 00 01 */	li r0, 1
/* 8022CA50 001F6010  98 7F 00 26 */	stb r3, 0x26(r31)
/* 8022CA54 001F6014  98 1F 00 27 */	stb r0, 0x27(r31)
.L_8022CA58:
/* 8022CA58 001F6018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CA5C 001F601C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CA60 001F6020  7C 08 03 A6 */	mtlr r0
/* 8022CA64 001F6024  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CA68 001F6028  4E 80 00 20 */	blr 
.endfn func_8022CA20

.fn func_8022CA6C, global
/* 8022CA6C 001F602C  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8022CA70 001F6030  2C 00 00 00 */	cmpwi r0, 0
/* 8022CA74 001F6034  4D 82 00 20 */	beqlr 
/* 8022CA78 001F6038  38 00 00 01 */	li r0, 1
/* 8022CA7C 001F603C  98 03 00 25 */	stb r0, 0x25(r3)
/* 8022CA80 001F6040  98 03 00 24 */	stb r0, 0x24(r3)
/* 8022CA84 001F6044  4E 80 00 20 */	blr 
.endfn func_8022CA6C

.fn CSelShopWin_OnFileEvent, global
/* 8022CA88 001F6048  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8022CA8C 001F604C  7C 08 02 A6 */	mflr r0
/* 8022CA90 001F6050  90 01 00 44 */	stw r0, 0x44(r1)
/* 8022CA94 001F6054  39 61 00 40 */	addi r11, r1, 0x40
/* 8022CA98 001F6058  48 08 D6 C5 */	bl _savegpr_29
/* 8022CA9C 001F605C  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 8022CAA0 001F6060  3C C0 43 30 */	lis r6, 0x4330
/* 8022CAA4 001F6064  80 04 00 04 */	lwz r0, 4(r4)
/* 8022CAA8 001F6068  7C 7F 1B 78 */	mr r31, r3
/* 8022CAAC 001F606C  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8022CAB0 001F6070  7C 05 00 40 */	cmplw r5, r0
/* 8022CAB4 001F6074  90 C1 00 28 */	stw r6, 0x28(r1)
/* 8022CAB8 001F6078  40 82 03 9C */	bne .L_8022CE54
/* 8022CABC 001F607C  48 20 78 E5 */	bl Heap_getRegionIndex2
/* 8022CAC0 001F6080  3F C0 80 50 */	lis r30, CSelShopWin_strpool@ha
/* 8022CAC4 001F6084  3C A0 00 01 */	lis r5, 1
/* 8022CAC8 001F6088  3B DE 5D 2C */	addi r30, r30, CSelShopWin_strpool@l
/* 8022CACC 001F608C  7C 64 1B 78 */	mr r4, r3
/* 8022CAD0 001F6090  38 7F 00 04 */	addi r3, r31, 4
/* 8022CAD4 001F6094  38 A5 80 00 */	addi r5, r5, -0x8000
/* 8022CAD8 001F6098  38 DE 00 2D */	addi r6, r30, 0x2d
/* 8022CADC 001F609C  38 E0 00 00 */	li r7, 0
/* 8022CAE0 001F60A0  48 23 2B A1 */	bl func_8045F680
/* 8022CAE4 001F60A4  38 61 00 08 */	addi r3, r1, 8
/* 8022CAE8 001F60A8  38 9F 00 04 */	addi r4, r31, 4
/* 8022CAEC 001F60AC  48 23 2D 6D */	bl func_8045F858
/* 8022CAF0 001F60B0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8022CAF4 001F60B4  38 00 00 00 */	li r0, 0
/* 8022CAF8 001F60B8  38 60 00 00 */	li r3, 0
/* 8022CAFC 001F60BC  83 A4 00 04 */	lwz r29, 4(r4)
/* 8022CB00 001F60C0  90 04 00 04 */	stw r0, 4(r4)
/* 8022CB04 001F60C4  48 20 7F 49 */	bl func_80434A4C
/* 8022CB08 001F60C8  48 23 26 AD */	bl CLibLayout_getArcResourceAccessorInstance
/* 8022CB0C 001F60CC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8022CB10 001F60D0  7F A4 EB 78 */	mr r4, r29
/* 8022CB14 001F60D4  38 BE 00 39 */	addi r5, r30, 0x39
/* 8022CB18 001F60D8  48 1D D3 F1 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 8022CB1C 001F60DC  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8022CB20 001F60E0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8022CB24 001F60E4  38 BE 00 3D */	addi r5, r30, 0x3d
/* 8022CB28 001F60E8  4B F0 A3 5D */	bl func_80136E84
/* 8022CB2C 001F60EC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CB30 001F60F0  38 9F 00 20 */	addi r4, r31, 0x20
/* 8022CB34 001F60F4  80 BF 00 18 */	lwz r5, 0x18(r31)
/* 8022CB38 001F60F8  38 DE 00 56 */	addi r6, r30, 0x56
/* 8022CB3C 001F60FC  4B F0 A3 CD */	bl func_80136F08
/* 8022CB40 001F6100  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 8022CB44 001F6104  38 60 00 01 */	li r3, 1
/* 8022CB48 001F6108  83 A4 00 10 */	lwz r29, 0x10(r4)
/* 8022CB4C 001F610C  48 22 60 C5 */	bl func_80452C10
/* 8022CB50 001F6110  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CB54 001F6114  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8022CB58 001F6118  7D 89 03 A6 */	mtctr r12
/* 8022CB5C 001F611C  4E 80 04 21 */	bctrl 
/* 8022CB60 001F6120  7C 64 1B 78 */	mr r4, r3
/* 8022CB64 001F6124  7F A3 EB 78 */	mr r3, r29
/* 8022CB68 001F6128  4B F0 9C 05 */	bl func_8013676C
/* 8022CB6C 001F612C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CB70 001F6130  38 A0 00 01 */	li r5, 1
/* 8022CB74 001F6134  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8022CB78 001F6138  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CB7C 001F613C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8022CB80 001F6140  7D 89 03 A6 */	mtctr r12
/* 8022CB84 001F6144  4E 80 04 21 */	bctrl 
/* 8022CB88 001F6148  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CB8C 001F614C  38 80 00 00 */	li r4, 0
/* 8022CB90 001F6150  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CB94 001F6154  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022CB98 001F6158  7D 89 03 A6 */	mtctr r12
/* 8022CB9C 001F615C  4E 80 04 21 */	bctrl 
/* 8022CBA0 001F6160  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CBA4 001F6164  38 9E 00 72 */	addi r4, r30, 0x72
/* 8022CBA8 001F6168  38 A0 00 01 */	li r5, 1
/* 8022CBAC 001F616C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022CBB0 001F6170  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CBB4 001F6174  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022CBB8 001F6178  7D 89 03 A6 */	mtctr r12
/* 8022CBBC 001F617C  4E 80 04 21 */	bctrl 
/* 8022CBC0 001F6180  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 8022CBC4 001F6184  3B A0 00 00 */	li r29, 0
/* 8022CBC8 001F6188  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8022CBCC 001F618C  98 03 00 BB */	stb r0, 0xbb(r3)
/* 8022CBD0 001F6190  38 60 00 00 */	li r3, 0
/* 8022CBD4 001F6194  4B E5 61 81 */	bl func_80082D54
/* 8022CBD8 001F6198  2C 03 00 00 */	cmpwi r3, 0
/* 8022CBDC 001F619C  41 82 00 40 */	beq .L_8022CC1C
/* 8022CBE0 001F61A0  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CBE4 001F61A4  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8022CBE8 001F61A8  7D 89 03 A6 */	mtctr r12
/* 8022CBEC 001F61AC  4E 80 04 21 */	bctrl 
/* 8022CBF0 001F61B0  2C 03 00 00 */	cmpwi r3, 0
/* 8022CBF4 001F61B4  41 82 00 28 */	beq .L_8022CC1C
/* 8022CBF8 001F61B8  4B E8 A4 95 */	bl func_800B708C
/* 8022CBFC 001F61BC  2C 03 00 00 */	cmpwi r3, 0
/* 8022CC00 001F61C0  41 82 00 1C */	beq .L_8022CC1C
/* 8022CC04 001F61C4  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CC08 001F61C8  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8022CC0C 001F61CC  7D 89 03 A6 */	mtctr r12
/* 8022CC10 001F61D0  4E 80 04 21 */	bctrl 
/* 8022CC14 001F61D4  4B F0 C1 91 */	bl func_80138DA4
/* 8022CC18 001F61D8  7C 7D 1B 78 */	mr r29, r3
.L_8022CC1C:
/* 8022CC1C 001F61DC  3F C0 80 50 */	lis r30, CSelShopWin_strpool@ha
/* 8022CC20 001F61E0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CC24 001F61E4  3B DE 5D 2C */	addi r30, r30, CSelShopWin_strpool@l
/* 8022CC28 001F61E8  7F A5 EB 78 */	mr r5, r29
/* 8022CC2C 001F61EC  38 9E 00 7C */	addi r4, r30, 0x7c
/* 8022CC30 001F61F0  38 C0 00 00 */	li r6, 0
/* 8022CC34 001F61F4  4B F0 9F 19 */	bl func_80136B4C
/* 8022CC38 001F61F8  38 7E 00 89 */	addi r3, r30, 0x89
/* 8022CC3C 001F61FC  38 9E 00 92 */	addi r4, r30, 0x92
/* 8022CC40 001F6200  38 A0 00 08 */	li r5, 8
/* 8022CC44 001F6204  4B F0 95 4D */	bl func_80136190
/* 8022CC48 001F6208  7C 65 1B 78 */	mr r5, r3
/* 8022CC4C 001F620C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CC50 001F6210  38 9E 00 97 */	addi r4, r30, 0x97
/* 8022CC54 001F6214  38 C0 00 00 */	li r6, 0
/* 8022CC58 001F6218  4B F0 9E F5 */	bl func_80136B4C
/* 8022CC5C 001F621C  38 7E 00 89 */	addi r3, r30, 0x89
/* 8022CC60 001F6220  38 9E 00 92 */	addi r4, r30, 0x92
/* 8022CC64 001F6224  38 A0 00 09 */	li r5, 9
/* 8022CC68 001F6228  4B F0 95 29 */	bl func_80136190
/* 8022CC6C 001F622C  7C 65 1B 78 */	mr r5, r3
/* 8022CC70 001F6230  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CC74 001F6234  38 9E 00 9E */	addi r4, r30, 0x9e
/* 8022CC78 001F6238  38 C0 00 00 */	li r6, 0
/* 8022CC7C 001F623C  4B F0 9E D1 */	bl func_80136B4C
/* 8022CC80 001F6240  38 7E 00 89 */	addi r3, r30, 0x89
/* 8022CC84 001F6244  38 9E 00 92 */	addi r4, r30, 0x92
/* 8022CC88 001F6248  38 A0 00 0A */	li r5, 0xa
/* 8022CC8C 001F624C  4B F0 95 05 */	bl func_80136190
/* 8022CC90 001F6250  7C 65 1B 78 */	mr r5, r3
/* 8022CC94 001F6254  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CC98 001F6258  38 9E 00 A5 */	addi r4, r30, 0xa5
/* 8022CC9C 001F625C  38 C0 00 00 */	li r6, 0
/* 8022CCA0 001F6260  4B F0 9E AD */	bl func_80136B4C
/* 8022CCA4 001F6264  38 7E 00 AC */	addi r3, r30, 0xac
/* 8022CCA8 001F6268  38 9E 00 BA */	addi r4, r30, 0xba
/* 8022CCAC 001F626C  38 A0 00 2B */	li r5, 0x2b
/* 8022CCB0 001F6270  4B F0 94 E1 */	bl func_80136190
/* 8022CCB4 001F6274  7C 7D 1B 78 */	mr r29, r3
/* 8022CCB8 001F6278  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CCBC 001F627C  7F A5 EB 78 */	mr r5, r29
/* 8022CCC0 001F6280  38 9E 00 BF */	addi r4, r30, 0xbf
/* 8022CCC4 001F6284  38 C0 00 00 */	li r6, 0
/* 8022CCC8 001F6288  4B F0 9E 85 */	bl func_80136B4C
/* 8022CCCC 001F628C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CCD0 001F6290  7F A5 EB 78 */	mr r5, r29
/* 8022CCD4 001F6294  38 9E 00 CB */	addi r4, r30, 0xcb
/* 8022CCD8 001F6298  38 C0 00 00 */	li r6, 0
/* 8022CCDC 001F629C  4B F0 9E 71 */	bl func_80136B4C
/* 8022CCE0 001F62A0  38 60 FF FF */	li r3, -1
/* 8022CCE4 001F62A4  4B E5 A2 B9 */	bl func_80086F9C
/* 8022CCE8 001F62A8  2C 03 00 00 */	cmpwi r3, 0
/* 8022CCEC 001F62AC  38 9E 00 E0 */	addi r4, r30, 0xe0
/* 8022CCF0 001F62B0  41 82 00 08 */	beq .L_8022CCF8
/* 8022CCF4 001F62B4  38 9E 00 D7 */	addi r4, r30, 0xd7
.L_8022CCF8:
/* 8022CCF8 001F62B8  3F C0 80 50 */	lis r30, CSelShopWin_strpool@ha
/* 8022CCFC 001F62BC  38 A0 00 2B */	li r5, 0x2b
/* 8022CD00 001F62C0  3B DE 5D 2C */	addi r30, r30, CSelShopWin_strpool@l
/* 8022CD04 001F62C4  38 7E 00 AC */	addi r3, r30, 0xac
/* 8022CD08 001F62C8  4B F0 93 65 */	bl func_8013606C
/* 8022CD0C 001F62CC  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8022CD10 001F62D0  4B F0 C2 69 */	bl func_80138F78
/* 8022CD14 001F62D4  7C 7D 1B 78 */	mr r29, r3
/* 8022CD18 001F62D8  4B F0 88 DD */	bl func_801355F4
/* 8022CD1C 001F62DC  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD20 001F62E0  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 8022CD24 001F62E4  7F A5 EB 78 */	mr r5, r29
/* 8022CD28 001F62E8  38 C0 00 00 */	li r6, 0
/* 8022CD2C 001F62EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8022CD30 001F62F0  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 8022CD34 001F62F4  7D 89 03 A6 */	mtctr r12
/* 8022CD38 001F62F8  4E 80 04 21 */	bctrl 
/* 8022CD3C 001F62FC  2C 03 00 00 */	cmpwi r3, 0
/* 8022CD40 001F6300  7C 7D 1B 78 */	mr r29, r3
/* 8022CD44 001F6304  41 82 00 E4 */	beq .L_8022CE28
/* 8022CD48 001F6308  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CD4C 001F630C  7F A5 EB 78 */	mr r5, r29
/* 8022CD50 001F6310  38 9E 00 E9 */	addi r4, r30, 0xe9
/* 8022CD54 001F6314  4B F0 B1 29 */	bl func_80137E7C
/* 8022CD58 001F6318  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CD5C 001F631C  7F A5 EB 78 */	mr r5, r29
/* 8022CD60 001F6320  38 9E 00 F3 */	addi r4, r30, 0xf3
/* 8022CD64 001F6324  4B F0 B1 19 */	bl func_80137E7C
/* 8022CD68 001F6328  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CD6C 001F632C  38 9E 00 E9 */	addi r4, r30, 0xe9
/* 8022CD70 001F6330  80 DD 00 08 */	lwz r6, 8(r29)
/* 8022CD74 001F6334  38 A0 00 01 */	li r5, 1
/* 8022CD78 001F6338  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022CD7C 001F633C  80 C6 00 00 */	lwz r6, 0(r6)
/* 8022CD80 001F6340  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CD84 001F6344  A3 A6 00 02 */	lhz r29, 2(r6)
/* 8022CD88 001F6348  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022CD8C 001F634C  A3 C6 00 00 */	lhz r30, 0(r6)
/* 8022CD90 001F6350  7D 89 03 A6 */	mtctr r12
/* 8022CD94 001F6354  4E 80 04 21 */	bctrl 
/* 8022CD98 001F6358  2C 03 00 00 */	cmpwi r3, 0
/* 8022CD9C 001F635C  41 82 00 30 */	beq .L_8022CDCC
/* 8022CDA0 001F6360  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8022CDA4 001F6364  38 81 00 18 */	addi r4, r1, 0x18
/* 8022CDA8 001F6368  C8 42 AB 48 */	lfd f2, double_8066AEC8@sda21(r2)
/* 8022CDAC 001F636C  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 8022CDB0 001F6370  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8022CDB4 001F6374  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022CDB8 001F6378  EC 21 10 28 */	fsubs f1, f1, f2
/* 8022CDBC 001F637C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022CDC0 001F6380  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8022CDC4 001F6384  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8022CDC8 001F6388  4B EF 74 C1 */	bl func_80124288
.L_8022CDCC:
/* 8022CDCC 001F638C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8022CDD0 001F6390  3C 80 80 50 */	lis r4, CSelShopWin_strpool@ha
/* 8022CDD4 001F6394  38 84 5D 2C */	addi r4, r4, CSelShopWin_strpool@l
/* 8022CDD8 001F6398  38 A0 00 01 */	li r5, 1
/* 8022CDDC 001F639C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8022CDE0 001F63A0  38 84 00 F3 */	addi r4, r4, 0xf3
/* 8022CDE4 001F63A4  81 83 00 00 */	lwz r12, 0(r3)
/* 8022CDE8 001F63A8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8022CDEC 001F63AC  7D 89 03 A6 */	mtctr r12
/* 8022CDF0 001F63B0  4E 80 04 21 */	bctrl 
/* 8022CDF4 001F63B4  2C 03 00 00 */	cmpwi r3, 0
/* 8022CDF8 001F63B8  41 82 00 30 */	beq .L_8022CE28
/* 8022CDFC 001F63BC  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8022CE00 001F63C0  38 81 00 10 */	addi r4, r1, 0x10
/* 8022CE04 001F63C4  C8 42 AB 48 */	lfd f2, double_8066AEC8@sda21(r2)
/* 8022CE08 001F63C8  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 8022CE0C 001F63CC  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 8022CE10 001F63D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8022CE14 001F63D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8022CE18 001F63D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8022CE1C 001F63DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8022CE20 001F63E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8022CE24 001F63E4  4B EF 74 65 */	bl func_80124288
.L_8022CE28:
/* 8022CE28 001F63E8  7F E3 FB 78 */	mr r3, r31
/* 8022CE2C 001F63EC  4B FF FC 41 */	bl func_8022CA6C
/* 8022CE30 001F63F0  38 00 00 00 */	li r0, 0
/* 8022CE34 001F63F4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8022CE38 001F63F8  38 7F 00 04 */	addi r3, r31, 4
/* 8022CE3C 001F63FC  48 23 29 D5 */	bl func_8045F810
/* 8022CE40 001F6400  38 61 00 08 */	addi r3, r1, 8
/* 8022CE44 001F6404  38 80 FF FF */	li r4, -1
/* 8022CE48 001F6408  48 23 2A 81 */	bl __dt__8045F8C8
/* 8022CE4C 001F640C  38 60 00 01 */	li r3, 1
/* 8022CE50 001F6410  48 00 00 08 */	b .L_8022CE58
.L_8022CE54:
/* 8022CE54 001F6414  38 60 00 00 */	li r3, 0
.L_8022CE58:
/* 8022CE58 001F6418  39 61 00 40 */	addi r11, r1, 0x40
/* 8022CE5C 001F641C  48 08 D3 4D */	bl _restgpr_29
/* 8022CE60 001F6420  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8022CE64 001F6424  7C 08 03 A6 */	mtlr r0
/* 8022CE68 001F6428  38 21 00 40 */	addi r1, r1, 0x40
/* 8022CE6C 001F642C  4E 80 00 20 */	blr 
.endfn CSelShopWin_OnFileEvent


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CSelShopWin_typestr, global
	.asciz "CSelShopWin"
.endobj CSelShopWin_typestr


.obj CSelShopWin_strpool, global
	.asciz "/menu/ShopSubWin.arc"
	.asciz "txt_%02d"
	.asciz "nul_proportion"
	.asciz "CSelShopWin"
	.asciz "arc"
	.asciz "mf70_cf60_syswin05.brlyt"
	.asciz "mf70_cf60_syswin05_in.brlan"
	.asciz "nul_value"
	.asciz "txt_titlemes"
	.asciz "MNU_shop"
	.asciz "name"
	.asciz "txt_01"
	.asciz "txt_02"
	.asciz "txt_03"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_close00"
	.asciz "txt_close01"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "pic_btn01"
	.balign 4
	.4byte 0
.endobj CSelShopWin_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CSelShopWin, global
	.4byte __RTTI__CSelShopWin
	.4byte 0
	.4byte __dt__CSelShopWin
	.4byte IWorkEvent_WorkEvent1
	.4byte CSelShopWin_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
.endobj __vt__CSelShopWin

.obj CSelShopWin_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CSelShopWin_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CSelShopWin, global
	.4byte CSelShopWin_typestr
	.4byte CSelShopWin_hierarchy
.endobj __RTTI__CSelShopWin

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj float_8066AEC0, global
	.float 1.0
	.4byte 0
.endobj float_8066AEC0


.obj double_8066AEC8, global
	.8byte 0x4330000000000000 #unsigned int to float constant
.endobj double_8066AEC8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001567C", local
.hidden "@etb_8001567C"
	.4byte 0x08080000
	.4byte 0x00000028
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001F
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_8001567C"

.obj "@etb_80015698", local
.hidden "@etb_80015698"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80015698"

.obj "@etb_800156A0", local
.hidden "@etb_800156A0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800156A0"

.obj "@etb_800156A8", local
.hidden "@etb_800156A8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800156A8"

.obj "@etb_800156B0", local
.hidden "@etb_800156B0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_800156B0"

.obj "@etb_800156B8", local
.hidden "@etb_800156B8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_800156B8"

.obj "@etb_800156C0", local
.hidden "@etb_800156C0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800156C0"

.obj "@etb_800156C8", local
.hidden "@etb_800156C8"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_800156C8"

.obj "@etb_800156D0", local
.hidden "@etb_800156D0"
	.4byte 0x180A0000
	.4byte 0x00000080
	.4byte 0x00CE0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_800156D0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002E598", local
.hidden "@eti_8002E598"
	.4byte __ct__CSelShopWin
	.4byte 0x00000068
	.4byte "@etb_8001567C"
.endobj "@eti_8002E598"

.obj "@eti_8002E5A4", local
.hidden "@eti_8002E5A4"
	.4byte __dt__CSelShopWin
	.4byte 0x00000054
	.4byte "@etb_80015698"
.endobj "@eti_8002E5A4"

.obj "@eti_8002E5B0", local
.hidden "@eti_8002E5B0"
	.4byte func_8022C770
	.4byte 0x00000050
	.4byte "@etb_800156A0"
.endobj "@eti_8002E5B0"

.obj "@eti_8002E5BC", local
.hidden "@eti_8002E5BC"
	.4byte func_8022C7C0
	.4byte 0x00000070
	.4byte "@etb_800156A8"
.endobj "@eti_8002E5BC"

.obj "@eti_8002E5C8", local
.hidden "@eti_8002E5C8"
	.4byte func_8022C85C
	.4byte 0x00000074
	.4byte "@etb_800156B0"
.endobj "@eti_8002E5C8"

.obj "@eti_8002E5D4", local
.hidden "@eti_8002E5D4"
	.4byte func_8022C930
	.4byte 0x000000A4
	.4byte "@etb_800156B8"
.endobj "@eti_8002E5D4"

.obj "@eti_8002E5E0", local
.hidden "@eti_8002E5E0"
	.4byte func_8022C9D4
	.4byte 0x0000004C
	.4byte "@etb_800156C0"
.endobj "@eti_8002E5E0"

.obj "@eti_8002E5EC", local
.hidden "@eti_8002E5EC"
	.4byte func_8022CA20
	.4byte 0x0000004C
	.4byte "@etb_800156C8"
.endobj "@eti_8002E5EC"

.obj "@eti_8002E5F8", local
.hidden "@eti_8002E5F8"
	.4byte CSelShopWin_OnFileEvent
	.4byte 0x000003E8
	.4byte "@etb_800156D0"
.endobj "@eti_8002E5F8"
