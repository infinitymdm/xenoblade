.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802B8A3C
func_802B8A3C:
/* 802B8A3C 00281FFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B8A40 00282000  7C 08 02 A6 */	mflr r0
/* 802B8A44 00282004  38 80 00 00 */	li r4, 0
/* 802B8A48 00282008  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B8A4C 0028200C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B8A50 00282010  7C 3F 0B 78 */	mr r31, r1
/* 802B8A54 00282014  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B8A58 00282018  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802B8A5C 0028201C  7C 7D 1B 78 */	mr r29, r3
/* 802B8A60 00282020  38 60 00 78 */	li r3, 0x78
/* 802B8A64 00282024  4B FE A8 A9 */	bl func_802A330C
/* 802B8A68 00282028  2C 03 00 00 */	cmpwi r3, 0
/* 802B8A6C 0028202C  40 82 00 0C */	bne .L_802B8A78
/* 802B8A70 00282030  38 60 00 00 */	li r3, 0
/* 802B8A74 00282034  48 00 00 74 */	b .L_802B8AE8
.L_802B8A78:
/* 802B8A78 00282038  38 60 00 24 */	li r3, 0x24
/* 802B8A7C 0028203C  4B FE AA 69 */	bl func_802A34E4
/* 802B8A80 00282040  2C 03 00 00 */	cmpwi r3, 0
/* 802B8A84 00282044  7C 7E 1B 78 */	mr r30, r3
/* 802B8A88 00282048  40 82 00 0C */	bne .L_802B8A94
/* 802B8A8C 0028204C  38 60 00 00 */	li r3, 0
/* 802B8A90 00282050  48 00 00 58 */	b .L_802B8AE8
.L_802B8A94:
/* 802B8A94 00282054  41 82 00 30 */	beq .L_802B8AC4
/* 802B8A98 00282058  90 3F 00 1C */	stw r1, 0x1c(r31)
/* 802B8A9C 0028205C  4B FE AF E5 */	bl func_802A3A80
/* 802B8AA0 00282060  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_ORDER@ha
/* 802B8AA4 00282064  38 63 EF 30 */	addi r3, r3, __vt__cf_CVS_THREAD_ORDER@l
/* 802B8AA8 00282068  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802B8AAC 0028206C  93 BE 00 20 */	stw r29, 0x20(r30)
/* 802B8AB0 00282070  48 00 00 14 */	b .L_802B8AC4
/* 802B8AB4 00282074  38 60 00 00 */	li r3, 0
/* 802B8AB8 00282078  38 80 00 00 */	li r4, 0
/* 802B8ABC 0028207C  38 A0 00 00 */	li r5, 0
/* 802B8AC0 00282080  48 00 30 FD */	bl __throw
.L_802B8AC4:
/* 802B8AC4 00282084  3C A0 80 54 */	lis r5, lbl_8053EF00@ha
/* 802B8AC8 00282088  7F C3 F3 78 */	mr r3, r30
/* 802B8ACC 0028208C  38 A5 EF 00 */	addi r5, r5, lbl_8053EF00@l
/* 802B8AD0 00282090  80 05 00 04 */	lwz r0, 4(r5)
/* 802B8AD4 00282094  80 85 00 00 */	lwz r4, 0(r5)
/* 802B8AD8 00282098  90 9E 00 00 */	stw r4, 0(r30)
/* 802B8ADC 0028209C  90 1E 00 04 */	stw r0, 4(r30)
/* 802B8AE0 002820A0  80 05 00 08 */	lwz r0, 8(r5)
/* 802B8AE4 002820A4  90 1E 00 08 */	stw r0, 8(r30)
.L_802B8AE8:
/* 802B8AE8 002820A8  7F EA FB 78 */	mr r10, r31
/* 802B8AEC 002820AC  83 FF 00 2C */	lwz r31, 0x2c(r31)
/* 802B8AF0 002820B0  83 CA 00 28 */	lwz r30, 0x28(r10)
/* 802B8AF4 002820B4  83 AA 00 24 */	lwz r29, 0x24(r10)
/* 802B8AF8 002820B8  81 41 00 00 */	lwz r10, 0(r1)
/* 802B8AFC 002820BC  80 0A 00 04 */	lwz r0, 4(r10)
/* 802B8B00 002820C0  7D 41 53 78 */	mr r1, r10
/* 802B8B04 002820C4  7C 08 03 A6 */	mtlr r0
/* 802B8B08 002820C8  4E 80 00 20 */	blr 

