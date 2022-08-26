.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80410B80
func_80410B80:
/* 80410B80 003DA140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410B84 003DA144  7C 08 02 A6 */	mflr r0
/* 80410B88 003DA148  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410B8C 003DA14C  88 0D BC 20 */	lbz r0, lbl_80667DA0@sda21(r13)
/* 80410B90 003DA150  7C 00 07 75 */	extsb. r0, r0
/* 80410B94 003DA154  40 82 00 78 */	bne lbl_80410C0C
/* 80410B98 003DA158  3C C0 80 64 */	lis r6, lbl_8063B174@ha
/* 80410B9C 003DA15C  38 00 00 00 */	li r0, 0
/* 80410BA0 003DA160  38 66 B1 74 */	addi r3, r6, lbl_8063B174@l
/* 80410BA4 003DA164  3C 80 80 41 */	lis r4, func_80410C24@ha
/* 80410BA8 003DA168  90 03 00 04 */	stw r0, 4(r3)
/* 80410BAC 003DA16C  39 23 00 04 */	addi r9, r3, 4
/* 80410BB0 003DA170  39 03 00 10 */	addi r8, r3, 0x10
/* 80410BB4 003DA174  38 E3 00 1C */	addi r7, r3, 0x1c
/* 80410BB8 003DA178  90 03 00 08 */	stw r0, 8(r3)
/* 80410BBC 003DA17C  3C A0 80 64 */	lis r5, lbl_8063B168@ha
/* 80410BC0 003DA180  38 84 0C 24 */	addi r4, r4, func_80410C24@l
/* 80410BC4 003DA184  90 03 00 10 */	stw r0, 0x10(r3)
/* 80410BC8 003DA188  38 A5 B1 68 */	addi r5, r5, lbl_8063B168@l
/* 80410BCC 003DA18C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80410BD0 003DA190  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80410BD4 003DA194  90 03 00 20 */	stw r0, 0x20(r3)
/* 80410BD8 003DA198  90 06 B1 74 */	stw r0,lbl_8063B174@l(r6)
/* 80410BDC 003DA19C  91 23 00 04 */	stw r9, 4(r3)
/* 80410BE0 003DA1A0  91 23 00 08 */	stw r9, 8(r3)
/* 80410BE4 003DA1A4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80410BE8 003DA1A8  91 03 00 10 */	stw r8, 0x10(r3)
/* 80410BEC 003DA1AC  91 03 00 14 */	stw r8, 0x14(r3)
/* 80410BF0 003DA1B0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80410BF4 003DA1B4  90 E3 00 1C */	stw r7, 0x1c(r3)
/* 80410BF8 003DA1B8  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80410BFC 003DA1BC  98 03 00 24 */	stb r0, 0x24(r3)
/* 80410C00 003DA1C0  4B EA 8A 9D */	bl __register_global_object_tmp
/* 80410C04 003DA1C4  38 00 00 01 */	li r0, 1
/* 80410C08 003DA1C8  98 0D BC 20 */	stb r0, lbl_80667DA0@sda21(r13)
lbl_80410C0C:
/* 80410C0C 003DA1CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410C10 003DA1D0  3C 60 80 64 */	lis r3, lbl_8063B174@ha
/* 80410C14 003DA1D4  38 63 B1 74 */	addi r3, r3, lbl_8063B174@l
/* 80410C18 003DA1D8  7C 08 03 A6 */	mtlr r0
/* 80410C1C 003DA1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80410C20 003DA1E0  4E 80 00 20 */	blr

.global func_80410C24
func_80410C24:
/* 80410C24 003DA1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80410C28 003DA1E8  7C 08 02 A6 */	mflr r0
/* 80410C2C 003DA1EC  2C 03 00 00 */	cmpwi r3, 0
/* 80410C30 003DA1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410C34 003DA1F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80410C38 003DA1F8  7C 9F 23 78 */	mr r31, r4
/* 80410C3C 003DA1FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80410C40 003DA200  7C 7E 1B 78 */	mr r30, r3
/* 80410C44 003DA204  41 82 00 48 */	beq lbl_80410C8C
/* 80410C48 003DA208  34 63 00 18 */	addic. r3, r3, 0x18
/* 80410C4C 003DA20C  41 82 00 0C */	beq lbl_80410C58
/* 80410C50 003DA210  38 80 00 00 */	li r4, 0
/* 80410C54 003DA214  48 01 A7 BD */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80410C58:
/* 80410C58 003DA218  34 7E 00 0C */	addic. r3, r30, 0xc
/* 80410C5C 003DA21C  41 82 00 0C */	beq lbl_80410C68
/* 80410C60 003DA220  38 80 00 00 */	li r4, 0
/* 80410C64 003DA224  48 01 A7 AD */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80410C68:
/* 80410C68 003DA228  2C 1E 00 00 */	cmpwi r30, 0
/* 80410C6C 003DA22C  41 82 00 10 */	beq lbl_80410C7C
/* 80410C70 003DA230  7F C3 F3 78 */	mr r3, r30
/* 80410C74 003DA234  38 80 00 00 */	li r4, 0
/* 80410C78 003DA238  48 01 A7 99 */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
lbl_80410C7C:
/* 80410C7C 003DA23C  2C 1F 00 00 */	cmpwi r31, 0
/* 80410C80 003DA240  40 81 00 0C */	ble lbl_80410C8C
/* 80410C84 003DA244  7F C3 F3 78 */	mr r3, r30
/* 80410C88 003DA248  48 02 3F A5 */	bl __dl__FPv
lbl_80410C8C:
/* 80410C8C 003DA24C  7F C3 F3 78 */	mr r3, r30
/* 80410C90 003DA250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80410C94 003DA254  83 C1 00 08 */	lwz r30, 8(r1)
/* 80410C98 003DA258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80410C9C 003DA25C  7C 08 03 A6 */	mtlr r0
/* 80410CA0 003DA260  38 21 00 10 */	addi r1, r1, 0x10
/* 80410CA4 003DA264  4E 80 00 20 */	blr 

.global func_80410CA8
func_80410CA8:
/* 80410CA8 003DA268  38 04 00 10 */	addi r0, r4, 0x10
/* 80410CAC 003DA26C  1C 60 00 48 */	mulli r3, r0, 0x48
/* 80410CB0 003DA270  4E 80 00 20 */	blr 

