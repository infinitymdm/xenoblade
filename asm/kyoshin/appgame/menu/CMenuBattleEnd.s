.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_8026F37C
func_8026F37C:
/* 8026F37C 0023893C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F380 00238940  7C 08 02 A6 */	mflr r0
/* 8026F384 00238944  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F388 00238948  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8026F38C 0023894C  7C 7C 1B 78 */	mr r28, r3
/* 8026F390 00238950  7C 9D 23 78 */	mr r29, r4
/* 8026F394 00238954  7C BE 2B 78 */	mr r30, r5
/* 8026F398 00238958  7C DF 33 78 */	mr r31, r6
/* 8026F39C 0023895C  48 1D 56 7D */	bl __ct__8CProcessFv
/* 8026F3A0 00238960  3C 60 80 53 */	lis r3, __vt__CTTask_IUIWindow@ha
/* 8026F3A4 00238964  3C A0 80 54 */	lis r5, __vt__CMenuBattleEnd@ha
/* 8026F3A8 00238968  38 63 0A 08 */	addi r3, r3, __vt__CTTask_IUIWindow@l
/* 8026F3AC 0023896C  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8026F3B0 00238970  3D 40 80 51 */	lis r10, lbl_8050CE10@ha
/* 8026F3B4 00238974  38 A5 B2 68 */	addi r5, r5, __vt__CMenuBattleEnd@l
/* 8026F3B8 00238978  84 6A CE 10 */	lwzu r3, lbl_8050CE10@l(r10)
/* 8026F3BC 0023897C  38 85 00 24 */	addi r4, r5, 0x24
/* 8026F3C0 00238980  3B 60 00 00 */	li r27, 0
/* 8026F3C4 00238984  38 E0 FF FF */	li r7, -1
/* 8026F3C8 00238988  80 0A 00 04 */	lwz r0, 4(r10)
/* 8026F3CC 0023898C  38 C0 00 01 */	li r6, 1
/* 8026F3D0 00238990  90 1C 00 40 */	stw r0, 0x40(r28)
/* 8026F3D4 00238994  38 05 00 AC */	addi r0, r5, 0xac
/* 8026F3D8 00238998  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8026F3DC 0023899C  38 7C 00 78 */	addi r3, r28, 0x78
/* 8026F3E0 002389A0  81 0A 00 08 */	lwz r8, 8(r10)
/* 8026F3E4 002389A4  91 1C 00 44 */	stw r8, 0x44(r28)
/* 8026F3E8 002389A8  81 2A 00 00 */	lwz r9, 0(r10)
/* 8026F3EC 002389AC  81 0A 00 04 */	lwz r8, 4(r10)
/* 8026F3F0 002389B0  91 1C 00 4C */	stw r8, 0x4c(r28)
/* 8026F3F4 002389B4  91 3C 00 48 */	stw r9, 0x48(r28)
/* 8026F3F8 002389B8  81 0A 00 08 */	lwz r8, 8(r10)
/* 8026F3FC 002389BC  91 1C 00 50 */	stw r8, 0x50(r28)
/* 8026F400 002389C0  93 7C 00 54 */	stw r27, 0x54(r28)
/* 8026F404 002389C4  93 7C 00 58 */	stw r27, 0x58(r28)
/* 8026F408 002389C8  93 7C 00 5C */	stw r27, 0x5c(r28)
/* 8026F40C 002389CC  90 FC 00 60 */	stw r7, 0x60(r28)
/* 8026F410 002389D0  9B 7C 00 64 */	stb r27, 0x64(r28)
/* 8026F414 002389D4  9B 7C 00 65 */	stb r27, 0x65(r28)
/* 8026F418 002389D8  9B 7C 00 66 */	stb r27, 0x66(r28)
/* 8026F41C 002389DC  98 DC 00 67 */	stb r6, 0x67(r28)
/* 8026F420 002389E0  93 7C 00 68 */	stw r27, 0x68(r28)
/* 8026F424 002389E4  90 BC 00 10 */	stw r5, 0x10(r28)
/* 8026F428 002389E8  90 9C 00 6C */	stw r4, 0x6c(r28)
/* 8026F42C 002389EC  90 1C 00 70 */	stw r0, 0x70(r28)
/* 8026F430 002389F0  93 BC 00 74 */	stw r29, 0x74(r28)
/* 8026F434 002389F4  48 1F 01 31 */	bl func_8045F564
/* 8026F438 002389F8  38 9C 00 9C */	addi r4, r28, 0x9c
/* 8026F43C 002389FC  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 8026F440 00238A00  7C 04 18 40 */	cmplw r4, r3
/* 8026F444 00238A04  93 7C 00 88 */	stw r27, 0x88(r28)
/* 8026F448 00238A08  93 7C 00 8C */	stw r27, 0x8c(r28)
/* 8026F44C 00238A0C  93 7C 00 90 */	stw r27, 0x90(r28)
/* 8026F450 00238A10  9B 7C 00 94 */	stb r27, 0x94(r28)
/* 8026F454 00238A14  93 7C 00 98 */	stw r27, 0x98(r28)
/* 8026F458 00238A18  40 80 00 28 */	bge .L_8026F480
/* 8026F45C 00238A1C  38 03 00 07 */	addi r0, r3, 7
/* 8026F460 00238A20  7C 04 00 50 */	subf r0, r4, r0
/* 8026F464 00238A24  54 00 E8 FE */	srwi r0, r0, 3
/* 8026F468 00238A28  7C 09 03 A6 */	mtctr r0
/* 8026F46C 00238A2C  40 80 00 14 */	bge .L_8026F480
.L_8026F470:
/* 8026F470 00238A30  9B 64 00 00 */	stb r27, 0(r4)
/* 8026F474 00238A34  93 64 00 04 */	stw r27, 4(r4)
/* 8026F478 00238A38  38 84 00 08 */	addi r4, r4, 8
/* 8026F47C 00238A3C  42 00 FF F4 */	bdnz .L_8026F470
.L_8026F480:
/* 8026F480 00238A40  38 00 00 00 */	li r0, 0
/* 8026F484 00238A44  38 60 00 01 */	li r3, 1
/* 8026F488 00238A48  98 7C 00 B4 */	stb r3, 0xb4(r28)
/* 8026F48C 00238A4C  7F 83 E3 78 */	mr r3, r28
/* 8026F490 00238A50  9B DC 00 B5 */	stb r30, 0xb5(r28)
/* 8026F494 00238A54  93 FC 00 B8 */	stw r31, 0xb8(r28)
/* 8026F498 00238A58  98 1C 00 94 */	stb r0, 0x94(r28)
/* 8026F49C 00238A5C  90 1C 00 98 */	stw r0, 0x98(r28)
/* 8026F4A0 00238A60  98 1C 00 9C */	stb r0, 0x9c(r28)
/* 8026F4A4 00238A64  90 1C 00 A0 */	stw r0, 0xa0(r28)
/* 8026F4A8 00238A68  98 1C 00 A4 */	stb r0, 0xa4(r28)
/* 8026F4AC 00238A6C  90 1C 00 A8 */	stw r0, 0xa8(r28)
/* 8026F4B0 00238A70  98 1C 00 AC */	stb r0, 0xac(r28)
/* 8026F4B4 00238A74  90 1C 00 B0 */	stw r0, 0xb0(r28)
/* 8026F4B8 00238A78  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8026F4BC 00238A7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F4C0 00238A80  7C 08 03 A6 */	mtlr r0
/* 8026F4C4 00238A84  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F4C8 00238A88  4E 80 00 20 */	blr

