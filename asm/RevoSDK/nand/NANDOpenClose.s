.include "macros.inc"
.file "RevoSDK/nand/NANDOpenClose.o"

# 0x8034F8B0 - 0x8034FDC0
.text
.balign 4

.fn nandOpen, local
/* 8034F8B0 00318E70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8034F8B4 00318E74  7C 08 02 A6 */	mflr r0
/* 8034F8B8 00318E78  90 01 00 64 */	stw r0, 0x64(r1)
/* 8034F8BC 00318E7C  39 61 00 60 */	addi r11, r1, 0x60
/* 8034F8C0 00318E80  4B F6 A8 95 */	bl _savegpr_27
/* 8034F8C4 00318E84  38 00 00 00 */	li r0, 0x0
/* 8034F8C8 00318E88  90 01 00 08 */	stw r0, 0x8(r1)
/* 8034F8CC 00318E8C  7C 9B 23 78 */	mr r27, r4
/* 8034F8D0 00318E90  7C 64 1B 78 */	mr r4, r3
/* 8034F8D4 00318E94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8034F8D8 00318E98  7C BC 2B 78 */	mr r28, r5
/* 8034F8DC 00318E9C  7C DD 33 78 */	mr r29, r6
/* 8034F8E0 00318EA0  7C FE 3B 78 */	mr r30, r7
/* 8034F8E4 00318EA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8034F8E8 00318EA8  38 61 00 08 */	addi r3, r1, 0x8
/* 8034F8EC 00318EAC  3B E0 00 00 */	li r31, 0x0
/* 8034F8F0 00318EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034F8F4 00318EB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8034F8F8 00318EB8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8034F8FC 00318EBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8034F900 00318EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F904 00318EC4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8034F908 00318EC8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8034F90C 00318ECC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8034F910 00318ED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8034F914 00318ED4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8034F918 00318ED8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8034F91C 00318EDC  90 01 00 40 */	stw r0, 0x40(r1)
/* 8034F920 00318EE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8034F924 00318EE4  48 00 0A 6D */	bl nandGenerateAbsPath
/* 8034F928 00318EE8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 8034F92C 00318EEC  40 82 00 1C */	bne .L_8034F948
/* 8034F930 00318EF0  38 61 00 08 */	addi r3, r1, 0x8
/* 8034F934 00318EF4  48 00 08 2D */	bl nandIsPrivatePath
/* 8034F938 00318EF8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034F93C 00318EFC  41 82 00 0C */	beq .L_8034F948
/* 8034F940 00318F00  38 60 FF 9A */	li r3, -0x66
/* 8034F944 00318F04  48 00 00 64 */	b .L_8034F9A8
.L_8034F948:
/* 8034F948 00318F08  2C 1B 00 03 */	cmpwi r27, 0x3
/* 8034F94C 00318F0C  41 82 00 18 */	beq .L_8034F964
/* 8034F950 00318F10  2C 1B 00 01 */	cmpwi r27, 0x1
/* 8034F954 00318F14  41 82 00 18 */	beq .L_8034F96C
/* 8034F958 00318F18  2C 1B 00 02 */	cmpwi r27, 0x2
/* 8034F95C 00318F1C  41 82 00 18 */	beq .L_8034F974
/* 8034F960 00318F20  48 00 00 18 */	b .L_8034F978
.L_8034F964:
/* 8034F964 00318F24  3B E0 00 03 */	li r31, 0x3
/* 8034F968 00318F28  48 00 00 10 */	b .L_8034F978
.L_8034F96C:
/* 8034F96C 00318F2C  3B E0 00 01 */	li r31, 0x1
/* 8034F970 00318F30  48 00 00 08 */	b .L_8034F978
.L_8034F974:
/* 8034F974 00318F34  3B E0 00 02 */	li r31, 0x2
.L_8034F978:
/* 8034F978 00318F38  2C 1D 00 00 */	cmpwi r29, 0x0
/* 8034F97C 00318F3C  41 82 00 20 */	beq .L_8034F99C
/* 8034F980 00318F40  3C A0 80 35 */	lis r5, nandOpenCallback@ha
/* 8034F984 00318F44  7F E4 FB 78 */	mr r4, r31
/* 8034F988 00318F48  7F 86 E3 78 */	mr r6, r28
/* 8034F98C 00318F4C  38 61 00 08 */	addi r3, r1, 0x8
/* 8034F990 00318F50  38 A5 FB E0 */	addi r5, r5, nandOpenCallback@l
/* 8034F994 00318F54  4B FC 75 FD */	bl ISFS_OpenAsync
/* 8034F998 00318F58  48 00 00 10 */	b .L_8034F9A8
.L_8034F99C:
/* 8034F99C 00318F5C  7F E4 FB 78 */	mr r4, r31
/* 8034F9A0 00318F60  38 61 00 08 */	addi r3, r1, 0x8
/* 8034F9A4 00318F64  4B FC 75 1D */	bl ISFS_Open
.L_8034F9A8:
/* 8034F9A8 00318F68  39 61 00 60 */	addi r11, r1, 0x60
/* 8034F9AC 00318F6C  4B F6 A7 F5 */	bl _restgpr_27
/* 8034F9B0 00318F70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8034F9B4 00318F74  7C 08 03 A6 */	mtlr r0
/* 8034F9B8 00318F78  38 21 00 60 */	addi r1, r1, 0x60
/* 8034F9BC 00318F7C  4E 80 00 20 */	blr
.endfn nandOpen