.global func_80410CB4
func_80410CB4:
/* 80410CB4 003DA274  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80410CB8 003DA278  7C 08 02 A6 */	mflr r0
/* 80410CBC 003DA27C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80410CC0 003DA280  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80410CC4 003DA284  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80410CC8 003DA288  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80410CCC 003DA28C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80410CD0 003DA290  7C 7C 1B 78 */	mr r28, r3
/* 80410CD4 003DA294  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80410CD8 003DA298  2C 00 00 00 */	cmpwi r0, 0
/* 80410CDC 003DA29C  40 82 00 74 */	bne lbl_80410D50
/* 80410CE0 003DA2A0  3C C0 38 E4 */	lis r6, 0x38E38E39@ha
/* 80410CE4 003DA2A4  7C 9E 23 78 */	mr r30, r4
/* 80410CE8 003DA2A8  38 06 8E 39 */	addi r0, r6, 0x38E38E39@l
/* 80410CEC 003DA2AC  3B A0 00 00 */	li r29, 0
/* 80410CF0 003DA2B0  7C 00 28 16 */	mulhwu r0, r0, r5
/* 80410CF4 003DA2B4  54 00 E1 3F */	rlwinm. r0, r0, 0x1c, 4, 0x1f
/* 80410CF8 003DA2B8  90 03 00 28 */	stw r0, 0x28(r3)
/* 80410CFC 003DA2BC  41 82 00 4C */	beq lbl_80410D48
/* 80410D00 003DA2C0  3B E3 00 10 */	addi r31, r3, 0x10
/* 80410D04 003DA2C4  48 00 00 38 */	b lbl_80410D3C
lbl_80410D08:
/* 80410D08 003DA2C8  2C 1E 00 00 */	cmpwi r30, 0
/* 80410D0C 003DA2CC  7F C5 F3 78 */	mr r5, r30
/* 80410D10 003DA2D0  41 82 00 10 */	beq lbl_80410D20
/* 80410D14 003DA2D4  7F C3 F3 78 */	mr r3, r30
/* 80410D18 003DA2D8  4B FF D1 A9 */	bl func_8040DEC0
/* 80410D1C 003DA2DC  7C 65 1B 78 */	mr r5, r3
lbl_80410D20:
/* 80410D20 003DA2E0  93 E1 00 08 */	stw r31, 8(r1)
/* 80410D24 003DA2E4  38 7C 00 0C */	addi r3, r28, 0xc
/* 80410D28 003DA2E8  38 81 00 08 */	addi r4, r1, 8
/* 80410D2C 003DA2EC  38 A5 00 40 */	addi r5, r5, 0x40
/* 80410D30 003DA2F0  48 01 A7 F1 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80410D34 003DA2F4  3B DE 00 48 */	addi r30, r30, 0x48
/* 80410D38 003DA2F8  3B BD 00 01 */	addi r29, r29, 1
lbl_80410D3C:
/* 80410D3C 003DA2FC  80 1C 00 28 */	lwz r0, 0x28(r28)
/* 80410D40 003DA300  7C 1D 00 40 */	cmplw r29, r0
/* 80410D44 003DA304  41 80 FF C4 */	blt lbl_80410D08
lbl_80410D48:
/* 80410D48 003DA308  38 00 00 01 */	li r0, 1
/* 80410D4C 003DA30C  98 1C 00 24 */	stb r0, 0x24(r28)
lbl_80410D50:
/* 80410D50 003DA310  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80410D54 003DA314  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80410D58 003DA318  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80410D5C 003DA31C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80410D60 003DA320  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80410D64 003DA324  7C 08 03 A6 */	mtlr r0
/* 80410D68 003DA328  38 21 00 20 */	addi r1, r1, 0x20
/* 80410D6C 003DA32C  4E 80 00 20 */	blr 