.global func_8026F4CC
func_8026F4CC:
/* 8026F4CC 00238A8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F4D0 00238A90  7C 08 02 A6 */	mflr r0
/* 8026F4D4 00238A94  2C 03 00 00 */	cmpwi r3, 0
/* 8026F4D8 00238A98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F4DC 00238A9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F4E0 00238AA0  7C 9F 23 78 */	mr r31, r4
/* 8026F4E4 00238AA4  93 C1 00 08 */	stw r30, 8(r1)
/* 8026F4E8 00238AA8  7C 7E 1B 78 */	mr r30, r3
/* 8026F4EC 00238AAC  41 82 00 38 */	beq .L_8026F524
/* 8026F4F0 00238AB0  38 80 FF FF */	li r4, -1
/* 8026F4F4 00238AB4  38 63 00 78 */	addi r3, r3, 0x78
/* 8026F4F8 00238AB8  48 1F 00 89 */	bl func_8045F580
/* 8026F4FC 00238ABC  2C 1E 00 00 */	cmpwi r30, 0
/* 8026F500 00238AC0  41 82 00 14 */	beq .L_8026F514
/* 8026F504 00238AC4  41 82 00 10 */	beq .L_8026F514
/* 8026F508 00238AC8  7F C3 F3 78 */	mr r3, r30
/* 8026F50C 00238ACC  38 80 00 00 */	li r4, 0
/* 8026F510 00238AD0  48 1D 56 29 */	bl func_80444B38
.L_8026F514:
/* 8026F514 00238AD4  2C 1F 00 00 */	cmpwi r31, 0
/* 8026F518 00238AD8  40 81 00 0C */	ble .L_8026F524
/* 8026F51C 00238ADC  7F C3 F3 78 */	mr r3, r30
/* 8026F520 00238AE0  48 1C 57 0D */	bl __dl__FPv
.L_8026F524:
/* 8026F524 00238AE4  7F C3 F3 78 */	mr r3, r30
/* 8026F528 00238AE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F52C 00238AEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8026F530 00238AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F534 00238AF4  7C 08 03 A6 */	mtlr r0
/* 8026F538 00238AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F53C 00238AFC  4E 80 00 20 */	blr 

