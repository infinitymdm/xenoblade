.include "macros.inc"
.file "NdevExi2A/DebuggerDriver.o"

# 0x802D05D4 - 0x802D0908
.text
.balign 4

.fn __DBMtrHandler, global
/* 802D05D4 00299B94  81 8D B4 30 */	lwz r12, __DBMtrCallback@sda21(r13)
/* 802D05D8 00299B98  38 00 00 01 */	li r0, 0x1
/* 802D05DC 00299B9C  98 0D B4 38 */	stb r0, __DBEXIInputFlag@sda21(r13)
/* 802D05E0 00299BA0  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802D05E4 00299BA4  4D 82 00 20 */	beqlr
/* 802D05E8 00299BA8  38 60 00 00 */	li r3, 0x0
/* 802D05EC 00299BAC  7D 89 03 A6 */	mtctr r12
/* 802D05F0 00299BB0  4E 80 04 20 */	bctr
/* 802D05F4 00299BB4  4E 80 00 20 */	blr
.endfn __DBMtrHandler

.fn __DBIntrHandler, global
/* 802D05F8 00299BB8  38 00 10 00 */	li r0, 0x1000
/* 802D05FC 00299BBC  3C A0 CC 00 */	lis r5, 0xcc00
/* 802D0600 00299BC0  90 05 30 00 */	stw r0, 0x3000(r5)
/* 802D0604 00299BC4  81 8D B4 34 */	lwz r12, __DBDbgCallback@sda21(r13)
/* 802D0608 00299BC8  2C 0C 00 00 */	cmpwi r12, 0x0
/* 802D060C 00299BCC  4D 82 00 20 */	beqlr
/* 802D0610 00299BD0  7D 89 03 A6 */	mtctr r12
/* 802D0614 00299BD4  4E 80 04 20 */	bctr
/* 802D0618 00299BD8  4E 80 00 20 */	blr
.endfn __DBIntrHandler

.fn DBInitComm, global
/* 802D061C 00299BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D0620 00299BE0  7C 08 02 A6 */	mflr r0
/* 802D0624 00299BE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D0628 00299BE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D062C 00299BEC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802D0630 00299BF0  7C 9E 23 78 */	mr r30, r4
/* 802D0634 00299BF4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802D0638 00299BF8  7C 7D 1B 78 */	mr r29, r3
/* 802D063C 00299BFC  48 08 83 75 */	bl OSDisableInterrupts
/* 802D0640 00299C00  38 0D B4 38 */	addi r0, r13, __DBEXIInputFlag@sda21
/* 802D0644 00299C04  7C 7F 1B 78 */	mr r31, r3
/* 802D0648 00299C08  90 1D 00 00 */	stw r0, 0x0(r29)
/* 802D064C 00299C0C  93 CD B4 30 */	stw r30, __DBMtrCallback@sda21(r13)
/* 802D0650 00299C10  48 00 05 A1 */	bl __DBEXIInit
/* 802D0654 00299C14  7F E3 FB 78 */	mr r3, r31
/* 802D0658 00299C18  48 08 83 99 */	bl OSRestoreInterrupts
/* 802D065C 00299C1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0660 00299C20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D0664 00299C24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802D0668 00299C28  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802D066C 00299C2C  7C 08 03 A6 */	mtlr r0
/* 802D0670 00299C30  38 21 00 20 */	addi r1, r1, 0x20
/* 802D0674 00299C34  4E 80 00 20 */	blr
.endfn DBInitComm

.fn DBInitInterrupts, global
/* 802D0678 00299C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D067C 00299C3C  7C 08 02 A6 */	mflr r0
/* 802D0680 00299C40  3C 60 00 02 */	lis r3, 0x2
/* 802D0684 00299C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0688 00299C48  38 63 80 00 */	addi r3, r3, -0x8000
/* 802D068C 00299C4C  48 08 86 F5 */	bl __OSMaskInterrupts
/* 802D0690 00299C50  38 60 00 40 */	li r3, 0x40
/* 802D0694 00299C54  48 08 86 ED */	bl __OSMaskInterrupts
/* 802D0698 00299C58  3C 60 80 2D */	lis r3, __DBMtrHandler@ha
/* 802D069C 00299C5C  3C 80 80 2D */	lis r4, __DBIntrHandler@ha
/* 802D06A0 00299C60  38 63 05 D4 */	addi r3, r3, __DBMtrHandler@l
/* 802D06A4 00299C64  90 6D B4 34 */	stw r3, __DBDbgCallback@sda21(r13)
/* 802D06A8 00299C68  38 84 05 F8 */	addi r4, r4, __DBIntrHandler@l
/* 802D06AC 00299C6C  38 60 00 19 */	li r3, 0x19
/* 802D06B0 00299C70  48 08 83 71 */	bl __OSSetInterruptHandler
/* 802D06B4 00299C74  38 60 00 40 */	li r3, 0x40
/* 802D06B8 00299C78  48 08 87 49 */	bl __OSUnmaskInterrupts
/* 802D06BC 00299C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D06C0 00299C80  7C 08 03 A6 */	mtlr r0
/* 802D06C4 00299C84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D06C8 00299C88  4E 80 00 20 */	blr
.endfn DBInitInterrupts