.global func_80410D70
func_80410D70:
/* 80410D70 003DA330  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80410D74 003DA334  7C 08 02 A6 */	mflr r0
/* 80410D78 003DA338  90 01 00 34 */	stw r0, 0x34(r1)
/* 80410D7C 003DA33C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80410D80 003DA340  7C 7F 1B 78 */	mr r31, r3
/* 80410D84 003DA344  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80410D88 003DA348  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80410D8C 003DA34C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80410D90 003DA350  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80410D94 003DA354  2C 00 00 00 */	cmpwi r0, 0
/* 80410D98 003DA358  40 82 01 00 */	bne lbl_80410E98
/* 80410D9C 003DA35C  48 00 02 48 */	b lbl_80410FE4
/* 80410DA0 003DA360  48 00 00 F8 */	b lbl_80410E98
lbl_80410DA4:
/* 80410DA4 003DA364  80 BF 00 04 */	lwz r5, 4(r31)
/* 80410DA8 003DA368  7F E3 FB 78 */	mr r3, r31
/* 80410DAC 003DA36C  38 81 00 18 */	addi r4, r1, 0x18
/* 80410DB0 003DA370  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80410DB4 003DA374  3B 85 FF C0 */	addi r28, r5, -64
/* 80410DB8 003DA378  48 01 A6 DD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80410DBC 003DA37C  80 7C 00 00 */	lwz r3, 0(r28)
/* 80410DC0 003DA380  2C 03 00 00 */	cmpwi r3, 0
/* 80410DC4 003DA384  41 82 00 D4 */	beq lbl_80410E98
/* 80410DC8 003DA388  38 80 00 00 */	li r4, 0
/* 80410DCC 003DA38C  41 82 00 14 */	beq lbl_80410DE0
/* 80410DD0 003DA390  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80410DD4 003DA394  28 00 00 01 */	cmplwi r0, 1
/* 80410DD8 003DA398  40 82 00 08 */	bne lbl_80410DE0
/* 80410DDC 003DA39C  38 80 00 01 */	li r4, 1
lbl_80410DE0:
/* 80410DE0 003DA3A0  2C 04 00 00 */	cmpwi r4, 0
/* 80410DE4 003DA3A4  41 82 00 0C */	beq lbl_80410DF0
/* 80410DE8 003DA3A8  38 80 00 00 */	li r4, 0
/* 80410DEC 003DA3AC  4B EC 45 D5 */	bl AXSetVoiceState
lbl_80410DF0:
/* 80410DF0 003DA3B0  81 9C 00 38 */	lwz r12, 0x38(r28)
/* 80410DF4 003DA3B4  2C 0C 00 00 */	cmpwi r12, 0
/* 80410DF8 003DA3B8  41 82 00 18 */	beq lbl_80410E10
/* 80410DFC 003DA3BC  7F 83 E3 78 */	mr r3, r28
/* 80410E00 003DA3C0  80 BC 00 3C */	lwz r5, 0x3c(r28)
/* 80410E04 003DA3C4  38 80 00 00 */	li r4, 0
/* 80410E08 003DA3C8  7D 89 03 A6 */	mtctr r12
/* 80410E0C 003DA3CC  4E 80 04 21 */	bctrl 
lbl_80410E10:
/* 80410E10 003DA3D0  4B F4 7B A1 */	bl OSDisableInterrupts
/* 80410E14 003DA3D4  80 1C 00 00 */	lwz r0, 0(r28)
/* 80410E18 003DA3D8  7C 7E 1B 78 */	mr r30, r3
/* 80410E1C 003DA3DC  2C 00 00 00 */	cmpwi r0, 0
/* 80410E20 003DA3E0  41 82 00 0C */	beq lbl_80410E2C
/* 80410E24 003DA3E4  7C 03 03 78 */	mr r3, r0
/* 80410E28 003DA3E8  4B EC 15 D9 */	bl AXFreeVoice
lbl_80410E2C:
/* 80410E2C 003DA3EC  7F 83 E3 78 */	mr r3, r28
/* 80410E30 003DA3F0  38 80 FF FF */	li r4, -1
/* 80410E34 003DA3F4  4B FF D0 D1 */	bl func_8040DF04
/* 80410E38 003DA3F8  4B F4 7B 79 */	bl OSDisableInterrupts
/* 80410E3C 003DA3FC  88 1C 00 1D */	lbz r0, 0x1d(r28)
/* 80410E40 003DA400  7C 7D 1B 78 */	mr r29, r3
/* 80410E44 003DA404  2C 00 00 00 */	cmpwi r0, 0
/* 80410E48 003DA408  41 82 00 18 */	beq lbl_80410E60
/* 80410E4C 003DA40C  3B 9C 00 40 */	addi r28, r28, 0x40
/* 80410E50 003DA410  38 7F 00 18 */	addi r3, r31, 0x18
/* 80410E54 003DA414  7F 84 E3 78 */	mr r4, r28
/* 80410E58 003DA418  48 01 A6 F5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80410E5C 003DA41C  48 00 00 14 */	b lbl_80410E70
lbl_80410E60:
/* 80410E60 003DA420  3B 9C 00 40 */	addi r28, r28, 0x40
/* 80410E64 003DA424  7F E3 FB 78 */	mr r3, r31
/* 80410E68 003DA428  7F 84 E3 78 */	mr r4, r28
/* 80410E6C 003DA42C  48 01 A6 E1 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80410E70:
/* 80410E70 003DA430  38 1F 00 10 */	addi r0, r31, 0x10
/* 80410E74 003DA434  7F 85 E3 78 */	mr r5, r28
/* 80410E78 003DA438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80410E7C 003DA43C  38 7F 00 0C */	addi r3, r31, 0xc
/* 80410E80 003DA440  38 81 00 14 */	addi r4, r1, 0x14
/* 80410E84 003DA444  48 01 A6 9D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80410E88 003DA448  7F A3 EB 78 */	mr r3, r29
/* 80410E8C 003DA44C  4B F4 7B 65 */	bl OSRestoreInterrupts
/* 80410E90 003DA450  7F C3 F3 78 */	mr r3, r30
/* 80410E94 003DA454  4B F4 7B 5D */	bl OSRestoreInterrupts
lbl_80410E98:
/* 80410E98 003DA458  80 1F 00 00 */	lwz r0, 0(r31)
/* 80410E9C 003DA45C  2C 00 00 00 */	cmpwi r0, 0
/* 80410EA0 003DA460  40 82 FF 04 */	bne lbl_80410DA4
/* 80410EA4 003DA464  48 00 00 FC */	b lbl_80410FA0
lbl_80410EA8:
/* 80410EA8 003DA468  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 80410EAC 003DA46C  7F E3 FB 78 */	mr r3, r31
/* 80410EB0 003DA470  80 1F 00 04 */	lwz r0, 4(r31)
/* 80410EB4 003DA474  38 81 00 10 */	addi r4, r1, 0x10
/* 80410EB8 003DA478  3B 85 FF C0 */	addi r28, r5, -64
/* 80410EBC 003DA47C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80410EC0 003DA480  48 01 A5 D5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80410EC4 003DA484  80 7C 00 00 */	lwz r3, 0(r28)
/* 80410EC8 003DA488  2C 03 00 00 */	cmpwi r3, 0
/* 80410ECC 003DA48C  41 82 00 D4 */	beq lbl_80410FA0
/* 80410ED0 003DA490  38 80 00 00 */	li r4, 0
/* 80410ED4 003DA494  41 82 00 14 */	beq lbl_80410EE8
/* 80410ED8 003DA498  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 80410EDC 003DA49C  28 00 00 01 */	cmplwi r0, 1
/* 80410EE0 003DA4A0  40 82 00 08 */	bne lbl_80410EE8
/* 80410EE4 003DA4A4  38 80 00 01 */	li r4, 1
lbl_80410EE8:
/* 80410EE8 003DA4A8  2C 04 00 00 */	cmpwi r4, 0
/* 80410EEC 003DA4AC  41 82 00 0C */	beq lbl_80410EF8
/* 80410EF0 003DA4B0  38 80 00 00 */	li r4, 0
/* 80410EF4 003DA4B4  4B EC 44 CD */	bl AXSetVoiceState
lbl_80410EF8:
/* 80410EF8 003DA4B8  81 9C 00 38 */	lwz r12, 0x38(r28)
/* 80410EFC 003DA4BC  2C 0C 00 00 */	cmpwi r12, 0
/* 80410F00 003DA4C0  41 82 00 18 */	beq lbl_80410F18
/* 80410F04 003DA4C4  7F 83 E3 78 */	mr r3, r28
/* 80410F08 003DA4C8  80 BC 00 3C */	lwz r5, 0x3c(r28)
/* 80410F0C 003DA4CC  38 80 00 00 */	li r4, 0
/* 80410F10 003DA4D0  7D 89 03 A6 */	mtctr r12
/* 80410F14 003DA4D4  4E 80 04 21 */	bctrl 
lbl_80410F18:
/* 80410F18 003DA4D8  4B F4 7A 99 */	bl OSDisableInterrupts
/* 80410F1C 003DA4DC  80 1C 00 00 */	lwz r0, 0(r28)
/* 80410F20 003DA4E0  7C 7D 1B 78 */	mr r29, r3
/* 80410F24 003DA4E4  2C 00 00 00 */	cmpwi r0, 0
/* 80410F28 003DA4E8  41 82 00 0C */	beq lbl_80410F34
/* 80410F2C 003DA4EC  7C 03 03 78 */	mr r3, r0
/* 80410F30 003DA4F0  4B EC 14 D1 */	bl AXFreeVoice
lbl_80410F34:
/* 80410F34 003DA4F4  7F 83 E3 78 */	mr r3, r28
/* 80410F38 003DA4F8  38 80 FF FF */	li r4, -1
/* 80410F3C 003DA4FC  4B FF CF C9 */	bl func_8040DF04
/* 80410F40 003DA500  4B F4 7A 71 */	bl OSDisableInterrupts
/* 80410F44 003DA504  88 1C 00 1D */	lbz r0, 0x1d(r28)
/* 80410F48 003DA508  7C 7E 1B 78 */	mr r30, r3
/* 80410F4C 003DA50C  2C 00 00 00 */	cmpwi r0, 0
/* 80410F50 003DA510  41 82 00 18 */	beq lbl_80410F68
/* 80410F54 003DA514  3B 9C 00 40 */	addi r28, r28, 0x40
/* 80410F58 003DA518  38 7F 00 18 */	addi r3, r31, 0x18
/* 80410F5C 003DA51C  7F 84 E3 78 */	mr r4, r28
/* 80410F60 003DA520  48 01 A5 ED */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80410F64 003DA524  48 00 00 14 */	b lbl_80410F78
lbl_80410F68:
/* 80410F68 003DA528  3B 9C 00 40 */	addi r28, r28, 0x40
/* 80410F6C 003DA52C  7F E3 FB 78 */	mr r3, r31
/* 80410F70 003DA530  7F 84 E3 78 */	mr r4, r28
/* 80410F74 003DA534  48 01 A5 D9 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80410F78:
/* 80410F78 003DA538  38 1F 00 10 */	addi r0, r31, 0x10
/* 80410F7C 003DA53C  7F 85 E3 78 */	mr r5, r28
/* 80410F80 003DA540  90 01 00 0C */	stw r0, 0xc(r1)
/* 80410F84 003DA544  38 7F 00 0C */	addi r3, r31, 0xc
/* 80410F88 003DA548  38 81 00 0C */	addi r4, r1, 0xc
/* 80410F8C 003DA54C  48 01 A5 95 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80410F90 003DA550  7F C3 F3 78 */	mr r3, r30
/* 80410F94 003DA554  4B F4 7A 5D */	bl OSRestoreInterrupts
/* 80410F98 003DA558  7F A3 EB 78 */	mr r3, r29
/* 80410F9C 003DA55C  4B F4 7A 55 */	bl OSRestoreInterrupts
lbl_80410FA0:
/* 80410FA0 003DA560  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80410FA4 003DA564  2C 00 00 00 */	cmpwi r0, 0
/* 80410FA8 003DA568  40 82 FF 00 */	bne lbl_80410EA8
/* 80410FAC 003DA56C  48 00 00 24 */	b lbl_80410FD0
lbl_80410FB0:
/* 80410FB0 003DA570  83 9F 00 10 */	lwz r28, 0x10(r31)
/* 80410FB4 003DA574  38 7F 00 0C */	addi r3, r31, 0xc
/* 80410FB8 003DA578  38 81 00 08 */	addi r4, r1, 8
/* 80410FBC 003DA57C  93 81 00 08 */	stw r28, 8(r1)
/* 80410FC0 003DA580  48 01 A4 D5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80410FC4 003DA584  38 7C FF C0 */	addi r3, r28, -64
/* 80410FC8 003DA588  38 80 FF FF */	li r4, -1
/* 80410FCC 003DA58C  4B FF CF 39 */	bl func_8040DF04
lbl_80410FD0:
/* 80410FD0 003DA590  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80410FD4 003DA594  2C 00 00 00 */	cmpwi r0, 0
/* 80410FD8 003DA598  40 82 FF D8 */	bne lbl_80410FB0
/* 80410FDC 003DA59C  38 00 00 00 */	li r0, 0
/* 80410FE0 003DA5A0  98 1F 00 24 */	stb r0, 0x24(r31)
lbl_80410FE4:
/* 80410FE4 003DA5A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80410FE8 003DA5A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80410FEC 003DA5AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80410FF0 003DA5B0  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80410FF4 003DA5B4  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80410FF8 003DA5B8  7C 08 03 A6 */	mtlr r0
/* 80410FFC 003DA5BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80411000 003DA5C0  4E 80 00 20 */	blr 