.fn NANDOpen, global
/* 8034F9C0 00318F80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034F9C4 00318F84  7C 08 02 A6 */	mflr r0
/* 8034F9C8 00318F88  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034F9CC 00318F8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034F9D0 00318F90  7C BF 2B 78 */	mr r31, r5
/* 8034F9D4 00318F94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034F9D8 00318F98  7C 9E 23 78 */	mr r30, r4
/* 8034F9DC 00318F9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034F9E0 00318FA0  7C 7D 1B 78 */	mr r29, r3
/* 8034F9E4 00318FA4  48 00 08 1D */	bl nandIsInitialized
/* 8034F9E8 00318FA8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034F9EC 00318FAC  40 82 00 0C */	bne .L_8034F9F8
/* 8034F9F0 00318FB0  38 60 FF 80 */	li r3, -0x80
/* 8034F9F4 00318FB4  48 00 00 3C */	b .L_8034FA30
.L_8034F9F8:
/* 8034F9F8 00318FB8  7F A3 EB 78 */	mr r3, r29
/* 8034F9FC 00318FBC  7F E4 FB 78 */	mr r4, r31
/* 8034FA00 00318FC0  38 A0 00 00 */	li r5, 0x0
/* 8034FA04 00318FC4  38 C0 00 00 */	li r6, 0x0
/* 8034FA08 00318FC8  38 E0 00 00 */	li r7, 0x0
/* 8034FA0C 00318FCC  4B FF FE A5 */	bl nandOpen
/* 8034FA10 00318FD0  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FA14 00318FD4  41 80 00 18 */	blt .L_8034FA2C
/* 8034FA18 00318FD8  90 7E 00 00 */	stw r3, 0x0(r30)
/* 8034FA1C 00318FDC  38 00 00 01 */	li r0, 0x1
/* 8034FA20 00318FE0  38 60 00 00 */	li r3, 0x0
/* 8034FA24 00318FE4  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8034FA28 00318FE8  48 00 00 08 */	b .L_8034FA30
.L_8034FA2C:
/* 8034FA2C 00318FEC  48 00 07 F5 */	bl nandConvertErrorCode
.L_8034FA30:
/* 8034FA30 00318FF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FA34 00318FF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FA38 00318FF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FA3C 00318FFC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FA40 00319000  7C 08 03 A6 */	mtlr r0
/* 8034FA44 00319004  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FA48 00319008  4E 80 00 20 */	blr
.endfn NANDOpen
/* 8034FA4C 0031900C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn NANDPrivateOpen, global
/* 8034FA50 00319010  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FA54 00319014  7C 08 02 A6 */	mflr r0
/* 8034FA58 00319018  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FA5C 0031901C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FA60 00319020  7C BF 2B 78 */	mr r31, r5
/* 8034FA64 00319024  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034FA68 00319028  7C 9E 23 78 */	mr r30, r4
/* 8034FA6C 0031902C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034FA70 00319030  7C 7D 1B 78 */	mr r29, r3
/* 8034FA74 00319034  48 00 07 8D */	bl nandIsInitialized
/* 8034FA78 00319038  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FA7C 0031903C  40 82 00 0C */	bne .L_8034FA88
/* 8034FA80 00319040  38 60 FF 80 */	li r3, -0x80
/* 8034FA84 00319044  48 00 00 3C */	b .L_8034FAC0
.L_8034FA88:
/* 8034FA88 00319048  7F A3 EB 78 */	mr r3, r29
/* 8034FA8C 0031904C  7F E4 FB 78 */	mr r4, r31
/* 8034FA90 00319050  38 A0 00 00 */	li r5, 0x0
/* 8034FA94 00319054  38 C0 00 00 */	li r6, 0x0
/* 8034FA98 00319058  38 E0 00 01 */	li r7, 0x1
/* 8034FA9C 0031905C  4B FF FE 15 */	bl nandOpen
/* 8034FAA0 00319060  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FAA4 00319064  41 80 00 18 */	blt .L_8034FABC
/* 8034FAA8 00319068  90 7E 00 00 */	stw r3, 0x0(r30)
/* 8034FAAC 0031906C  38 00 00 01 */	li r0, 0x1
/* 8034FAB0 00319070  38 60 00 00 */	li r3, 0x0
/* 8034FAB4 00319074  98 1E 00 8A */	stb r0, 0x8a(r30)
/* 8034FAB8 00319078  48 00 00 08 */	b .L_8034FAC0
.L_8034FABC:
/* 8034FABC 0031907C  48 00 07 65 */	bl nandConvertErrorCode
.L_8034FAC0:
/* 8034FAC0 00319080  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FAC4 00319084  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FAC8 00319088  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FACC 0031908C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FAD0 00319090  7C 08 03 A6 */	mtlr r0
/* 8034FAD4 00319094  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FAD8 00319098  4E 80 00 20 */	blr
.endfn NANDPrivateOpen
/* 8034FADC 0031909C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn NANDOpenAsync, global
/* 8034FAE0 003190A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FAE4 003190A4  7C 08 02 A6 */	mflr r0
/* 8034FAE8 003190A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FAEC 003190AC  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FAF0 003190B0  4B F6 A6 65 */	bl _savegpr_27
/* 8034FAF4 003190B4  7C 7B 1B 78 */	mr r27, r3
/* 8034FAF8 003190B8  7C 9C 23 78 */	mr r28, r4
/* 8034FAFC 003190BC  7C BD 2B 78 */	mr r29, r5
/* 8034FB00 003190C0  7C DE 33 78 */	mr r30, r6
/* 8034FB04 003190C4  7C FF 3B 78 */	mr r31, r7
/* 8034FB08 003190C8  48 00 06 F9 */	bl nandIsInitialized
/* 8034FB0C 003190CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FB10 003190D0  40 82 00 0C */	bne .L_8034FB1C
/* 8034FB14 003190D4  38 60 FF 80 */	li r3, -0x80
/* 8034FB18 003190D8  48 00 00 28 */	b .L_8034FB40
.L_8034FB1C:
/* 8034FB1C 003190DC  93 DF 00 04 */	stw r30, 0x4(r31)
/* 8034FB20 003190E0  7F 63 DB 78 */	mr r3, r27
/* 8034FB24 003190E4  7F A4 EB 78 */	mr r4, r29
/* 8034FB28 003190E8  7F E5 FB 78 */	mr r5, r31
/* 8034FB2C 003190EC  93 9F 00 08 */	stw r28, 0x8(r31)
/* 8034FB30 003190F0  38 C0 00 01 */	li r6, 0x1
/* 8034FB34 003190F4  38 E0 00 00 */	li r7, 0x0
/* 8034FB38 003190F8  4B FF FD 79 */	bl nandOpen
/* 8034FB3C 003190FC  48 00 06 E5 */	bl nandConvertErrorCode
.L_8034FB40:
/* 8034FB40 00319100  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FB44 00319104  4B F6 A6 5D */	bl _restgpr_27
/* 8034FB48 00319108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FB4C 0031910C  7C 08 03 A6 */	mtlr r0
/* 8034FB50 00319110  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FB54 00319114  4E 80 00 20 */	blr
.endfn NANDOpenAsync
/* 8034FB58 00319118  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034FB5C 0031911C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn NANDPrivateOpenAsync, global
/* 8034FB60 00319120  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FB64 00319124  7C 08 02 A6 */	mflr r0
/* 8034FB68 00319128  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FB6C 0031912C  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FB70 00319130  4B F6 A5 E5 */	bl _savegpr_27
/* 8034FB74 00319134  7C 7B 1B 78 */	mr r27, r3
/* 8034FB78 00319138  7C 9C 23 78 */	mr r28, r4
/* 8034FB7C 0031913C  7C BD 2B 78 */	mr r29, r5
/* 8034FB80 00319140  7C DE 33 78 */	mr r30, r6
/* 8034FB84 00319144  7C FF 3B 78 */	mr r31, r7
/* 8034FB88 00319148  48 00 06 79 */	bl nandIsInitialized
/* 8034FB8C 0031914C  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FB90 00319150  40 82 00 0C */	bne .L_8034FB9C
/* 8034FB94 00319154  38 60 FF 80 */	li r3, -0x80
/* 8034FB98 00319158  48 00 00 28 */	b .L_8034FBC0
.L_8034FB9C:
/* 8034FB9C 0031915C  93 DF 00 04 */	stw r30, 0x4(r31)
/* 8034FBA0 00319160  7F 63 DB 78 */	mr r3, r27
/* 8034FBA4 00319164  7F A4 EB 78 */	mr r4, r29
/* 8034FBA8 00319168  7F E5 FB 78 */	mr r5, r31
/* 8034FBAC 0031916C  93 9F 00 08 */	stw r28, 0x8(r31)
/* 8034FBB0 00319170  38 C0 00 01 */	li r6, 0x1
/* 8034FBB4 00319174  38 E0 00 01 */	li r7, 0x1
/* 8034FBB8 00319178  4B FF FC F9 */	bl nandOpen
/* 8034FBBC 0031917C  48 00 06 65 */	bl nandConvertErrorCode
.L_8034FBC0:
/* 8034FBC0 00319180  39 61 00 20 */	addi r11, r1, 0x20
/* 8034FBC4 00319184  4B F6 A5 DD */	bl _restgpr_27
/* 8034FBC8 00319188  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FBCC 0031918C  7C 08 03 A6 */	mtlr r0
/* 8034FBD0 00319190  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FBD4 00319194  4E 80 00 20 */	blr
.endfn NANDPrivateOpenAsync
/* 8034FBD8 00319198  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034FBDC 0031919C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn nandOpenCallback, local
/* 8034FBE0 003191A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FBE4 003191A4  7C 08 02 A6 */	mflr r0
/* 8034FBE8 003191A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FBEC 003191AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FBF0 003191B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FBF4 003191B4  7C 9F 23 78 */	mr r31, r4
/* 8034FBF8 003191B8  41 80 00 38 */	blt .L_8034FC30
/* 8034FBFC 003191BC  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8034FC00 003191C0  38 C0 00 02 */	li r6, 0x2
/* 8034FC04 003191C4  38 00 00 01 */	li r0, 0x1
/* 8034FC08 003191C8  90 65 00 00 */	stw r3, 0x0(r5)
/* 8034FC0C 003191CC  38 60 00 00 */	li r3, 0x0
/* 8034FC10 003191D0  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8034FC14 003191D4  98 C5 00 89 */	stb r6, 0x89(r5)
/* 8034FC18 003191D8  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8034FC1C 003191DC  98 05 00 8A */	stb r0, 0x8a(r5)
/* 8034FC20 003191E0  81 84 00 04 */	lwz r12, 0x4(r4)
/* 8034FC24 003191E4  7D 89 03 A6 */	mtctr r12
/* 8034FC28 003191E8  4E 80 04 21 */	bctrl
/* 8034FC2C 003191EC  48 00 00 18 */	b .L_8034FC44
.L_8034FC30:
/* 8034FC30 003191F0  48 00 05 F1 */	bl nandConvertErrorCode
/* 8034FC34 003191F4  81 9F 00 04 */	lwz r12, 0x4(r31)
/* 8034FC38 003191F8  7F E4 FB 78 */	mr r4, r31
/* 8034FC3C 003191FC  7D 89 03 A6 */	mtctr r12
/* 8034FC40 00319200  4E 80 04 21 */	bctrl
.L_8034FC44:
/* 8034FC44 00319204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FC48 00319208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FC4C 0031920C  7C 08 03 A6 */	mtlr r0
/* 8034FC50 00319210  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FC54 00319214  4E 80 00 20 */	blr
.endfn nandOpenCallback
/* 8034FC58 00319218  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034FC5C 0031921C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn NANDClose, global
/* 8034FC60 00319220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FC64 00319224  7C 08 02 A6 */	mflr r0
/* 8034FC68 00319228  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FC6C 0031922C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FC70 00319230  7C 7F 1B 78 */	mr r31, r3
/* 8034FC74 00319234  48 00 05 8D */	bl nandIsInitialized
/* 8034FC78 00319238  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FC7C 0031923C  40 82 00 0C */	bne .L_8034FC88
/* 8034FC80 00319240  38 60 FF 80 */	li r3, -0x80
/* 8034FC84 00319244  48 00 00 34 */	b .L_8034FCB8
.L_8034FC88:
/* 8034FC88 00319248  88 1F 00 8A */	lbz r0, 0x8a(r31)
/* 8034FC8C 0031924C  28 00 00 01 */	cmplwi r0, 0x1
/* 8034FC90 00319250  41 82 00 0C */	beq .L_8034FC9C
/* 8034FC94 00319254  38 60 FF F8 */	li r3, -0x8
/* 8034FC98 00319258  48 00 00 20 */	b .L_8034FCB8
.L_8034FC9C:
/* 8034FC9C 0031925C  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 8034FCA0 00319260  4B FC 76 A1 */	bl ISFS_Close
/* 8034FCA4 00319264  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FCA8 00319268  40 82 00 0C */	bne .L_8034FCB4
/* 8034FCAC 0031926C  38 00 00 02 */	li r0, 0x2
/* 8034FCB0 00319270  98 1F 00 8A */	stb r0, 0x8a(r31)
.L_8034FCB4:
/* 8034FCB4 00319274  48 00 05 6D */	bl nandConvertErrorCode
.L_8034FCB8:
/* 8034FCB8 00319278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FCBC 0031927C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FCC0 00319280  7C 08 03 A6 */	mtlr r0
/* 8034FCC4 00319284  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FCC8 00319288  4E 80 00 20 */	blr
.endfn NANDClose
/* 8034FCCC 0031928C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn NANDCloseAsync, global
/* 8034FCD0 00319290  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8034FCD4 00319294  7C 08 02 A6 */	mflr r0
/* 8034FCD8 00319298  90 01 00 24 */	stw r0, 0x24(r1)
/* 8034FCDC 0031929C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8034FCE0 003192A0  7C BF 2B 78 */	mr r31, r5
/* 8034FCE4 003192A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8034FCE8 003192A8  7C 9E 23 78 */	mr r30, r4
/* 8034FCEC 003192AC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8034FCF0 003192B0  7C 7D 1B 78 */	mr r29, r3
/* 8034FCF4 003192B4  48 00 05 0D */	bl nandIsInitialized
/* 8034FCF8 003192B8  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FCFC 003192BC  40 82 00 0C */	bne .L_8034FD08
/* 8034FD00 003192C0  38 60 FF 80 */	li r3, -0x80
/* 8034FD04 003192C4  48 00 00 38 */	b .L_8034FD3C
.L_8034FD08:
/* 8034FD08 003192C8  88 1D 00 8A */	lbz r0, 0x8a(r29)
/* 8034FD0C 003192CC  28 00 00 01 */	cmplwi r0, 0x1
/* 8034FD10 003192D0  41 82 00 0C */	beq .L_8034FD1C
/* 8034FD14 003192D4  38 60 FF F8 */	li r3, -0x8
/* 8034FD18 003192D8  48 00 00 24 */	b .L_8034FD3C
.L_8034FD1C:
/* 8034FD1C 003192DC  93 DF 00 04 */	stw r30, 0x4(r31)
/* 8034FD20 003192E0  3C 80 80 35 */	lis r4, nandCloseCallback@ha
/* 8034FD24 003192E4  7F E5 FB 78 */	mr r5, r31
/* 8034FD28 003192E8  93 BF 00 08 */	stw r29, 0x8(r31)
/* 8034FD2C 003192EC  38 84 FD 60 */	addi r4, r4, nandCloseCallback@l
/* 8034FD30 003192F0  80 7D 00 00 */	lwz r3, 0x0(r29)
/* 8034FD34 003192F4  4B FC 76 1D */	bl ISFS_CloseAsync
/* 8034FD38 003192F8  48 00 04 E9 */	bl nandConvertErrorCode
.L_8034FD3C:
/* 8034FD3C 003192FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034FD40 00319300  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8034FD44 00319304  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8034FD48 00319308  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8034FD4C 0031930C  7C 08 03 A6 */	mtlr r0
/* 8034FD50 00319310  38 21 00 20 */	addi r1, r1, 0x20
/* 8034FD54 00319314  4E 80 00 20 */	blr
.endfn NANDCloseAsync
/* 8034FD58 00319318  00 00 00 00 */	.4byte 0x00000000 /* invalid */
/* 8034FD5C 0031931C  00 00 00 00 */	.4byte 0x00000000 /* invalid */