.fn DBQueryData, global
/* 802D06CC 00299C8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D06D0 00299C90  7C 08 02 A6 */	mflr r0
/* 802D06D4 00299C94  38 60 00 00 */	li r3, 0x0
/* 802D06D8 00299C98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D06DC 00299C9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D06E0 00299CA0  80 0D B4 40 */	lwz r0, __DBRecvDataSize@sda21(r13)
/* 802D06E4 00299CA4  98 6D B4 38 */	stb r3, __DBEXIInputFlag@sda21(r13)
/* 802D06E8 00299CA8  2C 00 00 00 */	cmpwi r0, 0x0
/* 802D06EC 00299CAC  40 82 00 6C */	bne .L_802D0758
/* 802D06F0 00299CB0  48 08 82 C1 */	bl OSDisableInterrupts
/* 802D06F4 00299CB4  7C 7F 1B 78 */	mr r31, r3
/* 802D06F8 00299CB8  38 81 00 08 */	addi r4, r1, 0x8
/* 802D06FC 00299CBC  3C 60 34 00 */	lis r3, 0x3400
/* 802D0700 00299CC0  38 A0 00 01 */	li r5, 0x1
/* 802D0704 00299CC4  48 00 05 A9 */	bl __DBEXIReadReg
/* 802D0708 00299CC8  88 01 00 08 */	lbz r0, 0x8(r1)
/* 802D070C 00299CCC  54 00 07 39 */	rlwinm. r0, r0, 0, 28, 28
/* 802D0710 00299CD0  40 82 00 40 */	bne .L_802D0750
/* 802D0714 00299CD4  3C 60 34 00 */	lis r3, 0x3400
/* 802D0718 00299CD8  38 81 00 0C */	addi r4, r1, 0xc
/* 802D071C 00299CDC  38 63 02 00 */	addi r3, r3, 0x200
/* 802D0720 00299CE0  38 A0 00 04 */	li r5, 0x4
/* 802D0724 00299CE4  48 00 05 89 */	bl __DBEXIReadReg
/* 802D0728 00299CE8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802D072C 00299CEC  54 83 00 CE */	rlwinm r3, r4, 0, 3, 7
/* 802D0730 00299CF0  3C 03 E1 00 */	addis r0, r3, 0xe100
/* 802D0734 00299CF4  28 00 00 00 */	cmplwi r0, 0x0
/* 802D0738 00299CF8  40 82 00 18 */	bne .L_802D0750
/* 802D073C 00299CFC  54 83 04 FE */	clrlwi r3, r4, 19
/* 802D0740 00299D00  38 00 00 01 */	li r0, 0x1
/* 802D0744 00299D04  90 8D B4 3C */	stw r4, __DBRecvMail@sda21(r13)
/* 802D0748 00299D08  90 6D B4 40 */	stw r3, __DBRecvDataSize@sda21(r13)
/* 802D074C 00299D0C  98 0D B4 38 */	stb r0, __DBEXIInputFlag@sda21(r13)
.L_802D0750:
/* 802D0750 00299D10  7F E3 FB 78 */	mr r3, r31
/* 802D0754 00299D14  48 08 82 9D */	bl OSRestoreInterrupts
.L_802D0758:
/* 802D0758 00299D18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D075C 00299D1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D0760 00299D20  80 6D B4 40 */	lwz r3, __DBRecvDataSize@sda21(r13)
/* 802D0764 00299D24  7C 08 03 A6 */	mtlr r0
/* 802D0768 00299D28  38 21 00 20 */	addi r1, r1, 0x20
/* 802D076C 00299D2C  4E 80 00 20 */	blr
.endfn DBQueryData

