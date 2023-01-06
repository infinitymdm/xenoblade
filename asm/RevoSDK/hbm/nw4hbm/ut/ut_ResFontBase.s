.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.global func_80338AC0
func_80338AC0:
/* 80338AC0 00302080  3C 80 80 55 */	lis r4, __vt__8054EE18@ha
/* 80338AC4 00302084  3C E0 80 55 */	lis r7, lbl_8054EDB0@ha
/* 80338AC8 00302088  38 84 EE 18 */	addi r4, r4, __vt__8054EE18@l
/* 80338ACC 0030208C  90 83 00 00 */	stw r4, 0(r3)
/* 80338AD0 00302090  3C 80 80 55 */	lis r4, lbl_8054EDC0@ha
/* 80338AD4 00302094  38 00 00 00 */	li r0, 0
/* 80338AD8 00302098  84 C7 ED B0 */	lwzu r6, lbl_8054EDB0@l(r7)
/* 80338ADC 0030209C  38 84 ED C0 */	addi r4, r4, lbl_8054EDC0@l
/* 80338AE0 003020A0  80 A7 00 04 */	lwz r5, 4(r7)
/* 80338AE4 003020A4  90 A3 00 08 */	stw r5, 8(r3)
/* 80338AE8 003020A8  90 C3 00 04 */	stw r6, 4(r3)
/* 80338AEC 003020AC  80 A7 00 08 */	lwz r5, 8(r7)
/* 80338AF0 003020B0  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80338AF4 003020B4  90 83 00 00 */	stw r4, 0(r3)
/* 80338AF8 003020B8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80338AFC 003020BC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80338B00 003020C0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B10
func_80338B10:
/* 80338B10 003020D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338B14 003020D4  7C 08 02 A6 */	mflr r0
/* 80338B18 003020D8  2C 03 00 00 */	cmpwi r3, 0
/* 80338B1C 003020DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338B20 003020E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338B24 003020E4  7C 7F 1B 78 */	mr r31, r3
/* 80338B28 003020E8  41 82 00 10 */	beq .L_80338B38
/* 80338B2C 003020EC  2C 04 00 00 */	cmpwi r4, 0
/* 80338B30 003020F0  40 81 00 08 */	ble .L_80338B38
/* 80338B34 003020F4  48 0F C0 F9 */	bl __dl__FPv
.L_80338B38:
/* 80338B38 003020F8  7F E3 FB 78 */	mr r3, r31
/* 80338B3C 003020FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338B40 00302100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338B44 00302104  7C 08 03 A6 */	mtlr r0
/* 80338B48 00302108  38 21 00 10 */	addi r1, r1, 0x10
/* 80338B4C 0030210C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B50
func_80338B50:
/* 80338B50 00302110  90 83 00 10 */	stw r4, 0x10(r3)
/* 80338B54 00302114  90 A3 00 14 */	stw r5, 0x14(r3)
/* 80338B58 00302118  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B60
func_80338B60:
/* 80338B60 00302120  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338B64 00302124  88 63 00 15 */	lbz r3, 0x15(r3)
/* 80338B68 00302128  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B70
func_80338B70:
/* 80338B70 00302130  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338B74 00302134  88 63 00 14 */	lbz r3, 0x14(r3)
/* 80338B78 00302138  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B80
func_80338B80:
/* 80338B80 00302140  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338B84 00302144  88 63 00 16 */	lbz r3, 0x16(r3)
/* 80338B88 00302148  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338B90
func_80338B90:
/* 80338B90 00302150  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80338B94 00302154  88 64 00 16 */	lbz r3, 0x16(r4)
/* 80338B98 00302158  88 04 00 14 */	lbz r0, 0x14(r4)
/* 80338B9C 0030215C  7C 63 00 50 */	subf r3, r3, r0
/* 80338BA0 00302160  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338BB0
func_80338BB0:
/* 80338BB0 00302170  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338BB4 00302174  80 63 00 08 */	lwz r3, 8(r3)
/* 80338BB8 00302178  88 63 00 02 */	lbz r3, 2(r3)
/* 80338BBC 0030217C  7C 63 07 74 */	extsb r3, r3
/* 80338BC0 00302180  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338BD0
func_80338BD0:
/* 80338BD0 00302190  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338BD4 00302194  80 63 00 08 */	lwz r3, 8(r3)
/* 80338BD8 00302198  88 63 00 01 */	lbz r3, 1(r3)
/* 80338BDC 0030219C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338BE0
func_80338BE0:
/* 80338BE0 003021A0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338BE4 003021A4  80 63 00 08 */	lwz r3, 8(r3)
/* 80338BE8 003021A8  88 63 00 00 */	lbz r3, 0(r3)
/* 80338BEC 003021AC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338BF0
func_80338BF0:
/* 80338BF0 003021B0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338BF4 003021B4  80 63 00 08 */	lwz r3, 8(r3)
/* 80338BF8 003021B8  88 63 00 03 */	lbz r3, 3(r3)
/* 80338BFC 003021BC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C00
func_80338C00:
/* 80338C00 003021C0  38 60 00 02 */	li r3, 2
/* 80338C04 003021C4  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C10
func_80338C10:
/* 80338C10 003021D0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338C14 003021D4  80 63 00 08 */	lwz r3, 8(r3)
/* 80338C18 003021D8  A0 63 00 0A */	lhz r3, 0xa(r3)
/* 80338C1C 003021DC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C20
func_80338C20:
/* 80338C20 003021E0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338C24 003021E4  88 63 00 01 */	lbz r3, 1(r3)
/* 80338C28 003021E8  7C 63 07 74 */	extsb r3, r3
/* 80338C2C 003021EC  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C30
func_80338C30:
/* 80338C30 003021F0  80 83 00 14 */	lwz r4, 0x14(r3)
/* 80338C34 003021F4  A0 04 00 04 */	lhz r0, 4(r4)
/* 80338C38 003021F8  54 03 80 1E */	slwi r3, r0, 0x10
/* 80338C3C 003021FC  88 04 00 06 */	lbz r0, 6(r4)
/* 80338C40 00302200  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 80338C44 00302204  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C50
func_80338C50:
/* 80338C50 00302210  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338C54 00302214  88 04 00 00 */	lbz r0, 0(r4)
/* 80338C58 00302218  98 03 00 04 */	stb r0, 4(r3)
/* 80338C5C 0030221C  88 04 00 01 */	lbz r0, 1(r4)
/* 80338C60 00302220  98 03 00 05 */	stb r0, 5(r3)
/* 80338C64 00302224  88 04 00 02 */	lbz r0, 2(r4)
/* 80338C68 00302228  98 03 00 06 */	stb r0, 6(r3)
/* 80338C6C 0030222C  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338C70
func_80338C70:
/* 80338C70 00302230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338C74 00302234  7C 08 02 A6 */	mflr r0
/* 80338C78 00302238  7C 85 23 78 */	mr r5, r4
/* 80338C7C 0030223C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338C80 00302240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338C84 00302244  7C 7F 1B 78 */	mr r31, r3
/* 80338C88 00302248  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80338C8C 0030224C  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 80338C90 00302250  48 00 00 38 */	b .L_80338CC8
/* 80338C94 00302254  60 00 00 00 */	nop 
.L_80338C98:
/* 80338C98 00302258  A0 06 00 00 */	lhz r0, 0(r6)
/* 80338C9C 0030225C  7C 00 20 40 */	cmplw r0, r4
/* 80338CA0 00302260  41 81 00 24 */	bgt .L_80338CC4
/* 80338CA4 00302264  A0 06 00 02 */	lhz r0, 2(r6)
/* 80338CA8 00302268  7C 04 00 40 */	cmplw r4, r0
/* 80338CAC 0030226C  41 81 00 18 */	bgt .L_80338CC4
/* 80338CB0 00302270  7F E3 FB 78 */	mr r3, r31
/* 80338CB4 00302274  7C C4 33 78 */	mr r4, r6
/* 80338CB8 00302278  48 00 02 79 */	bl func_80338F30
/* 80338CBC 0030227C  7C 65 1B 78 */	mr r5, r3
/* 80338CC0 00302280  48 00 00 18 */	b .L_80338CD8
.L_80338CC4:
/* 80338CC4 00302284  80 C6 00 08 */	lwz r6, 8(r6)
.L_80338CC8:
/* 80338CC8 00302288  2C 06 00 00 */	cmpwi r6, 0
/* 80338CCC 0030228C  40 82 FF CC */	bne .L_80338C98
/* 80338CD0 00302290  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80338CD4 00302294  38 A3 FF FF */	addi r5, r3, 0x0000FFFF@l
.L_80338CD8:
/* 80338CD8 00302298  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80338CDC 0030229C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80338CE0 003022A0  41 82 00 14 */	beq .L_80338CF4
/* 80338CE4 003022A4  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80338CE8 003022A8  38 60 00 01 */	li r3, 1
/* 80338CEC 003022AC  B0 A4 00 02 */	sth r5, 2(r4)
/* 80338CF0 003022B0  48 00 00 08 */	b .L_80338CF8
.L_80338CF4:
/* 80338CF4 003022B4  38 60 00 00 */	li r3, 0
.L_80338CF8:
/* 80338CF8 003022B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338CFC 003022BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338D00 003022C0  7C 08 03 A6 */	mtlr r0
/* 80338D04 003022C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80338D08 003022C8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338D10
func_80338D10:
/* 80338D10 003022D0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338D14 003022D4  98 83 00 01 */	stb r4, 1(r3)
/* 80338D18 003022D8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338D20
func_80338D20:
/* 80338D20 003022E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338D24 003022E4  7C 08 02 A6 */	mflr r0
/* 80338D28 003022E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338D2C 003022EC  81 83 00 00 */	lwz r12, 0(r3)
/* 80338D30 003022F0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80338D34 003022F4  7D 89 03 A6 */	mtctr r12
/* 80338D38 003022F8  4E 80 04 21 */	bctrl 
/* 80338D3C 003022FC  54 60 84 3E */	srwi r0, r3, 0x10
/* 80338D40 00302300  B0 01 00 08 */	sth r0, 8(r1)
/* 80338D44 00302304  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80338D48 00302308  7C 03 03 78 */	mr r3, r0
/* 80338D4C 0030230C  98 01 00 0A */	stb r0, 0xa(r1)
/* 80338D50 00302310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338D54 00302314  7C 63 07 74 */	extsb r3, r3
/* 80338D58 00302318  7C 08 03 A6 */	mtlr r0
/* 80338D5C 0030231C  38 21 00 10 */	addi r1, r1, 0x10
/* 80338D60 00302320  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338D70
func_80338D70:
/* 80338D70 00302330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338D74 00302334  7C 08 02 A6 */	mflr r0
/* 80338D78 00302338  7C 85 23 78 */	mr r5, r4
/* 80338D7C 0030233C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338D80 00302340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338D84 00302344  7C 7F 1B 78 */	mr r31, r3
/* 80338D88 00302348  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80338D8C 0030234C  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 80338D90 00302350  48 00 00 34 */	b .L_80338DC4
/* 80338D94 00302354  60 00 00 00 */	nop 
.L_80338D98:
/* 80338D98 00302358  A0 06 00 00 */	lhz r0, 0(r6)
/* 80338D9C 0030235C  7C 00 20 40 */	cmplw r0, r4
/* 80338DA0 00302360  41 81 00 20 */	bgt .L_80338DC0
/* 80338DA4 00302364  A0 06 00 02 */	lhz r0, 2(r6)
/* 80338DA8 00302368  7C 04 00 40 */	cmplw r4, r0
/* 80338DAC 0030236C  41 81 00 14 */	bgt .L_80338DC0
/* 80338DB0 00302370  7F E3 FB 78 */	mr r3, r31
/* 80338DB4 00302374  7C C4 33 78 */	mr r4, r6
/* 80338DB8 00302378  48 00 01 79 */	bl func_80338F30
/* 80338DBC 0030237C  48 00 00 18 */	b .L_80338DD4
.L_80338DC0:
/* 80338DC0 00302380  80 C6 00 08 */	lwz r6, 8(r6)
.L_80338DC4:
/* 80338DC4 00302384  2C 06 00 00 */	cmpwi r6, 0
/* 80338DC8 00302388  40 82 FF D0 */	bne .L_80338D98
/* 80338DCC 0030238C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80338DD0 00302390  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
.L_80338DD4:
/* 80338DD4 00302394  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80338DD8 00302398  28 00 FF FF */	cmplwi r0, 0xffff
/* 80338DDC 0030239C  41 82 00 08 */	beq .L_80338DE4
/* 80338DE0 003023A0  48 00 00 0C */	b .L_80338DEC
.L_80338DE4:
/* 80338DE4 003023A4  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80338DE8 003023A8  A0 63 00 02 */	lhz r3, 2(r3)
.L_80338DEC:
/* 80338DEC 003023AC  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 80338DF0 003023B0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80338DF4 003023B4  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80338DF8 003023B8  48 00 00 3C */	b .L_80338E34
/* 80338DFC 003023BC  60 00 00 00 */	nop 
.L_80338E00:
/* 80338E00 003023C0  A0 A4 00 00 */	lhz r5, 0(r4)
/* 80338E04 003023C4  7C 05 18 40 */	cmplw r5, r3
/* 80338E08 003023C8  41 81 00 28 */	bgt .L_80338E30
/* 80338E0C 003023CC  A0 04 00 02 */	lhz r0, 2(r4)
/* 80338E10 003023D0  7C 03 00 40 */	cmplw r3, r0
/* 80338E14 003023D4  41 81 00 1C */	bgt .L_80338E30
/* 80338E18 003023D8  7C 65 18 50 */	subf r3, r5, r3
/* 80338E1C 003023DC  54 60 10 3A */	slwi r0, r3, 2
/* 80338E20 003023E0  7C 03 00 50 */	subf r0, r3, r0
/* 80338E24 003023E4  7C 64 02 14 */	add r3, r4, r0
/* 80338E28 003023E8  38 83 00 08 */	addi r4, r3, 8
/* 80338E2C 003023EC  48 00 00 14 */	b .L_80338E40
.L_80338E30:
/* 80338E30 003023F0  80 84 00 04 */	lwz r4, 4(r4)
.L_80338E34:
/* 80338E34 003023F4  2C 04 00 00 */	cmpwi r4, 0
/* 80338E38 003023F8  40 82 FF C8 */	bne .L_80338E00
/* 80338E3C 003023FC  38 86 00 04 */	addi r4, r6, 4
.L_80338E40:
/* 80338E40 00302400  A0 04 00 00 */	lhz r0, 0(r4)
/* 80338E44 00302404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338E48 00302408  54 03 80 1E */	slwi r3, r0, 0x10
/* 80338E4C 0030240C  88 04 00 02 */	lbz r0, 2(r4)
/* 80338E50 00302410  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 80338E54 00302414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338E58 00302418  7C 08 03 A6 */	mtlr r0
/* 80338E5C 0030241C  38 21 00 10 */	addi r1, r1, 0x10
/* 80338E60 00302420  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338E70
func_80338E70:
/* 80338E70 00302430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80338E74 00302434  7C 08 02 A6 */	mflr r0
/* 80338E78 00302438  90 01 00 14 */	stw r0, 0x14(r1)
/* 80338E7C 0030243C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80338E80 00302440  7C 9F 23 78 */	mr r31, r4
/* 80338E84 00302444  93 C1 00 08 */	stw r30, 8(r1)
/* 80338E88 00302448  7C 7E 1B 78 */	mr r30, r3
/* 80338E8C 0030244C  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80338E90 00302450  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80338E94 00302454  48 00 00 30 */	b .L_80338EC4
.L_80338E98:
/* 80338E98 00302458  A0 04 00 00 */	lhz r0, 0(r4)
/* 80338E9C 0030245C  7C 00 28 40 */	cmplw r0, r5
/* 80338EA0 00302460  41 81 00 20 */	bgt .L_80338EC0
/* 80338EA4 00302464  A0 04 00 02 */	lhz r0, 2(r4)
/* 80338EA8 00302468  7C 05 00 40 */	cmplw r5, r0
/* 80338EAC 0030246C  41 81 00 14 */	bgt .L_80338EC0
/* 80338EB0 00302470  7F C3 F3 78 */	mr r3, r30
/* 80338EB4 00302474  48 00 00 7D */	bl func_80338F30
/* 80338EB8 00302478  7C 65 1B 78 */	mr r5, r3
/* 80338EBC 0030247C  48 00 00 18 */	b .L_80338ED4
.L_80338EC0:
/* 80338EC0 00302480  80 84 00 08 */	lwz r4, 8(r4)
.L_80338EC4:
/* 80338EC4 00302484  2C 04 00 00 */	cmpwi r4, 0
/* 80338EC8 00302488  40 82 FF D0 */	bne .L_80338E98
/* 80338ECC 0030248C  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80338ED0 00302490  38 A3 FF FF */	addi r5, r3, 0x0000FFFF@l
.L_80338ED4:
/* 80338ED4 00302494  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80338ED8 00302498  7F C3 F3 78 */	mr r3, r30
/* 80338EDC 0030249C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80338EE0 003024A0  7F E4 FB 78 */	mr r4, r31
/* 80338EE4 003024A4  41 82 00 08 */	beq .L_80338EEC
/* 80338EE8 003024A8  48 00 00 0C */	b .L_80338EF4
.L_80338EEC:
/* 80338EEC 003024AC  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 80338EF0 003024B0  A0 A5 00 02 */	lhz r5, 2(r5)
.L_80338EF4:
/* 80338EF4 003024B4  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80338EF8 003024B8  48 00 01 09 */	bl func_80339000
/* 80338EFC 003024BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338F00 003024C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338F04 003024C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80338F08 003024C8  7C 08 03 A6 */	mtlr r0
/* 80338F0C 003024CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80338F10 003024D0  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338F20
func_80338F20:
/* 80338F20 003024E0  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80338F24 003024E4  88 63 00 07 */	lbz r3, 7(r3)
/* 80338F28 003024E8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80338F30
func_80338F30:
/* 80338F30 003024F0  A0 04 00 04 */	lhz r0, 4(r4)
/* 80338F34 003024F4  3C 60 00 01 */	lis r3, 0x0000FFFF@ha
/* 80338F38 003024F8  38 63 FF FF */	addi r3, r3, 0x0000FFFF@l
/* 80338F3C 003024FC  2C 00 00 00 */	cmpwi r0, 0
/* 80338F40 00302500  41 82 00 18 */	beq .L_80338F58
/* 80338F44 00302504  2C 00 00 01 */	cmpwi r0, 1
/* 80338F48 00302508  41 82 00 28 */	beq .L_80338F70
/* 80338F4C 0030250C  2C 00 00 02 */	cmpwi r0, 2
/* 80338F50 00302510  41 82 00 38 */	beq .L_80338F88
/* 80338F54 00302514  4E 80 00 20 */	blr
.L_80338F58:
/* 80338F58 00302518  A0 04 00 00 */	lhz r0, 0(r4)
/* 80338F5C 0030251C  A0 64 00 0C */	lhz r3, 0xc(r4)
/* 80338F60 00302520  7C 00 28 50 */	subf r0, r0, r5
/* 80338F64 00302524  7C 03 02 14 */	add r0, r3, r0
/* 80338F68 00302528  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 80338F6C 0030252C  4E 80 00 20 */	blr
.L_80338F70:
/* 80338F70 00302530  A0 04 00 00 */	lhz r0, 0(r4)
/* 80338F74 00302534  7C 00 28 50 */	subf r0, r0, r5
/* 80338F78 00302538  54 00 08 3C */	slwi r0, r0, 1
/* 80338F7C 0030253C  7C 64 02 14 */	add r3, r4, r0
/* 80338F80 00302540  A0 63 00 0C */	lhz r3, 0xc(r3)
/* 80338F84 00302544  4E 80 00 20 */	blr
.L_80338F88:
/* 80338F88 00302548  38 C4 00 0C */	addi r6, r4, 0xc
/* 80338F8C 0030254C  A0 84 00 0C */	lhz r4, 0xc(r4)
/* 80338F90 00302550  38 E6 00 02 */	addi r7, r6, 2
/* 80338F94 00302554  38 04 FF FF */	addi r0, r4, -1
/* 80338F98 00302558  54 00 10 3A */	slwi r0, r0, 2
/* 80338F9C 0030255C  7C 86 02 14 */	add r4, r6, r0
/* 80338FA0 00302560  38 C4 00 02 */	addi r6, r4, 2
/* 80338FA4 00302564  48 00 00 4C */	b func_80338FF0
.L_80338FA8:
/* 80338FA8 00302568  7C 07 30 50 */	subf r0, r7, r6
/* 80338FAC 0030256C  7C 00 16 70 */	srawi r0, r0, 2
/* 80338FB0 00302570  7C 80 01 94 */	addze r4, r0
/* 80338FB4 00302574  54 80 0F FE */	srwi r0, r4, 0x1f
/* 80338FB8 00302578  7C 00 22 14 */	add r0, r0, r4
/* 80338FBC 0030257C  54 00 08 3A */	rlwinm r0, r0, 1, 0, 0x1d
/* 80338FC0 00302580  7C 87 02 14 */	add r4, r7, r0
/* 80338FC4 00302584  7C 07 02 2E */	lhzx r0, r7, r0
/* 80338FC8 00302588  7C 00 28 40 */	cmplw r0, r5
/* 80338FCC 0030258C  40 80 00 0C */	bge .L_80338FD8
/* 80338FD0 00302590  38 E4 00 04 */	addi r7, r4, 4
/* 80338FD4 00302594  48 00 00 1C */	b func_80338FF0
.L_80338FD8:
/* 80338FD8 00302598  7C 05 00 40 */	cmplw r5, r0
/* 80338FDC 0030259C  40 80 00 0C */	bge .L_80338FE8
/* 80338FE0 003025A0  38 C4 FF FC */	addi r6, r4, -4
/* 80338FE4 003025A4  48 00 00 0C */	b func_80338FF0
.L_80338FE8:
/* 80338FE8 003025A8  A0 64 00 02 */	lhz r3, 2(r4)
/* 80338FEC 003025AC  4E 80 00 20 */	blr