.global func_8026F540
func_8026F540:
/* 8026F540 00238B00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F544 00238B04  7C 08 02 A6 */	mflr r0
/* 8026F548 00238B08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F54C 00238B0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026F550 00238B10  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026F554 00238B14  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026F558 00238B18  7C 7D 1B 78 */	mr r29, r3
/* 8026F55C 00238B1C  48 1C 4E 45 */	bl func_804343A0
/* 8026F560 00238B20  3F E0 80 51 */	lis r31, lbl_80509D88@ha
/* 8026F564 00238B24  7C 64 1B 78 */	mr r4, r3
/* 8026F568 00238B28  38 7D 00 78 */	addi r3, r29, 0x78
/* 8026F56C 00238B2C  38 A0 40 00 */	li r5, 0x4000
/* 8026F570 00238B30  38 DF 9D 88 */	addi r6, r31, lbl_80509D88@l
/* 8026F574 00238B34  38 E0 00 00 */	li r7, 0
/* 8026F578 00238B38  48 1F 01 09 */	bl func_8045F680
/* 8026F57C 00238B3C  38 61 00 08 */	addi r3, r1, 8
/* 8026F580 00238B40  38 9D 00 78 */	addi r4, r29, 0x78
/* 8026F584 00238B44  48 1F 02 D5 */	bl func_8045F858
/* 8026F588 00238B48  4B EC 60 6D */	bl func_801355F4
/* 8026F58C 00238B4C  3B FF 9D 88 */	addi r31, r31, lbl_80509D88@l
/* 8026F590 00238B50  7C 64 1B 78 */	mr r4, r3
/* 8026F594 00238B54  38 7D 00 54 */	addi r3, r29, 0x54
/* 8026F598 00238B58  38 BF 00 0F */	addi r5, r31, 0xf
/* 8026F59C 00238B5C  4B EC 78 E9 */	bl func_80136E84
/* 8026F5A0 00238B60  4B EC 60 55 */	bl func_801355F4
/* 8026F5A4 00238B64  7C 65 1B 78 */	mr r5, r3
/* 8026F5A8 00238B68  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F5AC 00238B6C  38 9D 00 88 */	addi r4, r29, 0x88
/* 8026F5B0 00238B70  38 DF 00 28 */	addi r6, r31, 0x28
/* 8026F5B4 00238B74  4B EC 79 55 */	bl func_80136F08
/* 8026F5B8 00238B78  4B EC 60 3D */	bl func_801355F4
/* 8026F5BC 00238B7C  7C 65 1B 78 */	mr r5, r3
/* 8026F5C0 00238B80  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F5C4 00238B84  38 9D 00 8C */	addi r4, r29, 0x8c
/* 8026F5C8 00238B88  38 DF 00 48 */	addi r6, r31, 0x48
/* 8026F5CC 00238B8C  4B EC 79 3D */	bl func_80136F08
/* 8026F5D0 00238B90  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F5D4 00238B94  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 8026F5D8 00238B98  4B EC 5F C9 */	bl func_801355A0
/* 8026F5DC 00238B9C  7C 64 1B 78 */	mr r4, r3
/* 8026F5E0 00238BA0  7F C3 F3 78 */	mr r3, r30
/* 8026F5E4 00238BA4  4B EC 71 89 */	bl func_8013676C
/* 8026F5E8 00238BA8  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F5EC 00238BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F5F0 00238BB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8026F5F4 00238BB4  7D 89 03 A6 */	mtctr r12
/* 8026F5F8 00238BB8  4E 80 04 21 */	bctrl 
/* 8026F5FC 00238BBC  88 1D 00 B5 */	lbz r0, 0xb5(r29)
/* 8026F600 00238BC0  2C 00 00 01 */	cmpwi r0, 1
/* 8026F604 00238BC4  41 82 00 10 */	beq .L_8026F614
/* 8026F608 00238BC8  2C 00 00 02 */	cmpwi r0, 2
/* 8026F60C 00238BCC  41 82 00 34 */	beq .L_8026F640
/* 8026F610 00238BD0  48 00 00 58 */	b .L_8026F668
.L_8026F614:
/* 8026F614 00238BD4  80 1D 00 88 */	lwz r0, 0x88(r29)
/* 8026F618 00238BD8  38 9F 00 68 */	addi r4, r31, 0x68
/* 8026F61C 00238BDC  90 1D 00 90 */	stw r0, 0x90(r29)
/* 8026F620 00238BE0  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F624 00238BE4  80 BD 00 B8 */	lwz r5, 0xb8(r29)
/* 8026F628 00238BE8  4B EC 72 E9 */	bl func_80136910
/* 8026F62C 00238BEC  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F630 00238BF0  38 9F 00 74 */	addi r4, r31, 0x74
/* 8026F634 00238BF4  80 BD 00 B8 */	lwz r5, 0xb8(r29)
/* 8026F638 00238BF8  4B EC 72 D9 */	bl func_80136910
/* 8026F63C 00238BFC  48 00 00 2C */	b .L_8026F668
.L_8026F640:
/* 8026F640 00238C00  80 1D 00 8C */	lwz r0, 0x8c(r29)
/* 8026F644 00238C04  38 9F 00 80 */	addi r4, r31, 0x80
/* 8026F648 00238C08  90 1D 00 90 */	stw r0, 0x90(r29)
/* 8026F64C 00238C0C  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F650 00238C10  80 BD 00 B8 */	lwz r5, 0xb8(r29)
/* 8026F654 00238C14  4B EC 72 BD */	bl func_80136910
/* 8026F658 00238C18  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F65C 00238C1C  38 9F 00 8C */	addi r4, r31, 0x8c
/* 8026F660 00238C20  80 BD 00 B8 */	lwz r5, 0xb8(r29)
/* 8026F664 00238C24  4B EC 72 AD */	bl func_80136910
.L_8026F668:
/* 8026F668 00238C28  80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8026F66C 00238C2C  2C 04 00 00 */	cmpwi r4, 0
/* 8026F670 00238C30  41 82 00 54 */	beq .L_8026F6C4
/* 8026F674 00238C34  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F678 00238C38  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F67C 00238C3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8026F680 00238C40  7D 89 03 A6 */	mtctr r12
/* 8026F684 00238C44  4E 80 04 21 */	bctrl 
/* 8026F688 00238C48  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F68C 00238C4C  38 A0 00 01 */	li r5, 1
/* 8026F690 00238C50  80 9D 00 90 */	lwz r4, 0x90(r29)
/* 8026F694 00238C54  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F698 00238C58  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8026F69C 00238C5C  7D 89 03 A6 */	mtctr r12
/* 8026F6A0 00238C60  4E 80 04 21 */	bctrl 
/* 8026F6A4 00238C64  80 7D 00 54 */	lwz r3, 0x54(r29)
/* 8026F6A8 00238C68  38 80 00 00 */	li r4, 0
/* 8026F6AC 00238C6C  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F6B0 00238C70  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8026F6B4 00238C74  7D 89 03 A6 */	mtctr r12
/* 8026F6B8 00238C78  4E 80 04 21 */	bctrl 
/* 8026F6BC 00238C7C  38 60 00 2C */	li r3, 0x2c
/* 8026F6C0 00238C80  4B EC 89 B9 */	bl func_80138078
.L_8026F6C4:
/* 8026F6C4 00238C84  2C 1D 00 00 */	cmpwi r29, 0
/* 8026F6C8 00238C88  38 00 00 00 */	li r0, 0
/* 8026F6CC 00238C8C  98 1D 00 67 */	stb r0, 0x67(r29)
/* 8026F6D0 00238C90  7F A4 EB 78 */	mr r4, r29
/* 8026F6D4 00238C94  41 82 00 08 */	beq .L_8026F6DC
/* 8026F6D8 00238C98  38 9D 00 70 */	addi r4, r29, 0x70
.L_8026F6DC:
/* 8026F6DC 00238C9C  80 7D 00 74 */	lwz r3, 0x74(r29)
/* 8026F6E0 00238CA0  38 A0 00 0A */	li r5, 0xa
/* 8026F6E4 00238CA4  38 C0 00 00 */	li r6, 0
/* 8026F6E8 00238CA8  48 22 67 CD */	bl func_80495EB4
/* 8026F6EC 00238CAC  38 7D 00 78 */	addi r3, r29, 0x78
/* 8026F6F0 00238CB0  48 1F 01 21 */	bl func_8045F810
/* 8026F6F4 00238CB4  38 61 00 08 */	addi r3, r1, 8
/* 8026F6F8 00238CB8  38 80 FF FF */	li r4, -1
/* 8026F6FC 00238CBC  48 1F 01 CD */	bl func_8045F8C8
/* 8026F700 00238CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F704 00238CC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026F708 00238CC8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026F70C 00238CCC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026F710 00238CD0  7C 08 03 A6 */	mtlr r0
/* 8026F714 00238CD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F718 00238CD8  4E 80 00 20 */	blr 

