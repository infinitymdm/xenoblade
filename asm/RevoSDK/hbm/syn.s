.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_803409B0
func_803409B0:
/* 803409B0 00309F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803409B4 00309F74  7C 08 02 A6 */	mflr r0
/* 803409B8 00309F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803409BC 00309F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803409C0 00309F80  7C 7F 1B 78 */	mr r31, r3
/* 803409C4 00309F84  48 01 7F ED */	bl OSDisableInterrupts
/* 803409C8 00309F88  3C 80 80 5D */	lis r4, lbl_805CDEE8@ha
/* 803409CC 00309F8C  38 A0 00 00 */	li r5, 0
/* 803409D0 00309F90  80 C4 DE E8 */	lwz r6, lbl_805CDEE8@l(r4)
/* 803409D4 00309F94  38 80 00 00 */	li r4, 0
/* 803409D8 00309F98  48 00 00 30 */	b .L_80340A08
/* 803409DC 00309F9C  60 00 00 00 */	nop 
.L_803409E0:
/* 803409E0 00309FA0  7C 06 F8 40 */	cmplw r6, r31
/* 803409E4 00309FA4  41 82 00 20 */	beq .L_80340A04
/* 803409E8 00309FA8  2C 05 00 00 */	cmpwi r5, 0
/* 803409EC 00309FAC  41 82 00 10 */	beq .L_803409FC
/* 803409F0 00309FB0  90 C4 00 00 */	stw r6, 0(r4)
/* 803409F4 00309FB4  7C C4 33 78 */	mr r4, r6
/* 803409F8 00309FB8  48 00 00 0C */	b .L_80340A04
.L_803409FC:
/* 803409FC 00309FBC  7C C4 33 78 */	mr r4, r6
/* 80340A00 00309FC0  7C C5 33 78 */	mr r5, r6
.L_80340A04:
/* 80340A04 00309FC4  80 C6 00 00 */	lwz r6, 0(r6)
.L_80340A08:
/* 80340A08 00309FC8  2C 06 00 00 */	cmpwi r6, 0
/* 80340A0C 00309FCC  40 82 FF D4 */	bne .L_803409E0
/* 80340A10 00309FD0  2C 04 00 00 */	cmpwi r4, 0
/* 80340A14 00309FD4  41 82 00 0C */	beq .L_80340A20
/* 80340A18 00309FD8  38 00 00 00 */	li r0, 0
/* 80340A1C 00309FDC  90 04 00 00 */	stw r0, 0(r4)
.L_80340A20:
/* 80340A20 00309FE0  3C 80 80 5D */	lis r4, lbl_805CDEE8@ha
/* 80340A24 00309FE4  90 A4 DE E8 */	stw r5, lbl_805CDEE8@l(r4)
/* 80340A28 00309FE8  48 01 7F C9 */	bl OSRestoreInterrupts
/* 80340A2C 00309FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340A30 00309FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340A34 00309FF4  7C 08 03 A6 */	mtlr r0
/* 80340A38 00309FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80340A3C 00309FFC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80340A40
func_80340A40:
/* 80340A40 0030A000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340A44 0030A004  7C 08 02 A6 */	mflr r0
/* 80340A48 0030A008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80340A4C 0030A00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340A50 0030A010  3F E0 80 5D */	lis r31, lbl_805CDEE8@ha
/* 80340A54 0030A014  3B FF DE E8 */	addi r31, r31, lbl_805CDEE8@l
/* 80340A58 0030A018  4B F9 16 A9 */	bl AXIsInit
/* 80340A5C 0030A01C  2C 03 00 00 */	cmpwi r3, 0
/* 80340A60 0030A020  41 82 00 A4 */	beq .L_80340B04
/* 80340A64 0030A024  80 1F 04 C8 */	lwz r0, 0x4c8(r31)
/* 80340A68 0030A028  2C 00 00 00 */	cmpwi r0, 0
/* 80340A6C 0030A02C  40 82 00 98 */	bne .L_80340B04
/* 80340A70 0030A030  38 7F 00 08 */	addi r3, r31, 8
/* 80340A74 0030A034  90 7F 00 04 */	stw r3, 4(r31)
/* 80340A78 0030A038  38 80 00 00 */	li r4, 0
/* 80340A7C 0030A03C  38 00 00 01 */	li r0, 1
/* 80340A80 0030A040  90 83 00 08 */	stw r4, 8(r3)
/* 80340A84 0030A044  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340A88 0030A048  90 83 00 54 */	stw r4, 0x54(r3)
/* 80340A8C 0030A04C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340A90 0030A050  90 83 00 A0 */	stw r4, 0xa0(r3)
/* 80340A94 0030A054  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340A98 0030A058  90 83 00 EC */	stw r4, 0xec(r3)
/* 80340A9C 0030A05C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AA0 0030A060  90 83 01 38 */	stw r4, 0x138(r3)
/* 80340AA4 0030A064  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AA8 0030A068  90 83 01 84 */	stw r4, 0x184(r3)
/* 80340AAC 0030A06C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AB0 0030A070  90 83 01 D0 */	stw r4, 0x1d0(r3)
/* 80340AB4 0030A074  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AB8 0030A078  90 83 02 1C */	stw r4, 0x21c(r3)
/* 80340ABC 0030A07C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AC0 0030A080  90 83 02 68 */	stw r4, 0x268(r3)
/* 80340AC4 0030A084  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AC8 0030A088  90 83 02 B4 */	stw r4, 0x2b4(r3)
/* 80340ACC 0030A08C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AD0 0030A090  90 83 03 00 */	stw r4, 0x300(r3)
/* 80340AD4 0030A094  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AD8 0030A098  90 83 03 4C */	stw r4, 0x34c(r3)
/* 80340ADC 0030A09C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AE0 0030A0A0  90 83 03 98 */	stw r4, 0x398(r3)
/* 80340AE4 0030A0A4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AE8 0030A0A8  90 83 03 E4 */	stw r4, 0x3e4(r3)
/* 80340AEC 0030A0AC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AF0 0030A0B0  90 83 04 30 */	stw r4, 0x430(r3)
/* 80340AF4 0030A0B4  80 7F 00 04 */	lwz r3, 4(r31)
/* 80340AF8 0030A0B8  90 83 04 7C */	stw r4, 0x47c(r3)
/* 80340AFC 0030A0BC  90 9F 00 00 */	stw r4, 0(r31)
/* 80340B00 0030A0C0  90 1F 04 C8 */	stw r0, 0x4c8(r31)
.L_80340B04:
/* 80340B04 0030A0C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340B08 0030A0C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340B0C 0030A0CC  7C 08 03 A6 */	mtlr r0
/* 80340B10 0030A0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80340B14 0030A0D4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80340B20
func_80340B20:
/* 80340B20 0030A0E0  3C 80 80 5D */	lis r4, lbl_805CDEEC@ha
/* 80340B24 0030A0E4  3C 60 80 5D */	lis r3, lbl_805CE3B0@ha
/* 80340B28 0030A0E8  38 00 00 00 */	li r0, 0
/* 80340B2C 0030A0EC  90 04 DE EC */	stw r0, lbl_805CDEEC@l(r4)
/* 80340B30 0030A0F0  90 03 E3 B0 */	stw r0, lbl_805CE3B0@l(r3)
/* 80340B34 0030A0F4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80340B40
func_80340B40:
/* 80340B40 0030A100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340B44 0030A104  7C 08 02 A6 */	mflr r0
/* 80340B48 0030A108  3C 60 80 5D */	lis r3, lbl_805CE3B0@ha
/* 80340B4C 0030A10C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80340B50 0030A110  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340B54 0030A114  80 03 E3 B0 */	lwz r0, lbl_805CE3B0@l(r3)
/* 80340B58 0030A118  2C 00 00 00 */	cmpwi r0, 0
/* 80340B5C 0030A11C  41 82 00 3C */	beq .L_80340B98
/* 80340B60 0030A120  3B E0 00 00 */	li r31, 0
.L_80340B64:
/* 80340B64 0030A124  7F E3 FB 78 */	mr r3, r31
/* 80340B68 0030A128  48 00 14 69 */	bl func_80341FD0
/* 80340B6C 0030A12C  3B FF 00 01 */	addi r31, r31, 1
/* 80340B70 0030A130  2C 1F 00 10 */	cmpwi r31, 0x10
/* 80340B74 0030A134  41 80 FF F0 */	blt .L_80340B64
/* 80340B78 0030A138  3C 60 80 5D */	lis r3, lbl_805CDEE8@ha
/* 80340B7C 0030A13C  83 E3 DE E8 */	lwz r31, lbl_805CDEE8@l(r3)
/* 80340B80 0030A140  48 00 00 10 */	b .L_80340B90
.L_80340B84:
/* 80340B84 0030A144  7F E3 FB 78 */	mr r3, r31
/* 80340B88 0030A148  48 00 06 F9 */	bl __HBMSYNRunInputBufferEvents
/* 80340B8C 0030A14C  83 FF 00 00 */	lwz r31, 0(r31)
.L_80340B90:
/* 80340B90 0030A150  2C 1F 00 00 */	cmpwi r31, 0
/* 80340B94 0030A154  40 82 FF F0 */	bne .L_80340B84
.L_80340B98:
/* 80340B98 0030A158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340B9C 0030A15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340BA0 0030A160  7C 08 03 A6 */	mtlr r0
/* 80340BA4 0030A164  38 21 00 10 */	addi r1, r1, 0x10
/* 80340BA8 0030A168  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80340BB0
func_80340BB0:
/* 80340BB0 0030A170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340BB4 0030A174  7C 08 02 A6 */	mflr r0
/* 80340BB8 0030A178  3C E5 80 00 */	addis r7, r5, 0x8000
/* 80340BBC 0030A17C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80340BC0 0030A180  54 E5 F8 7E */	srwi r5, r7, 1
/* 80340BC4 0030A184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340BC8 0030A188  7C 7F 1B 78 */	mr r31, r3
/* 80340BCC 0030A18C  93 C1 00 08 */	stw r30, 8(r1)
/* 80340BD0 0030A190  3B C0 00 00 */	li r30, 0
/* 80340BD4 0030A194  80 04 00 00 */	lwz r0, 0(r4)
/* 80340BD8 0030A198  7C 04 02 14 */	add r0, r4, r0
/* 80340BDC 0030A19C  90 03 00 04 */	stw r0, 4(r3)
/* 80340BE0 0030A1A0  54 E0 08 3C */	slwi r0, r7, 1
/* 80340BE4 0030A1A4  80 C4 00 04 */	lwz r6, 4(r4)
/* 80340BE8 0030A1A8  7C C4 32 14 */	add r6, r4, r6
/* 80340BEC 0030A1AC  90 C3 00 08 */	stw r6, 8(r3)
/* 80340BF0 0030A1B0  80 C4 00 08 */	lwz r6, 8(r4)
/* 80340BF4 0030A1B4  7C C4 32 14 */	add r6, r4, r6
/* 80340BF8 0030A1B8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 80340BFC 0030A1BC  80 C4 00 0C */	lwz r6, 0xc(r4)
/* 80340C00 0030A1C0  7C C4 32 14 */	add r6, r4, r6
/* 80340C04 0030A1C4  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80340C08 0030A1C8  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 80340C0C 0030A1CC  7C C4 32 14 */	add r6, r4, r6
/* 80340C10 0030A1D0  90 C3 00 14 */	stw r6, 0x14(r3)
/* 80340C14 0030A1D4  80 C4 00 14 */	lwz r6, 0x14(r4)
/* 80340C18 0030A1D8  7C 84 32 14 */	add r4, r4, r6
/* 80340C1C 0030A1DC  90 83 00 18 */	stw r4, 0x18(r3)
/* 80340C20 0030A1E0  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 80340C24 0030A1E4  90 E3 00 20 */	stw r7, 0x20(r3)
/* 80340C28 0030A1E8  90 03 00 24 */	stw r0, 0x24(r3)
/* 80340C2C 0030A1EC  93 C3 00 68 */	stw r30, 0x68(r3)
/* 80340C30 0030A1F0  48 00 02 21 */	bl __HBMSYNResetAllControllers
/* 80340C34 0030A1F4  38 1F 00 FC */	addi r0, r31, 0xfc
/* 80340C38 0030A1F8  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 80340C3C 0030A1FC  7F E3 FB 78 */	mr r3, r31
/* 80340C40 0030A200  38 A0 00 00 */	li r5, 0
/* 80340C44 0030A204  93 DF 04 00 */	stw r30, 0x400(r31)
/* 80340C48 0030A208  38 00 00 04 */	li r0, 4
/* 80340C4C 0030A20C  93 DF 04 04 */	stw r30, 0x404(r31)
.L_80340C50:
/* 80340C50 0030A210  7C 64 1B 78 */	mr r4, r3
/* 80340C54 0030A214  7C 09 03 A6 */	mtctr r0
.L_80340C58:
/* 80340C58 0030A218  93 C4 04 08 */	stw r30, 0x408(r4)
/* 80340C5C 0030A21C  93 C4 04 0C */	stw r30, 0x40c(r4)
/* 80340C60 0030A220  93 C4 04 10 */	stw r30, 0x410(r4)
/* 80340C64 0030A224  93 C4 04 14 */	stw r30, 0x414(r4)
/* 80340C68 0030A228  93 C4 04 18 */	stw r30, 0x418(r4)
/* 80340C6C 0030A22C  93 C4 04 1C */	stw r30, 0x41c(r4)
/* 80340C70 0030A230  93 C4 04 20 */	stw r30, 0x420(r4)
/* 80340C74 0030A234  93 C4 04 24 */	stw r30, 0x424(r4)
/* 80340C78 0030A238  93 C4 04 28 */	stw r30, 0x428(r4)
/* 80340C7C 0030A23C  93 C4 04 2C */	stw r30, 0x42c(r4)
/* 80340C80 0030A240  93 C4 04 30 */	stw r30, 0x430(r4)
/* 80340C84 0030A244  93 C4 04 34 */	stw r30, 0x434(r4)
/* 80340C88 0030A248  93 C4 04 38 */	stw r30, 0x438(r4)
/* 80340C8C 0030A24C  93 C4 04 3C */	stw r30, 0x43c(r4)
/* 80340C90 0030A250  93 C4 04 40 */	stw r30, 0x440(r4)
/* 80340C94 0030A254  93 C4 04 44 */	stw r30, 0x444(r4)
/* 80340C98 0030A258  93 C4 04 48 */	stw r30, 0x448(r4)
/* 80340C9C 0030A25C  93 C4 04 4C */	stw r30, 0x44c(r4)
/* 80340CA0 0030A260  93 C4 04 50 */	stw r30, 0x450(r4)
/* 80340CA4 0030A264  93 C4 04 54 */	stw r30, 0x454(r4)
/* 80340CA8 0030A268  93 C4 04 58 */	stw r30, 0x458(r4)
/* 80340CAC 0030A26C  93 C4 04 5C */	stw r30, 0x45c(r4)
/* 80340CB0 0030A270  93 C4 04 60 */	stw r30, 0x460(r4)
/* 80340CB4 0030A274  93 C4 04 64 */	stw r30, 0x464(r4)
/* 80340CB8 0030A278  93 C4 04 68 */	stw r30, 0x468(r4)
/* 80340CBC 0030A27C  93 C4 04 6C */	stw r30, 0x46c(r4)
/* 80340CC0 0030A280  93 C4 04 70 */	stw r30, 0x470(r4)
/* 80340CC4 0030A284  93 C4 04 74 */	stw r30, 0x474(r4)
/* 80340CC8 0030A288  93 C4 04 78 */	stw r30, 0x478(r4)
/* 80340CCC 0030A28C  93 C4 04 7C */	stw r30, 0x47c(r4)
/* 80340CD0 0030A290  93 C4 04 80 */	stw r30, 0x480(r4)
/* 80340CD4 0030A294  93 C4 04 84 */	stw r30, 0x484(r4)
/* 80340CD8 0030A298  38 84 00 80 */	addi r4, r4, 0x80
/* 80340CDC 0030A29C  42 00 FF 7C */	bdnz .L_80340C58
/* 80340CE0 0030A2A0  38 A5 00 01 */	addi r5, r5, 1
/* 80340CE4 0030A2A4  38 63 02 00 */	addi r3, r3, 0x200
/* 80340CE8 0030A2A8  28 05 00 10 */	cmplwi r5, 0x10
/* 80340CEC 0030A2AC  41 80 FF 64 */	blt .L_80340C50
/* 80340CF0 0030A2B0  48 01 7C C1 */	bl OSDisableInterrupts
/* 80340CF4 0030A2B4  3C 80 80 5D */	lis r4, lbl_805CDEE8@ha
/* 80340CF8 0030A2B8  80 04 DE E8 */	lwz r0, lbl_805CDEE8@l(r4)
/* 80340CFC 0030A2BC  2C 00 00 00 */	cmpwi r0, 0
/* 80340D00 0030A2C0  41 82 00 0C */	beq .L_80340D0C
/* 80340D04 0030A2C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80340D08 0030A2C8  48 00 00 0C */	b .L_80340D14
.L_80340D0C:
/* 80340D0C 0030A2CC  38 00 00 00 */	li r0, 0
/* 80340D10 0030A2D0  90 1F 00 00 */	stw r0, 0(r31)
.L_80340D14:
/* 80340D14 0030A2D4  3C 80 80 5D */	lis r4, lbl_805CDEE8@ha
/* 80340D18 0030A2D8  93 E4 DE E8 */	stw r31, lbl_805CDEE8@l(r4)
/* 80340D1C 0030A2DC  48 01 7C D5 */	bl OSRestoreInterrupts
/* 80340D20 0030A2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340D24 0030A2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340D28 0030A2E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80340D2C 0030A2EC  7C 08 03 A6 */	mtlr r0
/* 80340D30 0030A2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80340D34 0030A2F4  4E 80 00 20 */	blr 