.global func_802B8B0C
func_802B8B0C:
/* 802B8B0C 002820CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8B10 002820D0  7C 08 02 A6 */	mflr r0
/* 802B8B14 002820D4  3C A0 80 54 */	lis r5, lbl_8053EF18@ha
/* 802B8B18 002820D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8B1C 002820DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8B20 002820E0  93 C1 00 08 */	stw r30, 8(r1)
/* 802B8B24 002820E4  7C 7E 1B 78 */	mr r30, r3
/* 802B8B28 002820E8  84 85 EF 18 */	lwzu r4, lbl_8053EF18@l(r5)
/* 802B8B2C 002820EC  80 05 00 04 */	lwz r0, 4(r5)
/* 802B8B30 002820F0  90 03 00 04 */	stw r0, 4(r3)
/* 802B8B34 002820F4  90 83 00 00 */	stw r4, 0(r3)
/* 802B8B38 002820F8  80 05 00 08 */	lwz r0, 8(r5)
/* 802B8B3C 002820FC  90 03 00 08 */	stw r0, 8(r3)
/* 802B8B40 00282100  4B E2 06 49 */	bl func_800D9188
/* 802B8B44 00282104  A8 03 20 C8 */	lha r0, 0x20c8(r3)
/* 802B8B48 00282108  2C 00 00 00 */	cmpwi r0, 0
/* 802B8B4C 0028210C  41 82 00 1C */	beq .L_802B8B68
/* 802B8B50 00282110  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802B8B54 00282114  7F C3 F3 78 */	mr r3, r30
/* 802B8B58 00282118  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8B5C 0028211C  7D 89 03 A6 */	mtctr r12
/* 802B8B60 00282120  4E 80 04 21 */	bctrl 
/* 802B8B64 00282124  48 00 00 84 */	b .L_802B8BE8
.L_802B8B68:
/* 802B8B68 00282128  38 60 00 00 */	li r3, 0
/* 802B8B6C 0028212C  4B DC A1 E9 */	bl func_80082D54
/* 802B8B70 00282130  4B EB 72 C5 */	bl func_8016FE34
/* 802B8B74 00282134  2C 03 00 00 */	cmpwi r3, 0
/* 802B8B78 00282138  7C 7F 1B 78 */	mr r31, r3
/* 802B8B7C 0028213C  41 82 00 6C */	beq .L_802B8BE8
/* 802B8B80 00282140  81 83 00 00 */	lwz r12, 0(r3)
/* 802B8B84 00282144  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802B8B88 00282148  7D 89 03 A6 */	mtctr r12
/* 802B8B8C 0028214C  4E 80 04 21 */	bctrl 
/* 802B8B90 00282150  2C 03 00 00 */	cmpwi r3, 0
/* 802B8B94 00282154  40 82 00 54 */	bne .L_802B8BE8
/* 802B8B98 00282158  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802B8B9C 0028215C  3C 60 80 54 */	lis r3, lbl_8053EF0C@ha
/* 802B8BA0 00282160  38 63 EF 0C */	addi r3, r3, lbl_8053EF0C@l
/* 802B8BA4 00282164  54 00 10 3A */	slwi r0, r0, 2
/* 802B8BA8 00282168  7C A3 00 2E */	lwzx r5, r3, r0
/* 802B8BAC 0028216C  2C 05 00 00 */	cmpwi r5, 0
/* 802B8BB0 00282170  40 81 00 38 */	ble .L_802B8BE8
/* 802B8BB4 00282174  2C 1F 00 00 */	cmpwi r31, 0
/* 802B8BB8 00282178  41 82 00 08 */	beq .L_802B8BC0
/* 802B8BBC 0028217C  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802B8BC0:
/* 802B8BC0 00282180  7F C3 F3 78 */	mr r3, r30
/* 802B8BC4 00282184  7F E4 FB 78 */	mr r4, r31
/* 802B8BC8 00282188  4B FE B0 7D */	bl func_802A3C44
/* 802B8BCC 0028218C  2C 03 00 00 */	cmpwi r3, 0
/* 802B8BD0 00282190  40 82 00 18 */	bne .L_802B8BE8
/* 802B8BD4 00282194  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802B8BD8 00282198  7F C3 F3 78 */	mr r3, r30
/* 802B8BDC 0028219C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8BE0 002821A0  7D 89 03 A6 */	mtctr r12
/* 802B8BE4 002821A4  4E 80 04 21 */	bctrl 
.L_802B8BE8:
/* 802B8BE8 002821A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8BEC 002821AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8BF0 002821B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B8BF4 002821B4  7C 08 03 A6 */	mtlr r0
/* 802B8BF8 002821B8  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8BFC 002821BC  4E 80 00 20 */	blr 