.global func_8026F71C
func_8026F71C:
/* 8026F71C 00238CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F720 00238CE0  7C 08 02 A6 */	mflr r0
/* 8026F724 00238CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F728 00238CE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F72C 00238CEC  7C 7F 1B 78 */	mr r31, r3
/* 8026F730 00238CF0  48 1D 93 15 */	bl func_80448A44
/* 8026F734 00238CF4  2C 1F 00 00 */	cmpwi r31, 0
/* 8026F738 00238CF8  7F E4 FB 78 */	mr r4, r31
/* 8026F73C 00238CFC  41 82 00 08 */	beq .L_8026F744
/* 8026F740 00238D00  38 9F 00 70 */	addi r4, r31, 0x70
.L_8026F744:
/* 8026F744 00238D04  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8026F748 00238D08  48 22 68 09 */	bl func_80495F50
/* 8026F74C 00238D0C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8026F750 00238D10  2C 03 00 00 */	cmpwi r3, 0
/* 8026F754 00238D14  41 82 00 24 */	beq .L_8026F778
/* 8026F758 00238D18  41 82 00 18 */	beq .L_8026F770
/* 8026F75C 00238D1C  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F760 00238D20  38 80 00 01 */	li r4, 1
/* 8026F764 00238D24  81 8C 00 08 */	lwz r12, 8(r12)
/* 8026F768 00238D28  7D 89 03 A6 */	mtctr r12
/* 8026F76C 00238D2C  4E 80 04 21 */	bctrl 
.L_8026F770:
/* 8026F770 00238D30  38 00 00 00 */	li r0, 0
/* 8026F774 00238D34  90 1F 00 54 */	stw r0, 0x54(r31)
.L_8026F778:
/* 8026F778 00238D38  38 00 00 00 */	li r0, 0
/* 8026F77C 00238D3C  90 0D B0 08 */	stw r0, lbl_80667188@sda21(r13)
/* 8026F780 00238D40  38 7F 00 78 */	addi r3, r31, 0x78
/* 8026F784 00238D44  48 1E FF F5 */	bl func_8045F778
/* 8026F788 00238D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F78C 00238D4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F790 00238D50  7C 08 03 A6 */	mtlr r0
/* 8026F794 00238D54  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F798 00238D58  4E 80 00 20 */	blr 

.global func_8026F79C
func_8026F79C:
/* 8026F79C 00238D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8026F7A0 00238D60  7C 08 02 A6 */	mflr r0
/* 8026F7A4 00238D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026F7A8 00238D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8026F7AC 00238D6C  7C 7F 1B 78 */	mr r31, r3
/* 8026F7B0 00238D70  4B DD 0D 39 */	bl func_800404E8
/* 8026F7B4 00238D74  4B DD 2F 3D */	bl func_800426F0
/* 8026F7B8 00238D78  2C 03 00 00 */	cmpwi r3, 0
/* 8026F7BC 00238D7C  40 82 00 4C */	bne .L_8026F808
/* 8026F7C0 00238D80  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8026F7C4 00238D84  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8026F7C8 00238D88  41 82 00 08 */	beq .L_8026F7D0
/* 8026F7CC 00238D8C  48 00 00 3C */	b .L_8026F808
.L_8026F7D0:
/* 8026F7D0 00238D90  4B EC C6 81 */	bl func_8013BE50
/* 8026F7D4 00238D94  2C 03 00 00 */	cmpwi r3, 0
/* 8026F7D8 00238D98  41 82 00 30 */	beq .L_8026F808
/* 8026F7DC 00238D9C  88 1F 00 B4 */	lbz r0, 0xb4(r31)
/* 8026F7E0 00238DA0  2C 00 00 01 */	cmpwi r0, 1
/* 8026F7E4 00238DA4  40 82 00 0C */	bne .L_8026F7F0
/* 8026F7E8 00238DA8  7F E3 FB 78 */	mr r3, r31
/* 8026F7EC 00238DAC  48 00 01 71 */	bl func_8026F95C
.L_8026F7F0:
/* 8026F7F0 00238DB0  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8026F7F4 00238DB4  38 80 00 00 */	li r4, 0
/* 8026F7F8 00238DB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F7FC 00238DBC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8026F800 00238DC0  7D 89 03 A6 */	mtctr r12
/* 8026F804 00238DC4  4E 80 04 21 */	bctrl 
.L_8026F808:
/* 8026F808 00238DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026F80C 00238DCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8026F810 00238DD0  7C 08 03 A6 */	mtlr r0
/* 8026F814 00238DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 8026F818 00238DD8  4E 80 00 20 */	blr

