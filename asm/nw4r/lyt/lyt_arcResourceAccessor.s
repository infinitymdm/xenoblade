.include "macros.inc"
.file "nw4r/lyt/lyt_arcResourceAccessor.o"

# 0x80409CA0 - 0x8040A028
.text
.balign 4

# _unnamed_lyt_arcResourceAccessor_cpp_::FindNameResource(ARCHandle*, const char*)
.fn FindNameResource__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCc, local
/* 80409CA0 003D3260  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80409CA4 003D3264  7C 08 02 A6 */	mflr r0
/* 80409CA8 003D3268  90 01 00 44 */	stw r0, 0x44(r1)
/* 80409CAC 003D326C  38 A1 00 18 */	addi r5, r1, 0x18
/* 80409CB0 003D3270  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80409CB4 003D3274  3B E0 FF FF */	li r31, -0x1
/* 80409CB8 003D3278  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80409CBC 003D327C  7C 9E 23 78 */	mr r30, r4
/* 80409CC0 003D3280  38 8D 9C 78 */	addi r4, r13, lbl_80665DF8@sda21
/* 80409CC4 003D3284  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80409CC8 003D3288  7C 7D 1B 78 */	mr r29, r3
/* 80409CCC 003D328C  4B EC 82 35 */	bl ARCOpenDir
/* 80409CD0 003D3290  48 00 00 60 */	b .L_80409D30
.L_80409CD4:
/* 80409CD4 003D3294  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80409CD8 003D3298  2C 00 00 00 */	cmpwi r0, 0x0
/* 80409CDC 003D329C  41 82 00 38 */	beq .L_80409D14
/* 80409CE0 003D32A0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80409CE4 003D32A4  7F A3 EB 78 */	mr r3, r29
/* 80409CE8 003D32A8  4B EC 81 B9 */	bl ARCChangeDir
/* 80409CEC 003D32AC  7F A3 EB 78 */	mr r3, r29
/* 80409CF0 003D32B0  7F C4 F3 78 */	mr r4, r30
/* 80409CF4 003D32B4  4B FF FF AD */	bl FindNameResource__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCc
/* 80409CF8 003D32B8  7C 7F 1B 78 */	mr r31, r3
/* 80409CFC 003D32BC  7F A3 EB 78 */	mr r3, r29
/* 80409D00 003D32C0  38 8D 9C 7C */	addi r4, r13, lbl_80665DFC@sda21
/* 80409D04 003D32C4  4B EC 81 9D */	bl ARCChangeDir
/* 80409D08 003D32C8  2C 1F FF FF */	cmpwi r31, -0x1
/* 80409D0C 003D32CC  40 82 00 38 */	bne .L_80409D44
/* 80409D10 003D32D0  48 00 00 20 */	b .L_80409D30
.L_80409D14:
/* 80409D14 003D32D4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80409D18 003D32D8  7F C3 F3 78 */	mr r3, r30
/* 80409D1C 003D32DC  4B EC 17 51 */	bl stricmp
/* 80409D20 003D32E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409D24 003D32E4  40 82 00 0C */	bne .L_80409D30
/* 80409D28 003D32E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80409D2C 003D32EC  48 00 00 18 */	b .L_80409D44
.L_80409D30:
/* 80409D30 003D32F0  38 61 00 18 */	addi r3, r1, 0x18
/* 80409D34 003D32F4  38 81 00 08 */	addi r4, r1, 0x8
/* 80409D38 003D32F8  4B EC 82 49 */	bl ARCReadDir
/* 80409D3C 003D32FC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409D40 003D3300  40 82 FF 94 */	bne .L_80409CD4
.L_80409D44:
/* 80409D44 003D3304  38 61 00 18 */	addi r3, r1, 0x18
/* 80409D48 003D3308  4B EC 82 F9 */	bl ARCCloseDir
/* 80409D4C 003D330C  7F E3 FB 78 */	mr r3, r31
/* 80409D50 003D3310  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80409D54 003D3314  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80409D58 003D3318  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80409D5C 003D331C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80409D60 003D3320  7C 08 03 A6 */	mtlr r0
/* 80409D64 003D3324  38 21 00 40 */	addi r1, r1, 0x40
/* 80409D68 003D3328  4E 80 00 20 */	blr
.endfn FindNameResource__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCc

# _unnamed_lyt_arcResourceAccessor_cpp_::GetResourceSub(ARCHandle*, const char*, unsigned long, const char*, unsigned long*)
.fn GetResourceSub__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCcUlPCcPUl, local
/* 80409D6C 003D332C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80409D70 003D3330  7C 08 02 A6 */	mflr r0
/* 80409D74 003D3334  90 01 00 44 */	stw r0, 0x44(r1)
/* 80409D78 003D3338  39 61 00 40 */	addi r11, r1, 0x40
/* 80409D7C 003D333C  4B EB 03 D5 */	bl _savegpr_26
/* 80409D80 003D3340  7C 7A 1B 78 */	mr r26, r3
/* 80409D84 003D3344  7C 9B 23 78 */	mr r27, r4
/* 80409D88 003D3348  7C BC 2B 78 */	mr r28, r5
/* 80409D8C 003D334C  7C DD 33 78 */	mr r29, r6
/* 80409D90 003D3350  7C FE 3B 78 */	mr r30, r7
/* 80409D94 003D3354  3B E0 FF FF */	li r31, -0x1
/* 80409D98 003D3358  4B EC 7C 79 */	bl ARCConvertPathToEntrynum
/* 80409D9C 003D335C  2C 03 FF FF */	cmpwi r3, -0x1
/* 80409DA0 003D3360  41 82 00 A8 */	beq .L_80409E48
/* 80409DA4 003D3364  7F 43 D3 78 */	mr r3, r26
/* 80409DA8 003D3368  7F 64 DB 78 */	mr r4, r27
/* 80409DAC 003D336C  4B EC 80 F5 */	bl ARCChangeDir
/* 80409DB0 003D3370  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409DB4 003D3374  41 82 00 94 */	beq .L_80409E48
/* 80409DB8 003D3378  2C 1C 00 00 */	cmpwi r28, 0x0
/* 80409DBC 003D337C  40 82 00 18 */	bne .L_80409DD4
/* 80409DC0 003D3380  7F 43 D3 78 */	mr r3, r26
/* 80409DC4 003D3384  7F A4 EB 78 */	mr r4, r29
/* 80409DC8 003D3388  4B FF FE D9 */	bl FindNameResource__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCc
/* 80409DCC 003D338C  7C 7F 1B 78 */	mr r31, r3
/* 80409DD0 003D3390  48 00 00 6C */	b .L_80409E3C
.L_80409DD4:
/* 80409DD4 003D3394  57 83 46 3E */	srwi r3, r28, 24
/* 80409DD8 003D3398  57 86 84 3E */	srwi r6, r28, 16
/* 80409DDC 003D339C  57 85 C2 3E */	srwi r5, r28, 8
/* 80409DE0 003D33A0  38 00 00 00 */	li r0, 0x0
/* 80409DE4 003D33A4  98 61 00 08 */	stb r3, 0x8(r1)
/* 80409DE8 003D33A8  7F 43 D3 78 */	mr r3, r26
/* 80409DEC 003D33AC  38 81 00 08 */	addi r4, r1, 0x8
/* 80409DF0 003D33B0  98 C1 00 09 */	stb r6, 0x9(r1)
/* 80409DF4 003D33B4  98 A1 00 0A */	stb r5, 0xa(r1)
/* 80409DF8 003D33B8  9B 81 00 0B */	stb r28, 0xb(r1)
/* 80409DFC 003D33BC  98 01 00 0C */	stb r0, 0xc(r1)
/* 80409E00 003D33C0  4B EC 7C 11 */	bl ARCConvertPathToEntrynum
/* 80409E04 003D33C4  2C 03 FF FF */	cmpwi r3, -0x1
/* 80409E08 003D33C8  41 82 00 34 */	beq .L_80409E3C
/* 80409E0C 003D33CC  7F 43 D3 78 */	mr r3, r26
/* 80409E10 003D33D0  38 81 00 08 */	addi r4, r1, 0x8
/* 80409E14 003D33D4  4B EC 80 8D */	bl ARCChangeDir
/* 80409E18 003D33D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409E1C 003D33DC  41 82 00 20 */	beq .L_80409E3C
/* 80409E20 003D33E0  7F 43 D3 78 */	mr r3, r26
/* 80409E24 003D33E4  7F A4 EB 78 */	mr r4, r29
/* 80409E28 003D33E8  4B EC 7B E9 */	bl ARCConvertPathToEntrynum
/* 80409E2C 003D33EC  7C 7F 1B 78 */	mr r31, r3
/* 80409E30 003D33F0  7F 43 D3 78 */	mr r3, r26
/* 80409E34 003D33F4  38 8D 9C 7C */	addi r4, r13, lbl_80665DFC@sda21
/* 80409E38 003D33F8  4B EC 80 69 */	bl ARCChangeDir
.L_80409E3C:
/* 80409E3C 003D33FC  7F 43 D3 78 */	mr r3, r26
/* 80409E40 003D3400  38 8D 9C 7C */	addi r4, r13, lbl_80665DFC@sda21
/* 80409E44 003D3404  4B EC 80 5D */	bl ARCChangeDir
.L_80409E48:
/* 80409E48 003D3408  2C 1F FF FF */	cmpwi r31, -0x1
/* 80409E4C 003D340C  41 82 00 44 */	beq .L_80409E90
/* 80409E50 003D3410  7F 43 D3 78 */	mr r3, r26
/* 80409E54 003D3414  7F E4 FB 78 */	mr r4, r31
/* 80409E58 003D3418  38 A1 00 10 */	addi r5, r1, 0x10
/* 80409E5C 003D341C  4B EC 7B 65 */	bl ARCFastOpen
/* 80409E60 003D3420  38 61 00 10 */	addi r3, r1, 0x10
/* 80409E64 003D3424  4B EC 7F FD */	bl ARCGetStartAddrInMem
/* 80409E68 003D3428  2C 1E 00 00 */	cmpwi r30, 0x0
/* 80409E6C 003D342C  7C 7F 1B 78 */	mr r31, r3
/* 80409E70 003D3430  41 82 00 10 */	beq .L_80409E80
/* 80409E74 003D3434  38 61 00 10 */	addi r3, r1, 0x10
/* 80409E78 003D3438  4B EC 80 09 */	bl ARCGetLength
/* 80409E7C 003D343C  90 7E 00 00 */	stw r3, 0x0(r30)
.L_80409E80:
/* 80409E80 003D3440  38 61 00 10 */	addi r3, r1, 0x10
/* 80409E84 003D3444  4B EC 80 0D */	bl ARCClose
/* 80409E88 003D3448  7F E3 FB 78 */	mr r3, r31
/* 80409E8C 003D344C  48 00 00 08 */	b .L_80409E94
.L_80409E90:
/* 80409E90 003D3450  38 60 00 00 */	li r3, 0x0
.L_80409E94:
/* 80409E94 003D3454  39 61 00 40 */	addi r11, r1, 0x40
/* 80409E98 003D3458  4B EB 03 05 */	bl _restgpr_26
/* 80409E9C 003D345C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80409EA0 003D3460  7C 08 03 A6 */	mtlr r0
/* 80409EA4 003D3464  38 21 00 40 */	addi r1, r1, 0x40
/* 80409EA8 003D3468  4E 80 00 20 */	blr
.endfn GetResourceSub__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCcUlPCcPUl

