.include "macros.inc"
.file "kyoshin/appgame/CKizunaCur.o"

# 0x8001735C - 0x80017384
.section extab, "a"
.balign 4

.obj "@etb_8001735C", local
.hidden "@etb_8001735C"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001735C"

.obj "@etb_80017364", local
.hidden "@etb_80017364"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80017364"

.obj "@etb_8001736C", local
.hidden "@etb_8001736C"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001736C"

.obj "@etb_80017374", local
.hidden "@etb_80017374"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80017374"

.obj "@etb_8001737C", local
.hidden "@etb_8001737C"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001737C"

# 0x8002FB4C - 0x8002FB88
.section extabindex, "a"
.balign 4

.obj "@eti_8002FB4C", local
.hidden "@eti_8002FB4C"
	.4byte fn_80257E18
	.4byte 0x00000040
	.4byte "@etb_8001735C"
.endobj "@eti_8002FB4C"

.obj "@eti_8002FB58", local
.hidden "@eti_8002FB58"
	.4byte fn_80257E58
	.4byte 0x00000088
	.4byte "@etb_80017364"
.endobj "@eti_8002FB58"

.obj "@eti_8002FB64", local
.hidden "@eti_8002FB64"
	.4byte fn_80257EE0
	.4byte 0x00000064
	.4byte "@etb_8001736C"
.endobj "@eti_8002FB64"

.obj "@eti_8002FB70", local
.hidden "@eti_8002FB70"
	.4byte fn_80257F44
	.4byte 0x00000058
	.4byte "@etb_80017374"
.endobj "@eti_8002FB70"

.obj "@eti_8002FB7C", local
.hidden "@eti_8002FB7C"
	.4byte fn_80257F9C
	.4byte 0x00000088
	.4byte "@etb_8001737C"
.endobj "@eti_8002FB7C"

# 0x80257DE8 - 0x80258024
.text
.balign 4

.fn fn_80257DE8, local
/* 80257DE8 002213A8  3C C0 80 54 */	lis r6, __vt__CKizunaCur@ha
/* 80257DEC 002213AC  38 A0 00 00 */	li r5, 0x0
/* 80257DF0 002213B0  38 C6 AD B4 */	addi r6, r6, __vt__CKizunaCur@l
/* 80257DF4 002213B4  38 00 00 01 */	li r0, 0x1
/* 80257DF8 002213B8  90 C3 00 00 */	stw r6, 0x0(r3)
/* 80257DFC 002213BC  90 83 00 04 */	stw r4, 0x4(r3)
/* 80257E00 002213C0  90 A3 00 08 */	stw r5, 0x8(r3)
/* 80257E04 002213C4  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80257E08 002213C8  98 A3 00 10 */	stb r5, 0x10(r3)
/* 80257E0C 002213CC  98 03 00 11 */	stb r0, 0x11(r3)
/* 80257E10 002213D0  98 A3 00 12 */	stb r5, 0x12(r3)
/* 80257E14 002213D4  4E 80 00 20 */	blr
.endfn fn_80257DE8

.fn fn_80257E18, local
/* 80257E18 002213D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257E1C 002213DC  7C 08 02 A6 */	mflr r0
/* 80257E20 002213E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 80257E24 002213E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257E28 002213E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257E2C 002213EC  7C 7F 1B 78 */	mr r31, r3
/* 80257E30 002213F0  41 82 00 10 */	beq .L_80257E40
/* 80257E34 002213F4  2C 04 00 00 */	cmpwi r4, 0x0
/* 80257E38 002213F8  40 81 00 08 */	ble .L_80257E40
/* 80257E3C 002213FC  48 1D CD F1 */	bl __dl__FPv
.L_80257E40:
/* 80257E40 00221400  7F E3 FB 78 */	mr r3, r31
/* 80257E44 00221404  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257E48 00221408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257E4C 0022140C  7C 08 03 A6 */	mtlr r0
/* 80257E50 00221410  38 21 00 10 */	addi r1, r1, 0x10
/* 80257E54 00221414  4E 80 00 20 */	blr
.endfn fn_80257E18