.fn nandCloseCallback, local
/* 8034FD60 00319320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8034FD64 00319324  7C 08 02 A6 */	mflr r0
/* 8034FD68 00319328  2C 03 00 00 */	cmpwi r3, 0x0
/* 8034FD6C 0031932C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8034FD70 00319330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8034FD74 00319334  7C 9F 23 78 */	mr r31, r4
/* 8034FD78 00319338  40 82 00 1C */	bne .L_8034FD94
/* 8034FD7C 0031933C  80 A4 00 08 */	lwz r5, 0x8(r4)
/* 8034FD80 00319340  38 C0 00 07 */	li r6, 0x7
/* 8034FD84 00319344  38 00 00 02 */	li r0, 0x2
/* 8034FD88 00319348  98 C5 00 89 */	stb r6, 0x89(r5)
/* 8034FD8C 0031934C  80 84 00 08 */	lwz r4, 0x8(r4)
/* 8034FD90 00319350  98 04 00 8A */	stb r0, 0x8a(r4)
.L_8034FD94:
/* 8034FD94 00319354  48 00 04 8D */	bl nandConvertErrorCode
/* 8034FD98 00319358  81 9F 00 04 */	lwz r12, 0x4(r31)
/* 8034FD9C 0031935C  7F E4 FB 78 */	mr r4, r31
/* 8034FDA0 00319360  7D 89 03 A6 */	mtctr r12
/* 8034FDA4 00319364  4E 80 04 21 */	bctrl
/* 8034FDA8 00319368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034FDAC 0031936C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8034FDB0 00319370  7C 08 03 A6 */	mtlr r0
/* 8034FDB4 00319374  38 21 00 10 */	addi r1, r1, 0x10
/* 8034FDB8 00319378  4E 80 00 20 */	blr
.endfn nandCloseCallback
/* 8034FDBC 0031937C  00 00 00 00 */	.4byte 0x00000000 /* invalid */