.global func_8026F81C
func_8026F81C:
/* 8026F81C 00238DDC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8026F820 00238DE0  7C 08 02 A6 */	mflr r0
/* 8026F824 00238DE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 8026F828 00238DE8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8026F82C 00238DEC  7C 7F 1B 78 */	mr r31, r3
/* 8026F830 00238DF0  4B DD 0C B9 */	bl func_800404E8
/* 8026F834 00238DF4  4B DD 2E BD */	bl func_800426F0
/* 8026F838 00238DF8  2C 03 00 00 */	cmpwi r3, 0
/* 8026F83C 00238DFC  40 82 00 60 */	bne .L_8026F89C
/* 8026F840 00238E00  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8026F844 00238E04  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8026F848 00238E08  41 82 00 08 */	beq .L_8026F850
/* 8026F84C 00238E0C  48 00 00 50 */	b .L_8026F89C
.L_8026F850:
/* 8026F850 00238E10  4B EC C6 01 */	bl func_8013BE50
/* 8026F854 00238E14  2C 03 00 00 */	cmpwi r3, 0
/* 8026F858 00238E18  41 82 00 44 */	beq .L_8026F89C
/* 8026F85C 00238E1C  38 60 00 00 */	li r3, 0
/* 8026F860 00238E20  38 80 00 00 */	li r4, 0
/* 8026F864 00238E24  38 A0 00 00 */	li r5, 0
/* 8026F868 00238E28  48 0A E9 D9 */	bl GXSetZMode
/* 8026F86C 00238E2C  38 61 00 08 */	addi r3, r1, 8
/* 8026F870 00238E30  48 19 8D F9 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 8026F874 00238E34  38 61 00 08 */	addi r3, r1, 8
/* 8026F878 00238E38  4B EC 79 D9 */	bl func_80137250
/* 8026F87C 00238E3C  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 8026F880 00238E40  38 81 00 08 */	addi r4, r1, 8
/* 8026F884 00238E44  38 A0 00 00 */	li r5, 0
/* 8026F888 00238E48  38 C0 00 01 */	li r6, 1
/* 8026F88C 00238E4C  4B EC 77 AD */	bl func_80137038
/* 8026F890 00238E50  38 61 00 08 */	addi r3, r1, 8
/* 8026F894 00238E54  38 80 FF FF */	li r4, -1
/* 8026F898 00238E58  48 19 8E 45 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_8026F89C:
/* 8026F89C 00238E5C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8026F8A0 00238E60  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8026F8A4 00238E64  7C 08 03 A6 */	mtlr r0
/* 8026F8A8 00238E68  38 21 00 70 */	addi r1, r1, 0x70
/* 8026F8AC 00238E6C  4E 80 00 20 */	blr 

.global func_8026F8B0
func_8026F8B0:
/* 8026F8B0 00238E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F8B4 00238E74  7C 08 02 A6 */	mflr r0
/* 8026F8B8 00238E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F8BC 00238E7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026F8C0 00238E80  7C DF 33 78 */	mr r31, r6
/* 8026F8C4 00238E84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026F8C8 00238E88  7C BE 2B 78 */	mr r30, r5
/* 8026F8CC 00238E8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026F8D0 00238E90  7C 9D 23 78 */	mr r29, r4
/* 8026F8D4 00238E94  93 81 00 10 */	stw r28, 0x10(r1)
/* 8026F8D8 00238E98  7C 7C 1B 78 */	mr r28, r3
/* 8026F8DC 00238E9C  80 0D B0 08 */	lwz r0, lbl_80667188@sda21(r13)
/* 8026F8E0 00238EA0  2C 00 00 00 */	cmpwi r0, 0
/* 8026F8E4 00238EA4  41 82 00 1C */	beq .L_8026F900
/* 8026F8E8 00238EA8  7C 03 03 78 */	mr r3, r0
/* 8026F8EC 00238EAC  7F C4 F3 78 */	mr r4, r30
/* 8026F8F0 00238EB0  7F E5 FB 78 */	mr r5, r31
/* 8026F8F4 00238EB4  48 00 02 19 */	bl func_8026FB0C
/* 8026F8F8 00238EB8  38 60 00 00 */	li r3, 0
/* 8026F8FC 00238EBC  48 00 00 40 */	b .L_8026F93C
.L_8026F900:
/* 8026F900 00238EC0  48 1C 7C B5 */	bl func_804375B4
/* 8026F904 00238EC4  7C 64 1B 78 */	mr r4, r3
/* 8026F908 00238EC8  38 60 00 BC */	li r3, 0xbc
/* 8026F90C 00238ECC  48 1C 51 51 */	bl func_80434A5C
/* 8026F910 00238ED0  2C 03 00 00 */	cmpwi r3, 0
/* 8026F914 00238ED4  41 82 00 14 */	beq .L_8026F928
/* 8026F918 00238ED8  7F A4 EB 78 */	mr r4, r29
/* 8026F91C 00238EDC  7F C5 F3 78 */	mr r5, r30
/* 8026F920 00238EE0  7F E6 FB 78 */	mr r6, r31
/* 8026F924 00238EE4  4B FF FA 59 */	bl func_8026F37C
.L_8026F928:
/* 8026F928 00238EE8  90 6D B0 08 */	stw r3, lbl_80667188@sda21(r13)
/* 8026F92C 00238EEC  7F 84 E3 78 */	mr r4, r28
/* 8026F930 00238EF0  38 A0 00 00 */	li r5, 0
/* 8026F934 00238EF4  48 1D 53 41 */	bl func_80444C74
/* 8026F938 00238EF8  80 6D B0 08 */	lwz r3, lbl_80667188@sda21(r13)
.L_8026F93C:
/* 8026F93C 00238EFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026F940 00238F00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026F944 00238F04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026F948 00238F08  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026F94C 00238F0C  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8026F950 00238F10  7C 08 03 A6 */	mtlr r0
/* 8026F954 00238F14  38 21 00 20 */	addi r1, r1, 0x20
/* 8026F958 00238F18  4E 80 00 20 */	blr 