.fn fn_80257E58, local
/* 80257E58 00221418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257E5C 0022141C  7C 08 02 A6 */	mflr r0
/* 80257E60 00221420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257E64 00221424  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 80257E68 00221428  3F E0 80 51 */	lis r31, lbl_805081A8@ha
/* 80257E6C 0022142C  3B FF 81 A8 */	addi r31, r31, lbl_805081A8@l
/* 80257E70 00221430  7C 7E 1B 78 */	mr r30, r3
/* 80257E74 00221434  38 BF 00 27 */	addi r5, r31, 0x27
/* 80257E78 00221438  80 83 00 04 */	lwz r4, 0x4(r3)
/* 80257E7C 0022143C  38 63 00 08 */	addi r3, r3, 0x8
/* 80257E80 00221440  4B ED F0 05 */	bl fn_80136E84
/* 80257E84 00221444  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 80257E88 00221448  38 9E 00 0C */	addi r4, r30, 0xc
/* 80257E8C 0022144C  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 80257E90 00221450  38 DF 00 3F */	addi r6, r31, 0x3f
/* 80257E94 00221454  4B ED F0 75 */	bl fn_80136F08
/* 80257E98 00221458  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 80257E9C 0022145C  38 A0 00 01 */	li r5, 0x1
/* 80257EA0 00221460  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 80257EA4 00221464  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80257EA8 00221468  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80257EAC 0022146C  7D 89 03 A6 */	mtctr r12
/* 80257EB0 00221470  4E 80 04 21 */	bctrl
/* 80257EB4 00221474  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 80257EB8 00221478  38 80 00 00 */	li r4, 0x0
/* 80257EBC 0022147C  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80257EC0 00221480  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80257EC4 00221484  7D 89 03 A6 */	mtctr r12
/* 80257EC8 00221488  4E 80 04 21 */	bctrl
/* 80257ECC 0022148C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 80257ED0 00221490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257ED4 00221494  7C 08 03 A6 */	mtlr r0
/* 80257ED8 00221498  38 21 00 10 */	addi r1, r1, 0x10
/* 80257EDC 0022149C  4E 80 00 20 */	blr
.endfn fn_80257E58

.fn fn_80257EE0, local
/* 80257EE0 002214A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257EE4 002214A4  7C 08 02 A6 */	mflr r0
/* 80257EE8 002214A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257EEC 002214AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257EF0 002214B0  7C 7F 1B 78 */	mr r31, r3
/* 80257EF4 002214B4  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80257EF8 002214B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 80257EFC 002214BC  41 82 00 34 */	beq .L_80257F30
/* 80257F00 002214C0  88 03 00 10 */	lbz r0, 0x10(r3)
/* 80257F04 002214C4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80257F08 002214C8  40 82 00 10 */	bne .L_80257F18
/* 80257F0C 002214CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80257F10 002214D0  C0 22 AD 64 */	lfs f1, lbl_8066B0E4@sda21(r2)
/* 80257F14 002214D4  4B ED F5 31 */	bl fn_80137444
.L_80257F18:
/* 80257F18 002214D8  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 80257F1C 002214DC  38 80 00 00 */	li r4, 0x0
/* 80257F20 002214E0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80257F24 002214E4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80257F28 002214E8  7D 89 03 A6 */	mtctr r12
/* 80257F2C 002214EC  4E 80 04 21 */	bctrl
.L_80257F30:
/* 80257F30 002214F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257F34 002214F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257F38 002214F8  7C 08 03 A6 */	mtlr r0
/* 80257F3C 002214FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80257F40 00221500  4E 80 00 20 */	blr
.endfn fn_80257EE0