.global func_80411004
func_80411004:
/* 80411004 003DA5C4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80411008 003DA5C8  7C 08 02 A6 */	mflr r0
/* 8041100C 003DA5CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 80411010 003DA5D0  39 61 00 60 */	addi r11, r1, 0x60
/* 80411014 003DA5D4  4B EA 91 15 */	bl _savegpr_16
/* 80411018 003DA5D8  7C 75 1B 78 */	mr r21, r3
/* 8041101C 003DA5DC  7C 96 23 78 */	mr r22, r4
/* 80411020 003DA5E0  7C B7 2B 78 */	mr r23, r5
/* 80411024 003DA5E4  7C D8 33 78 */	mr r24, r6
/* 80411028 003DA5E8  4B F4 79 89 */	bl OSDisableInterrupts
/* 8041102C 003DA5EC  7C 74 1B 78 */	mr r20, r3
/* 80411030 003DA5F0  4B F4 79 81 */	bl OSDisableInterrupts
/* 80411034 003DA5F4  80 15 00 18 */	lwz r0, 0x18(r21)
/* 80411038 003DA5F8  7C 73 1B 78 */	mr r19, r3
/* 8041103C 003DA5FC  2C 00 00 00 */	cmpwi r0, 0
/* 80411040 003DA600  41 82 01 48 */	beq lbl_80411188
/* 80411044 003DA604  3F 60 80 64 */	lis r27, lbl_8063B174@ha
/* 80411048 003DA608  3B 80 00 00 */	li r28, 0
/* 8041104C 003DA60C  3B 5B B1 74 */	addi r26, r27, lbl_8063B174@l
/* 80411050 003DA610  3F A0 80 41 */	lis r29, func_80410C24@ha
/* 80411054 003DA614  3F C0 80 64 */	lis r30, lbl_8063B168@ha
/* 80411058 003DA618  3B E0 00 01 */	li r31, 1
/* 8041105C 003DA61C  3A 1A 00 10 */	addi r16, r26, 0x10
/* 80411060 003DA620  48 00 01 1C */	b lbl_8041117C
lbl_80411064:
/* 80411064 003DA624  80 75 00 1C */	lwz r3, 0x1c(r21)
/* 80411068 003DA628  81 83 FF F8 */	lwz r12, -8(r3)
/* 8041106C 003DA62C  3B 23 FF C0 */	addi r25, r3, -64
/* 80411070 003DA630  2C 0C 00 00 */	cmpwi r12, 0
/* 80411074 003DA634  41 82 00 18 */	beq lbl_8041108C
/* 80411078 003DA638  7F 23 CB 78 */	mr r3, r25
/* 8041107C 003DA63C  80 B9 00 3C */	lwz r5, 0x3c(r25)
/* 80411080 003DA640  38 80 00 01 */	li r4, 1
/* 80411084 003DA644  7D 89 03 A6 */	mtctr r12
/* 80411088 003DA648  4E 80 04 21 */	bctrl 
lbl_8041108C:
/* 8041108C 003DA64C  88 0D BC 20 */	lbz r0, lbl_80667DA0@sda21(r13)
/* 80411090 003DA650  7C 00 07 75 */	extsb. r0, r0
/* 80411094 003DA654  40 82 00 64 */	bne lbl_804110F8
/* 80411098 003DA658  93 9A 00 04 */	stw r28, 4(r26)
/* 8041109C 003DA65C  38 DA 00 04 */	addi r6, r26, 4
/* 804110A0 003DA660  38 FA 00 10 */	addi r7, r26, 0x10
/* 804110A4 003DA664  39 1A 00 1C */	addi r8, r26, 0x1c
/* 804110A8 003DA668  93 9A 00 08 */	stw r28, 8(r26)
/* 804110AC 003DA66C  7F 43 D3 78 */	mr r3, r26
/* 804110B0 003DA670  38 9D 0C 24 */	addi r4, r29, func_80410C24@l
/* 804110B4 003DA674  38 BE B1 68 */	addi r5, r30, lbl_8063B168@l
/* 804110B8 003DA678  93 9A 00 10 */	stw r28, 0x10(r26)
/* 804110BC 003DA67C  93 9A 00 14 */	stw r28, 0x14(r26)
/* 804110C0 003DA680  93 9A 00 1C */	stw r28, 0x1c(r26)
/* 804110C4 003DA684  93 9A 00 20 */	stw r28, 0x20(r26)
/* 804110C8 003DA688  93 9B B1 74 */	stw r28,lbl_8063B174@l(r27)
/* 804110CC 003DA68C  90 DA 00 04 */	stw r6, 4(r26)
/* 804110D0 003DA690  90 DA 00 08 */	stw r6, 8(r26)
/* 804110D4 003DA694  93 9A 00 0C */	stw r28, 0xc(r26)
/* 804110D8 003DA698  90 FA 00 10 */	stw r7, 0x10(r26)
/* 804110DC 003DA69C  90 FA 00 14 */	stw r7, 0x14(r26)
/* 804110E0 003DA6A0  93 9A 00 18 */	stw r28, 0x18(r26)
/* 804110E4 003DA6A4  91 1A 00 1C */	stw r8, 0x1c(r26)
/* 804110E8 003DA6A8  91 1A 00 20 */	stw r8, 0x20(r26)
/* 804110EC 003DA6AC  9B 9A 00 24 */	stb r28, 0x24(r26)
/* 804110F0 003DA6B0  4B EA 85 AD */	bl __register_global_object_tmp
/* 804110F4 003DA6B4  9B ED BC 20 */	stb r31, lbl_80667DA0@sda21(r13)
lbl_804110F8:
/* 804110F8 003DA6B8  4B F4 78 B9 */	bl OSDisableInterrupts
/* 804110FC 003DA6BC  80 19 00 00 */	lwz r0, 0(r25)
/* 80411100 003DA6C0  7C 72 1B 78 */	mr r18, r3
/* 80411104 003DA6C4  2C 00 00 00 */	cmpwi r0, 0
/* 80411108 003DA6C8  41 82 00 0C */	beq lbl_80411114
/* 8041110C 003DA6CC  7C 03 03 78 */	mr r3, r0
/* 80411110 003DA6D0  4B EC 12 F1 */	bl AXFreeVoice
lbl_80411114:
/* 80411114 003DA6D4  7F 23 CB 78 */	mr r3, r25
/* 80411118 003DA6D8  38 80 FF FF */	li r4, -1
/* 8041111C 003DA6DC  4B FF CD E9 */	bl func_8040DF04
/* 80411120 003DA6E0  4B F4 78 91 */	bl OSDisableInterrupts
/* 80411124 003DA6E4  88 19 00 1D */	lbz r0, 0x1d(r25)
/* 80411128 003DA6E8  7C 71 1B 78 */	mr r17, r3
/* 8041112C 003DA6EC  2C 00 00 00 */	cmpwi r0, 0
/* 80411130 003DA6F0  41 82 00 18 */	beq lbl_80411148
/* 80411134 003DA6F4  3B 39 00 40 */	addi r25, r25, 0x40
/* 80411138 003DA6F8  38 7A 00 18 */	addi r3, r26, 0x18
/* 8041113C 003DA6FC  7F 24 CB 78 */	mr r4, r25
/* 80411140 003DA700  48 01 A4 0D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80411144 003DA704  48 00 00 14 */	b lbl_80411158
lbl_80411148:
/* 80411148 003DA708  3B 39 00 40 */	addi r25, r25, 0x40
/* 8041114C 003DA70C  7F 43 D3 78 */	mr r3, r26
/* 80411150 003DA710  7F 24 CB 78 */	mr r4, r25
/* 80411154 003DA714  48 01 A3 F9 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80411158:
/* 80411158 003DA718  92 01 00 0C */	stw r16, 0xc(r1)
/* 8041115C 003DA71C  7F 25 CB 78 */	mr r5, r25
/* 80411160 003DA720  38 7A 00 0C */	addi r3, r26, 0xc
/* 80411164 003DA724  38 81 00 0C */	addi r4, r1, 0xc
/* 80411168 003DA728  48 01 A3 B9 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 8041116C 003DA72C  7E 23 8B 78 */	mr r3, r17
/* 80411170 003DA730  4B F4 78 81 */	bl OSRestoreInterrupts
/* 80411174 003DA734  7E 43 93 78 */	mr r3, r18
/* 80411178 003DA738  4B F4 78 79 */	bl OSRestoreInterrupts
lbl_8041117C:
/* 8041117C 003DA73C  80 15 00 18 */	lwz r0, 0x18(r21)
/* 80411180 003DA740  2C 00 00 00 */	cmpwi r0, 0
/* 80411184 003DA744  40 82 FE E0 */	bne lbl_80411064
lbl_80411188:
/* 80411188 003DA748  80 15 00 0C */	lwz r0, 0xc(r21)
/* 8041118C 003DA74C  2C 00 00 00 */	cmpwi r0, 0
/* 80411190 003DA750  40 82 00 14 */	bne lbl_804111A4
/* 80411194 003DA754  7E 63 9B 78 */	mr r3, r19
/* 80411198 003DA758  4B F4 78 59 */	bl OSRestoreInterrupts
/* 8041119C 003DA75C  3A 40 00 00 */	li r18, 0
/* 804111A0 003DA760  48 00 00 54 */	b lbl_804111F4
lbl_804111A4:
/* 804111A4 003DA764  80 B5 00 10 */	lwz r5, 0x10(r21)
/* 804111A8 003DA768  38 75 00 0C */	addi r3, r21, 0xc
/* 804111AC 003DA76C  38 81 00 10 */	addi r4, r1, 0x10
/* 804111B0 003DA770  90 A1 00 10 */	stw r5, 0x10(r1)
/* 804111B4 003DA774  3A 05 FF C0 */	addi r16, r5, -64
/* 804111B8 003DA778  48 01 A2 DD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 804111BC 003DA77C  2C 10 00 00 */	cmpwi r16, 0
/* 804111C0 003DA780  7E 12 83 78 */	mr r18, r16
/* 804111C4 003DA784  41 82 00 10 */	beq lbl_804111D4
/* 804111C8 003DA788  7E 03 83 78 */	mr r3, r16
/* 804111CC 003DA78C  4B FF CC F5 */	bl func_8040DEC0
/* 804111D0 003DA790  7C 72 1B 78 */	mr r18, r3
lbl_804111D4:
/* 804111D4 003DA794  38 15 00 04 */	addi r0, r21, 4
/* 804111D8 003DA798  7E A3 AB 78 */	mr r3, r21
/* 804111DC 003DA79C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804111E0 003DA7A0  38 81 00 14 */	addi r4, r1, 0x14
/* 804111E4 003DA7A4  38 B0 00 40 */	addi r5, r16, 0x40
/* 804111E8 003DA7A8  48 01 A3 39 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 804111EC 003DA7AC  7E 63 9B 78 */	mr r3, r19
/* 804111F0 003DA7B0  4B F4 78 01 */	bl OSRestoreInterrupts
lbl_804111F4:
/* 804111F4 003DA7B4  2C 12 00 00 */	cmpwi r18, 0
/* 804111F8 003DA7B8  40 82 00 14 */	bne lbl_8041120C
/* 804111FC 003DA7BC  7E 83 A3 78 */	mr r3, r20
/* 80411200 003DA7C0  4B F4 77 F1 */	bl OSRestoreInterrupts
/* 80411204 003DA7C4  38 60 00 00 */	li r3, 0
/* 80411208 003DA7C8  48 00 00 B4 */	b lbl_804112BC
lbl_8041120C:
/* 8041120C 003DA7CC  3C 80 80 41 */	lis r4, func_8040E830@ha
/* 80411210 003DA7D0  7E C3 B3 78 */	mr r3, r22
/* 80411214 003DA7D4  7E 45 93 78 */	mr r5, r18
/* 80411218 003DA7D8  38 84 E8 30 */	addi r4, r4, func_8040E830@l
/* 8041121C 003DA7DC  4B EC 12 65 */	bl AXAcquireVoice
/* 80411220 003DA7E0  2C 03 00 00 */	cmpwi r3, 0
/* 80411224 003DA7E4  7C 64 1B 78 */	mr r4, r3
/* 80411228 003DA7E8  40 82 00 78 */	bne lbl_804112A0
/* 8041122C 003DA7EC  7E 43 93 78 */	mr r3, r18
/* 80411230 003DA7F0  38 80 FF FF */	li r4, -1
/* 80411234 003DA7F4  4B FF CC D1 */	bl func_8040DF04
/* 80411238 003DA7F8  4B F4 77 79 */	bl OSDisableInterrupts
/* 8041123C 003DA7FC  88 12 00 1D */	lbz r0, 0x1d(r18)
/* 80411240 003DA800  7C 71 1B 78 */	mr r17, r3
/* 80411244 003DA804  2C 00 00 00 */	cmpwi r0, 0
/* 80411248 003DA808  41 82 00 18 */	beq lbl_80411260
/* 8041124C 003DA80C  3A 12 00 40 */	addi r16, r18, 0x40
/* 80411250 003DA810  38 75 00 18 */	addi r3, r21, 0x18
/* 80411254 003DA814  7E 04 83 78 */	mr r4, r16
/* 80411258 003DA818  48 01 A2 F5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 8041125C 003DA81C  48 00 00 14 */	b lbl_80411270
lbl_80411260:
/* 80411260 003DA820  3A 12 00 40 */	addi r16, r18, 0x40
/* 80411264 003DA824  7E A3 AB 78 */	mr r3, r21
/* 80411268 003DA828  7E 04 83 78 */	mr r4, r16
/* 8041126C 003DA82C  48 01 A2 E1 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80411270:
/* 80411270 003DA830  38 15 00 10 */	addi r0, r21, 0x10
/* 80411274 003DA834  7E 05 83 78 */	mr r5, r16
/* 80411278 003DA838  90 01 00 08 */	stw r0, 8(r1)
/* 8041127C 003DA83C  38 75 00 0C */	addi r3, r21, 0xc
/* 80411280 003DA840  38 81 00 08 */	addi r4, r1, 8
/* 80411284 003DA844  48 01 A2 9D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80411288 003DA848  7E 23 8B 78 */	mr r3, r17
/* 8041128C 003DA84C  4B F4 77 65 */	bl OSRestoreInterrupts
/* 80411290 003DA850  7E 83 A3 78 */	mr r3, r20
/* 80411294 003DA854  4B F4 77 5D */	bl OSRestoreInterrupts
/* 80411298 003DA858  38 60 00 00 */	li r3, 0
/* 8041129C 003DA85C  48 00 00 20 */	b lbl_804112BC
lbl_804112A0:
/* 804112A0 003DA860  7E 43 93 78 */	mr r3, r18
/* 804112A4 003DA864  4B FF F1 E9 */	bl func_8041048C
/* 804112A8 003DA868  92 F2 00 38 */	stw r23, 0x38(r18)
/* 804112AC 003DA86C  7E 83 A3 78 */	mr r3, r20
/* 804112B0 003DA870  93 12 00 3C */	stw r24, 0x3c(r18)
/* 804112B4 003DA874  4B F4 77 3D */	bl OSRestoreInterrupts
/* 804112B8 003DA878  7E 43 93 78 */	mr r3, r18
lbl_804112BC:
/* 804112BC 003DA87C  39 61 00 60 */	addi r11, r1, 0x60
/* 804112C0 003DA880  4B EA 8E B5 */	bl _restgpr_16
/* 804112C4 003DA884  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804112C8 003DA888  7C 08 03 A6 */	mtlr r0
/* 804112CC 003DA88C  38 21 00 60 */	addi r1, r1, 0x60
/* 804112D0 003DA890  4E 80 00 20 */	blr 

