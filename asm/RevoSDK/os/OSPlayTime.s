.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global OSPlayTimeIsLimited
OSPlayTimeIsLimited:
/* 8035E820 00327DE0  80 0D B9 C8 */	lwz r0, lbl_80667B48@sda21(r13)
/* 8035E824 00327DE4  80 6D B9 CC */	lwz r3, lbl_80667B4C@sda21(r13)
/* 8035E828 00327DE8  7C 60 03 78 */	or r0, r3, r0
/* 8035E82C 00327DEC  30 60 FF FF */	addic r3, r0, -1
/* 8035E830 00327DF0  7C 63 01 10 */	subfe r3, r3, r0
/* 8035E834 00327DF4  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSPlayTimeFadeLastAIDCallback
__OSPlayTimeFadeLastAIDCallback:
/* 8035E840 00327E00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8035E844 00327E04  7C 08 02 A6 */	mflr r0
/* 8035E848 00327E08  90 01 00 44 */	stw r0, 0x44(r1)
/* 8035E84C 00327E0C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8035E850 00327E10  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8035E854 00327E14  93 A1 00 34 */	stw r29, 0x34(r1)
/* 8035E858 00327E18  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E85C 00327E1C  81 83 04 90 */	lwz r12, 0x490(r3)
/* 8035E860 00327E20  2C 0C 00 00 */	cmpwi r12, 0
/* 8035E864 00327E24  41 82 00 0C */	beq .L_8035E870
/* 8035E868 00327E28  7D 89 03 A6 */	mtctr r12
/* 8035E86C 00327E2C  4E 80 04 21 */	bctrl 
.L_8035E870:
/* 8035E870 00327E30  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E874 00327E34  80 03 04 88 */	lwz r0, 0x488(r3)
/* 8035E878 00327E38  2C 00 00 00 */	cmpwi r0, 0
/* 8035E87C 00327E3C  40 82 00 14 */	bne .L_8035E890
/* 8035E880 00327E40  4B F7 29 41 */	bl AIGetDMAStartAddr
/* 8035E884 00327E44  80 8D B9 B8 */	lwz r4, lbl_80667B38@sda21(r13)
/* 8035E888 00327E48  3C 03 80 00 */	addis r0, r3, 0x8000
/* 8035E88C 00327E4C  90 04 04 84 */	stw r0, 0x484(r4)
.L_8035E890:
/* 8035E890 00327E50  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E894 00327E54  80 03 04 88 */	lwz r0, 0x488(r3)
/* 8035E898 00327E58  28 00 00 01 */	cmplwi r0, 1
/* 8035E89C 00327E5C  40 82 00 38 */	bne .L_8035E8D4
/* 8035E8A0 00327E60  80 63 04 84 */	lwz r3, 0x484(r3)
/* 8035E8A4 00327E64  38 80 00 04 */	li r4, 4
/* 8035E8A8 00327E68  4B FF 56 D9 */	bl DCInvalidateRange
/* 8035E8AC 00327E6C  80 8D B9 B8 */	lwz r4, lbl_80667B38@sda21(r13)
/* 8035E8B0 00327E70  80 64 04 84 */	lwz r3, 0x484(r4)
/* 8035E8B4 00327E74  A8 03 00 00 */	lha r0, 0(r3)
/* 8035E8B8 00327E78  38 63 00 02 */	addi r3, r3, 2
/* 8035E8BC 00327E7C  B0 04 04 8C */	sth r0, 0x48c(r4)
/* 8035E8C0 00327E80  90 64 04 84 */	stw r3, 0x484(r4)
/* 8035E8C4 00327E84  80 8D B9 B8 */	lwz r4, lbl_80667B38@sda21(r13)
/* 8035E8C8 00327E88  80 64 04 84 */	lwz r3, 0x484(r4)
/* 8035E8CC 00327E8C  A8 03 00 00 */	lha r0, 0(r3)
/* 8035E8D0 00327E90  B0 04 04 8E */	sth r0, 0x48e(r4)
.L_8035E8D4:
/* 8035E8D4 00327E94  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E8D8 00327E98  80 03 04 88 */	lwz r0, 0x488(r3)
/* 8035E8DC 00327E9C  28 00 00 01 */	cmplwi r0, 1
/* 8035E8E0 00327EA0  41 80 00 F0 */	blt .L_8035E9D0
/* 8035E8E4 00327EA4  80 03 04 80 */	lwz r0, 0x480(r3)
/* 8035E8E8 00327EA8  1C 00 02 40 */	mulli r0, r0, 0x240
/* 8035E8EC 00327EAC  7F E3 02 14 */	add r31, r3, r0
/* 8035E8F0 00327EB0  7F FE FB 78 */	mr r30, r31
/* 8035E8F4 00327EB4  4B F7 28 ED */	bl AIGetDMALength
/* 8035E8F8 00327EB8  7C 7D 1B 78 */	mr r29, r3
/* 8035E8FC 00327EBC  C0 42 BE 58 */	lfs f2, float_8066C1D8@sda21(r2)
/* 8035E900 00327EC0  C8 22 BE 60 */	lfd f1, double_8066C1E0@sda21(r2)
/* 8035E904 00327EC4  7F A5 EB 78 */	mr r5, r29
/* 8035E908 00327EC8  3C 80 43 30 */	lis r4, 0x4330
/* 8035E90C 00327ECC  48 00 00 84 */	b .L_8035E990
.L_8035E910:
/* 8035E910 00327ED0  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E914 00327ED4  38 A5 FF FC */	addi r5, r5, -4
/* 8035E918 00327ED8  90 81 00 08 */	stw r4, 8(r1)
/* 8035E91C 00327EDC  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 8035E920 00327EE0  B0 1E 00 00 */	sth r0, 0(r30)
/* 8035E924 00327EE4  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E928 00327EE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8035E92C 00327EEC  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 8035E930 00327EF0  B0 1E 00 02 */	sth r0, 2(r30)
/* 8035E934 00327EF4  3B DE 00 04 */	addi r30, r30, 4
/* 8035E938 00327EF8  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E93C 00327EFC  A8 03 04 8C */	lha r0, 0x48c(r3)
/* 8035E940 00327F00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035E944 00327F04  90 01 00 0C */	stw r0, 0xc(r1)
/* 8035E948 00327F08  C8 01 00 08 */	lfd f0, 8(r1)
/* 8035E94C 00327F0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8035E950 00327F10  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8035E954 00327F14  FC 00 00 1E */	fctiwz f0, f0
/* 8035E958 00327F18  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8035E95C 00327F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035E960 00327F20  B0 03 04 8C */	sth r0, 0x48c(r3)
/* 8035E964 00327F24  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E968 00327F28  A8 03 04 8E */	lha r0, 0x48e(r3)
/* 8035E96C 00327F2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8035E970 00327F30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8035E974 00327F34  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8035E978 00327F38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8035E97C 00327F3C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8035E980 00327F40  FC 00 00 1E */	fctiwz f0, f0
/* 8035E984 00327F44  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8035E988 00327F48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035E98C 00327F4C  B0 03 04 8E */	sth r0, 0x48e(r3)
.L_8035E990:
/* 8035E990 00327F50  2C 05 00 00 */	cmpwi r5, 0
/* 8035E994 00327F54  40 82 FF 7C */	bne .L_8035E910
/* 8035E998 00327F58  7F E3 FB 78 */	mr r3, r31
/* 8035E99C 00327F5C  7F A4 EB 78 */	mr r4, r29
/* 8035E9A0 00327F60  4B FF 56 11 */	bl DCFlushRange
/* 8035E9A4 00327F64  7F E3 FB 78 */	mr r3, r31
/* 8035E9A8 00327F68  7F A4 EB 78 */	mr r4, r29
/* 8035E9AC 00327F6C  4B F7 27 45 */	bl AIInitDMA
/* 8035E9B0 00327F70  80 8D B9 B8 */	lwz r4, lbl_80667B38@sda21(r13)
/* 8035E9B4 00327F74  80 64 04 80 */	lwz r3, 0x480(r4)
/* 8035E9B8 00327F78  38 03 00 01 */	addi r0, r3, 1
/* 8035E9BC 00327F7C  90 04 04 80 */	stw r0, 0x480(r4)
/* 8035E9C0 00327F80  80 6D B9 B8 */	lwz r3, lbl_80667B38@sda21(r13)
/* 8035E9C4 00327F84  80 03 04 80 */	lwz r0, 0x480(r3)
/* 8035E9C8 00327F88  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8035E9CC 00327F8C  90 03 04 80 */	stw r0, 0x480(r3)
.L_8035E9D0:
/* 8035E9D0 00327F90  80 8D B9 B8 */	lwz r4, lbl_80667B38@sda21(r13)
/* 8035E9D4 00327F94  80 64 04 88 */	lwz r3, 0x488(r4)
/* 8035E9D8 00327F98  38 03 00 01 */	addi r0, r3, 1
/* 8035E9DC 00327F9C  90 04 04 88 */	stw r0, 0x488(r4)
/* 8035E9E0 00327FA0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8035E9E4 00327FA4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8035E9E8 00327FA8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 8035E9EC 00327FAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8035E9F0 00327FB0  7C 08 03 A6 */	mtlr r0
/* 8035E9F4 00327FB4  38 21 00 40 */	addi r1, r1, 0x40
/* 8035E9F8 00327FB8  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSWriteExpiredFlag
__OSWriteExpiredFlag:
/* 8035EA00 00327FC0  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035EA04 00327FC4  7C 2C 0B 78 */	mr r12, r1
/* 8035EA08 00327FC8  21 6B FF 00 */	subfic r11, r11, -256
/* 8035EA0C 00327FCC  7C 21 59 6E */	stwux r1, r1, r11
/* 8035EA10 00327FD0  7C 08 02 A6 */	mflr r0
/* 8035EA14 00327FD4  3C 60 80 56 */	lis r3, lbl_8055EEB8@ha
/* 8035EA18 00327FD8  38 A0 00 00 */	li r5, 0
/* 8035EA1C 00327FDC  90 0C 00 04 */	stw r0, 4(r12)
/* 8035EA20 00327FE0  38 63 EE B8 */	addi r3, r3, lbl_8055EEB8@l
/* 8035EA24 00327FE4  38 80 00 3F */	li r4, 0x3f
/* 8035EA28 00327FE8  93 EC FF FC */	stw r31, -4(r12)
/* 8035EA2C 00327FEC  93 CC FF F8 */	stw r30, -8(r12)
/* 8035EA30 00327FF0  3B C0 00 00 */	li r30, 0
/* 8035EA34 00327FF4  4B FE FC FD */	bl NANDPrivateCreate
/* 8035EA38 00327FF8  2C 03 00 00 */	cmpwi r3, 0
/* 8035EA3C 00327FFC  7C 7F 1B 78 */	mr r31, r3
/* 8035EA40 00328000  41 82 00 0C */	beq .L_8035EA4C
/* 8035EA44 00328004  2C 03 FF FA */	cmpwi r3, -6
/* 8035EA48 00328008  40 82 00 8C */	bne .L_8035EAD4
.L_8035EA4C:
/* 8035EA4C 0032800C  3C 60 80 56 */	lis r3, lbl_8055EEB8@ha
/* 8035EA50 00328010  38 81 00 40 */	addi r4, r1, 0x40
/* 8035EA54 00328014  38 63 EE B8 */	addi r3, r3, lbl_8055EEB8@l
/* 8035EA58 00328018  38 A0 00 02 */	li r5, 2
/* 8035EA5C 0032801C  4B FF 0F F5 */	bl NANDPrivateOpen
/* 8035EA60 00328020  2C 03 00 00 */	cmpwi r3, 0
/* 8035EA64 00328024  7C 7F 1B 78 */	mr r31, r3
/* 8035EA68 00328028  40 82 00 6C */	bne .L_8035EAD4
/* 8035EA6C 0032802C  3B C0 00 01 */	li r30, 1
/* 8035EA70 00328030  4B FB 4C E1 */	bl ESP_InitLib
/* 8035EA74 00328034  2C 03 00 00 */	cmpwi r3, 0
/* 8035EA78 00328038  7C 7F 1B 78 */	mr r31, r3
/* 8035EA7C 0032803C  40 82 00 58 */	bne .L_8035EAD4
/* 8035EA80 00328040  38 61 00 20 */	addi r3, r1, 0x20
/* 8035EA84 00328044  38 80 00 00 */	li r4, 0
/* 8035EA88 00328048  38 A0 00 20 */	li r5, 0x20
/* 8035EA8C 0032804C  4B CA 58 C5 */	bl memset
/* 8035EA90 00328050  38 61 00 20 */	addi r3, r1, 0x20
/* 8035EA94 00328054  4B FB 51 6D */	bl ESP_GetTitleId
/* 8035EA98 00328058  2C 03 00 00 */	cmpwi r3, 0
/* 8035EA9C 0032805C  7C 7F 1B 78 */	mr r31, r3
/* 8035EAA0 00328060  40 82 00 34 */	bne .L_8035EAD4
/* 8035EAA4 00328064  38 61 00 40 */	addi r3, r1, 0x40
/* 8035EAA8 00328068  38 81 00 20 */	addi r4, r1, 0x20
/* 8035EAAC 0032806C  38 A0 00 20 */	li r5, 0x20
/* 8035EAB0 00328070  4B FF 03 71 */	bl NANDWrite
/* 8035EAB4 00328074  2C 03 00 00 */	cmpwi r3, 0
/* 8035EAB8 00328078  7C 7F 1B 78 */	mr r31, r3
/* 8035EABC 0032807C  41 80 00 18 */	blt .L_8035EAD4
/* 8035EAC0 00328080  2C 03 00 20 */	cmpwi r3, 0x20
/* 8035EAC4 00328084  41 82 00 0C */	beq .L_8035EAD0
/* 8035EAC8 00328088  3B E0 FF F8 */	li r31, -8
/* 8035EACC 0032808C  48 00 00 08 */	b .L_8035EAD4
.L_8035EAD0:
/* 8035EAD0 00328090  3B E0 00 00 */	li r31, 0
.L_8035EAD4:
/* 8035EAD4 00328094  2C 1E 00 00 */	cmpwi r30, 0
/* 8035EAD8 00328098  41 82 00 0C */	beq .L_8035EAE4
/* 8035EADC 0032809C  38 61 00 40 */	addi r3, r1, 0x40
/* 8035EAE0 003280A0  4B FF 11 81 */	bl NANDClose
.L_8035EAE4:
/* 8035EAE4 003280A4  2C 1F 00 00 */	cmpwi r31, 0
/* 8035EAE8 003280A8  40 82 00 0C */	bne .L_8035EAF4
/* 8035EAEC 003280AC  38 60 00 01 */	li r3, 1
/* 8035EAF0 003280B0  48 00 00 08 */	b .L_8035EAF8
.L_8035EAF4:
/* 8035EAF4 003280B4  38 60 00 00 */	li r3, 0
.L_8035EAF8:
/* 8035EAF8 003280B8  81 41 00 00 */	lwz r10, 0(r1)
/* 8035EAFC 003280BC  80 0A 00 04 */	lwz r0, 4(r10)
/* 8035EB00 003280C0  83 EA FF FC */	lwz r31, -4(r10)
/* 8035EB04 003280C4  83 CA FF F8 */	lwz r30, -8(r10)
/* 8035EB08 003280C8  7C 08 03 A6 */	mtlr r0
/* 8035EB0C 003280CC  7D 41 53 78 */	mr r1, r10
/* 8035EB10 003280D0  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSWriteExpiredFlagIfSet
__OSWriteExpiredFlagIfSet:
/* 8035EB20 003280E0  80 0D B9 BC */	lwz r0, lbl_80667B3C@sda21(r13)
/* 8035EB24 003280E4  2C 00 00 00 */	cmpwi r0, 0
/* 8035EB28 003280E8  41 82 00 08 */	beq .L_8035EB30
/* 8035EB2C 003280EC  4B FF FE D4 */	b __OSWriteExpiredFlag
.L_8035EB30:
/* 8035EB30 003280F0  38 60 00 00 */	li r3, 0
/* 8035EB34 003280F4  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSPlayTimeRebootThread
__OSPlayTimeRebootThread:
/* 8035EB40 00328100  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035EB44 00328104  7C 2C 0B 78 */	mr r12, r1
/* 8035EB48 00328108  21 6B FB 20 */	subfic r11, r11, -1248
/* 8035EB4C 0032810C  7C 21 59 6E */	stwux r1, r1, r11
/* 8035EB50 00328110  7C 08 02 A6 */	mflr r0
/* 8035EB54 00328114  38 80 00 00 */	li r4, 0
/* 8035EB58 00328118  38 A0 04 94 */	li r5, 0x494
/* 8035EB5C 0032811C  90 0C 00 04 */	stw r0, 4(r12)
/* 8035EB60 00328120  38 61 00 20 */	addi r3, r1, 0x20
/* 8035EB64 00328124  93 EC FF FC */	stw r31, -4(r12)
/* 8035EB68 00328128  93 CC FF F8 */	stw r30, -8(r12)
/* 8035EB6C 0032812C  93 AC FF F4 */	stw r29, -0xc(r12)
/* 8035EB70 00328130  90 6D B9 B8 */	stw r3, lbl_80667B38@sda21(r13)
/* 8035EB74 00328134  4B CA 57 DD */	bl memset
/* 8035EB78 00328138  3C 60 80 36 */	lis r3, __OSPlayTimeFadeLastAIDCallback@ha
/* 8035EB7C 0032813C  38 63 E8 40 */	addi r3, r3, __OSPlayTimeFadeLastAIDCallback@l
/* 8035EB80 00328140  4B F7 25 21 */	bl AIRegisterDMACallback
/* 8035EB84 00328144  80 AD B9 B8 */	lwz r5, lbl_80667B38@sda21(r13)
/* 8035EB88 00328148  3C 80 CC CD */	lis r4, 0xCCCCCCCD@ha
/* 8035EB8C 0032814C  3B E4 CC CD */	addi r31, r4, 0xCCCCCCCD@l
/* 8035EB90 00328150  3B C0 00 00 */	li r30, 0
/* 8035EB94 00328154  90 65 04 90 */	stw r3, 0x490(r5)
.L_8035EB98:
/* 8035EB98 00328158  7C 1F F0 16 */	mulhwu r0, r31, r30
/* 8035EB9C 0032815C  54 03 F0 BE */	srwi r3, r0, 2
/* 8035EBA0 00328160  3B A3 00 01 */	addi r29, r3, 1
/* 8035EBA4 00328164  28 1D 00 07 */	cmplwi r29, 7
/* 8035EBA8 00328168  40 81 00 08 */	ble .L_8035EBB0
/* 8035EBAC 0032816C  3B A0 00 07 */	li r29, 7
.L_8035EBB0:
/* 8035EBB0 00328170  48 00 66 41 */	bl VIWaitForRetrace
/* 8035EBB4 00328174  7F A4 EB 78 */	mr r4, r29
/* 8035EBB8 00328178  7F A5 EB 78 */	mr r5, r29
/* 8035EBBC 0032817C  38 60 00 01 */	li r3, 1
/* 8035EBC0 00328180  4B FF E8 61 */	bl __OSSetVIForceDimming
/* 8035EBC4 00328184  3B DE 00 01 */	addi r30, r30, 1
/* 8035EBC8 00328188  28 1E 00 14 */	cmplwi r30, 0x14
/* 8035EBCC 0032818C  41 80 FF CC */	blt .L_8035EB98
/* 8035EBD0 00328190  38 60 00 00 */	li r3, 0
/* 8035EBD4 00328194  4B F7 24 CD */	bl AIRegisterDMACallback
/* 8035EBD8 00328198  38 60 00 01 */	li r3, 1
/* 8035EBDC 0032819C  48 00 77 65 */	bl VISetBlack
/* 8035EBE0 003281A0  48 00 75 D1 */	bl VIFlush
/* 8035EBE4 003281A4  4B FF 9D CD */	bl OSDisableInterrupts
/* 8035EBE8 003281A8  80 0D B9 BC */	lwz r0, lbl_80667B3C@sda21(r13)
/* 8035EBEC 003281AC  7C 7F 1B 78 */	mr r31, r3
/* 8035EBF0 003281B0  2C 00 00 00 */	cmpwi r0, 0
/* 8035EBF4 003281B4  41 82 00 08 */	beq .L_8035EBFC
/* 8035EBF8 003281B8  4B FF FE 09 */	bl __OSWriteExpiredFlag
.L_8035EBFC:
/* 8035EBFC 003281BC  7F E3 FB 78 */	mr r3, r31
/* 8035EC00 003281C0  4B FF 9D F1 */	bl OSRestoreInterrupts
/* 8035EC04 003281C4  4B FF BA 5D */	bl OSReturnToMenu
/* 8035EC08 003281C8  38 60 00 00 */	li r3, 0
/* 8035EC0C 003281CC  81 41 00 00 */	lwz r10, 0(r1)
/* 8035EC10 003281D0  83 EA FF FC */	lwz r31, -4(r10)
/* 8035EC14 003281D4  83 CA FF F8 */	lwz r30, -8(r10)
/* 8035EC18 003281D8  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 8035EC1C 003281DC  80 0A 00 04 */	lwz r0, 4(r10)
/* 8035EC20 003281E0  7C 08 03 A6 */	mtlr r0
/* 8035EC24 003281E4  7D 41 53 78 */	mr r1, r10
/* 8035EC28 003281E8  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSPlayTimeAlarmExpired
__OSPlayTimeAlarmExpired:
/* 8035EC30 003281F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035EC34 003281F4  7C 08 02 A6 */	mflr r0
/* 8035EC38 003281F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8035EC3C 003281FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035EC40 00328200  81 8D B9 C0 */	lwz r12, lbl_80667B40@sda21(r13)
/* 8035EC44 00328204  2C 0C 00 00 */	cmpwi r12, 0
/* 8035EC48 00328208  41 82 00 10 */	beq .L_8035EC58
/* 8035EC4C 0032820C  7D 89 03 A6 */	mtctr r12
/* 8035EC50 00328210  4E 80 04 21 */	bctrl 
/* 8035EC54 00328214  48 00 00 68 */	b .L_8035ECBC
.L_8035EC58:
/* 8035EC58 00328218  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 8035EC5C 0032821C  83 E3 00 DC */	lwz r31, 0x800000DC@l(r3)
/* 8035EC60 00328220  48 00 00 10 */	b .L_8035EC70
.L_8035EC64:
/* 8035EC64 00328224  7F E3 FB 78 */	mr r3, r31
/* 8035EC68 00328228  4B FF D8 79 */	bl OSSuspendThread
/* 8035EC6C 0032822C  83 FF 02 FC */	lwz r31, 0x2fc(r31)
.L_8035EC70:
/* 8035EC70 00328230  2C 1F 00 00 */	cmpwi r31, 0
/* 8035EC74 00328234  40 82 FF F0 */	bne .L_8035EC64
/* 8035EC78 00328238  3C 60 80 00 */	lis r3, 0x80003128@ha
/* 8035EC7C 0032823C  3C 80 80 36 */	lis r4, __OSPlayTimeRebootThread@ha
/* 8035EC80 00328240  80 63 31 28 */	lwz r3, 0x80003128@l(r3)
/* 8035EC84 00328244  38 84 EB 40 */	addi r4, r4, __OSPlayTimeRebootThread@l
/* 8035EC88 00328248  38 A0 00 00 */	li r5, 0
/* 8035EC8C 0032824C  38 E0 10 00 */	li r7, 0x1000
/* 8035EC90 00328250  3B E3 EC E0 */	addi r31, r3, -4896
/* 8035EC94 00328254  39 00 00 00 */	li r8, 0
/* 8035EC98 00328258  39 20 00 00 */	li r9, 0
/* 8035EC9C 0032825C  7F E3 FB 78 */	mr r3, r31
/* 8035ECA0 00328260  38 DF 13 20 */	addi r6, r31, 0x1320
/* 8035ECA4 00328264  4B FF CF 0D */	bl OSCreateThread
/* 8035ECA8 00328268  2C 03 00 00 */	cmpwi r3, 0
/* 8035ECAC 0032826C  40 82 00 08 */	bne .L_8035ECB4
/* 8035ECB0 00328270  4B FF BA A1 */	bl __OSHotResetForError
.L_8035ECB4:
/* 8035ECB4 00328274  7F E3 FB 78 */	mr r3, r31
/* 8035ECB8 00328278  4B FF D5 89 */	bl OSResumeThread
.L_8035ECBC:
/* 8035ECBC 0032827C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035ECC0 00328280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035ECC4 00328284  7C 08 03 A6 */	mtlr r0
/* 8035ECC8 00328288  38 21 00 10 */	addi r1, r1, 0x10
/* 8035ECCC 0032828C  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSGetPlayTime
__OSGetPlayTime:
/* 8035ECD0 00328290  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035ECD4 00328294  7C 2C 0B 78 */	mr r12, r1
/* 8035ECD8 00328298  21 6B FE 80 */	subfic r11, r11, -384
/* 8035ECDC 0032829C  7C 21 59 6E */	stwux r1, r1, r11
/* 8035ECE0 003282A0  7C 08 02 A6 */	mflr r0
/* 8035ECE4 003282A4  90 0C 00 04 */	stw r0, 4(r12)
/* 8035ECE8 003282A8  54 60 06 FF */	clrlwi. r0, r3, 0x1b
/* 8035ECEC 003282AC  38 00 00 00 */	li r0, 0
/* 8035ECF0 003282B0  93 EC FF FC */	stw r31, -4(r12)
/* 8035ECF4 003282B4  7C BF 2B 78 */	mr r31, r5
/* 8035ECF8 003282B8  93 CC FF F8 */	stw r30, -8(r12)
/* 8035ECFC 003282BC  3B C0 00 00 */	li r30, 0
/* 8035ED00 003282C0  93 AC FF F4 */	stw r29, -0xc(r12)
/* 8035ED04 003282C4  7C 9D 23 78 */	mr r29, r4
/* 8035ED08 003282C8  93 8C FF F0 */	stw r28, -0x10(r12)
/* 8035ED0C 003282CC  7C 7C 1B 78 */	mr r28, r3
/* 8035ED10 003282D0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8035ED14 003282D4  41 82 00 18 */	beq .L_8035ED2C
/* 8035ED18 003282D8  7F 84 E3 78 */	mr r4, r28
/* 8035ED1C 003282DC  38 61 00 80 */	addi r3, r1, 0x80
/* 8035ED20 003282E0  38 A0 00 D8 */	li r5, 0xd8
/* 8035ED24 003282E4  4B CA 52 DD */	bl memcpy
/* 8035ED28 003282E8  3B 81 00 80 */	addi r28, r1, 0x80
.L_8035ED2C:
/* 8035ED2C 003282EC  80 7C 00 04 */	lwz r3, 4(r28)
/* 8035ED30 003282F0  38 C1 00 20 */	addi r6, r1, 0x20
/* 8035ED34 003282F4  80 9C 00 08 */	lwz r4, 8(r28)
/* 8035ED38 003282F8  38 A0 00 00 */	li r5, 0
/* 8035ED3C 003282FC  4B FB 4F 65 */	bl ESP_GetConsumption
/* 8035ED40 00328300  2C 03 00 00 */	cmpwi r3, 0
/* 8035ED44 00328304  41 81 00 30 */	bgt .L_8035ED74
/* 8035ED48 00328308  41 82 00 08 */	beq .L_8035ED50
/* 8035ED4C 0032830C  48 00 00 28 */	b .L_8035ED74
.L_8035ED50:
/* 8035ED50 00328310  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035ED54 00328314  2C 00 00 00 */	cmpwi r0, 0
/* 8035ED58 00328318  41 82 00 1C */	beq .L_8035ED74
/* 8035ED5C 0032831C  80 7C 00 04 */	lwz r3, 4(r28)
/* 8035ED60 00328320  38 A1 00 40 */	addi r5, r1, 0x40
/* 8035ED64 00328324  80 9C 00 08 */	lwz r4, 8(r28)
/* 8035ED68 00328328  38 C1 00 20 */	addi r6, r1, 0x20
/* 8035ED6C 0032832C  4B FB 4F 35 */	bl ESP_GetConsumption
/* 8035ED70 00328330  2C 03 00 00 */	cmpwi r3, 0
.L_8035ED74:
/* 8035ED74 00328334  2C 03 00 00 */	cmpwi r3, 0
/* 8035ED78 00328338  40 82 01 00 */	bne .L_8035EE78
/* 8035ED7C 0032833C  38 00 00 08 */	li r0, 8
/* 8035ED80 00328340  38 A0 00 00 */	li r5, 0
/* 8035ED84 00328344  38 80 00 00 */	li r4, 0
/* 8035ED88 00328348  7C 09 03 A6 */	mtctr r0
/* 8035ED8C 0032834C  60 00 00 00 */	nop 
.L_8035ED90:
/* 8035ED90 00328350  7C DC 22 14 */	add r6, r28, r4
/* 8035ED94 00328354  80 06 00 98 */	lwz r0, 0x98(r6)
/* 8035ED98 00328358  28 00 00 01 */	cmplwi r0, 1
/* 8035ED9C 0032835C  40 82 00 54 */	bne .L_8035EDF0
/* 8035EDA0 00328360  38 00 00 01 */	li r0, 1
/* 8035EDA4 00328364  90 1D 00 00 */	stw r0, 0(r29)
/* 8035EDA8 00328368  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035EDAC 0032836C  2C 00 00 00 */	cmpwi r0, 0
/* 8035EDB0 00328370  40 82 00 10 */	bne .L_8035EDC0
/* 8035EDB4 00328374  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 8035EDB8 00328378  90 1F 00 00 */	stw r0, 0(r31)
/* 8035EDBC 0032837C  48 00 00 BC */	b .L_8035EE78
.L_8035EDC0:
/* 8035EDC0 00328380  38 A1 00 40 */	addi r5, r1, 0x40
/* 8035EDC4 00328384  80 06 00 9C */	lwz r0, 0x9c(r6)
/* 8035EDC8 00328388  7C 85 22 14 */	add r4, r5, r4
/* 8035EDCC 0032838C  80 84 00 04 */	lwz r4, 4(r4)
/* 8035EDD0 00328390  7C 04 00 40 */	cmplw r4, r0
/* 8035EDD4 00328394  41 80 00 10 */	blt .L_8035EDE4
/* 8035EDD8 00328398  38 00 00 00 */	li r0, 0
/* 8035EDDC 0032839C  90 1F 00 00 */	stw r0, 0(r31)
/* 8035EDE0 003283A0  48 00 00 98 */	b .L_8035EE78
.L_8035EDE4:
/* 8035EDE4 003283A4  7C 04 00 50 */	subf r0, r4, r0
/* 8035EDE8 003283A8  90 1F 00 00 */	stw r0, 0(r31)
/* 8035EDEC 003283AC  48 00 00 8C */	b .L_8035EE78
.L_8035EDF0:
/* 8035EDF0 003283B0  2C 00 00 00 */	cmpwi r0, 0
/* 8035EDF4 003283B4  41 82 00 08 */	beq .L_8035EDFC
/* 8035EDF8 003283B8  3B C5 00 01 */	addi r30, r5, 1
.L_8035EDFC:
/* 8035EDFC 003283BC  38 A5 00 01 */	addi r5, r5, 1
/* 8035EE00 003283C0  38 84 00 08 */	addi r4, r4, 8
/* 8035EE04 003283C4  42 00 FF 8C */	bdnz .L_8035ED90
/* 8035EE08 003283C8  2C 1E 00 00 */	cmpwi r30, 0
/* 8035EE0C 003283CC  40 82 00 18 */	bne .L_8035EE24
/* 8035EE10 003283D0  38 00 00 00 */	li r0, 0
/* 8035EE14 003283D4  90 1D 00 00 */	stw r0, 0(r29)
/* 8035EE18 003283D8  38 00 FF FF */	li r0, -1
/* 8035EE1C 003283DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8035EE20 003283E0  48 00 00 58 */	b .L_8035EE78
.L_8035EE24:
/* 8035EE24 003283E4  3B DE FF FF */	addi r30, r30, -1
/* 8035EE28 003283E8  57 C6 18 38 */	slwi r6, r30, 3
/* 8035EE2C 003283EC  7C 9C 32 14 */	add r4, r28, r6
/* 8035EE30 003283F0  80 04 00 98 */	lwz r0, 0x98(r4)
/* 8035EE34 003283F4  28 00 00 04 */	cmplwi r0, 4
/* 8035EE38 003283F8  40 82 00 38 */	bne .L_8035EE70
/* 8035EE3C 003283FC  38 00 00 04 */	li r0, 4
/* 8035EE40 00328400  90 1D 00 00 */	stw r0, 0(r29)
/* 8035EE44 00328404  80 A4 00 9C */	lwz r5, 0x9c(r4)
/* 8035EE48 00328408  90 BF 00 00 */	stw r5, 0(r31)
/* 8035EE4C 0032840C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035EE50 00328410  2C 00 00 00 */	cmpwi r0, 0
/* 8035EE54 00328414  41 82 00 24 */	beq .L_8035EE78
/* 8035EE58 00328418  38 01 00 40 */	addi r0, r1, 0x40
/* 8035EE5C 0032841C  7C 80 32 14 */	add r4, r0, r6
/* 8035EE60 00328420  80 04 00 04 */	lwz r0, 4(r4)
/* 8035EE64 00328424  7C 00 28 50 */	subf r0, r0, r5
/* 8035EE68 00328428  90 1F 00 00 */	stw r0, 0(r31)
/* 8035EE6C 0032842C  48 00 00 0C */	b .L_8035EE78
.L_8035EE70:
/* 8035EE70 00328430  38 00 00 09 */	li r0, 9
/* 8035EE74 00328434  90 1D 00 00 */	stw r0, 0(r29)
.L_8035EE78:
/* 8035EE78 00328438  81 41 00 00 */	lwz r10, 0(r1)
/* 8035EE7C 0032843C  80 0A 00 04 */	lwz r0, 4(r10)
/* 8035EE80 00328440  83 EA FF FC */	lwz r31, -4(r10)
/* 8035EE84 00328444  83 CA FF F8 */	lwz r30, -8(r10)
/* 8035EE88 00328448  83 AA FF F4 */	lwz r29, -0xc(r10)
/* 8035EE8C 0032844C  83 8A FF F0 */	lwz r28, -0x10(r10)
/* 8035EE90 00328450  7C 08 03 A6 */	mtlr r0
/* 8035EE94 00328454  7D 41 53 78 */	mr r1, r10
/* 8035EE98 00328458  4E 80 00 20 */	blr 