.global func_80338FF0
func_80338FF0:
/* 80338FF0 003025B0  7C 07 30 40 */	cmplw r7, r6
/* 80338FF4 003025B4  40 81 FF B4 */	ble .L_80338FA8
/* 80338FF8 003025B8  4E 80 00 20 */	blr 

.balign 16, 0
.global func_80339000
func_80339000:
/* 80339000 003025C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80339004 003025C4  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80339008 003025C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033900C 003025CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80339010 003025D0  80 6C 00 08 */	lwz r3, 8(r12)
/* 80339014 003025D4  A3 E3 00 0C */	lhz r31, 0xc(r3)
/* 80339018 003025D8  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8033901C 003025DC  88 E3 00 00 */	lbz r7, 0(r3)
/* 80339020 003025E0  7D 3F 01 D6 */	mullw r9, r31, r0
/* 80339024 003025E4  80 03 00 04 */	lwz r0, 4(r3)
/* 80339028 003025E8  88 C3 00 01 */	lbz r6, 1(r3)
/* 8033902C 003025EC  39 07 00 01 */	addi r8, r7, 1
/* 80339030 003025F0  38 E6 00 01 */	addi r7, r6, 1
/* 80339034 003025F4  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80339038 003025F8  7D 65 4B 96 */	divwu r11, r5, r9
/* 8033903C 003025FC  7D 2B 49 D6 */	mullw r9, r11, r9
/* 80339040 00302600  7F C9 28 50 */	subf r30, r9, r5
/* 80339044 00302604  7D 5E FB 96 */	divwu r10, r30, r31
/* 80339048 00302608  7D 2A F9 D6 */	mullw r9, r10, r31
/* 8033904C 0030260C  7C 0B 01 D6 */	mullw r0, r11, r0
/* 80339050 00302610  7D 29 F0 50 */	subf r9, r9, r30
/* 80339054 00302614  7D 09 41 D6 */	mullw r8, r9, r8
/* 80339058 00302618  7C 06 02 14 */	add r0, r6, r0
/* 8033905C 0030261C  90 04 00 00 */	stw r0, 0(r4)
/* 80339060 00302620  80 CC 00 0C */	lwz r6, 0xc(r12)
/* 80339064 00302624  7D 2A 39 D6 */	mullw r9, r10, r7
/* 80339068 00302628  48 00 00 3C */	b .L_803390A4
/* 8033906C 0030262C  60 00 00 00 */	nop 
.L_80339070:
/* 80339070 00302630  A0 E6 00 00 */	lhz r7, 0(r6)
/* 80339074 00302634  7C 07 28 40 */	cmplw r7, r5
/* 80339078 00302638  41 81 00 28 */	bgt .L_803390A0
/* 8033907C 0030263C  A0 06 00 02 */	lhz r0, 2(r6)
/* 80339080 00302640  7C 05 00 40 */	cmplw r5, r0
/* 80339084 00302644  41 81 00 1C */	bgt .L_803390A0
/* 80339088 00302648  7C A7 28 50 */	subf r5, r7, r5
/* 8033908C 0030264C  54 A0 10 3A */	slwi r0, r5, 2
/* 80339090 00302650  7C 05 00 50 */	subf r0, r5, r0
/* 80339094 00302654  7C A6 02 14 */	add r5, r6, r0
/* 80339098 00302658  38 E5 00 08 */	addi r7, r5, 8
/* 8033909C 0030265C  48 00 00 14 */	b .L_803390B0
.L_803390A0:
/* 803390A0 00302660  80 C6 00 04 */	lwz r6, 4(r6)
.L_803390A4:
/* 803390A4 00302664  2C 06 00 00 */	cmpwi r6, 0
/* 803390A8 00302668  40 82 FF C8 */	bne .L_80339070
/* 803390AC 0030266C  38 EC 00 04 */	addi r7, r12, 4
.L_803390B0:
/* 803390B0 00302670  88 07 00 00 */	lbz r0, 0(r7)
/* 803390B4 00302674  38 A8 00 01 */	addi r5, r8, 1
/* 803390B8 00302678  98 04 00 04 */	stb r0, 4(r4)
/* 803390BC 0030267C  38 09 00 01 */	addi r0, r9, 1
/* 803390C0 00302680  88 C7 00 01 */	lbz r6, 1(r7)
/* 803390C4 00302684  98 C4 00 05 */	stb r6, 5(r4)
/* 803390C8 00302688  88 C7 00 02 */	lbz r6, 2(r7)
/* 803390CC 0030268C  98 C4 00 06 */	stb r6, 6(r4)
/* 803390D0 00302690  88 C3 00 01 */	lbz r6, 1(r3)
/* 803390D4 00302694  98 C4 00 07 */	stb r6, 7(r4)
/* 803390D8 00302698  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 803390DC 0030269C  90 C4 00 08 */	stw r6, 8(r4)
/* 803390E0 003026A0  A0 C3 00 10 */	lhz r6, 0x10(r3)
/* 803390E4 003026A4  B0 C4 00 0C */	sth r6, 0xc(r4)
/* 803390E8 003026A8  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 803390EC 003026AC  B0 64 00 0E */	sth r3, 0xe(r4)
/* 803390F0 003026B0  B0 A4 00 10 */	sth r5, 0x10(r4)
/* 803390F4 003026B4  B0 04 00 12 */	sth r0, 0x12(r4)
/* 803390F8 003026B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803390FC 003026BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80339100 003026C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80339104 003026C4  4E 80 00 20 */	blr 