.fn DBRead, global
/* 802D0770 00299D30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0774 00299D34  7C 08 02 A6 */	mflr r0
/* 802D0778 00299D38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D077C 00299D3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0780 00299D40  7C 9F 23 78 */	mr r31, r4
/* 802D0784 00299D44  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802D0788 00299D48  7C 7E 1B 78 */	mr r30, r3
/* 802D078C 00299D4C  48 08 82 25 */	bl OSDisableInterrupts
/* 802D0790 00299D50  80 AD B4 3C */	lwz r5, __DBRecvMail@sda21(r13)
/* 802D0794 00299D54  38 1F 00 03 */	addi r0, r31, 0x3
/* 802D0798 00299D58  7C 7F 1B 78 */	mr r31, r3
/* 802D079C 00299D5C  7F C4 F3 78 */	mr r4, r30
/* 802D07A0 00299D60  54 A3 87 FE */	extrwi r3, r5, 1, 15
/* 802D07A4 00299D64  54 05 00 3A */	clrrwi r5, r0, 2
/* 802D07A8 00299D68  7C 03 00 D0 */	neg r0, r3
/* 802D07AC 00299D6C  54 03 05 28 */	rlwinm r3, r0, 0, 20, 20
/* 802D07B0 00299D70  3C 63 00 D1 */	addis r3, r3, 0xd1
/* 802D07B4 00299D74  38 03 10 00 */	addi r0, r3, 0x1000
/* 802D07B8 00299D78  54 03 30 AE */	rlwinm r3, r0, 6, 2, 23
/* 802D07BC 00299D7C  48 00 07 19 */	bl __DBEXIReadRam
/* 802D07C0 00299D80  38 00 00 00 */	li r0, 0x0
/* 802D07C4 00299D84  7F E3 FB 78 */	mr r3, r31
/* 802D07C8 00299D88  90 0D B4 40 */	stw r0, __DBRecvDataSize@sda21(r13)
/* 802D07CC 00299D8C  98 0D B4 38 */	stb r0, __DBEXIInputFlag@sda21(r13)
/* 802D07D0 00299D90  48 08 82 21 */	bl OSRestoreInterrupts
/* 802D07D4 00299D94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D07D8 00299D98  38 60 00 00 */	li r3, 0x0
/* 802D07DC 00299D9C  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 802D07E0 00299DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D07E4 00299DA4  7C 08 03 A6 */	mtlr r0
/* 802D07E8 00299DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D07EC 00299DAC  4E 80 00 20 */	blr
.endfn DBRead