.global func_804112D4
func_804112D4:
/* 804112D4 003DA894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804112D8 003DA898  7C 08 02 A6 */	mflr r0
/* 804112DC 003DA89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804112E0 003DA8A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804112E4 003DA8A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804112E8 003DA8A8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804112EC 003DA8AC  7C 9D 23 78 */	mr r29, r4
/* 804112F0 003DA8B0  93 81 00 10 */	stw r28, 0x10(r1)
/* 804112F4 003DA8B4  7C 7C 1B 78 */	mr r28, r3
/* 804112F8 003DA8B8  4B F4 76 B9 */	bl OSDisableInterrupts
/* 804112FC 003DA8BC  80 1D 00 00 */	lwz r0, 0(r29)
/* 80411300 003DA8C0  7C 7F 1B 78 */	mr r31, r3
/* 80411304 003DA8C4  2C 00 00 00 */	cmpwi r0, 0
/* 80411308 003DA8C8  41 82 00 0C */	beq lbl_80411314
/* 8041130C 003DA8CC  7C 03 03 78 */	mr r3, r0
/* 80411310 003DA8D0  4B EC 10 F1 */	bl AXFreeVoice
lbl_80411314:
/* 80411314 003DA8D4  7F A3 EB 78 */	mr r3, r29
/* 80411318 003DA8D8  38 80 FF FF */	li r4, -1
/* 8041131C 003DA8DC  4B FF CB E9 */	bl func_8040DF04
/* 80411320 003DA8E0  4B F4 76 91 */	bl OSDisableInterrupts
/* 80411324 003DA8E4  88 1D 00 1D */	lbz r0, 0x1d(r29)
/* 80411328 003DA8E8  7C 7E 1B 78 */	mr r30, r3
/* 8041132C 003DA8EC  2C 00 00 00 */	cmpwi r0, 0
/* 80411330 003DA8F0  41 82 00 18 */	beq lbl_80411348
/* 80411334 003DA8F4  3B BD 00 40 */	addi r29, r29, 0x40
/* 80411338 003DA8F8  38 7C 00 18 */	addi r3, r28, 0x18
/* 8041133C 003DA8FC  7F A4 EB 78 */	mr r4, r29
/* 80411340 003DA900  48 01 A2 0D */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80411344 003DA904  48 00 00 14 */	b lbl_80411358
lbl_80411348:
/* 80411348 003DA908  3B BD 00 40 */	addi r29, r29, 0x40
/* 8041134C 003DA90C  7F 83 E3 78 */	mr r3, r28
/* 80411350 003DA910  7F A4 EB 78 */	mr r4, r29
/* 80411354 003DA914  48 01 A1 F9 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_80411358:
/* 80411358 003DA918  38 1C 00 10 */	addi r0, r28, 0x10
/* 8041135C 003DA91C  7F A5 EB 78 */	mr r5, r29
/* 80411360 003DA920  90 01 00 08 */	stw r0, 8(r1)
/* 80411364 003DA924  38 7C 00 0C */	addi r3, r28, 0xc
/* 80411368 003DA928  38 81 00 08 */	addi r4, r1, 8
/* 8041136C 003DA92C  48 01 A1 B5 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80411370 003DA930  7F C3 F3 78 */	mr r3, r30
/* 80411374 003DA934  4B F4 76 7D */	bl OSRestoreInterrupts
/* 80411378 003DA938  7F E3 FB 78 */	mr r3, r31
/* 8041137C 003DA93C  4B F4 76 75 */	bl OSRestoreInterrupts
/* 80411380 003DA940  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411384 003DA944  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80411388 003DA948  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8041138C 003DA94C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80411390 003DA950  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80411394 003DA954  7C 08 03 A6 */	mtlr r0
/* 80411398 003DA958  38 21 00 20 */	addi r1, r1, 0x20
/* 8041139C 003DA95C  4E 80 00 20 */	blr 