.section .data, "wa"  # 0x805281E0 - 0x80573C60


.global lbl_8054ECA0
lbl_8054ECA0:
	# ROM: 0x54ADA0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336970
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_803369F0
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A30
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A10


.global __vt__8054ECD0
__vt__8054ECD0:
	.4byte lbl_8054ED50
	.4byte 0
	.4byte func_80338800
	.4byte func_80338B60
	.4byte func_80338B70
	.4byte func_80338B80
	.4byte func_80338B90
	.4byte func_80338BB0
	.4byte func_80338BD0
	.4byte func_80338BE0
	.4byte func_80338BF0
	.4byte func_80338C00
	.4byte func_80338C10
	.4byte func_80338C20
	.4byte func_80338C30
	.4byte func_80338C50
	.4byte func_80338C70
	.4byte func_80338D10
	.4byte func_80338D20
	.4byte func_80338D70
	.4byte func_80338E70
	.4byte func_80338F20

#dol offset: 0x54ae28
.global lbl_8054ED28
lbl_8054ED28:
	.asciz "nw4hbm::ut::ResFont"

.global lbl_8054ED3C
lbl_8054ED3C:
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte lbl_8054ED88
	.4byte 0
	.4byte 0

.global lbl_8054ED50
lbl_8054ED50:
	.4byte lbl_8054ED28
	.4byte lbl_8054ED3C

