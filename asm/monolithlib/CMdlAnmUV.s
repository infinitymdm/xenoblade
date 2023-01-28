.include "macros.inc"
.file "monolithlib/CMdlAnmUV.o"

# 0x80020CF8 - 0x80020D10
.section extab, "a"
.balign 4

.obj "@etb_80020CF8", local
.hidden "@etb_80020CF8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020CF8"

.obj "@etb_80020D00", local
.hidden "@etb_80020D00"
	.4byte 0x90080000
	.4byte 0x00000000
.endobj "@etb_80020D00"

.obj "@etb_80020D08", local
.hidden "@etb_80020D08"
	.4byte 0x30CA0000
	.4byte 0x00000000
.endobj "@etb_80020D08"

# 0x80038E34 - 0x80038E58
.section extabindex, "a"
.balign 4

.obj "@eti_80038E34", local
.hidden "@eti_80038E34"
	.4byte fn_804E6C38
	.4byte 0x00000040
	.4byte "@etb_80020CF8"
.endobj "@eti_80038E34"

.obj "@eti_80038E40", local
.hidden "@eti_80038E40"
	.4byte fn_804E6C80
	.4byte 0x00000650
	.4byte "@etb_80020D00"
.endobj "@eti_80038E40"

.obj "@eti_80038E4C", local
.hidden "@eti_80038E4C"
	.4byte fn_804E72D0
	.4byte 0x00000274
	.4byte "@etb_80020D08"
.endobj "@eti_80038E4C"

# 0x804E6C14 - 0x804E7544
.text
.balign 4

.fn fn_804E6C14, local
/* 804E6C14 004B01D4  3C 80 80 57 */	lis r4, __vt__CMdlAnmUV@ha
/* 804E6C18 004B01D8  38 00 00 00 */	li r0, 0x0
/* 804E6C1C 004B01DC  38 84 3A 08 */	addi r4, r4, __vt__CMdlAnmUV@l
/* 804E6C20 004B01E0  90 83 00 00 */	stw r4, 0x0(r3)
/* 804E6C24 004B01E4  90 03 00 04 */	stw r0, 0x4(r3)
/* 804E6C28 004B01E8  90 03 00 38 */	stw r0, 0x38(r3)
/* 804E6C2C 004B01EC  98 03 00 3C */	stb r0, 0x3c(r3)
/* 804E6C30 004B01F0  98 03 00 3D */	stb r0, 0x3d(r3)
/* 804E6C34 004B01F4  4E 80 00 20 */	blr
.endfn fn_804E6C14

.fn fn_804E6C38, local
/* 804E6C38 004B01F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E6C3C 004B01FC  7C 08 02 A6 */	mflr r0
/* 804E6C40 004B0200  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6C44 004B0204  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6C48 004B0208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E6C4C 004B020C  7C 7F 1B 78 */	mr r31, r3
/* 804E6C50 004B0210  41 82 00 10 */	beq .L_804E6C60
/* 804E6C54 004B0214  2C 04 00 00 */	cmpwi r4, 0x0
/* 804E6C58 004B0218  40 81 00 08 */	ble .L_804E6C60
/* 804E6C5C 004B021C  4B F4 DF D1 */	bl __dl__FPv
.L_804E6C60:
/* 804E6C60 004B0220  7F E3 FB 78 */	mr r3, r31
/* 804E6C64 004B0224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E6C68 004B0228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E6C6C 004B022C  7C 08 03 A6 */	mtlr r0
/* 804E6C70 004B0230  38 21 00 10 */	addi r1, r1, 0x10
/* 804E6C74 004B0234  4E 80 00 20 */	blr
.endfn fn_804E6C38

.fn fn_804E6C78, local
/* 804E6C78 004B0238  80 6D A4 0C */	lwz r3, lbl_8066658C@sda21(r13)
/* 804E6C7C 004B023C  4E 80 00 20 */	blr
.endfn fn_804E6C78