.global func_8026F95C
func_8026F95C:
/* 8026F95C 00238F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026F960 00238F20  7C 08 02 A6 */	mflr r0
/* 8026F964 00238F24  C0 22 AE B8 */	lfs f1, lbl_8066B238@sda21(r2)
/* 8026F968 00238F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026F96C 00238F2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8026F970 00238F30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8026F974 00238F34  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8026F978 00238F38  93 81 00 10 */	stw r28, 0x10(r1)
/* 8026F97C 00238F3C  7C 7C 1B 78 */	mr r28, r3
/* 8026F980 00238F40  80 63 00 90 */	lwz r3, 0x90(r3)
/* 8026F984 00238F44  4B EC 7A C1 */	bl func_80137444
/* 8026F988 00238F48  2C 03 00 00 */	cmpwi r3, 0
/* 8026F98C 00238F4C  41 82 01 60 */	beq .L_8026FAEC
/* 8026F990 00238F50  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026F994 00238F54  38 80 00 00 */	li r4, 0
/* 8026F998 00238F58  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F99C 00238F5C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8026F9A0 00238F60  7D 89 03 A6 */	mtctr r12
/* 8026F9A4 00238F64  4E 80 04 21 */	bctrl 
/* 8026F9A8 00238F68  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026F9AC 00238F6C  80 9C 00 90 */	lwz r4, 0x90(r28)
/* 8026F9B0 00238F70  81 83 00 00 */	lwz r12, 0(r3)
/* 8026F9B4 00238F74  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8026F9B8 00238F78  7D 89 03 A6 */	mtctr r12
/* 8026F9BC 00238F7C  4E 80 04 21 */	bctrl 
/* 8026F9C0 00238F80  80 BC 00 90 */	lwz r5, 0x90(r28)
/* 8026F9C4 00238F84  3C 60 80 51 */	lis r3, lbl_80509D88@ha
/* 8026F9C8 00238F88  C0 02 AE BC */	lfs f0, lbl_8066B23C@sda21(r2)
/* 8026F9CC 00238F8C  38 80 00 00 */	li r4, 0
/* 8026F9D0 00238F90  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 8026F9D4 00238F94  38 00 00 01 */	li r0, 1
/* 8026F9D8 00238F98  3B E3 9D 88 */	addi r31, r3, lbl_80509D88@l
/* 8026F9DC 00238F9C  3B A0 00 00 */	li r29, 0
/* 8026F9E0 00238FA0  90 9C 00 90 */	stw r4, 0x90(r28)
/* 8026F9E4 00238FA4  98 1C 00 B4 */	stb r0, 0xb4(r28)
.L_8026F9E8:
/* 8026F9E8 00238FA8  57 A0 1D 78 */	rlwinm r0, r29, 3, 0x15, 0x1c
/* 8026F9EC 00238FAC  7F DC 02 14 */	add r30, r28, r0
/* 8026F9F0 00238FB0  88 1E 00 94 */	lbz r0, 0x94(r30)
/* 8026F9F4 00238FB4  2C 00 00 00 */	cmpwi r0, 0
/* 8026F9F8 00238FB8  41 82 00 D8 */	beq .L_8026FAD0
/* 8026F9FC 00238FBC  2C 00 00 01 */	cmpwi r0, 1
/* 8026FA00 00238FC0  41 82 00 10 */	beq .L_8026FA10
/* 8026FA04 00238FC4  2C 00 00 02 */	cmpwi r0, 2
/* 8026FA08 00238FC8  41 82 00 34 */	beq .L_8026FA3C
/* 8026FA0C 00238FCC  48 00 00 58 */	b .L_8026FA64
.L_8026FA10:
/* 8026FA10 00238FD0  80 1C 00 88 */	lwz r0, 0x88(r28)
/* 8026FA14 00238FD4  38 9F 00 68 */	addi r4, r31, 0x68
/* 8026FA18 00238FD8  90 1C 00 90 */	stw r0, 0x90(r28)
/* 8026FA1C 00238FDC  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA20 00238FE0  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8026FA24 00238FE4  4B EC 6E ED */	bl func_80136910
/* 8026FA28 00238FE8  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA2C 00238FEC  38 9F 00 74 */	addi r4, r31, 0x74
/* 8026FA30 00238FF0  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8026FA34 00238FF4  4B EC 6E DD */	bl func_80136910
/* 8026FA38 00238FF8  48 00 00 2C */	b .L_8026FA64
.L_8026FA3C:
/* 8026FA3C 00238FFC  80 1C 00 8C */	lwz r0, 0x8c(r28)
/* 8026FA40 00239000  38 9F 00 80 */	addi r4, r31, 0x80
/* 8026FA44 00239004  90 1C 00 90 */	stw r0, 0x90(r28)
/* 8026FA48 00239008  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA4C 0023900C  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8026FA50 00239010  4B EC 6E C1 */	bl func_80136910
/* 8026FA54 00239014  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA58 00239018  38 9F 00 8C */	addi r4, r31, 0x8c
/* 8026FA5C 0023901C  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 8026FA60 00239020  4B EC 6E B1 */	bl func_80136910
.L_8026FA64:
/* 8026FA64 00239024  80 9C 00 90 */	lwz r4, 0x90(r28)
/* 8026FA68 00239028  2C 04 00 00 */	cmpwi r4, 0
/* 8026FA6C 0023902C  41 82 00 64 */	beq .L_8026FAD0
/* 8026FA70 00239030  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA74 00239034  81 83 00 00 */	lwz r12, 0(r3)
/* 8026FA78 00239038  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8026FA7C 0023903C  7D 89 03 A6 */	mtctr r12
/* 8026FA80 00239040  4E 80 04 21 */	bctrl 
/* 8026FA84 00239044  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FA88 00239048  38 A0 00 01 */	li r5, 1
/* 8026FA8C 0023904C  80 9C 00 90 */	lwz r4, 0x90(r28)
/* 8026FA90 00239050  81 83 00 00 */	lwz r12, 0(r3)
/* 8026FA94 00239054  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8026FA98 00239058  7D 89 03 A6 */	mtctr r12
/* 8026FA9C 0023905C  4E 80 04 21 */	bctrl 
/* 8026FAA0 00239060  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 8026FAA4 00239064  38 80 00 00 */	li r4, 0
/* 8026FAA8 00239068  81 83 00 00 */	lwz r12, 0(r3)
/* 8026FAAC 0023906C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8026FAB0 00239070  7D 89 03 A6 */	mtctr r12
/* 8026FAB4 00239074  4E 80 04 21 */	bctrl 
/* 8026FAB8 00239078  38 00 00 00 */	li r0, 0
/* 8026FABC 0023907C  98 1E 00 94 */	stb r0, 0x94(r30)
/* 8026FAC0 00239080  38 60 00 2C */	li r3, 0x2c
/* 8026FAC4 00239084  90 1E 00 98 */	stw r0, 0x98(r30)
/* 8026FAC8 00239088  4B EC 85 B1 */	bl func_80138078
/* 8026FACC 0023908C  48 00 00 20 */	b .L_8026FAEC
.L_8026FAD0:
/* 8026FAD0 00239090  3B BD 00 01 */	addi r29, r29, 1
/* 8026FAD4 00239094  28 1D 00 04 */	cmplwi r29, 4
/* 8026FAD8 00239098  41 80 FF 10 */	blt .L_8026F9E8
/* 8026FADC 0023909C  38 60 00 01 */	li r3, 1
/* 8026FAE0 002390A0  38 00 00 00 */	li r0, 0
/* 8026FAE4 002390A4  98 7C 00 64 */	stb r3, 0x64(r28)
/* 8026FAE8 002390A8  98 1C 00 B4 */	stb r0, 0xb4(r28)
.L_8026FAEC:
/* 8026FAEC 002390AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FAF0 002390B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8026FAF4 002390B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8026FAF8 002390B8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8026FAFC 002390BC  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8026FB00 002390C0  7C 08 03 A6 */	mtlr r0
/* 8026FB04 002390C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8026FB08 002390C8  4E 80 00 20 */	blr 