# nw4r::lyt::ArcResourceAccessor::ArcResourceAccessor()
.fn __ct__Q34nw4r3lyt19ArcResourceAccessorFv, global
/* 80409EAC 003D346C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80409EB0 003D3470  7C 08 02 A6 */	mflr r0
/* 80409EB4 003D3474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80409EB8 003D3478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80409EBC 003D347C  7C 7F 1B 78 */	mr r31, r3
/* 80409EC0 003D3480  4B FF FD C9 */	bl __ct__Q34nw4r3lyt16ResourceAccessorFv
/* 80409EC4 003D3484  38 00 00 00 */	li r0, 0x0
/* 80409EC8 003D3488  3C 80 80 57 */	lis r4, lbl_8056D598@ha
/* 80409ECC 003D348C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80409ED0 003D3490  38 BF 00 28 */	addi r5, r31, 0x28
/* 80409ED4 003D3494  38 84 D5 98 */	addi r4, r4, lbl_8056D598@l
/* 80409ED8 003D3498  7F E3 FB 78 */	mr r3, r31
/* 80409EDC 003D349C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 80409EE0 003D34A0  90 9F 00 00 */	stw r4, 0x0(r31)
/* 80409EE4 003D34A4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80409EE8 003D34A8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80409EEC 003D34AC  90 BF 00 28 */	stw r5, 0x28(r31)
/* 80409EF0 003D34B0  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 80409EF4 003D34B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80409EF8 003D34B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80409EFC 003D34BC  7C 08 03 A6 */	mtlr r0
/* 80409F00 003D34C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80409F04 003D34C4  4E 80 00 20 */	blr
.endfn __ct__Q34nw4r3lyt19ArcResourceAccessorFv