.fn fn_804E6C80, local
/* 804E6C80 004B0240  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804E6C84 004B0244  7C 08 02 A6 */	mflr r0
/* 804E6C88 004B0248  90 01 00 84 */	stw r0, 0x84(r1)
/* 804E6C8C 004B024C  BD C1 00 38 */	stmw r14, 0x38(r1)
/* 804E6C90 004B0250  7C 90 23 78 */	mr r16, r4
/* 804E6C94 004B0254  7C 6F 1B 78 */	mr r15, r3
/* 804E6C98 004B0258  90 83 00 04 */	stw r4, 0x4(r3)
/* 804E6C9C 004B025C  7E 03 83 78 */	mr r3, r16
/* 804E6CA0 004B0260  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6CA4 004B0264  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6CA8 004B0268  7D 89 03 A6 */	mtctr r12
/* 804E6CAC 004B026C  4E 80 04 21 */	bctrl
/* 804E6CB0 004B0270  4B DD 29 09 */	bl strlen
/* 804E6CB4 004B0274  28 03 00 08 */	cmplwi r3, 0x8
/* 804E6CB8 004B0278  40 82 01 98 */	bne .L_804E6E50
/* 804E6CBC 004B027C  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6CC0 004B0280  7E 03 83 78 */	mr r3, r16
/* 804E6CC4 004B0284  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6CC8 004B0288  7D 89 03 A6 */	mtctr r12
/* 804E6CCC 004B028C  4E 80 04 21 */	bctrl
/* 804E6CD0 004B0290  88 03 00 00 */	lbz r0, 0x0(r3)
/* 804E6CD4 004B0294  2C 00 00 70 */	cmpwi r0, 0x70
/* 804E6CD8 004B0298  40 82 00 70 */	bne .L_804E6D48
/* 804E6CDC 004B029C  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6CE0 004B02A0  7E 03 83 78 */	mr r3, r16
/* 804E6CE4 004B02A4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6CE8 004B02A8  7D 89 03 A6 */	mtctr r12
/* 804E6CEC 004B02AC  4E 80 04 21 */	bctrl
/* 804E6CF0 004B02B0  88 03 00 01 */	lbz r0, 0x1(r3)
/* 804E6CF4 004B02B4  2C 00 00 63 */	cmpwi r0, 0x63
/* 804E6CF8 004B02B8  40 82 00 50 */	bne .L_804E6D48
/* 804E6CFC 004B02BC  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6D00 004B02C0  7E 03 83 78 */	mr r3, r16
/* 804E6D04 004B02C4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6D08 004B02C8  7D 89 03 A6 */	mtctr r12
/* 804E6D0C 004B02CC  4E 80 04 21 */	bctrl
/* 804E6D10 004B02D0  88 03 00 02 */	lbz r0, 0x2(r3)
/* 804E6D14 004B02D4  2C 00 00 30 */	cmpwi r0, 0x30
/* 804E6D18 004B02D8  40 82 00 30 */	bne .L_804E6D48
/* 804E6D1C 004B02DC  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6D20 004B02E0  7E 03 83 78 */	mr r3, r16
/* 804E6D24 004B02E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6D28 004B02E8  7D 89 03 A6 */	mtctr r12
/* 804E6D2C 004B02EC  4E 80 04 21 */	bctrl
/* 804E6D30 004B02F0  88 03 00 03 */	lbz r0, 0x3(r3)
/* 804E6D34 004B02F4  2C 00 00 36 */	cmpwi r0, 0x36
/* 804E6D38 004B02F8  40 82 00 10 */	bne .L_804E6D48
/* 804E6D3C 004B02FC  38 00 00 01 */	li r0, 0x1
/* 804E6D40 004B0300  98 0F 00 3D */	stb r0, 0x3d(r15)
/* 804E6D44 004B0304  48 00 01 0C */	b .L_804E6E50
.L_804E6D48:
/* 804E6D48 004B0308  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6D4C 004B030C  7E 03 83 78 */	mr r3, r16
/* 804E6D50 004B0310  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6D54 004B0314  7D 89 03 A6 */	mtctr r12
/* 804E6D58 004B0318  4E 80 04 21 */	bctrl
/* 804E6D5C 004B031C  88 03 00 00 */	lbz r0, 0x0(r3)
/* 804E6D60 004B0320  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804E6D64 004B0324  40 82 00 EC */	bne .L_804E6E50
/* 804E6D68 004B0328  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6D6C 004B032C  7E 03 83 78 */	mr r3, r16
/* 804E6D70 004B0330  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6D74 004B0334  7D 89 03 A6 */	mtctr r12
/* 804E6D78 004B0338  4E 80 04 21 */	bctrl
/* 804E6D7C 004B033C  88 03 00 01 */	lbz r0, 0x1(r3)
/* 804E6D80 004B0340  2C 00 00 70 */	cmpwi r0, 0x70
/* 804E6D84 004B0344  40 82 00 CC */	bne .L_804E6E50
/* 804E6D88 004B0348  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6D8C 004B034C  7E 03 83 78 */	mr r3, r16
/* 804E6D90 004B0350  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6D94 004B0354  7D 89 03 A6 */	mtctr r12
/* 804E6D98 004B0358  4E 80 04 21 */	bctrl
/* 804E6D9C 004B035C  88 03 00 02 */	lbz r0, 0x2(r3)
/* 804E6DA0 004B0360  2C 00 00 37 */	cmpwi r0, 0x37
/* 804E6DA4 004B0364  40 82 00 AC */	bne .L_804E6E50
/* 804E6DA8 004B0368  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6DAC 004B036C  7E 03 83 78 */	mr r3, r16
/* 804E6DB0 004B0370  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6DB4 004B0374  7D 89 03 A6 */	mtctr r12
/* 804E6DB8 004B0378  4E 80 04 21 */	bctrl
/* 804E6DBC 004B037C  88 03 00 03 */	lbz r0, 0x3(r3)
/* 804E6DC0 004B0380  2C 00 00 35 */	cmpwi r0, 0x35
/* 804E6DC4 004B0384  40 82 00 8C */	bne .L_804E6E50
/* 804E6DC8 004B0388  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6DCC 004B038C  7E 03 83 78 */	mr r3, r16
/* 804E6DD0 004B0390  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6DD4 004B0394  7D 89 03 A6 */	mtctr r12
/* 804E6DD8 004B0398  4E 80 04 21 */	bctrl
/* 804E6DDC 004B039C  88 03 00 04 */	lbz r0, 0x4(r3)
/* 804E6DE0 004B03A0  2C 00 00 30 */	cmpwi r0, 0x30
/* 804E6DE4 004B03A4  40 82 00 6C */	bne .L_804E6E50
/* 804E6DE8 004B03A8  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6DEC 004B03AC  7E 03 83 78 */	mr r3, r16
/* 804E6DF0 004B03B0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6DF4 004B03B4  7D 89 03 A6 */	mtctr r12
/* 804E6DF8 004B03B8  4E 80 04 21 */	bctrl
/* 804E6DFC 004B03BC  88 03 00 05 */	lbz r0, 0x5(r3)
/* 804E6E00 004B03C0  2C 00 00 31 */	cmpwi r0, 0x31
/* 804E6E04 004B03C4  40 82 00 4C */	bne .L_804E6E50
/* 804E6E08 004B03C8  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6E0C 004B03CC  7E 03 83 78 */	mr r3, r16
/* 804E6E10 004B03D0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6E14 004B03D4  7D 89 03 A6 */	mtctr r12
/* 804E6E18 004B03D8  4E 80 04 21 */	bctrl
/* 804E6E1C 004B03DC  88 03 00 06 */	lbz r0, 0x6(r3)
/* 804E6E20 004B03E0  2C 00 00 30 */	cmpwi r0, 0x30
/* 804E6E24 004B03E4  40 82 00 2C */	bne .L_804E6E50
/* 804E6E28 004B03E8  81 90 00 00 */	lwz r12, 0x0(r16)
/* 804E6E2C 004B03EC  7E 03 83 78 */	mr r3, r16
/* 804E6E30 004B03F0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804E6E34 004B03F4  7D 89 03 A6 */	mtctr r12
/* 804E6E38 004B03F8  4E 80 04 21 */	bctrl
/* 804E6E3C 004B03FC  88 03 00 07 */	lbz r0, 0x7(r3)
/* 804E6E40 004B0400  2C 00 00 31 */	cmpwi r0, 0x31
/* 804E6E44 004B0404  40 82 00 0C */	bne .L_804E6E50
/* 804E6E48 004B0408  38 00 00 01 */	li r0, 0x1
/* 804E6E4C 004B040C  98 0F 00 3D */	stb r0, 0x3d(r15)
.L_804E6E50:
/* 804E6E50 004B0410  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E6E54 004B0414  38 61 00 1C */	addi r3, r1, 0x1c
/* 804E6E58 004B0418  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E6E5C 004B041C  80 8D A4 08 */	lwz r4, lbl_80666588@sda21(r13)
/* 804E6E60 004B0420  4B EF 27 B9 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFPCc
/* 804E6E64 004B0424  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6E68 004B0428  7C 6E 1B 78 */	mr r14, r3
/* 804E6E6C 004B042C  41 82 01 14 */	beq .L_804E6F80
/* 804E6E70 004B0430  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E6E74 004B0434  38 61 00 18 */	addi r3, r1, 0x18
/* 804E6E78 004B0438  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E6E7C 004B043C  80 8D A4 0C */	lwz r4, lbl_8066658C@sda21(r13)
/* 804E6E80 004B0440  4B EF 2C 45 */	bl GetResMat__Q34nw4r3g3d6ResMdlCFPCc
/* 804E6E84 004B0444  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6E88 004B0448  7C 71 1B 78 */	mr r17, r3
/* 804E6E8C 004B044C  41 82 00 F4 */	beq .L_804E6F80
/* 804E6E90 004B0450  2C 0E 00 00 */	cmpwi r14, 0x0
/* 804E6E94 004B0454  40 82 00 20 */	bne .L_804E6EB4
/* 804E6E98 004B0458  3C 60 80 57 */	lis r3, lbl_80571A10@ha
/* 804E6E9C 004B045C  3C A0 80 57 */	lis r5, lbl_805719F0@ha
/* 804E6EA0 004B0460  38 63 1A 10 */	addi r3, r3, lbl_80571A10@l
/* 804E6EA4 004B0464  38 80 00 38 */	li r4, 0x38
/* 804E6EA8 004B0468  38 A5 19 F0 */	addi r5, r5, lbl_805719F0@l
/* 804E6EAC 004B046C  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E6EB0 004B0470  4B EF 06 D5 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E6EB4:
/* 804E6EB4 004B0474  2C 0E 00 00 */	cmpwi r14, 0x0
/* 804E6EB8 004B0478  41 82 00 0C */	beq .L_804E6EC4
/* 804E6EBC 004B047C  80 8E 00 0C */	lwz r4, 0xc(r14)
/* 804E6EC0 004B0480  48 00 00 08 */	b .L_804E6EC8
.L_804E6EC4:
/* 804E6EC4 004B0484  38 80 00 00 */	li r4, 0x0
.L_804E6EC8:
/* 804E6EC8 004B0488  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E6ECC 004B048C  2C 11 00 00 */	cmpwi r17, 0x0
/* 804E6ED0 004B0490  54 00 08 3C */	slwi r0, r0, 1
/* 804E6ED4 004B0494  7C 6F 02 14 */	add r3, r15, r0
/* 804E6ED8 004B0498  B0 83 00 08 */	sth r4, 0x8(r3)
/* 804E6EDC 004B049C  40 82 00 28 */	bne .L_804E6F04
/* 804E6EE0 004B04A0  3C 60 80 57 */	lis r3, lbl_805718B0@ha
/* 804E6EE4 004B04A4  3C A0 80 57 */	lis r5, lbl_80571894@ha
/* 804E6EE8 004B04A8  38 63 18 B0 */	addi r3, r3, lbl_805718B0@l
/* 804E6EEC 004B04AC  38 80 02 6D */	li r4, 0x26d
/* 804E6EF0 004B04B0  38 A5 18 94 */	addi r5, r5, lbl_80571894@l
/* 804E6EF4 004B04B4  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E6EF8 004B04B8  38 ED A4 18 */	addi r7, r13, lbl_80666598@sda21
/* 804E6EFC 004B04BC  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E6F00 004B04C0  4B EF 06 85 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E6F04:
/* 804E6F04 004B04C4  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E6F08 004B04C8  38 80 FF FF */	li r4, -0x1
/* 804E6F0C 004B04CC  80 B1 00 0C */	lwz r5, 0xc(r17)
/* 804E6F10 004B04D0  2C 0E 00 00 */	cmpwi r14, 0x0
/* 804E6F14 004B04D4  54 03 08 3C */	slwi r3, r0, 1
/* 804E6F18 004B04D8  38 00 00 01 */	li r0, 0x1
/* 804E6F1C 004B04DC  7C 6F 1A 14 */	add r3, r15, r3
/* 804E6F20 004B04E0  B0 A3 00 18 */	sth r5, 0x18(r3)
/* 804E6F24 004B04E4  80 6F 00 38 */	lwz r3, 0x38(r15)
/* 804E6F28 004B04E8  54 63 08 3C */	slwi r3, r3, 1
/* 804E6F2C 004B04EC  7C 6F 1A 14 */	add r3, r15, r3
/* 804E6F30 004B04F0  B0 83 00 28 */	sth r4, 0x28(r3)
/* 804E6F34 004B04F4  80 6F 00 38 */	lwz r3, 0x38(r15)
/* 804E6F38 004B04F8  98 0F 00 3C */	stb r0, 0x3c(r15)
/* 804E6F3C 004B04FC  38 03 00 01 */	addi r0, r3, 0x1
/* 804E6F40 004B0500  90 0F 00 38 */	stw r0, 0x38(r15)
/* 804E6F44 004B0504  40 82 00 20 */	bne .L_804E6F64
/* 804E6F48 004B0508  3C 60 80 57 */	lis r3, lbl_80571A10@ha
/* 804E6F4C 004B050C  3C A0 80 57 */	lis r5, lbl_805719F0@ha
/* 804E6F50 004B0510  38 63 1A 10 */	addi r3, r3, lbl_80571A10@l
/* 804E6F54 004B0514  38 80 00 38 */	li r4, 0x38
/* 804E6F58 004B0518  38 A5 19 F0 */	addi r5, r5, lbl_805719F0@l
/* 804E6F5C 004B051C  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E6F60 004B0520  4B EF 06 25 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E6F64:
/* 804E6F64 004B0524  2C 0E 00 00 */	cmpwi r14, 0x0
/* 804E6F68 004B0528  7E 03 83 78 */	mr r3, r16
/* 804E6F6C 004B052C  41 82 00 0C */	beq .L_804E6F78
/* 804E6F70 004B0530  80 8E 00 0C */	lwz r4, 0xc(r14)
/* 804E6F74 004B0534  48 00 00 08 */	b .L_804E6F7C
.L_804E6F78:
/* 804E6F78 004B0538  38 80 00 00 */	li r4, 0x0
.L_804E6F7C:
/* 804E6F7C 004B053C  4B FA 1F C9 */	bl fn_80488F44
.L_804E6F80:
/* 804E6F80 004B0540  80 6D A4 08 */	lwz r3, lbl_80666588@sda21(r13)
/* 804E6F84 004B0544  4B DD 26 35 */	bl strlen
/* 804E6F88 004B0548  3A 83 00 02 */	addi r20, r3, 0x2
/* 804E6F8C 004B054C  80 6D A4 0C */	lwz r3, lbl_8066658C@sda21(r13)
/* 804E6F90 004B0550  4B DD 26 29 */	bl strlen
/* 804E6F94 004B0554  38 00 00 00 */	li r0, 0x0
/* 804E6F98 004B0558  98 01 00 20 */	stb r0, 0x20(r1)
/* 804E6F9C 004B055C  3A 63 00 02 */	addi r19, r3, 0x2
/* 804E6FA0 004B0560  38 61 00 14 */	addi r3, r1, 0x14
/* 804E6FA4 004B0564  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E6FA8 004B0568  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E6FAC 004B056C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E6FB0 004B0570  4B EF 27 A5 */	bl GetResNodeNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 804E6FB4 004B0574  7C 77 1B 78 */	mr r23, r3
/* 804E6FB8 004B0578  3A 40 00 00 */	li r18, 0x0
/* 804E6FBC 004B057C  3F 80 80 57 */	lis r28, lbl_805718B0@ha
/* 804E6FC0 004B0580  3F A0 80 57 */	lis r29, lbl_80571894@ha
/* 804E6FC4 004B0584  3F 20 80 57 */	lis r25, lbl_805719DC@ha
/* 804E6FC8 004B0588  3D C0 80 57 */	lis r14, lbl_805719C0@ha
/* 804E6FCC 004B058C  3F C0 80 57 */	lis r30, lbl_80571A10@ha
/* 804E6FD0 004B0590  3F E0 80 57 */	lis r31, lbl_805719F0@ha
/* 804E6FD4 004B0594  48 00 02 B8 */	b .L_804E728C
.L_804E6FD8:
/* 804E6FD8 004B0598  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E6FDC 004B059C  7E 44 93 78 */	mr r4, r18
/* 804E6FE0 004B05A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E6FE4 004B05A4  38 61 00 10 */	addi r3, r1, 0x10
/* 804E6FE8 004B05A8  4B EF 27 19 */	bl GetResNode__Q34nw4r3g3d6ResMdlCFUl
/* 804E6FEC 004B05AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E6FF0 004B05B0  7C 78 1B 78 */	mr r24, r3
/* 804E6FF4 004B05B4  40 82 00 20 */	bne .L_804E7014
/* 804E6FF8 004B05B8  38 79 19 DC */	addi r3, r25, lbl_805719DC@l
/* 804E6FFC 004B05BC  38 AE 19 C0 */	addi r5, r14, lbl_805719C0@l
/* 804E7000 004B05C0  38 80 00 2C */	li r4, 0x2c
/* 804E7004 004B05C4  38 CD A0 B0 */	addi r6, r13, lbl_80666230@sda21
/* 804E7008 004B05C8  38 ED A4 1C */	addi r7, r13, lbl_8066659C@sda21
/* 804E700C 004B05CC  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E7010 004B05D0  4B EF 05 75 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E7014:
/* 804E7014 004B05D4  80 18 00 08 */	lwz r0, 0x8(r24)
/* 804E7018 004B05D8  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E701C 004B05DC  41 82 00 0C */	beq .L_804E7028
/* 804E7020 004B05E0  7E 38 02 14 */	add r17, r24, r0
/* 804E7024 004B05E4  48 00 00 08 */	b .L_804E702C
.L_804E7028:
/* 804E7028 004B05E8  3A 20 00 00 */	li r17, 0x0
.L_804E702C:
/* 804E702C 004B05EC  80 8D A4 08 */	lwz r4, lbl_80666588@sda21(r13)
/* 804E7030 004B05F0  7E 23 8B 78 */	mr r3, r17
/* 804E7034 004B05F4  4B DD B9 8D */	bl strstr
/* 804E7038 004B05F8  7C 11 18 40 */	cmplw r17, r3
/* 804E703C 004B05FC  40 82 02 4C */	bne .L_804E7288
/* 804E7040 004B0600  7E 23 8B 78 */	mr r3, r17
/* 804E7044 004B0604  4B DD 25 75 */	bl strlen
/* 804E7048 004B0608  7C 03 A0 40 */	cmplw r3, r20
/* 804E704C 004B060C  41 80 02 3C */	blt .L_804E7288
/* 804E7050 004B0610  7E B4 8A 14 */	add r21, r20, r17
/* 804E7054 004B0614  88 75 FF FE */	lbz r3, -0x2(r21)
/* 804E7058 004B0618  38 03 FF D0 */	addi r0, r3, -0x30
/* 804E705C 004B061C  54 00 06 3E */	clrlwi r0, r0, 24
/* 804E7060 004B0620  28 00 00 09 */	cmplwi r0, 0x9
/* 804E7064 004B0624  41 81 02 24 */	bgt .L_804E7288
/* 804E7068 004B0628  88 95 FF FF */	lbz r4, -0x1(r21)
/* 804E706C 004B062C  38 04 FF D0 */	addi r0, r4, -0x30
/* 804E7070 004B0630  54 00 06 3E */	clrlwi r0, r0, 24
/* 804E7074 004B0634  28 00 00 09 */	cmplwi r0, 0x9
/* 804E7078 004B0638  41 81 02 10 */	bgt .L_804E7288
/* 804E707C 004B063C  7C 66 07 74 */	extsb r6, r3
/* 804E7080 004B0640  7C 87 07 74 */	extsb r7, r4
/* 804E7084 004B0644  3C 80 80 53 */	lis r4, lbl_805280D4@ha
/* 804E7088 004B0648  80 AD A4 0C */	lwz r5, lbl_8066658C@sda21(r13)
/* 804E708C 004B064C  38 61 00 20 */	addi r3, r1, 0x20
/* 804E7090 004B0650  38 C6 FF D0 */	addi r6, r6, -0x30
/* 804E7094 004B0654  38 84 80 D4 */	addi r4, r4, lbl_805280D4@l
/* 804E7098 004B0658  38 E7 FF D0 */	addi r7, r7, -0x30
/* 804E709C 004B065C  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E70A0 004B0660  4B B7 12 AD */	bl fn_8005834C
/* 804E70A4 004B0664  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E70A8 004B0668  38 61 00 0C */	addi r3, r1, 0xc
/* 804E70AC 004B066C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E70B0 004B0670  4B EF 2B 51 */	bl GetResMatNumEntries__Q34nw4r3g3d6ResMdlCFv
/* 804E70B4 004B0674  7C 7A 1B 78 */	mr r26, r3
/* 804E70B8 004B0678  3A 20 00 00 */	li r17, 0x0
/* 804E70BC 004B067C  48 00 01 C4 */	b .L_804E7280
.L_804E70C0:
/* 804E70C0 004B0680  80 10 14 6C */	lwz r0, 0x146c(r16)
/* 804E70C4 004B0684  7E 24 8B 78 */	mr r4, r17
/* 804E70C8 004B0688  90 01 00 08 */	stw r0, 0x8(r1)
/* 804E70CC 004B068C  38 61 00 08 */	addi r3, r1, 0x8
/* 804E70D0 004B0690  4B EF 2A DD */	bl GetResMat__Q34nw4r3g3d6ResMdlCFUl
/* 804E70D4 004B0694  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E70D8 004B0698  7C 7B 1B 78 */	mr r27, r3
/* 804E70DC 004B069C  40 82 00 20 */	bne .L_804E70FC
/* 804E70E0 004B06A0  38 7C 18 B0 */	addi r3, r28, lbl_805718B0@l
/* 804E70E4 004B06A4  38 BD 18 94 */	addi r5, r29, lbl_80571894@l
/* 804E70E8 004B06A8  38 80 02 6D */	li r4, 0x26d
/* 804E70EC 004B06AC  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E70F0 004B06B0  38 ED A4 18 */	addi r7, r13, lbl_80666598@sda21
/* 804E70F4 004B06B4  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E70F8 004B06B8  4B EF 04 8D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E70FC:
/* 804E70FC 004B06BC  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 804E7100 004B06C0  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E7104 004B06C4  41 82 00 0C */	beq .L_804E7110
/* 804E7108 004B06C8  7E DB 02 14 */	add r22, r27, r0
/* 804E710C 004B06CC  48 00 00 08 */	b .L_804E7114
.L_804E7110:
/* 804E7110 004B06D0  3A C0 00 00 */	li r22, 0x0
.L_804E7114:
/* 804E7114 004B06D4  80 8D A4 0C */	lwz r4, lbl_8066658C@sda21(r13)
/* 804E7118 004B06D8  7E C3 B3 78 */	mr r3, r22
/* 804E711C 004B06DC  4B DD B8 A5 */	bl strstr
/* 804E7120 004B06E0  7C 16 18 40 */	cmplw r22, r3
/* 804E7124 004B06E4  40 82 01 58 */	bne .L_804E727C
/* 804E7128 004B06E8  7E C3 B3 78 */	mr r3, r22
/* 804E712C 004B06EC  4B DD 24 8D */	bl strlen
/* 804E7130 004B06F0  7C 03 98 40 */	cmplw r3, r19
/* 804E7134 004B06F4  41 80 01 48 */	blt .L_804E727C
/* 804E7138 004B06F8  7C 74 B2 14 */	add r3, r20, r22
/* 804E713C 004B06FC  88 83 FF FE */	lbz r4, -0x2(r3)
/* 804E7140 004B0700  38 04 FF D0 */	addi r0, r4, -0x30
/* 804E7144 004B0704  54 00 06 3E */	clrlwi r0, r0, 24
/* 804E7148 004B0708  28 00 00 09 */	cmplwi r0, 0x9
/* 804E714C 004B070C  41 81 01 30 */	bgt .L_804E727C
/* 804E7150 004B0710  88 A3 FF FF */	lbz r5, -0x1(r3)
/* 804E7154 004B0714  38 05 FF D0 */	addi r0, r5, -0x30
/* 804E7158 004B0718  54 00 06 3E */	clrlwi r0, r0, 24
/* 804E715C 004B071C  28 00 00 09 */	cmplwi r0, 0x9
/* 804E7160 004B0720  41 81 01 1C */	bgt .L_804E727C
/* 804E7164 004B0724  88 75 FF FE */	lbz r3, -0x2(r21)
/* 804E7168 004B0728  7C 80 07 74 */	extsb r0, r4
/* 804E716C 004B072C  7C 63 07 74 */	extsb r3, r3
/* 804E7170 004B0730  7C 03 00 00 */	cmpw r3, r0
/* 804E7174 004B0734  40 82 01 08 */	bne .L_804E727C
/* 804E7178 004B0738  88 75 FF FF */	lbz r3, -0x1(r21)
/* 804E717C 004B073C  7C A0 07 74 */	extsb r0, r5
/* 804E7180 004B0740  7C 63 07 74 */	extsb r3, r3
/* 804E7184 004B0744  7C 03 00 00 */	cmpw r3, r0
/* 804E7188 004B0748  40 82 00 F4 */	bne .L_804E727C
/* 804E718C 004B074C  2C 18 00 00 */	cmpwi r24, 0x0
/* 804E7190 004B0750  40 82 00 18 */	bne .L_804E71A8
/* 804E7194 004B0754  38 7E 1A 10 */	addi r3, r30, lbl_80571A10@l
/* 804E7198 004B0758  38 BF 19 F0 */	addi r5, r31, lbl_805719F0@l
/* 804E719C 004B075C  38 80 00 38 */	li r4, 0x38
/* 804E71A0 004B0760  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E71A4 004B0764  4B EF 03 E1 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E71A8:
/* 804E71A8 004B0768  2C 18 00 00 */	cmpwi r24, 0x0
/* 804E71AC 004B076C  41 82 00 0C */	beq .L_804E71B8
/* 804E71B0 004B0770  80 98 00 0C */	lwz r4, 0xc(r24)
/* 804E71B4 004B0774  48 00 00 08 */	b .L_804E71BC
.L_804E71B8:
/* 804E71B8 004B0778  38 80 00 00 */	li r4, 0x0
.L_804E71BC:
/* 804E71BC 004B077C  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E71C0 004B0780  2C 1B 00 00 */	cmpwi r27, 0x0
/* 804E71C4 004B0784  54 00 08 3C */	slwi r0, r0, 1
/* 804E71C8 004B0788  7C 6F 02 14 */	add r3, r15, r0
/* 804E71CC 004B078C  B0 83 00 08 */	sth r4, 0x8(r3)
/* 804E71D0 004B0790  40 82 00 20 */	bne .L_804E71F0
/* 804E71D4 004B0794  38 7C 18 B0 */	addi r3, r28, lbl_805718B0@l
/* 804E71D8 004B0798  38 BD 18 94 */	addi r5, r29, lbl_80571894@l
/* 804E71DC 004B079C  38 80 02 6D */	li r4, 0x26d
/* 804E71E0 004B07A0  38 CD A0 88 */	addi r6, r13, lbl_80666208@sda21
/* 804E71E4 004B07A4  38 ED A4 18 */	addi r7, r13, lbl_80666598@sda21
/* 804E71E8 004B07A8  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E71EC 004B07AC  4B EF 03 99 */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E71F0:
/* 804E71F0 004B07B0  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E71F4 004B07B4  2C 18 00 00 */	cmpwi r24, 0x0
/* 804E71F8 004B07B8  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 804E71FC 004B07BC  54 00 08 3C */	slwi r0, r0, 1
/* 804E7200 004B07C0  7C 6F 02 14 */	add r3, r15, r0
/* 804E7204 004B07C4  B0 83 00 18 */	sth r4, 0x18(r3)
/* 804E7208 004B07C8  88 15 FF FE */	lbz r0, -0x2(r21)
/* 804E720C 004B07CC  88 95 FF FF */	lbz r4, -0x1(r21)
/* 804E7210 004B07D0  7C 03 07 74 */	extsb r3, r0
/* 804E7214 004B07D4  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E7218 004B07D8  38 63 FF D0 */	addi r3, r3, -0x30
/* 804E721C 004B07DC  7C 85 07 74 */	extsb r5, r4
/* 804E7220 004B07E0  1C 83 00 0A */	mulli r4, r3, 0xa
/* 804E7224 004B07E4  54 00 08 3C */	slwi r0, r0, 1
/* 804E7228 004B07E8  7C 6F 02 14 */	add r3, r15, r0
/* 804E722C 004B07EC  7C 85 22 14 */	add r4, r5, r4
/* 804E7230 004B07F0  38 04 FF D0 */	addi r0, r4, -0x30
/* 804E7234 004B07F4  B0 03 00 28 */	sth r0, 0x28(r3)
/* 804E7238 004B07F8  80 6F 00 38 */	lwz r3, 0x38(r15)
/* 804E723C 004B07FC  38 03 00 01 */	addi r0, r3, 0x1
/* 804E7240 004B0800  90 0F 00 38 */	stw r0, 0x38(r15)
/* 804E7244 004B0804  40 82 00 18 */	bne .L_804E725C
/* 804E7248 004B0808  38 7E 1A 10 */	addi r3, r30, lbl_80571A10@l
/* 804E724C 004B080C  38 BF 19 F0 */	addi r5, r31, lbl_805719F0@l
/* 804E7250 004B0810  38 80 00 38 */	li r4, 0x38
/* 804E7254 004B0814  4C C6 31 82 */	crclr 4*cr1+eq
/* 804E7258 004B0818  4B EF 03 2D */	bl Panic__Q24nw4r2dbFPCciPCce
.L_804E725C:
/* 804E725C 004B081C  2C 18 00 00 */	cmpwi r24, 0x0
/* 804E7260 004B0820  7E 03 83 78 */	mr r3, r16
/* 804E7264 004B0824  41 82 00 0C */	beq .L_804E7270
/* 804E7268 004B0828  80 98 00 0C */	lwz r4, 0xc(r24)
/* 804E726C 004B082C  48 00 00 08 */	b .L_804E7274
.L_804E7270:
/* 804E7270 004B0830  38 80 00 00 */	li r4, 0x0
.L_804E7274:
/* 804E7274 004B0834  4B FA 1C D1 */	bl fn_80488F44
/* 804E7278 004B0838  48 00 00 10 */	b .L_804E7288
.L_804E727C:
/* 804E727C 004B083C  3A 31 00 01 */	addi r17, r17, 0x1
.L_804E7280:
/* 804E7280 004B0840  7C 11 D0 40 */	cmplw r17, r26
/* 804E7284 004B0844  41 80 FE 3C */	blt .L_804E70C0
.L_804E7288:
/* 804E7288 004B0848  3A 52 00 01 */	addi r18, r18, 0x1
.L_804E728C:
/* 804E728C 004B084C  7C 12 B8 40 */	cmplw r18, r23
/* 804E7290 004B0850  41 80 FD 48 */	blt .L_804E6FD8
/* 804E7294 004B0854  88 0F 00 3D */	lbz r0, 0x3d(r15)
/* 804E7298 004B0858  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E729C 004B085C  41 82 00 20 */	beq .L_804E72BC
/* 804E72A0 004B0860  80 0F 00 38 */	lwz r0, 0x38(r15)
/* 804E72A4 004B0864  2C 00 00 03 */	cmpwi r0, 0x3
/* 804E72A8 004B0868  41 80 00 14 */	blt .L_804E72BC
/* 804E72AC 004B086C  A0 6F 00 18 */	lhz r3, 0x18(r15)
/* 804E72B0 004B0870  A0 0F 00 1A */	lhz r0, 0x1a(r15)
/* 804E72B4 004B0874  B0 0F 00 18 */	sth r0, 0x18(r15)
/* 804E72B8 004B0878  B0 6F 00 1A */	sth r3, 0x1a(r15)
.L_804E72BC:
/* 804E72BC 004B087C  B9 C1 00 38 */	lmw r14, 0x38(r1)
/* 804E72C0 004B0880  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804E72C4 004B0884  7C 08 03 A6 */	mtlr r0
/* 804E72C8 004B0888  38 21 00 80 */	addi r1, r1, 0x80
/* 804E72CC 004B088C  4E 80 00 20 */	blr
.endfn fn_804E6C80