.balign 16, 0
.global __OSInitPlayTime
__OSInitPlayTime:
/* 8035EEA0 00328460  54 2B 06 FE */	clrlwi r11, r1, 0x1b
/* 8035EEA4 00328464  7C 2C 0B 78 */	mr r12, r1
/* 8035EEA8 00328468  21 6B FE C0 */	subfic r11, r11, -320
/* 8035EEAC 0032846C  7C 21 59 6E */	stwux r1, r1, r11
/* 8035EEB0 00328470  7C 08 02 A6 */	mflr r0
/* 8035EEB4 00328474  38 60 00 00 */	li r3, 0
/* 8035EEB8 00328478  90 0C 00 04 */	stw r0, 4(r12)
/* 8035EEBC 0032847C  38 00 00 01 */	li r0, 1
/* 8035EEC0 00328480  93 EC FF FC */	stw r31, -4(r12)
/* 8035EEC4 00328484  90 6D B9 CC */	stw r3, lbl_80667B4C@sda21(r13)
/* 8035EEC8 00328488  90 6D B9 C8 */	stw r3, lbl_80667B48@sda21(r13)
/* 8035EECC 0032848C  90 6D B9 C0 */	stw r3, lbl_80667B40@sda21(r13)
/* 8035EED0 00328490  90 0D B9 BC */	stw r0, lbl_80667B3C@sda21(r13)
/* 8035EED4 00328494  4B FB 48 7D */	bl ESP_InitLib
/* 8035EED8 00328498  2C 03 00 00 */	cmpwi r3, 0
/* 8035EEDC 0032849C  41 82 00 08 */	beq .L_8035EEE4
/* 8035EEE0 003284A0  48 00 00 FC */	b .L_8035EFDC
.L_8035EEE4:
/* 8035EEE4 003284A4  38 81 00 40 */	addi r4, r1, 0x40
/* 8035EEE8 003284A8  38 60 00 00 */	li r3, 0
/* 8035EEEC 003284AC  4B FB 4A D5 */	bl ESP_DiGetTicketView
/* 8035EEF0 003284B0  2C 03 FC 07 */	cmpwi r3, -1017
/* 8035EEF4 003284B4  41 82 00 20 */	beq .L_8035EF14
/* 8035EEF8 003284B8  2C 03 00 00 */	cmpwi r3, 0
/* 8035EEFC 003284BC  41 82 00 08 */	beq .L_8035EF04
/* 8035EF00 003284C0  48 00 00 14 */	b .L_8035EF14
.L_8035EF04:
/* 8035EF04 003284C4  38 61 00 40 */	addi r3, r1, 0x40
/* 8035EF08 003284C8  38 81 00 20 */	addi r4, r1, 0x20
/* 8035EF0C 003284CC  38 A1 00 24 */	addi r5, r1, 0x24
/* 8035EF10 003284D0  4B FF FD C1 */	bl __OSGetPlayTime
.L_8035EF14:
/* 8035EF14 003284D4  2C 03 00 00 */	cmpwi r3, 0
/* 8035EF18 003284D8  41 82 00 10 */	beq .L_8035EF28
/* 8035EF1C 003284DC  2C 03 FC 07 */	cmpwi r3, -1017
/* 8035EF20 003284E0  41 82 00 BC */	beq .L_8035EFDC
/* 8035EF24 003284E4  48 00 00 B8 */	b .L_8035EFDC
.L_8035EF28:
/* 8035EF28 003284E8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8035EF2C 003284EC  2C 00 00 00 */	cmpwi r0, 0
/* 8035EF30 003284F0  41 82 00 AC */	beq .L_8035EFDC
/* 8035EF34 003284F4  2C 00 00 01 */	cmpwi r0, 1
/* 8035EF38 003284F8  40 82 00 A4 */	bne .L_8035EFDC
/* 8035EF3C 003284FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035EF40 00328500  2C 00 00 00 */	cmpwi r0, 0
/* 8035EF44 00328504  40 82 00 1C */	bne .L_8035EF60
/* 8035EF48 00328508  3C 60 80 56 */	lis r3, lbl_8055EECC@ha
/* 8035EF4C 0032850C  38 80 02 E1 */	li r4, 0x2e1
/* 8035EF50 00328510  38 63 EE CC */	addi r3, r3, lbl_8055EECC@l
/* 8035EF54 00328514  38 AD 9A 30 */	addi r5, r13, lbl_80665BB0@sda21
/* 8035EF58 00328518  4C C6 31 82 */	crclr 6
/* 8035EF5C 0032851C  48 18 F5 39 */	bl OSPanic
.L_8035EF60:
/* 8035EF60 00328520  3F E0 80 5D */	lis r31, lbl_805D5500@ha
/* 8035EF64 00328524  38 7F 55 00 */	addi r3, r31, lbl_805D5500@l
/* 8035EF68 00328528  4B FF 3E B9 */	bl OSCreateAlarm
/* 8035EF6C 0032852C  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 8035EF70 00328530  3C E0 80 36 */	lis r7, __OSPlayTimeAlarmExpired@ha
/* 8035EF74 00328534  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 8035EF78 00328538  38 80 00 14 */	li r4, 0x14
/* 8035EF7C 0032853C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 8035EF80 00328540  39 20 00 00 */	li r9, 0
/* 8035EF84 00328544  54 06 F0 BE */	srwi r6, r0, 2
/* 8035EF88 00328548  38 7F 55 00 */	addi r3, r31, lbl_805D5500@l
/* 8035EF8C 0032854C  7D 05 20 14 */	addc r8, r5, r4
/* 8035EF90 00328550  38 E7 EC 30 */	addi r7, r7, __OSPlayTimeAlarmExpired@l
/* 8035EF94 00328554  7C 09 49 14 */	adde r0, r9, r9
/* 8035EF98 00328558  7C A0 31 D6 */	mullw r5, r0, r6
/* 8035EF9C 0032855C  7C 88 30 16 */	mulhwu r4, r8, r6
/* 8035EFA0 00328560  7C 08 49 D6 */	mullw r0, r8, r9
/* 8035EFA4 00328564  7C 84 2A 14 */	add r4, r4, r5
/* 8035EFA8 00328568  7C C8 31 D6 */	mullw r6, r8, r6
/* 8035EFAC 0032856C  7C A4 02 14 */	add r5, r4, r0
/* 8035EFB0 00328570  4B FF 40 D1 */	bl OSSetAlarm
/* 8035EFB4 00328574  38 9F 55 00 */	addi r4, r31, lbl_805D5500@l
/* 8035EFB8 00328578  3C 60 80 56 */	lis r3, lbl_8055EEDC@ha
/* 8035EFBC 0032857C  80 04 00 08 */	lwz r0, 8(r4)
/* 8035EFC0 00328580  38 63 EE DC */	addi r3, r3, lbl_8055EEDC@l
/* 8035EFC4 00328584  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8035EFC8 00328588  90 8D B9 CC */	stw r4, lbl_80667B4C@sda21(r13)
/* 8035EFCC 0032858C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 8035EFD0 00328590  90 0D B9 C8 */	stw r0, lbl_80667B48@sda21(r13)
/* 8035EFD4 00328594  4C C6 31 82 */	crclr 6
/* 8035EFD8 00328598  4B FF 5F 19 */	bl OSReport
.L_8035EFDC:
/* 8035EFDC 0032859C  4B FB 47 D5 */	bl ESP_CloseLib
/* 8035EFE0 003285A0  81 41 00 00 */	lwz r10, 0(r1)
/* 8035EFE4 003285A4  80 0A 00 04 */	lwz r0, 4(r10)
/* 8035EFE8 003285A8  83 EA FF FC */	lwz r31, -4(r10)
/* 8035EFEC 003285AC  7C 08 03 A6 */	mtlr r0
/* 8035EFF0 003285B0  7D 41 53 78 */	mr r1, r10
/* 8035EFF4 003285B4  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_8055EEB8
lbl_8055EEB8:
	.asciz "/shared2/expired"
	.balign 4


.global lbl_8055EECC
lbl_8055EECC:
	.asciz "OSPlayTime.c"
	.balign 4


.global lbl_8055EEDC
lbl_8055EEDC:
	.asciz "PlayTime: %d seconds left\n"
	.balign 4

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_805D5500
lbl_805D5500:
	.skip 0x40