.global func_8026FB0C
func_8026FB0C:
/* 8026FB0C 002390CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8026FB10 002390D0  38 00 00 00 */	li r0, 0
/* 8026FB14 002390D4  39 00 00 00 */	li r8, 0
/* 8026FB18 002390D8  88 C3 00 94 */	lbz r6, 0x94(r3)
/* 8026FB1C 002390DC  98 01 00 08 */	stb r0, 8(r1)
/* 8026FB20 002390E0  2C 06 00 00 */	cmpwi r6, 0
/* 8026FB24 002390E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8026FB28 002390E8  98 01 00 10 */	stb r0, 0x10(r1)
/* 8026FB2C 002390EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026FB30 002390F0  98 01 00 18 */	stb r0, 0x18(r1)
/* 8026FB34 002390F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8026FB38 002390F8  98 01 00 20 */	stb r0, 0x20(r1)
/* 8026FB3C 002390FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026FB40 00239100  41 82 00 14 */	beq .L_8026FB54
/* 8026FB44 00239104  80 03 00 98 */	lwz r0, 0x98(r3)
/* 8026FB48 00239108  39 00 00 01 */	li r8, 1
/* 8026FB4C 0023910C  98 C1 00 08 */	stb r6, 8(r1)
/* 8026FB50 00239110  90 01 00 0C */	stw r0, 0xc(r1)
.L_8026FB54:
/* 8026FB54 00239114  88 C3 00 9C */	lbz r6, 0x9c(r3)
/* 8026FB58 00239118  2C 06 00 00 */	cmpwi r6, 0
/* 8026FB5C 0023911C  41 82 00 20 */	beq .L_8026FB7C
/* 8026FB60 00239120  55 00 1D 78 */	rlwinm r0, r8, 3, 0x15, 0x1c
/* 8026FB64 00239124  38 E1 00 08 */	addi r7, r1, 8
/* 8026FB68 00239128  7C E7 02 14 */	add r7, r7, r0
/* 8026FB6C 0023912C  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8026FB70 00239130  98 C7 00 00 */	stb r6, 0(r7)
/* 8026FB74 00239134  39 08 00 01 */	addi r8, r8, 1
/* 8026FB78 00239138  90 07 00 04 */	stw r0, 4(r7)
.L_8026FB7C:
/* 8026FB7C 0023913C  88 C3 00 A4 */	lbz r6, 0xa4(r3)
/* 8026FB80 00239140  2C 06 00 00 */	cmpwi r6, 0
/* 8026FB84 00239144  41 82 00 20 */	beq .L_8026FBA4
/* 8026FB88 00239148  55 00 1D 78 */	rlwinm r0, r8, 3, 0x15, 0x1c
/* 8026FB8C 0023914C  38 E1 00 08 */	addi r7, r1, 8
/* 8026FB90 00239150  7C E7 02 14 */	add r7, r7, r0
/* 8026FB94 00239154  80 03 00 A8 */	lwz r0, 0xa8(r3)
/* 8026FB98 00239158  98 C7 00 00 */	stb r6, 0(r7)
/* 8026FB9C 0023915C  39 08 00 01 */	addi r8, r8, 1
/* 8026FBA0 00239160  90 07 00 04 */	stw r0, 4(r7)
.L_8026FBA4:
/* 8026FBA4 00239164  88 C3 00 AC */	lbz r6, 0xac(r3)
/* 8026FBA8 00239168  2C 06 00 00 */	cmpwi r6, 0
/* 8026FBAC 0023916C  41 82 00 20 */	beq .L_8026FBCC
/* 8026FBB0 00239170  55 00 1D 78 */	rlwinm r0, r8, 3, 0x15, 0x1c
/* 8026FBB4 00239174  38 E1 00 08 */	addi r7, r1, 8
/* 8026FBB8 00239178  7C E7 02 14 */	add r7, r7, r0
/* 8026FBBC 0023917C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8026FBC0 00239180  98 C7 00 00 */	stb r6, 0(r7)
/* 8026FBC4 00239184  39 08 00 01 */	addi r8, r8, 1
/* 8026FBC8 00239188  90 07 00 04 */	stw r0, 4(r7)
.L_8026FBCC:
/* 8026FBCC 0023918C  55 07 06 3E */	clrlwi r7, r8, 0x18
/* 8026FBD0 00239190  28 07 00 04 */	cmplwi r7, 4
/* 8026FBD4 00239194  40 80 00 B4 */	bge .L_8026FC88
/* 8026FBD8 00239198  38 C0 00 00 */	li r6, 0
/* 8026FBDC 0023919C  7C 06 38 40 */	cmplw r6, r7
/* 8026FBE0 002391A0  41 80 00 10 */	blt .L_8026FBF0
/* 8026FBE4 002391A4  98 C3 00 94 */	stb r6, 0x94(r3)
/* 8026FBE8 002391A8  90 C3 00 98 */	stw r6, 0x98(r3)
/* 8026FBEC 002391AC  48 00 00 14 */	b .L_8026FC00
.L_8026FBF0:
/* 8026FBF0 002391B0  88 01 00 08 */	lbz r0, 8(r1)
/* 8026FBF4 002391B4  98 03 00 94 */	stb r0, 0x94(r3)
/* 8026FBF8 002391B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8026FBFC 002391BC  90 03 00 98 */	stw r0, 0x98(r3)
.L_8026FC00:
/* 8026FC00 002391C0  38 00 00 01 */	li r0, 1
/* 8026FC04 002391C4  7C 00 38 40 */	cmplw r0, r7
/* 8026FC08 002391C8  41 80 00 10 */	blt .L_8026FC18
/* 8026FC0C 002391CC  98 C3 00 9C */	stb r6, 0x9c(r3)
/* 8026FC10 002391D0  90 C3 00 A0 */	stw r6, 0xa0(r3)
/* 8026FC14 002391D4  48 00 00 14 */	b .L_8026FC28
.L_8026FC18:
/* 8026FC18 002391D8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 8026FC1C 002391DC  98 03 00 9C */	stb r0, 0x9c(r3)
/* 8026FC20 002391E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8026FC24 002391E4  90 03 00 A0 */	stw r0, 0xa0(r3)
.L_8026FC28:
/* 8026FC28 002391E8  38 00 00 02 */	li r0, 2
/* 8026FC2C 002391EC  7C 00 38 40 */	cmplw r0, r7
/* 8026FC30 002391F0  41 80 00 10 */	blt .L_8026FC40
/* 8026FC34 002391F4  98 C3 00 A4 */	stb r6, 0xa4(r3)
/* 8026FC38 002391F8  90 C3 00 A8 */	stw r6, 0xa8(r3)
/* 8026FC3C 002391FC  48 00 00 14 */	b .L_8026FC50
.L_8026FC40:
/* 8026FC40 00239200  88 01 00 18 */	lbz r0, 0x18(r1)
/* 8026FC44 00239204  98 03 00 A4 */	stb r0, 0xa4(r3)
/* 8026FC48 00239208  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8026FC4C 0023920C  90 03 00 A8 */	stw r0, 0xa8(r3)
.L_8026FC50:
/* 8026FC50 00239210  38 00 00 03 */	li r0, 3
/* 8026FC54 00239214  7C 00 38 40 */	cmplw r0, r7
/* 8026FC58 00239218  41 80 00 10 */	blt .L_8026FC68
/* 8026FC5C 0023921C  98 C3 00 AC */	stb r6, 0xac(r3)
/* 8026FC60 00239220  90 C3 00 B0 */	stw r6, 0xb0(r3)
/* 8026FC64 00239224  48 00 00 14 */	b .L_8026FC78
.L_8026FC68:
/* 8026FC68 00239228  88 01 00 20 */	lbz r0, 0x20(r1)
/* 8026FC6C 0023922C  98 03 00 AC */	stb r0, 0xac(r3)
/* 8026FC70 00239230  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026FC74 00239234  90 03 00 B0 */	stw r0, 0xb0(r3)
.L_8026FC78:
/* 8026FC78 00239238  55 00 1D 78 */	rlwinm r0, r8, 3, 0x15, 0x1c
/* 8026FC7C 0023923C  7C 63 02 14 */	add r3, r3, r0
/* 8026FC80 00239240  98 83 00 94 */	stb r4, 0x94(r3)
/* 8026FC84 00239244  90 A3 00 98 */	stw r5, 0x98(r3)
.L_8026FC88:
/* 8026FC88 00239248  38 21 00 30 */	addi r1, r1, 0x30
/* 8026FC8C 0023924C  4E 80 00 20 */	blr 