.balign 16, 0
.global HBMSYNQuitSynth
HBMSYNQuitSynth:
/* 80340D40 0030A300  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80340D44 0030A304  7C 08 02 A6 */	mflr r0
/* 80340D48 0030A308  90 01 00 34 */	stw r0, 0x34(r1)
/* 80340D4C 0030A30C  39 61 00 30 */	addi r11, r1, 0x30
/* 80340D50 0030A310  4B F7 93 FD */	bl _savegpr_25
/* 80340D54 0030A314  7C 79 1B 78 */	mr r25, r3
/* 80340D58 0030A318  48 01 7C 59 */	bl OSDisableInterrupts
/* 80340D5C 0030A31C  80 19 04 04 */	lwz r0, 0x404(r25)
/* 80340D60 0030A320  7C 7B 1B 78 */	mr r27, r3
/* 80340D64 0030A324  2C 00 00 00 */	cmpwi r0, 0
/* 80340D68 0030A328  41 82 00 58 */	beq .L_80340DC0
/* 80340D6C 0030A32C  3B 80 00 00 */	li r28, 0
/* 80340D70 0030A330  3B A0 00 00 */	li r29, 0
/* 80340D74 0030A334  3B E0 00 00 */	li r31, 0
/* 80340D78 0030A338  3F C0 80 5D */	lis r30, lbl_805CDEEC@ha
.L_80340D7C:
/* 80340D7C 0030A33C  80 1E DE EC */	lwz r0, lbl_805CDEEC@l(r30)
/* 80340D80 0030A340  7F 40 EA 14 */	add r26, r0, r29
/* 80340D84 0030A344  80 1A 00 08 */	lwz r0, 8(r26)
/* 80340D88 0030A348  7C 00 C8 40 */	cmplw r0, r25
/* 80340D8C 0030A34C  40 82 00 24 */	bne .L_80340DB0
/* 80340D90 0030A350  80 7A 00 04 */	lwz r3, 4(r26)
/* 80340D94 0030A354  4B FF EE CD */	bl HBMMIXReleaseChannel
/* 80340D98 0030A358  80 7A 00 04 */	lwz r3, 4(r26)
/* 80340D9C 0030A35C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80340DA0 0030A360  4B FF FB E1 */	bl HBMFreeIndexByKey
/* 80340DA4 0030A364  80 7A 00 04 */	lwz r3, 4(r26)
/* 80340DA8 0030A368  4B F9 16 59 */	bl AXFreeVoice
/* 80340DAC 0030A36C  93 FA 00 08 */	stw r31, 8(r26)
.L_80340DB0:
/* 80340DB0 0030A370  3B 9C 00 01 */	addi r28, r28, 1
/* 80340DB4 0030A374  3B BD 00 4C */	addi r29, r29, 0x4c
/* 80340DB8 0030A378  2C 1C 00 10 */	cmpwi r28, 0x10
/* 80340DBC 0030A37C  41 80 FF C0 */	blt .L_80340D7C
.L_80340DC0:
/* 80340DC0 0030A380  7F 23 CB 78 */	mr r3, r25
/* 80340DC4 0030A384  4B FF FB ED */	bl func_803409B0
/* 80340DC8 0030A388  7F 63 DB 78 */	mr r3, r27
/* 80340DCC 0030A38C  48 01 7C 25 */	bl OSRestoreInterrupts
/* 80340DD0 0030A390  39 61 00 30 */	addi r11, r1, 0x30
/* 80340DD4 0030A394  4B F7 93 C5 */	bl _restgpr_25
/* 80340DD8 0030A398  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80340DDC 0030A39C  7C 08 03 A6 */	mtlr r0
/* 80340DE0 0030A3A0  38 21 00 30 */	addi r1, r1, 0x30
/* 80340DE4 0030A3A4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80340DF0
func_80340DF0:
/* 80340DF0 0030A3B0  80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 80340DF4 0030A3B4  88 04 00 00 */	lbz r0, 0(r4)
/* 80340DF8 0030A3B8  98 05 00 00 */	stb r0, 0(r5)
/* 80340DFC 0030A3BC  80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 80340E00 0030A3C0  38 A5 00 01 */	addi r5, r5, 1
/* 80340E04 0030A3C4  90 A3 03 FC */	stw r5, 0x3fc(r3)
/* 80340E08 0030A3C8  88 04 00 01 */	lbz r0, 1(r4)
/* 80340E0C 0030A3CC  98 05 00 00 */	stb r0, 0(r5)
/* 80340E10 0030A3D0  80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 80340E14 0030A3D4  38 A5 00 01 */	addi r5, r5, 1
/* 80340E18 0030A3D8  90 A3 03 FC */	stw r5, 0x3fc(r3)
/* 80340E1C 0030A3DC  88 04 00 02 */	lbz r0, 2(r4)
/* 80340E20 0030A3E0  98 05 00 00 */	stb r0, 0(r5)
/* 80340E24 0030A3E4  80 A3 03 FC */	lwz r5, 0x3fc(r3)
/* 80340E28 0030A3E8  80 83 04 00 */	lwz r4, 0x400(r3)
/* 80340E2C 0030A3EC  38 05 00 01 */	addi r0, r5, 1
/* 80340E30 0030A3F0  90 03 03 FC */	stw r0, 0x3fc(r3)
/* 80340E34 0030A3F4  38 04 00 01 */	addi r0, r4, 1
/* 80340E38 0030A3F8  90 03 04 00 */	stw r0, 0x400(r3)
/* 80340E3C 0030A3FC  4E 80 00 20 */	blr

.balign 16, 0
.global func_80340E40
func_80340E40:
/* 80340E40 0030A400  54 80 80 1E */	slwi r0, r4, 0x10
/* 80340E44 0030A404  90 03 00 68 */	stw r0, 0x68(r3)
/* 80340E48 0030A408  4E 80 00 20 */	blr 

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.global lbl_805CDEE8
lbl_805CDEE8:
	.skip 0x4
.global lbl_805CDEEC
lbl_805CDEEC:
	.skip 0x4C4
.global lbl_805CE3B0
lbl_805CE3B0:
	.skip 0x8