.global func_802B8C00
func_802B8C00:
/* 802B8C00 002821C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B8C04 002821C4  7C 08 02 A6 */	mflr r0
/* 802B8C08 002821C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B8C0C 002821CC  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 802B8C10 002821D0  7C 7B 1B 78 */	mr r27, r3
/* 802B8C14 002821D4  4B FE B2 75 */	bl func_802A3E88
/* 802B8C18 002821D8  2C 03 00 00 */	cmpwi r3, 0
/* 802B8C1C 002821DC  40 82 00 CC */	bne .L_802B8CE8
/* 802B8C20 002821E0  4B E2 05 69 */	bl func_800D9188
/* 802B8C24 002821E4  A8 03 20 C8 */	lha r0, 0x20c8(r3)
/* 802B8C28 002821E8  2C 00 00 00 */	cmpwi r0, 0
/* 802B8C2C 002821EC  41 82 00 1C */	beq .L_802B8C48
/* 802B8C30 002821F0  81 9B 00 1C */	lwz r12, 0x1c(r27)
/* 802B8C34 002821F4  7F 63 DB 78 */	mr r3, r27
/* 802B8C38 002821F8  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8C3C 002821FC  7D 89 03 A6 */	mtctr r12
/* 802B8C40 00282200  4E 80 04 21 */	bctrl 
/* 802B8C44 00282204  48 00 00 A4 */	b .L_802B8CE8
.L_802B8C48:
/* 802B8C48 00282208  3C A0 80 54 */	lis r5, lbl_8053EF24@ha
/* 802B8C4C 0028220C  84 85 EF 24 */	lwzu r4, lbl_8053EF24@l(r5)
/* 802B8C50 00282210  38 60 00 00 */	li r3, 0
/* 802B8C54 00282214  80 05 00 04 */	lwz r0, 4(r5)
/* 802B8C58 00282218  90 1B 00 04 */	stw r0, 4(r27)
/* 802B8C5C 0028221C  90 9B 00 00 */	stw r4, 0(r27)
/* 802B8C60 00282220  80 05 00 08 */	lwz r0, 8(r5)
/* 802B8C64 00282224  90 1B 00 08 */	stw r0, 8(r27)
/* 802B8C68 00282228  4B DC A0 ED */	bl func_80082D54
/* 802B8C6C 0028222C  4B EB 71 C9 */	bl func_8016FE34
/* 802B8C70 00282230  7C 65 1B 78 */	mr r5, r3
/* 802B8C74 00282234  38 61 00 08 */	addi r3, r1, 8
/* 802B8C78 00282238  38 80 00 03 */	li r4, 3
/* 802B8C7C 0028223C  4B FE EB F5 */	bl func_802A7870
/* 802B8C80 00282240  7C 7F 1B 78 */	mr r31, r3
/* 802B8C84 00282244  3B A1 00 08 */	addi r29, r1, 8
/* 802B8C88 00282248  3B 80 00 00 */	li r28, 0
/* 802B8C8C 0028224C  48 00 00 54 */	b .L_802B8CE0
.L_802B8C90:
/* 802B8C90 00282250  83 DD 00 00 */	lwz r30, 0(r29)
/* 802B8C94 00282254  2C 1E 00 00 */	cmpwi r30, 0
/* 802B8C98 00282258  41 82 00 08 */	beq .L_802B8CA0
/* 802B8C9C 0028225C  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802B8CA0:
/* 802B8CA0 00282260  38 60 00 02 */	li r3, 2
/* 802B8CA4 00282264  48 17 D2 59 */	bl func_80435EFC
/* 802B8CA8 00282268  7C 65 1B 78 */	mr r5, r3
/* 802B8CAC 0028226C  7F 63 DB 78 */	mr r3, r27
/* 802B8CB0 00282270  7F C4 F3 78 */	mr r4, r30
/* 802B8CB4 00282274  38 A5 09 C9 */	addi r5, r5, 0x9c9
/* 802B8CB8 00282278  4B FE AF 8D */	bl func_802A3C44
/* 802B8CBC 0028227C  2C 03 00 00 */	cmpwi r3, 0
/* 802B8CC0 00282280  40 82 00 18 */	bne .L_802B8CD8
/* 802B8CC4 00282284  81 9B 00 1C */	lwz r12, 0x1c(r27)
/* 802B8CC8 00282288  7F 63 DB 78 */	mr r3, r27
/* 802B8CCC 0028228C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8CD0 00282290  7D 89 03 A6 */	mtctr r12
/* 802B8CD4 00282294  4E 80 04 21 */	bctrl 
.L_802B8CD8:
/* 802B8CD8 00282298  3B BD 00 04 */	addi r29, r29, 4
/* 802B8CDC 0028229C  3B 9C 00 01 */	addi r28, r28, 1
.L_802B8CE0:
/* 802B8CE0 002822A0  7C 1C F8 00 */	cmpw r28, r31
/* 802B8CE4 002822A4  41 80 FF AC */	blt .L_802B8C90
.L_802B8CE8:
/* 802B8CE8 002822A8  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 802B8CEC 002822AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B8CF0 002822B0  7C 08 03 A6 */	mtlr r0
/* 802B8CF4 002822B4  38 21 00 30 */	addi r1, r1, 0x30
/* 802B8CF8 002822B8  4E 80 00 20 */	blr 

.global func_802B8CFC
func_802B8CFC:
/* 802B8CFC 002822BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B8D00 002822C0  7C 08 02 A6 */	mflr r0
/* 802B8D04 002822C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B8D08 002822C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B8D0C 002822CC  7C 7F 1B 78 */	mr r31, r3
/* 802B8D10 002822D0  4B FE B1 79 */	bl func_802A3E88
/* 802B8D14 002822D4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8D18 002822D8  40 82 00 18 */	bne .L_802B8D30
/* 802B8D1C 002822DC  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802B8D20 002822E0  7F E3 FB 78 */	mr r3, r31
/* 802B8D24 002822E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B8D28 002822E8  7D 89 03 A6 */	mtctr r12
/* 802B8D2C 002822EC  4E 80 04 21 */	bctrl 
.L_802B8D30:
/* 802B8D30 002822F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B8D34 002822F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B8D38 002822F8  7C 08 03 A6 */	mtlr r0
/* 802B8D3C 002822FC  38 21 00 10 */	addi r1, r1, 0x10
/* 802B8D40 00282300  4E 80 00 20 */	blr 

.global func_802B8D44
func_802B8D44:
/* 802B8D44 00282304  38 60 00 78 */	li r3, 0x78
/* 802B8D48 00282308  4E 80 00 20 */	blr 