.global lbl_8054ED58
lbl_8054ED58:
	.asciz "nw4hbm::ut::detail::ResFontBase"

.global lbl_8054ED78
lbl_8054ED78:
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte 0
	.4byte 0

.global lbl_8054ED88
lbl_8054ED88:
	.4byte lbl_8054ED58
	.4byte lbl_8054ED78

.global lbl_8054ED90
lbl_8054ED90:
	.asciz "nw4hbm::ut::Font"
	.balign 4
	.4byte 0

.global lbl_8054EDA8
lbl_8054EDA8:
	.4byte lbl_8054ED90
	.4byte 0

.global lbl_8054EDB0
lbl_8054EDB0:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_80336A10
	.4byte 0


.global lbl_8054EDC0
lbl_8054EDC0:
	# ROM: 0x54AEC0
	.4byte lbl_8054ED88
	.4byte 0
	.4byte func_80338B10
	.4byte func_80338B60
	.4byte func_80338B70
	.4byte func_80338B80
	.4byte func_80338B90
	.4byte func_80338BB0
	.4byte func_80338BD0
	.4byte func_80338BE0
	.4byte func_80338BF0
	.4byte func_80338C00
	.4byte func_80338C10
	.4byte func_80338C20
	.4byte func_80338C30
	.4byte func_80338C50
	.4byte func_80338C70
	.4byte func_80338D10
	.4byte func_80338D20
	.4byte func_80338D70
	.4byte func_80338E70
	.4byte func_80338F20


.global __vt__8054EE18
__vt__8054EE18:
	.4byte lbl_8054EDA8
	.4byte 0
	.4byte func_80333F60
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0
	.4byte 0