.global func_804113A0
func_804113A0:
/* 804113A0 003DA960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804113A4 003DA964  7C 08 02 A6 */	mflr r0
/* 804113A8 003DA968  90 01 00 24 */	stw r0, 0x24(r1)
/* 804113AC 003DA96C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804113B0 003DA970  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804113B4 003DA974  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804113B8 003DA978  7C 9D 23 78 */	mr r29, r4
/* 804113BC 003DA97C  93 81 00 10 */	stw r28, 0x10(r1)
/* 804113C0 003DA980  7C 7C 1B 78 */	mr r28, r3
/* 804113C4 003DA984  4B F4 75 ED */	bl OSDisableInterrupts
/* 804113C8 003DA988  38 00 00 01 */	li r0, 1
/* 804113CC 003DA98C  7C 7F 1B 78 */	mr r31, r3
/* 804113D0 003DA990  98 1D 00 1D */	stb r0, 0x1d(r29)
/* 804113D4 003DA994  4B F4 75 DD */	bl OSDisableInterrupts
/* 804113D8 003DA998  3B BD 00 40 */	addi r29, r29, 0x40
/* 804113DC 003DA99C  7C 7E 1B 78 */	mr r30, r3
/* 804113E0 003DA9A0  7F 83 E3 78 */	mr r3, r28
/* 804113E4 003DA9A4  7F A4 EB 78 */	mr r4, r29
/* 804113E8 003DA9A8  48 01 A1 65 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 804113EC 003DA9AC  38 1C 00 1C */	addi r0, r28, 0x1c
/* 804113F0 003DA9B0  7F A5 EB 78 */	mr r5, r29
/* 804113F4 003DA9B4  90 01 00 08 */	stw r0, 8(r1)
/* 804113F8 003DA9B8  38 7C 00 18 */	addi r3, r28, 0x18
/* 804113FC 003DA9BC  38 81 00 08 */	addi r4, r1, 8
/* 80411400 003DA9C0  48 01 A1 21 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80411404 003DA9C4  7F C3 F3 78 */	mr r3, r30
/* 80411408 003DA9C8  4B F4 75 E9 */	bl OSRestoreInterrupts
/* 8041140C 003DA9CC  7F E3 FB 78 */	mr r3, r31
/* 80411410 003DA9D0  4B F4 75 E1 */	bl OSRestoreInterrupts
/* 80411414 003DA9D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80411418 003DA9D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8041141C 003DA9DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80411420 003DA9E0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80411424 003DA9E4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80411428 003DA9E8  7C 08 03 A6 */	mtlr r0
/* 8041142C 003DA9EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80411430 003DA9F0  4E 80 00 20 */	blr 