.fn DBWrite, global
/* 802D07F0 00299DB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D07F4 00299DB4  7C 08 02 A6 */	mflr r0
/* 802D07F8 00299DB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D07FC 00299DBC  39 61 00 30 */	addi r11, r1, 0x30
/* 802D0800 00299DC0  4B FE 99 55 */	bl _savegpr_27
/* 802D0804 00299DC4  7C 7B 1B 78 */	mr r27, r3
/* 802D0808 00299DC8  7C 9C 23 78 */	mr r28, r4
/* 802D080C 00299DCC  48 08 81 A5 */	bl OSDisableInterrupts
/* 802D0810 00299DD0  7C 7F 1B 78 */	mr r31, r3
.L_802D0814:
/* 802D0814 00299DD4  38 81 00 0A */	addi r4, r1, 0xa
/* 802D0818 00299DD8  3C 60 34 00 */	lis r3, 0x3400
/* 802D081C 00299DDC  38 A0 00 01 */	li r5, 0x1
/* 802D0820 00299DE0  48 00 04 8D */	bl __DBEXIReadReg
/* 802D0824 00299DE4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802D0828 00299DE8  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 802D082C 00299DEC  40 82 FF E8 */	bne .L_802D0814
/* 802D0830 00299DF0  88 6D 97 18 */	lbz r3, l_byOffsetCounter$99@sda21(r13)
/* 802D0834 00299DF4  38 1C 00 03 */	addi r0, r28, 0x3
/* 802D0838 00299DF8  54 1D 00 3A */	clrrwi r29, r0, 2
/* 802D083C 00299DFC  38 63 00 01 */	addi r3, r3, 0x1
/* 802D0840 00299E00  54 60 07 FE */	clrlwi r0, r3, 31
/* 802D0844 00299E04  98 6D 97 18 */	stb r3, l_byOffsetCounter$99@sda21(r13)
/* 802D0848 00299E08  7C 00 00 D0 */	neg r0, r0
/* 802D084C 00299E0C  54 03 05 28 */	rlwinm r3, r0, 0, 20, 20
/* 802D0850 00299E10  3C 03 00 D1 */	addis r0, r3, 0xd1
/* 802D0854 00299E14  54 00 30 AE */	rlwinm r0, r0, 6, 2, 23
/* 802D0858 00299E18  64 1E 80 00 */	oris r30, r0, 0x8000
.L_802D085C:
/* 802D085C 00299E1C  7F C3 F3 78 */	mr r3, r30
/* 802D0860 00299E20  7F 64 DB 78 */	mr r4, r27
/* 802D0864 00299E24  7F A5 EB 78 */	mr r5, r29
/* 802D0868 00299E28  48 00 07 4D */	bl __DBEXIWriteRam
/* 802D086C 00299E2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D0870 00299E30  41 82 FF EC */	beq .L_802D085C
.L_802D0874:
/* 802D0874 00299E34  38 81 00 09 */	addi r4, r1, 0x9
/* 802D0878 00299E38  3C 60 34 00 */	lis r3, 0x3400
/* 802D087C 00299E3C  38 A0 00 01 */	li r5, 0x1
/* 802D0880 00299E40  48 00 04 2D */	bl __DBEXIReadReg
/* 802D0884 00299E44  88 01 00 09 */	lbz r0, 0x9(r1)
/* 802D0888 00299E48  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 802D088C 00299E4C  40 82 FF E8 */	bne .L_802D0874
/* 802D0890 00299E50  88 6D 97 18 */	lbz r3, l_byOffsetCounter$99@sda21(r13)
/* 802D0894 00299E54  57 80 04 FE */	clrlwi r0, r28, 19
/* 802D0898 00299E58  64 1D 1F 00 */	oris r29, r0, 0x1f00
/* 802D089C 00299E5C  3F C0 B4 00 */	lis r30, 0xb400
/* 802D08A0 00299E60  50 7D 82 1E */	rlwimi r29, r3, 16, 8, 15
.L_802D08A4:
/* 802D08A4 00299E64  93 A1 00 0C */	stw r29, 0xc(r1)
/* 802D08A8 00299E68  38 7E 01 00 */	addi r3, r30, 0x100
/* 802D08AC 00299E6C  38 81 00 0C */	addi r4, r1, 0xc
/* 802D08B0 00299E70  38 A0 00 04 */	li r5, 0x4
/* 802D08B4 00299E74  48 00 05 1D */	bl __DBEXIWriteReg
/* 802D08B8 00299E78  2C 03 00 00 */	cmpwi r3, 0x0
/* 802D08BC 00299E7C  41 82 FF E8 */	beq .L_802D08A4
.L_802D08C0:
/* 802D08C0 00299E80  38 81 00 08 */	addi r4, r1, 0x8
/* 802D08C4 00299E84  3C 60 34 00 */	lis r3, 0x3400
/* 802D08C8 00299E88  38 A0 00 01 */	li r5, 0x1
/* 802D08CC 00299E8C  48 00 03 E1 */	bl __DBEXIReadReg
/* 802D08D0 00299E90  88 01 00 08 */	lbz r0, 0x8(r1)
/* 802D08D4 00299E94  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 802D08D8 00299E98  40 82 FF E8 */	bne .L_802D08C0
/* 802D08DC 00299E9C  7F E3 FB 78 */	mr r3, r31
/* 802D08E0 00299EA0  48 08 81 11 */	bl OSRestoreInterrupts
/* 802D08E4 00299EA4  39 61 00 30 */	addi r11, r1, 0x30
/* 802D08E8 00299EA8  38 60 00 00 */	li r3, 0x0
/* 802D08EC 00299EAC  4B FE 98 B5 */	bl _restgpr_27
/* 802D08F0 00299EB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D08F4 00299EB4  7C 08 03 A6 */	mtlr r0
/* 802D08F8 00299EB8  38 21 00 30 */	addi r1, r1, 0x30
/* 802D08FC 00299EBC  4E 80 00 20 */	blr
.endfn DBWrite

.fn DBOpen, global
/* 802D0900 00299EC0  4E 80 00 20 */	blr
.endfn DBOpen

.fn DBClose, global
/* 802D0904 00299EC4  4E 80 00 20 */	blr
.endfn DBClose

# 0x80665898 - 0x806658A0
.section .sdata, "wa"
.balign 8

.obj l_byOffsetCounter$99, local
	.byte 0x80
.endobj l_byOffsetCounter$99
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00

# 0x806675B0 - 0x806675C8
.section .sbss, "wa", @nobits
.balign 8

.obj __DBMtrCallback, local
	.skip 0x4
.endobj __DBMtrCallback

.obj __DBDbgCallback, local
	.skip 0x4
.endobj __DBDbgCallback

.obj __DBEXIInputFlag, local
	.skip 0x1
.endobj __DBEXIInputFlag
	.skip 0x3

.obj __DBRecvMail, local
	.skip 0x4
.endobj __DBRecvMail

.obj __DBRecvDataSize, local
	.skip 0x4
.endobj __DBRecvDataSize
	.skip 0x4