.global func_8026FC90
func_8026FC90:
/* 8026FC90 00239250  38 63 FF 94 */	addi r3, r3, -108
/* 8026FC94 00239254  4B FF F8 38 */	b func_8026F4CC

.global func_8026FC98
func_8026FC98:
/* 8026FC98 00239258  38 63 FF 90 */	addi r3, r3, -112
/* 8026FC9C 0023925C  4B FF FB 80 */	b func_8026F81C

.global func_8026FCA0
func_8026FCA0:
/* 8026FCA0 00239260  38 63 FF 90 */	addi r3, r3, -112
/* 8026FCA4 00239264  4B FF F8 28 */	b func_8026F4CC

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_80017D9C
lbl_80017D9C:
	.4byte 0x28080000
	.4byte 0x000000BC
	.4byte 0x00000010
	.4byte 0
	.4byte 0x0680001C
	.4byte 0x00000070
	.4byte func_8004031C
	.4byte 0x0680001C
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent
	.4byte 0x8680001C
	.4byte 0
	.4byte func_8012235C

.global lbl_80017DD0
lbl_80017DD0:
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0
	.4byte 0x0780001E
	.4byte 0x00000078
	.4byte func_8045F580
	.4byte 0x0680001E
	.4byte 0x00000070
	.4byte func_8004031C
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent

.global lbl_80017E04
lbl_80017E04:
	.4byte 0x18080000
	.4byte 0x0000004C
	.4byte 0x005A0010
	.4byte 0
	.4byte 0x82000008
	.4byte func_8045F8C8

.global lbl_80017E1C
lbl_80017E1C:
	.4byte 0x08080000
	.4byte 0

.global lbl_80017E24
lbl_80017E24:
	.4byte 0x08080000
	.4byte 0

.global lbl_80017E2C
lbl_80017E2C:
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00050010
	.4byte 0
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv

.global lbl_80017E44
lbl_80017E44:
	.4byte 0x20080000
	.4byte 0

.global lbl_80017E4C
lbl_80017E4C:
	.4byte 0x200A0000
	.4byte 0

.global lbl_80017E54
lbl_80017E54:
	.4byte 0x00080000
	.4byte 0


.section extabindex_, "wa"  # 0x80021020 - 0x80039220

.4byte func_8026F37C
	.4byte 0x00000150
	.4byte lbl_80017D9C
	.4byte func_8026F4CC
	.4byte 0x00000074
	.4byte lbl_80017DD0
	.4byte func_8026F540
	.4byte 0x000001DC
	.4byte lbl_80017E04
	.4byte func_8026F71C
	.4byte 0x00000080
	.4byte lbl_80017E1C
	.4byte func_8026F79C
	.4byte 0x00000080
	.4byte lbl_80017E24
	.4byte func_8026F81C
	.4byte 0x00000094
	.4byte lbl_80017E2C
	.4byte func_8026F8B0
	.4byte 0x000000AC
	.4byte lbl_80017E44
	.4byte func_8026F95C
	.4byte 0x000001B0
	.4byte lbl_80017E4C
	.4byte func_8026FB0C
	.4byte 0x00000184
	.4byte lbl_80017E54