# nw4r::lyt::ArcResourceAccessor::Attach(void*, const char*)
.fn Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc, global
/* 80409F08 003D34C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80409F0C 003D34CC  7C 08 02 A6 */	mflr r0
/* 80409F10 003D34D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80409F14 003D34D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80409F18 003D34D8  7C BF 2B 78 */	mr r31, r5
/* 80409F1C 003D34DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80409F20 003D34E0  7C 9E 23 78 */	mr r30, r4
/* 80409F24 003D34E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80409F28 003D34E8  7C 7D 1B 78 */	mr r29, r3
/* 80409F2C 003D34EC  7F C3 F3 78 */	mr r3, r30
/* 80409F30 003D34F0  38 9D 00 04 */	addi r4, r29, 0x4
/* 80409F34 003D34F4  4B EC 77 3D */	bl ARCInitHandle
/* 80409F38 003D34F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409F3C 003D34FC  40 82 00 0C */	bne .L_80409F48
/* 80409F40 003D3500  38 60 00 00 */	li r3, 0x0
/* 80409F44 003D3504  48 00 00 24 */	b .L_80409F68
.L_80409F48:
/* 80409F48 003D3508  93 DD 00 20 */	stw r30, 0x20(r29)
/* 80409F4C 003D350C  7F E4 FB 78 */	mr r4, r31
/* 80409F50 003D3510  38 7D 00 30 */	addi r3, r29, 0x30
/* 80409F54 003D3514  38 A0 00 7F */	li r5, 0x7f
/* 80409F58 003D3518  4B EB 88 21 */	bl strncpy
/* 80409F5C 003D351C  38 00 00 00 */	li r0, 0x0
/* 80409F60 003D3520  38 60 00 01 */	li r3, 0x1
/* 80409F64 003D3524  98 1D 00 AF */	stb r0, 0xaf(r29)
.L_80409F68:
/* 80409F68 003D3528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80409F6C 003D352C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80409F70 003D3530  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80409F74 003D3534  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80409F78 003D3538  7C 08 03 A6 */	mtlr r0
/* 80409F7C 003D353C  38 21 00 20 */	addi r1, r1, 0x20
/* 80409F80 003D3540  4E 80 00 20 */	blr
.endfn Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc

# nw4r::lyt::ArcResourceAccessor::Detach()
.fn Detach__Q34nw4r3lyt19ArcResourceAccessorFv, global
/* 80409F84 003D3544  7C 64 1B 78 */	mr r4, r3
/* 80409F88 003D3548  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80409F8C 003D354C  38 00 00 00 */	li r0, 0x0
/* 80409F90 003D3550  90 04 00 20 */	stw r0, 0x20(r4)
/* 80409F94 003D3554  4E 80 00 20 */	blr
.endfn Detach__Q34nw4r3lyt19ArcResourceAccessorFv