.global func_802B8D4C
func_802B8D4C:
/* 802B8D4C 0028230C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B8D50 00282310  7C 08 02 A6 */	mflr r0
/* 802B8D54 00282314  38 60 00 00 */	li r3, 0
/* 802B8D58 00282318  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B8D5C 0028231C  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 802B8D60 00282320  4B DC 9F F5 */	bl func_80082D54
/* 802B8D64 00282324  4B EB 70 D1 */	bl func_8016FE34
/* 802B8D68 00282328  2C 03 00 00 */	cmpwi r3, 0
/* 802B8D6C 0028232C  40 82 00 0C */	bne .L_802B8D78
/* 802B8D70 00282330  3B A0 00 00 */	li r29, 0
/* 802B8D74 00282334  48 00 00 5C */	b .L_802B8DD0
.L_802B8D78:
/* 802B8D78 00282338  85 83 3E 9C */	lwzu r12, 0x3e9c(r3)
/* 802B8D7C 0028233C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802B8D80 00282340  7D 89 03 A6 */	mtctr r12
/* 802B8D84 00282344  4E 80 04 21 */	bctrl 
/* 802B8D88 00282348  4B DF E3 05 */	bl func_800B708C
/* 802B8D8C 0028234C  4B EB 70 A9 */	bl func_8016FE34
/* 802B8D90 00282350  2C 03 00 00 */	cmpwi r3, 0
/* 802B8D94 00282354  40 82 00 0C */	bne .L_802B8DA0
/* 802B8D98 00282358  3B A0 00 00 */	li r29, 0
/* 802B8D9C 0028235C  48 00 00 34 */	b .L_802B8DD0
.L_802B8DA0:
/* 802B8DA0 00282360  3F A0 80 54 */	lis r29, lbl_8053EF58@ha
/* 802B8DA4 00282364  3B BD EF 58 */	addi r29, r29, lbl_8053EF58@l
/* 802B8DA8 00282368  48 00 00 18 */	b .L_802B8DC0
.L_802B8DAC:
/* 802B8DAC 0028236C  A0 03 3F 28 */	lhz r0, 0x3f28(r3)
/* 802B8DB0 00282370  7C 04 00 00 */	cmpw r4, r0
/* 802B8DB4 00282374  40 82 00 08 */	bne .L_802B8DBC
/* 802B8DB8 00282378  48 00 00 18 */	b .L_802B8DD0
.L_802B8DBC:
/* 802B8DBC 0028237C  3B BD 00 08 */	addi r29, r29, 8
.L_802B8DC0:
/* 802B8DC0 00282380  80 9D 00 00 */	lwz r4, 0(r29)
/* 802B8DC4 00282384  2C 04 00 00 */	cmpwi r4, 0
/* 802B8DC8 00282388  40 82 FF E4 */	bne .L_802B8DAC
/* 802B8DCC 0028238C  3B A0 00 00 */	li r29, 0
.L_802B8DD0:
/* 802B8DD0 00282390  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8DD4 00282394  41 82 00 08 */	beq .L_802B8DDC
/* 802B8DD8 00282398  48 00 00 F0 */	b .L_802B8EC8
.L_802B8DDC:
/* 802B8DDC 0028239C  4B E2 03 AD */	bl func_800D9188
/* 802B8DE0 002823A0  80 A3 00 48 */	lwz r5, 0x48(r3)
/* 802B8DE4 002823A4  38 80 00 00 */	li r4, 0
/* 802B8DE8 002823A8  80 65 00 00 */	lwz r3, 0(r5)
/* 802B8DEC 002823AC  48 00 00 0C */	b .L_802B8DF8
.L_802B8DF0:
/* 802B8DF0 002823B0  80 63 00 00 */	lwz r3, 0(r3)
/* 802B8DF4 002823B4  38 84 00 01 */	addi r4, r4, 1
.L_802B8DF8:
/* 802B8DF8 002823B8  7C 03 28 40 */	cmplw r3, r5
/* 802B8DFC 002823BC  40 82 FF F4 */	bne .L_802B8DF0
/* 802B8E00 002823C0  2C 04 00 00 */	cmpwi r4, 0
/* 802B8E04 002823C4  41 81 00 0C */	bgt .L_802B8E10
/* 802B8E08 002823C8  3B A0 00 00 */	li r29, 0
/* 802B8E0C 002823CC  48 00 00 AC */	b .L_802B8EB8
.L_802B8E10:
/* 802B8E10 002823D0  4B DF DD B9 */	bl func_800B6BC8
/* 802B8E14 002823D4  80 83 00 04 */	lwz r4, 4(r3)
/* 802B8E18 002823D8  7C 7E 1B 78 */	mr r30, r3
/* 802B8E1C 002823DC  3F E0 80 54 */	lis r31, lbl_8053EF58@ha
/* 802B8E20 002823E0  83 64 00 00 */	lwz r27, 0(r4)
/* 802B8E24 002823E4  48 00 00 84 */	b .L_802B8EA8
.L_802B8E28:
/* 802B8E28 002823E8  83 9B 00 08 */	lwz r28, 8(r27)
/* 802B8E2C 002823EC  2C 1C 00 00 */	cmpwi r28, 0
/* 802B8E30 002823F0  41 82 00 08 */	beq .L_802B8E38
/* 802B8E34 002823F4  3B 9C C1 64 */	addi r28, r28, -16028
.L_802B8E38:
/* 802B8E38 002823F8  80 7C 00 04 */	lwz r3, 4(r28)
/* 802B8E3C 002823FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802B8E40 00282400  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802B8E44 00282404  7D 89 03 A6 */	mtctr r12
/* 802B8E48 00282408  4E 80 04 21 */	bctrl 
/* 802B8E4C 0028240C  80 03 00 00 */	lwz r0, 0(r3)
/* 802B8E50 00282410  7F 83 E3 78 */	mr r3, r28
/* 802B8E54 00282414  90 01 00 08 */	stw r0, 8(r1)
/* 802B8E58 00282418  38 81 00 08 */	addi r4, r1, 8
/* 802B8E5C 0028241C  38 A0 08 03 */	li r5, 0x803
/* 802B8E60 00282420  4B EB BE 39 */	bl func_80174C98
/* 802B8E64 00282424  2C 03 00 00 */	cmpwi r3, 0
/* 802B8E68 00282428  41 82 00 3C */	beq .L_802B8EA4
/* 802B8E6C 0028242C  3B BF EF 58 */	addi r29, r31, lbl_8053EF58@l
/* 802B8E70 00282430  48 00 00 18 */	b .L_802B8E88
.L_802B8E74:
/* 802B8E74 00282434  A0 1C 3F 28 */	lhz r0, 0x3f28(r28)
/* 802B8E78 00282438  7C 03 00 00 */	cmpw r3, r0
/* 802B8E7C 0028243C  40 82 00 08 */	bne .L_802B8E84
/* 802B8E80 00282440  48 00 00 18 */	b .L_802B8E98
.L_802B8E84:
/* 802B8E84 00282444  3B BD 00 08 */	addi r29, r29, 8
.L_802B8E88:
/* 802B8E88 00282448  80 7D 00 00 */	lwz r3, 0(r29)
/* 802B8E8C 0028244C  2C 03 00 00 */	cmpwi r3, 0
/* 802B8E90 00282450  40 82 FF E4 */	bne .L_802B8E74
/* 802B8E94 00282454  3B A0 00 00 */	li r29, 0
.L_802B8E98:
/* 802B8E98 00282458  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8E9C 0028245C  41 82 00 08 */	beq .L_802B8EA4
/* 802B8EA0 00282460  48 00 00 18 */	b .L_802B8EB8
.L_802B8EA4:
/* 802B8EA4 00282464  83 7B 00 00 */	lwz r27, 0(r27)
.L_802B8EA8:
/* 802B8EA8 00282468  80 1E 00 04 */	lwz r0, 4(r30)
/* 802B8EAC 0028246C  7C 1B 00 40 */	cmplw r27, r0
/* 802B8EB0 00282470  40 82 FF 78 */	bne .L_802B8E28
/* 802B8EB4 00282474  3B A0 00 00 */	li r29, 0
.L_802B8EB8:
/* 802B8EB8 00282478  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8EBC 0028247C  41 82 00 08 */	beq .L_802B8EC4
/* 802B8EC0 00282480  48 00 00 08 */	b .L_802B8EC8
.L_802B8EC4:
/* 802B8EC4 00282484  3B A0 00 00 */	li r29, 0
.L_802B8EC8:
/* 802B8EC8 00282488  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8ECC 0028248C  40 82 00 0C */	bne .L_802B8ED8
/* 802B8ED0 00282490  3B C0 FF FF */	li r30, -1
/* 802B8ED4 00282494  48 00 00 24 */	b .L_802B8EF8
.L_802B8ED8:
/* 802B8ED8 00282498  A8 7D 00 04 */	lha r3, 4(r29)
/* 802B8EDC 0028249C  4B FE EB 79 */	bl func_802A7A54
/* 802B8EE0 002824A0  2C 03 00 00 */	cmpwi r3, 0
/* 802B8EE4 002824A4  40 82 00 0C */	bne .L_802B8EF0
/* 802B8EE8 002824A8  3B C0 FF FF */	li r30, -1
/* 802B8EEC 002824AC  48 00 00 0C */	b .L_802B8EF8
.L_802B8EF0:
/* 802B8EF0 002824B0  7C 7A 1B 78 */	mr r26, r3
/* 802B8EF4 002824B4  AB DD 00 06 */	lha r30, 6(r29)
.L_802B8EF8:
/* 802B8EF8 002824B8  2C 1E 00 00 */	cmpwi r30, 0
/* 802B8EFC 002824BC  41 81 00 0C */	bgt .L_802B8F08
/* 802B8F00 002824C0  38 60 00 00 */	li r3, 0
/* 802B8F04 002824C4  48 00 00 58 */	b .L_802B8F5C
.L_802B8F08:
/* 802B8F08 002824C8  38 60 00 14 */	li r3, 0x14
/* 802B8F0C 002824CC  38 80 00 01 */	li r4, 1
/* 802B8F10 002824D0  4B FE A3 FD */	bl func_802A330C
/* 802B8F14 002824D4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8F18 002824D8  40 82 00 0C */	bne .L_802B8F24
/* 802B8F1C 002824DC  38 60 00 00 */	li r3, 0
/* 802B8F20 002824E0  48 00 00 3C */	b .L_802B8F5C
.L_802B8F24:
/* 802B8F24 002824E4  38 60 00 20 */	li r3, 0x20
/* 802B8F28 002824E8  4B FE A5 BD */	bl func_802A34E4
/* 802B8F2C 002824EC  2C 03 00 00 */	cmpwi r3, 0
/* 802B8F30 002824F0  40 82 00 0C */	bne .L_802B8F3C
/* 802B8F34 002824F4  38 60 00 00 */	li r3, 0
/* 802B8F38 002824F8  48 00 00 24 */	b .L_802B8F5C
.L_802B8F3C:
/* 802B8F3C 002824FC  2C 1A 00 00 */	cmpwi r26, 0
/* 802B8F40 00282500  41 82 00 08 */	beq .L_802B8F48
/* 802B8F44 00282504  3B 5A 3E 9C */	addi r26, r26, 0x3e9c
.L_802B8F48:
/* 802B8F48 00282508  7F 43 D3 78 */	mr r3, r26
/* 802B8F4C 0028250C  7F C4 F3 78 */	mr r4, r30
/* 802B8F50 00282510  38 A0 00 14 */	li r5, 0x14
/* 802B8F54 00282514  4B FE AE 01 */	bl func_802A3D54
/* 802B8F58 00282518  38 60 00 00 */	li r3, 0
.L_802B8F5C:
/* 802B8F5C 0028251C  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 802B8F60 00282520  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B8F64 00282524  7C 08 03 A6 */	mtlr r0
/* 802B8F68 00282528  38 21 00 30 */	addi r1, r1, 0x30
/* 802B8F6C 0028252C  4E 80 00 20 */	blr 