.global func_80411434
func_80411434:
/* 80411434 003DA9F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80411438 003DA9F8  7C 08 02 A6 */	mflr r0
/* 8041143C 003DA9FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80411440 003DAA00  39 61 00 40 */	addi r11, r1, 0x40
/* 80411444 003DAA04  4B EA 8C F9 */	bl _savegpr_21
/* 80411448 003DAA08  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8041144C 003DAA0C  7C 7F 1B 78 */	mr r31, r3
/* 80411450 003DAA10  2C 00 00 00 */	cmpwi r0, 0
/* 80411454 003DAA14  41 82 01 48 */	beq lbl_8041159C
/* 80411458 003DAA18  3E E0 80 64 */	lis r23, lbl_8063B174@ha
/* 8041145C 003DAA1C  3B 00 00 00 */	li r24, 0
/* 80411460 003DAA20  3A D7 B1 74 */	addi r22, r23, lbl_8063B174@l
/* 80411464 003DAA24  3F 20 80 41 */	lis r25, func_80410C24@ha
/* 80411468 003DAA28  3F 40 80 64 */	lis r26, lbl_8063B168@ha
/* 8041146C 003DAA2C  3B 60 00 01 */	li r27, 1
/* 80411470 003DAA30  3B 96 00 10 */	addi r28, r22, 0x10
/* 80411474 003DAA34  48 00 01 1C */	b lbl_80411590
lbl_80411478:
/* 80411478 003DAA38  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8041147C 003DAA3C  81 83 FF F8 */	lwz r12, -8(r3)
/* 80411480 003DAA40  3A A3 FF C0 */	addi r21, r3, -64
/* 80411484 003DAA44  2C 0C 00 00 */	cmpwi r12, 0
/* 80411488 003DAA48  41 82 00 18 */	beq lbl_804114A0
/* 8041148C 003DAA4C  7E A3 AB 78 */	mr r3, r21
/* 80411490 003DAA50  80 B5 00 3C */	lwz r5, 0x3c(r21)
/* 80411494 003DAA54  38 80 00 01 */	li r4, 1
/* 80411498 003DAA58  7D 89 03 A6 */	mtctr r12
/* 8041149C 003DAA5C  4E 80 04 21 */	bctrl 
lbl_804114A0:
/* 804114A0 003DAA60  88 0D BC 20 */	lbz r0, lbl_80667DA0@sda21(r13)
/* 804114A4 003DAA64  7C 00 07 75 */	extsb. r0, r0
/* 804114A8 003DAA68  40 82 00 64 */	bne lbl_8041150C
/* 804114AC 003DAA6C  93 16 00 04 */	stw r24, 4(r22)
/* 804114B0 003DAA70  38 D6 00 04 */	addi r6, r22, 4
/* 804114B4 003DAA74  38 F6 00 10 */	addi r7, r22, 0x10
/* 804114B8 003DAA78  39 16 00 1C */	addi r8, r22, 0x1c
/* 804114BC 003DAA7C  93 16 00 08 */	stw r24, 8(r22)
/* 804114C0 003DAA80  7E C3 B3 78 */	mr r3, r22
/* 804114C4 003DAA84  38 99 0C 24 */	addi r4, r25, func_80410C24@l
/* 804114C8 003DAA88  38 BA B1 68 */	addi r5, r26, lbl_8063B168@l
/* 804114CC 003DAA8C  93 16 00 10 */	stw r24, 0x10(r22)
/* 804114D0 003DAA90  93 16 00 14 */	stw r24, 0x14(r22)
/* 804114D4 003DAA94  93 16 00 1C */	stw r24, 0x1c(r22)
/* 804114D8 003DAA98  93 16 00 20 */	stw r24, 0x20(r22)
/* 804114DC 003DAA9C  93 17 B1 74 */	stw r24,lbl_8063B174@l(r23)
/* 804114E0 003DAAA0  90 D6 00 04 */	stw r6, 4(r22)
/* 804114E4 003DAAA4  90 D6 00 08 */	stw r6, 8(r22)
/* 804114E8 003DAAA8  93 16 00 0C */	stw r24, 0xc(r22)
/* 804114EC 003DAAAC  90 F6 00 10 */	stw r7, 0x10(r22)
/* 804114F0 003DAAB0  90 F6 00 14 */	stw r7, 0x14(r22)
/* 804114F4 003DAAB4  93 16 00 18 */	stw r24, 0x18(r22)
/* 804114F8 003DAAB8  91 16 00 1C */	stw r8, 0x1c(r22)
/* 804114FC 003DAABC  91 16 00 20 */	stw r8, 0x20(r22)
/* 80411500 003DAAC0  9B 16 00 24 */	stb r24, 0x24(r22)
/* 80411504 003DAAC4  4B EA 81 99 */	bl __register_global_object_tmp
/* 80411508 003DAAC8  9B 6D BC 20 */	stb r27, lbl_80667DA0@sda21(r13)
lbl_8041150C:
/* 8041150C 003DAACC  4B F4 74 A5 */	bl OSDisableInterrupts
/* 80411510 003DAAD0  80 15 00 00 */	lwz r0, 0(r21)
/* 80411514 003DAAD4  7C 7E 1B 78 */	mr r30, r3
/* 80411518 003DAAD8  2C 00 00 00 */	cmpwi r0, 0
/* 8041151C 003DAADC  41 82 00 0C */	beq lbl_80411528
/* 80411520 003DAAE0  7C 03 03 78 */	mr r3, r0
/* 80411524 003DAAE4  4B EC 0E DD */	bl AXFreeVoice
lbl_80411528:
/* 80411528 003DAAE8  7E A3 AB 78 */	mr r3, r21
/* 8041152C 003DAAEC  38 80 FF FF */	li r4, -1
/* 80411530 003DAAF0  4B FF C9 D5 */	bl func_8040DF04
/* 80411534 003DAAF4  4B F4 74 7D */	bl OSDisableInterrupts
/* 80411538 003DAAF8  88 15 00 1D */	lbz r0, 0x1d(r21)
/* 8041153C 003DAAFC  7C 7D 1B 78 */	mr r29, r3
/* 80411540 003DAB00  2C 00 00 00 */	cmpwi r0, 0
/* 80411544 003DAB04  41 82 00 18 */	beq lbl_8041155C
/* 80411548 003DAB08  3A B5 00 40 */	addi r21, r21, 0x40
/* 8041154C 003DAB0C  38 76 00 18 */	addi r3, r22, 0x18
/* 80411550 003DAB10  7E A4 AB 78 */	mr r4, r21
/* 80411554 003DAB14  48 01 9F F9 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80411558 003DAB18  48 00 00 14 */	b lbl_8041156C
lbl_8041155C:
/* 8041155C 003DAB1C  3A B5 00 40 */	addi r21, r21, 0x40
/* 80411560 003DAB20  7E C3 B3 78 */	mr r3, r22
/* 80411564 003DAB24  7E A4 AB 78 */	mr r4, r21
/* 80411568 003DAB28  48 01 9F E5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
lbl_8041156C:
/* 8041156C 003DAB2C  93 81 00 08 */	stw r28, 8(r1)
/* 80411570 003DAB30  7E A5 AB 78 */	mr r5, r21
/* 80411574 003DAB34  38 76 00 0C */	addi r3, r22, 0xc
/* 80411578 003DAB38  38 81 00 08 */	addi r4, r1, 8
/* 8041157C 003DAB3C  48 01 9F A5 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80411580 003DAB40  7F A3 EB 78 */	mr r3, r29
/* 80411584 003DAB44  4B F4 74 6D */	bl OSRestoreInterrupts
/* 80411588 003DAB48  7F C3 F3 78 */	mr r3, r30
/* 8041158C 003DAB4C  4B F4 74 65 */	bl OSRestoreInterrupts
lbl_80411590:
/* 80411590 003DAB50  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 80411594 003DAB54  2C 00 00 00 */	cmpwi r0, 0
/* 80411598 003DAB58  40 82 FE E0 */	bne lbl_80411478
lbl_8041159C:
/* 8041159C 003DAB5C  39 61 00 40 */	addi r11, r1, 0x40
/* 804115A0 003DAB60  4B EA 8B E9 */	bl _restgpr_21
/* 804115A4 003DAB64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804115A8 003DAB68  7C 08 03 A6 */	mtlr r0
/* 804115AC 003DAB6C  38 21 00 40 */	addi r1, r1, 0x40
/* 804115B0 003DAB70  4E 80 00 20 */	blr