# nw4r::lyt::ArcResourceAccessor::GetResource(unsigned long, const char*, unsigned long*)
.fn GetResource__Q34nw4r3lyt19ArcResourceAccessorFUlPCcPUl, global
/* 80409F98 003D3558  7C 88 23 78 */	mr r8, r4
/* 80409F9C 003D355C  7C A0 2B 78 */	mr r0, r5
/* 80409FA0 003D3560  7C C7 33 78 */	mr r7, r6
/* 80409FA4 003D3564  38 83 00 30 */	addi r4, r3, 0x30
/* 80409FA8 003D3568  7D 05 43 78 */	mr r5, r8
/* 80409FAC 003D356C  7C 06 03 78 */	mr r6, r0
/* 80409FB0 003D3570  38 63 00 04 */	addi r3, r3, 0x4
/* 80409FB4 003D3574  4B FF FD B8 */	b GetResourceSub__37_unnamed_lyt_arcResourceAccessor_cpp_FP9ARCHandlePCcUlPCcPUl
.endfn GetResource__Q34nw4r3lyt19ArcResourceAccessorFUlPCcPUl

# nw4r::lyt::ArcResourceAccessor::GetFont(const char*)
.fn GetFont__Q34nw4r3lyt19ArcResourceAccessorFPCc, global
/* 80409FB8 003D3578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80409FBC 003D357C  7C 08 02 A6 */	mflr r0
/* 80409FC0 003D3580  90 01 00 24 */	stw r0, 0x24(r1)
/* 80409FC4 003D3584  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80409FC8 003D3588  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80409FCC 003D358C  3B C3 00 28 */	addi r30, r3, 0x28
/* 80409FD0 003D3590  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80409FD4 003D3594  7C 9D 23 78 */	mr r29, r4
/* 80409FD8 003D3598  83 E3 00 28 */	lwz r31, 0x28(r3)
/* 80409FDC 003D359C  48 00 00 24 */	b .L_8040A000
.L_80409FE0:
/* 80409FE0 003D35A0  7F A3 EB 78 */	mr r3, r29
/* 80409FE4 003D35A4  38 9F 00 08 */	addi r4, r31, 0x8
/* 80409FE8 003D35A8  4B EB 88 4D */	bl strcmp
/* 80409FEC 003D35AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80409FF0 003D35B0  40 82 00 0C */	bne .L_80409FFC
/* 80409FF4 003D35B4  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 80409FF8 003D35B8  48 00 00 14 */	b .L_8040A00C
.L_80409FFC:
/* 80409FFC 003D35BC  83 FF 00 00 */	lwz r31, 0x0(r31)
.L_8040A000:
/* 8040A000 003D35C0  7C 1F F0 40 */	cmplw r31, r30
/* 8040A004 003D35C4  40 82 FF DC */	bne .L_80409FE0
/* 8040A008 003D35C8  38 60 00 00 */	li r3, 0x0
.L_8040A00C:
/* 8040A00C 003D35CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040A010 003D35D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040A014 003D35D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040A018 003D35D8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8040A01C 003D35DC  7C 08 03 A6 */	mtlr r0
/* 8040A020 003D35E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8040A024 003D35E4  4E 80 00 20 */	blr
.endfn GetFont__Q34nw4r3lyt19ArcResourceAccessorFPCc

# 0x8056D598 - 0x8056D5B0
.data
.balign 8
.sym lbl_8056D598, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte fn_8003997C
	.4byte GetResource__Q34nw4r3lyt19ArcResourceAccessorFUlPCcPUl
	.4byte GetFont__Q34nw4r3lyt19ArcResourceAccessorFPCc
	.4byte 0x00000000

# 0x80665DF8 - 0x80665E00
.section .sdata, "wa"
.balign 8
.sym lbl_80665DF8, local
	.4byte 0x2E000000
.sym lbl_80665DFC, local
	.4byte 0x2E2E0000