.global play
play:
/* 802B8F70 00282530  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B8F74 00282534  7C 08 02 A6 */	mflr r0
/* 802B8F78 00282538  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B8F7C 0028253C  39 61 00 20 */	addi r11, r1, 0x20
/* 802B8F80 00282540  48 00 11 D5 */	bl _savegpr_27
/* 802B8F84 00282544  7C 7B 1B 78 */	mr r27, r3
/* 802B8F88 00282548  38 80 00 01 */	li r4, 1
/* 802B8F8C 0028254C  48 1E 7C ED */	bl func_804A0C78
/* 802B8F90 00282550  7C 64 1B 78 */	mr r4, r3
/* 802B8F94 00282554  38 60 00 02 */	li r3, 2
/* 802B8F98 00282558  48 1E 7E 35 */	bl func_804A0DCC
/* 802B8F9C 0028255C  7C 7E 1B 78 */	mr r30, r3
/* 802B8FA0 00282560  7F 63 DB 78 */	mr r3, r27
/* 802B8FA4 00282564  38 80 00 02 */	li r4, 2
/* 802B8FA8 00282568  48 1E 7C D1 */	bl func_804A0C78
/* 802B8FAC 0028256C  7C 64 1B 78 */	mr r4, r3
/* 802B8FB0 00282570  38 60 00 03 */	li r3, 3
/* 802B8FB4 00282574  48 1E 7E 19 */	bl func_804A0DCC
/* 802B8FB8 00282578  7C 7B 1B 78 */	mr r27, r3
/* 802B8FBC 0028257C  4B DF DB E9 */	bl func_800B6BA4
/* 802B8FC0 00282580  80 83 00 04 */	lwz r4, 4(r3)
/* 802B8FC4 00282584  7C 7F 1B 78 */	mr r31, r3
/* 802B8FC8 00282588  83 84 00 00 */	lwz r28, 0(r4)
/* 802B8FCC 0028258C  48 00 00 5C */	b .L_802B9028
.L_802B8FD0:
/* 802B8FD0 00282590  83 BC 00 08 */	lwz r29, 8(r28)
/* 802B8FD4 00282594  2C 1D 00 00 */	cmpwi r29, 0
/* 802B8FD8 00282598  41 82 00 08 */	beq .L_802B8FE0
/* 802B8FDC 0028259C  3B BD C1 64 */	addi r29, r29, -16028
.L_802B8FE0:
/* 802B8FE0 002825A0  81 9D 00 00 */	lwz r12, 0(r29)
/* 802B8FE4 002825A4  7F A3 EB 78 */	mr r3, r29
/* 802B8FE8 002825A8  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802B8FEC 002825AC  7D 89 03 A6 */	mtctr r12
/* 802B8FF0 002825B0  4E 80 04 21 */	bctrl 
/* 802B8FF4 002825B4  2C 03 00 00 */	cmpwi r3, 0
/* 802B8FF8 002825B8  40 82 00 2C */	bne .L_802B9024
/* 802B8FFC 002825BC  A0 1D 3F 28 */	lhz r0, 0x3f28(r29)
/* 802B9000 002825C0  7C 1E 00 00 */	cmpw r30, r0
/* 802B9004 002825C4  40 82 00 20 */	bne .L_802B9024
/* 802B9008 002825C8  C0 22 B4 88 */	lfs f1, lbl_8066B808@sda21(r2)
/* 802B900C 002825CC  7F 64 DB 78 */	mr r4, r27
/* 802B9010 002825D0  C0 42 B4 8C */	lfs f2, lbl_8066B80C@sda21(r2)
/* 802B9014 002825D4  38 7D 3E 9C */	addi r3, r29, 0x3e9c
/* 802B9018 002825D8  38 A0 00 14 */	li r5, 0x14
/* 802B901C 002825DC  4B E0 58 7D */	bl func_800BE898
/* 802B9020 002825E0  48 00 00 14 */	b .L_802B9034
.L_802B9024:
/* 802B9024 002825E4  83 9C 00 00 */	lwz r28, 0(r28)
.L_802B9028:
/* 802B9028 002825E8  80 1F 00 04 */	lwz r0, 4(r31)
/* 802B902C 002825EC  7C 1C 00 40 */	cmplw r28, r0
/* 802B9030 002825F0  40 82 FF A0 */	bne .L_802B8FD0
.L_802B9034:
/* 802B9034 002825F4  39 61 00 20 */	addi r11, r1, 0x20
/* 802B9038 002825F8  38 60 00 00 */	li r3, 0
/* 802B903C 002825FC  48 00 11 65 */	bl _restgpr_27
/* 802B9040 00282600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9044 00282604  7C 08 03 A6 */	mtlr r0
/* 802B9048 00282608  38 21 00 20 */	addi r1, r1, 0x20
/* 802B904C 0028260C  4E 80 00 20 */	blr 