.fn fn_804E72D0, local
/* 804E72D0 004B0890  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 804E72D4 004B0894  7C 08 02 A6 */	mflr r0
/* 804E72D8 004B0898  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804E72DC 004B089C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804E72E0 004B08A0  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 804E72E4 004B08A4  F3 E1 00 C8 */	psq_st f31, 0xc8(r1), 0, qr0
/* 804E72E8 004B08A8  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 804E72EC 004B08AC  F3 C1 00 B8 */	psq_st f30, 0xb8(r1), 0, qr0
/* 804E72F0 004B08B0  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 804E72F4 004B08B4  F3 A1 00 A8 */	psq_st f29, 0xa8(r1), 0, qr0
/* 804E72F8 004B08B8  4B DD 2E 59 */	bl _savegpr_26
/* 804E72FC 004B08BC  7C 7A 1B 78 */	mr r26, r3
/* 804E7300 004B08C0  3B C0 00 00 */	li r30, 0x0
/* 804E7304 004B08C4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 804E7308 004B08C8  7C 9B 23 78 */	mr r27, r4
/* 804E730C 004B08CC  C3 A2 C6 88 */	lfs f29, epsilon__2mm@sda21(r2)
/* 804E7310 004B08D0  7C BC 2B 78 */	mr r28, r5
/* 804E7314 004B08D4  C3 C2 D7 78 */	lfs f30, lbl_8066DAF8@sda21(r2)
/* 804E7318 004B08D8  7F 5F D3 78 */	mr r31, r26
/* 804E731C 004B08DC  C3 E2 D7 7C */	lfs f31, lbl_8066DAFC@sda21(r2)
/* 804E7320 004B08E0  3B A0 00 00 */	li r29, 0x0
/* 804E7324 004B08E4  48 00 01 D8 */	b .L_804E74FC
.L_804E7328:
/* 804E7328 004B08E8  A0 1F 00 08 */	lhz r0, 0x8(r31)
/* 804E732C 004B08EC  7C 1B 00 40 */	cmplw r27, r0
/* 804E7330 004B08F0  40 82 01 C4 */	bne .L_804E74F4
/* 804E7334 004B08F4  28 1D 00 02 */	cmplwi r29, 0x2
/* 804E7338 004B08F8  40 82 00 20 */	bne .L_804E7358
/* 804E733C 004B08FC  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 804E7340 004B0900  81 83 00 00 */	lwz r12, 0x0(r3)
/* 804E7344 004B0904  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804E7348 004B0908  7D 89 03 A6 */	mtctr r12
/* 804E734C 004B090C  4E 80 04 21 */	bctrl
/* 804E7350 004B0910  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E7354 004B0914  40 82 01 A0 */	bne .L_804E74F4
.L_804E7358:
/* 804E7358 004B0918  7F 83 E3 78 */	mr r3, r28
/* 804E735C 004B091C  38 81 00 0C */	addi r4, r1, 0xc
/* 804E7360 004B0920  3B DE 00 01 */	addi r30, r30, 0x1
/* 804E7364 004B0924  4B EF 8C C1 */	bl GetTranslate__Q34nw4r3g3d12ChrAnmResultCFPQ34nw4r4math4VEC3
/* 804E7368 004B0928  28 1D 00 02 */	cmplwi r29, 0x2
/* 804E736C 004B092C  40 80 00 88 */	bge .L_804E73F4
/* 804E7370 004B0930  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E7374 004B0934  38 00 00 00 */	li r0, 0x0
/* 804E7378 004B0938  38 60 00 00 */	li r3, 0x0
/* 804E737C 004B093C  FC 00 02 10 */	fabs f0, f0
/* 804E7380 004B0940  FC 00 00 18 */	frsp f0, f0
/* 804E7384 004B0944  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804E7388 004B0948  4C 40 13 82 */	cror eq, lt, eq
/* 804E738C 004B094C  40 82 00 20 */	bne .L_804E73AC
/* 804E7390 004B0950  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E7394 004B0954  FC 00 02 10 */	fabs f0, f0
/* 804E7398 004B0958  FC 00 00 18 */	frsp f0, f0
/* 804E739C 004B095C  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804E73A0 004B0960  4C 40 13 82 */	cror eq, lt, eq
/* 804E73A4 004B0964  40 82 00 08 */	bne .L_804E73AC
/* 804E73A8 004B0968  38 60 00 01 */	li r3, 0x1
.L_804E73AC:
/* 804E73AC 004B096C  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E73B0 004B0970  41 82 00 20 */	beq .L_804E73D0
/* 804E73B4 004B0974  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E73B8 004B0978  FC 00 02 10 */	fabs f0, f0
/* 804E73BC 004B097C  FC 00 00 18 */	frsp f0, f0
/* 804E73C0 004B0980  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 804E73C4 004B0984  4C 40 13 82 */	cror eq, lt, eq
/* 804E73C8 004B0988  40 82 00 08 */	bne .L_804E73D0
/* 804E73CC 004B098C  38 00 00 01 */	li r0, 0x1
.L_804E73D0:
/* 804E73D0 004B0990  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E73D4 004B0994  41 82 00 20 */	beq .L_804E73F4
/* 804E73D8 004B0998  80 7A 00 04 */	lwz r3, 0x4(r26)
/* 804E73DC 004B099C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 804E73E0 004B09A0  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 804E73E4 004B09A4  7D 89 03 A6 */	mtctr r12
/* 804E73E8 004B09A8  4E 80 04 21 */	bctrl
/* 804E73EC 004B09AC  2C 03 00 01 */	cmpwi r3, 0x1
/* 804E73F0 004B09B0  40 82 01 04 */	bne .L_804E74F4
.L_804E73F4:
/* 804E73F4 004B09B4  80 9A 00 04 */	lwz r4, 0x4(r26)
/* 804E73F8 004B09B8  38 61 00 48 */	addi r3, r1, 0x48
/* 804E73FC 004B09BC  A0 BF 00 18 */	lhz r5, 0x18(r31)
/* 804E7400 004B09C0  80 84 14 7C */	lwz r4, 0x147c(r4)
/* 804E7404 004B09C4  4B F1 23 31 */	bl __ct__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFPQ34nw4r3g3d6ScnMdlUl
/* 804E7408 004B09C8  38 61 00 48 */	addi r3, r1, 0x48
/* 804E740C 004B09CC  38 80 00 00 */	li r4, 0x0
/* 804E7410 004B09D0  4B F1 20 F9 */	bl GetResTexSrt__Q44nw4r3g3d6ScnMdl15CopiedMatAccessFb
/* 804E7414 004B09D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 804E7418 004B09D8  90 61 00 08 */	stw r3, 0x8(r1)
/* 804E741C 004B09DC  41 82 00 D8 */	beq .L_804E74F4
/* 804E7420 004B09E0  88 1A 00 3C */	lbz r0, 0x3c(r26)
/* 804E7424 004B09E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E7428 004B09E8  41 82 00 0C */	beq .L_804E7434
/* 804E742C 004B09EC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 804E7430 004B09F0  41 82 00 10 */	beq .L_804E7440
.L_804E7434:
/* 804E7434 004B09F4  88 1A 00 3D */	lbz r0, 0x3d(r26)
/* 804E7438 004B09F8  2C 00 00 00 */	cmpwi r0, 0x0
/* 804E743C 004B09FC  41 82 00 48 */	beq .L_804E7484
.L_804E7440:
/* 804E7440 004B0A00  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804E7444 004B0A04  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E7448 004B0A08  FC 20 08 50 */	fneg f1, f1
/* 804E744C 004B0A0C  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 804E7450 004B0A10  FC 00 00 50 */	fneg f0, f0
/* 804E7454 004B0A14  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 804E7458 004B0A18  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804E745C 004B0A1C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E7460 004B0A20  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 804E7464 004B0A24  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 804E7468 004B0A28  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 804E746C 004B0A2C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804E7470 004B0A30  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 804E7474 004B0A34  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 804E7478 004B0A38  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 804E747C 004B0A3C  D3 E1 00 44 */	stfs f31, 0x44(r1)
/* 804E7480 004B0A40  48 00 00 44 */	b .L_804E74C4
.L_804E7484:
/* 804E7484 004B0A44  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804E7488 004B0A48  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E748C 004B0A4C  FC 20 08 50 */	fneg f1, f1
/* 804E7490 004B0A50  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 804E7494 004B0A54  FC 00 00 50 */	fneg f0, f0
/* 804E7498 004B0A58  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 804E749C 004B0A5C  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804E74A0 004B0A60  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E74A4 004B0A64  D3 E1 00 28 */	stfs f31, 0x28(r1)
/* 804E74A8 004B0A68  D3 C1 00 2C */	stfs f30, 0x2c(r1)
/* 804E74AC 004B0A6C  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 804E74B0 004B0A70  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804E74B4 004B0A74  D3 E1 00 38 */	stfs f31, 0x38(r1)
/* 804E74B8 004B0A78  D3 E1 00 3C */	stfs f31, 0x3c(r1)
/* 804E74BC 004B0A7C  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 804E74C0 004B0A80  D3 E1 00 44 */	stfs f31, 0x44(r1)
.L_804E74C4:
/* 804E74C4 004B0A84  38 61 00 08 */	addi r3, r1, 0x8
/* 804E74C8 004B0A88  38 A1 00 18 */	addi r5, r1, 0x18
/* 804E74CC 004B0A8C  38 80 00 00 */	li r4, 0x0
/* 804E74D0 004B0A90  4B EF 47 CD */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E74D4 004B0A94  38 61 00 08 */	addi r3, r1, 0x8
/* 804E74D8 004B0A98  38 A1 00 18 */	addi r5, r1, 0x18
/* 804E74DC 004B0A9C  38 80 00 01 */	li r4, 0x1
/* 804E74E0 004B0AA0  4B EF 47 BD */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
/* 804E74E4 004B0AA4  38 61 00 08 */	addi r3, r1, 0x8
/* 804E74E8 004B0AA8  38 A1 00 18 */	addi r5, r1, 0x18
/* 804E74EC 004B0AAC  38 80 00 02 */	li r4, 0x2
/* 804E74F0 004B0AB0  4B EF 47 AD */	bl SetEffectMtx__Q34nw4r3g3d9ResTexSrtFUlPCQ34nw4r4math5MTX34
.L_804E74F4:
/* 804E74F4 004B0AB4  3B FF 00 02 */	addi r31, r31, 0x2
/* 804E74F8 004B0AB8  3B BD 00 01 */	addi r29, r29, 0x1
.L_804E74FC:
/* 804E74FC 004B0ABC  80 1A 00 38 */	lwz r0, 0x38(r26)
/* 804E7500 004B0AC0  7C 1D 00 40 */	cmplw r29, r0
/* 804E7504 004B0AC4  41 80 FE 24 */	blt .L_804E7328
/* 804E7508 004B0AC8  7C 1E 00 D0 */	neg r0, r30
/* 804E750C 004B0ACC  E3 E1 00 C8 */	psq_l f31, 0xc8(r1), 0, qr0
/* 804E7510 004B0AD0  7C 00 F3 78 */	or r0, r0, r30
/* 804E7514 004B0AD4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 804E7518 004B0AD8  E3 C1 00 B8 */	psq_l f30, 0xb8(r1), 0, qr0
/* 804E751C 004B0ADC  54 03 0F FE */	srwi r3, r0, 31
/* 804E7520 004B0AE0  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 804E7524 004B0AE4  E3 A1 00 A8 */	psq_l f29, 0xa8(r1), 0, qr0
/* 804E7528 004B0AE8  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 804E752C 004B0AEC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804E7530 004B0AF0  4B DD 2C 6D */	bl _restgpr_26
/* 804E7534 004B0AF4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804E7538 004B0AF8  7C 08 03 A6 */	mtlr r0
/* 804E753C 004B0AFC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 804E7540 004B0B00  4E 80 00 20 */	blr
.endfn fn_804E72D0