.fn fn_80257F44, local
/* 80257F44 00221504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80257F48 00221508  7C 08 02 A6 */	mflr r0
/* 80257F4C 0022150C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80257F50 00221510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80257F54 00221514  7C 7F 1B 78 */	mr r31, r3
/* 80257F58 00221518  80 03 00 08 */	lwz r0, 0x8(r3)
/* 80257F5C 0022151C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80257F60 00221520  41 82 00 28 */	beq .L_80257F88
/* 80257F64 00221524  41 82 00 1C */	beq .L_80257F80
/* 80257F68 00221528  7C 03 03 78 */	mr r3, r0
/* 80257F6C 0022152C  38 80 00 01 */	li r4, 0x1
/* 80257F70 00221530  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80257F74 00221534  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80257F78 00221538  7D 89 03 A6 */	mtctr r12
/* 80257F7C 0022153C  4E 80 04 21 */	bctrl
.L_80257F80:
/* 80257F80 00221540  38 00 00 00 */	li r0, 0x0
/* 80257F84 00221544  90 1F 00 08 */	stw r0, 0x8(r31)
.L_80257F88:
/* 80257F88 00221548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80257F8C 0022154C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80257F90 00221550  7C 08 03 A6 */	mtlr r0
/* 80257F94 00221554  38 21 00 10 */	addi r1, r1, 0x10
/* 80257F98 00221558  4E 80 00 20 */	blr
.endfn fn_80257F44

.fn fn_80257F9C, local
/* 80257F9C 0022155C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80257FA0 00221560  7C 08 02 A6 */	mflr r0
/* 80257FA4 00221564  90 01 00 24 */	stw r0, 0x24(r1)
/* 80257FA8 00221568  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 80257FAC 0022156C  7C 7C 1B 78 */	mr r28, r3
/* 80257FB0 00221570  7C 9D 23 78 */	mr r29, r4
/* 80257FB4 00221574  3B E1 00 08 */	addi r31, r1, 0x8
/* 80257FB8 00221578  3B C0 00 00 */	li r30, 0x0
/* 80257FBC 0022157C  80 A2 AD 68 */	lwz r5, lbl_8066B0E8@sda21(r2)
/* 80257FC0 00221580  80 02 AD 6C */	lwz r0, lbl_8066B0EC@sda21(r2)
/* 80257FC4 00221584  90 A1 00 08 */	stw r5, 0x8(r1)
/* 80257FC8 00221588  90 01 00 0C */	stw r0, 0xc(r1)
.L_80257FCC:
/* 80257FCC 0022158C  80 7C 00 08 */	lwz r3, 0x8(r28)
/* 80257FD0 00221590  57 C0 15 BA */	clrlslwi r0, r30, 24, 2
/* 80257FD4 00221594  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80257FD8 00221598  38 A0 00 01 */	li r5, 0x1
/* 80257FDC 0022159C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80257FE0 002215A0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80257FE4 002215A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80257FE8 002215A8  7D 89 03 A6 */	mtctr r12
/* 80257FEC 002215AC  4E 80 04 21 */	bctrl
/* 80257FF0 002215B0  57 C0 06 3E */	clrlwi r0, r30, 24
/* 80257FF4 002215B4  7C 00 E8 50 */	subf r0, r0, r29
/* 80257FF8 002215B8  7C 00 00 34 */	cntlzw r0, r0
/* 80257FFC 002215BC  54 04 D9 7E */	srwi r4, r0, 5
/* 80258000 002215C0  4B EC C2 71 */	bl fn_80124270
/* 80258004 002215C4  3B DE 00 01 */	addi r30, r30, 0x1
/* 80258008 002215C8  28 1E 00 02 */	cmplwi r30, 0x2
/* 8025800C 002215CC  41 80 FF C0 */	blt .L_80257FCC
/* 80258010 002215D0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 80258014 002215D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80258018 002215D8  7C 08 03 A6 */	mtlr r0
/* 8025801C 002215DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80258020 002215E0  4E 80 00 20 */	blr
.endfn fn_80257F9C