.global func_802B9050
func_802B9050:
/* 802B9050 00282610  3C 60 80 51 */	lis r3, lbl_8050CDB0@ha
/* 802B9054 00282614  3C 80 80 54 */	lis r4, lbl_8053EF98@ha
/* 802B9058 00282618  38 63 CD B0 */	addi r3, r3, lbl_8050CDB0@l
/* 802B905C 0028261C  38 84 EF 98 */	addi r4, r4, lbl_8053EF98@l
/* 802B9060 00282620  48 1E 7B 30 */	b func_804A0B90

.global func_802B9064
func_802B9064:
/* 802B9064 00282624  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B9068 00282628  7C 08 02 A6 */	mflr r0
/* 802B906C 0028262C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B9070 00282630  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 802B9074 00282634  F3 E1 00 28 */	psq_st f31, 40(r1), 0, qr0
/* 802B9078 00282638  FF E0 08 90 */	fmr f31, f1
/* 802B907C 0028263C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 802B9080 00282640  F3 C1 00 18 */	psq_st f30, 24(r1), 0, qr0
/* 802B9084 00282644  FF C0 10 90 */	fmr f30, f2
/* 802B9088 00282648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B908C 0028264C  93 C1 00 08 */	stw r30, 8(r1)
/* 802B9090 00282650  7C 7E 1B 78 */	mr r30, r3
/* 802B9094 00282654  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802B9098 00282658  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802B909C 0028265C  40 82 00 0C */	bne .L_802B90A8
/* 802B90A0 00282660  38 60 00 00 */	li r3, 0
/* 802B90A4 00282664  48 00 01 1C */	b .L_802B91C0
.L_802B90A8:
/* 802B90A8 00282668  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802B90AC 0028266C  4C 40 13 82 */	cror 2, 0, 2
/* 802B90B0 00282670  40 82 00 0C */	bne .L_802B90BC
/* 802B90B4 00282674  38 60 00 00 */	li r3, 0
/* 802B90B8 00282678  48 00 01 08 */	b .L_802B91C0
.L_802B90BC:
/* 802B90BC 0028267C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B90C0 00282680  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802B90C4 00282684  7D 89 03 A6 */	mtctr r12
/* 802B90C8 00282688  4E 80 04 21 */	bctrl 
/* 802B90CC 0028268C  2C 03 00 00 */	cmpwi r3, 0
/* 802B90D0 00282690  41 82 00 0C */	beq .L_802B90DC
/* 802B90D4 00282694  38 60 00 00 */	li r3, 0
/* 802B90D8 00282698  48 00 00 E8 */	b .L_802B91C0
.L_802B90DC:
/* 802B90DC 0028269C  4B E2 00 AD */	bl func_800D9188
/* 802B90E0 002826A0  A8 03 20 C8 */	lha r0, 0x20c8(r3)
/* 802B90E4 002826A4  2C 00 00 00 */	cmpwi r0, 0
/* 802B90E8 002826A8  41 82 00 0C */	beq .L_802B90F4
/* 802B90EC 002826AC  38 60 00 00 */	li r3, 0
/* 802B90F0 002826B0  48 00 00 D0 */	b .L_802B91C0
.L_802B90F4:
/* 802B90F4 002826B4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802B90F8 002826B8  7F C3 F3 78 */	mr r3, r30
/* 802B90FC 002826BC  81 8C 01 5C */	lwz r12, 0x15c(r12)
/* 802B9100 002826C0  7D 89 03 A6 */	mtctr r12
/* 802B9104 002826C4  4E 80 04 21 */	bctrl 
/* 802B9108 002826C8  EF FF 08 24 */	fdivs f31, f31, f1
/* 802B910C 002826CC  81 9E 00 00 */	lwz r12, 0(r30)
/* 802B9110 002826D0  7F C3 F3 78 */	mr r3, r30
/* 802B9114 002826D4  81 8C 01 5C */	lwz r12, 0x15c(r12)
/* 802B9118 002826D8  7D 89 03 A6 */	mtctr r12
/* 802B911C 002826DC  4E 80 04 21 */	bctrl 
/* 802B9120 002826E0  EC 3E 08 24 */	fdivs f1, f30, f1
/* 802B9124 002826E4  C0 02 B4 98 */	lfs f0, lbl_8066B818@sda21(r2)
/* 802B9128 002826E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B912C 002826EC  40 80 00 18 */	bge .L_802B9144
/* 802B9130 002826F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802B9134 002826F4  4C 40 13 82 */	cror 2, 0, 2
/* 802B9138 002826F8  40 82 00 0C */	bne .L_802B9144
/* 802B913C 002826FC  3B E0 0A 2A */	li r31, 0xa2a
/* 802B9140 00282700  48 00 00 2C */	b .L_802B916C
.L_802B9144:
/* 802B9144 00282704  C0 02 B4 9C */	lfs f0, lbl_8066B81C@sda21(r2)
/* 802B9148 00282708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802B914C 0028270C  40 80 00 18 */	bge .L_802B9164
/* 802B9150 00282710  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802B9154 00282714  4C 40 13 82 */	cror 2, 0, 2
/* 802B9158 00282718  40 82 00 0C */	bne .L_802B9164
/* 802B915C 0028271C  3B E0 0A 29 */	li r31, 0xa29
/* 802B9160 00282720  48 00 00 0C */	b .L_802B916C
.L_802B9164:
/* 802B9164 00282724  38 60 00 00 */	li r3, 0
/* 802B9168 00282728  48 00 00 58 */	b .L_802B91C0
.L_802B916C:
/* 802B916C 0028272C  38 60 00 7D */	li r3, 0x7d
/* 802B9170 00282730  38 80 00 01 */	li r4, 1
/* 802B9174 00282734  4B FE A1 99 */	bl func_802A330C
/* 802B9178 00282738  2C 03 00 00 */	cmpwi r3, 0
/* 802B917C 0028273C  40 82 00 0C */	bne .L_802B9188
/* 802B9180 00282740  38 60 00 00 */	li r3, 0
/* 802B9184 00282744  48 00 00 3C */	b .L_802B91C0
.L_802B9188:
/* 802B9188 00282748  38 60 00 20 */	li r3, 0x20
/* 802B918C 0028274C  4B FE A3 59 */	bl func_802A34E4
/* 802B9190 00282750  2C 03 00 00 */	cmpwi r3, 0
/* 802B9194 00282754  40 82 00 0C */	bne .L_802B91A0
/* 802B9198 00282758  38 60 00 00 */	li r3, 0
/* 802B919C 0028275C  48 00 00 24 */	b .L_802B91C0
.L_802B91A0:
/* 802B91A0 00282760  2C 1E 00 00 */	cmpwi r30, 0
/* 802B91A4 00282764  41 82 00 08 */	beq .L_802B91AC
/* 802B91A8 00282768  3B DE 3E 9C */	addi r30, r30, 0x3e9c
.L_802B91AC:
/* 802B91AC 0028276C  7F C3 F3 78 */	mr r3, r30
/* 802B91B0 00282770  7F E4 FB 78 */	mr r4, r31
/* 802B91B4 00282774  38 A0 00 7D */	li r5, 0x7d
/* 802B91B8 00282778  4B FE AB 9D */	bl func_802A3D54
/* 802B91BC 0028277C  38 60 00 00 */	li r3, 0
.L_802B91C0:
/* 802B91C0 00282780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B91C4 00282784  E3 E1 00 28 */	psq_l f31, 40(r1), 0, qr0
/* 802B91C8 00282788  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 802B91CC 0028278C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, qr0
/* 802B91D0 00282790  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 802B91D4 00282794  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B91D8 00282798  83 C1 00 08 */	lwz r30, 8(r1)
/* 802B91DC 0028279C  7C 08 03 A6 */	mtlr r0
/* 802B91E0 002827A0  38 21 00 30 */	addi r1, r1, 0x30
/* 802B91E4 002827A4  4E 80 00 20 */	blr 

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8001BE38
lbl_8001BE38:
	.4byte 0x18180000
	.4byte 0x00000064
	.4byte 0x00000018
	.4byte 0x00000088
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x00000078
	.4byte 0x00000008
	.4byte 0x8D000008