# 0x805280C8 - 0x805280E0
.rodata
.balign 8

.obj CMdlAnmUV_typestr, global
	.4byte 0x434D646C
	.4byte 0x416E6D55
	.4byte 0x56000000
.sym lbl_805280D4, local
	.4byte 0x25732564
	.4byte 0x25640000
	.4byte 0x00000000

# 0x80573A08 - 0x80573A18
.data
.balign 8

.obj __vt__CMdlAnmUV, global
	.4byte __RTTI__CMdlAnmUV
	.4byte 0x00000000
	.4byte fn_804E6C38
	.4byte 0x00000000

# 0x80666588 - 0x806665A0
.section .sdata, "wa"
.balign 8
.sym lbl_80666588, local
	.4byte lbl_8066DAE8
.sym lbl_8066658C, local
	.4byte lbl_8066DAF0

.obj __RTTI__CMdlAnmUV, global
	.4byte CMdlAnmUV_typestr
	.4byte 0x00000000
.sym lbl_80666598, local
	.4byte 0x72656600
.sym lbl_8066659C, local
	.4byte 0x72656600

# 0x8066DAE8 - 0x8066DB00
.section .sdata2, "a"
.balign 8
.sym lbl_8066DAE8, local
	.4byte 0x4A557669
	.4byte 0x65770000
.sym lbl_8066DAF0, local
	.4byte 0x6D744972
	.4byte 0x69730000
.sym lbl_8066DAF8, local
	.4byte 0x3F800000
.sym lbl_8066DAFC, local
	.4byte 0x00000000