.global lbl_8001BE64
lbl_8001BE64:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001BE6C
lbl_8001BE6C:
	.4byte 0x28080000
	.4byte 0

.global lbl_8001BE74
lbl_8001BE74:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001BE7C
lbl_8001BE7C:
	.4byte 0x30080000
	.4byte 0

.global lbl_8001BE84
lbl_8001BE84:
	.4byte 0x280A0000
	.4byte 0

.global lbl_8001BE8C
lbl_8001BE8C:
	.4byte 0x108A0000
	.4byte 0


.section extabindex_, "wa"  # 0x80021020 - 0x80039220

.4byte func_802B8A3C
	.4byte 0x000000D0
	.4byte lbl_8001BE38
	.4byte func_802B8B0C
	.4byte 0x000000F4
	.4byte lbl_8001BE64
	.4byte func_802B8C00
	.4byte 0x000000FC
	.4byte lbl_8001BE6C
	.4byte func_802B8CFC
	.4byte 0x00000048
	.4byte lbl_8001BE74
	.4byte func_802B8D4C
	.4byte 0x00000224
	.4byte lbl_8001BE7C
	.4byte play
	.4byte 0x000000E0
	.4byte lbl_8001BE84
	.4byte func_802B9064
	.4byte 0x00000184
	.4byte lbl_8001BE8C