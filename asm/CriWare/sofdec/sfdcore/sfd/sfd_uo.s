.include "macros.inc"
.file "CriWare/sofdec/sfdcore/sfd/sfd_uo.o"

# 0x803CEA54 - 0x803CEC9C
.text
.balign 4

.fn SFD_SetUsrSj, global
/* 803CEA54 00398014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEA58 00398018  7C 08 02 A6 */	mflr r0
/* 803CEA5C 0039801C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEA60 00398020  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CEA64 00398024  7C DF 33 78 */	mr r31, r6
/* 803CEA68 00398028  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CEA6C 0039802C  7C BE 2B 78 */	mr r30, r5
/* 803CEA70 00398030  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803CEA74 00398034  7C 9D 23 78 */	mr r29, r4
/* 803CEA78 00398038  93 81 00 10 */	stw r28, 0x10(r1)
/* 803CEA7C 0039803C  7C 7C 1B 78 */	mr r28, r3
/* 803CEA80 00398040  4B FF 23 85 */	bl SFLIB_CheckHn
/* 803CEA84 00398044  2C 03 00 00 */	cmpwi r3, 0x0
/* 803CEA88 00398048  41 82 00 18 */	beq .L_803CEAA0
/* 803CEA8C 0039804C  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEA90 00398050  38 60 00 00 */	li r3, 0x0
/* 803CEA94 00398054  38 84 01 91 */	addi r4, r4, 0x191
/* 803CEA98 00398058  4B FF 21 BD */	bl SFLIB_SetErr
/* 803CEA9C 0039805C  48 00 00 58 */	b .L_803CEAF4
.L_803CEAA0:
/* 803CEAA0 00398060  80 9C 22 00 */	lwz r4, 0x2200(r28)
/* 803CEAA4 00398064  80 BC 21 F8 */	lwz r5, 0x21f8(r28)
/* 803CEAA8 00398068  2C 04 00 08 */	cmpwi r4, 0x8
/* 803CEAAC 0039806C  40 82 00 18 */	bne .L_803CEAC4
/* 803CEAB0 00398070  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEAB4 00398074  7F 83 E3 78 */	mr r3, r28
/* 803CEAB8 00398078  38 84 06 02 */	addi r4, r4, 0x602
/* 803CEABC 0039807C  4B FF 21 99 */	bl SFLIB_SetErr
/* 803CEAC0 00398080  48 00 00 34 */	b .L_803CEAF4
.L_803CEAC4:
/* 803CEAC4 00398084  57 A3 20 36 */	slwi r3, r29, 4
/* 803CEAC8 00398088  38 00 00 00 */	li r0, 0x0
/* 803CEACC 0039808C  7C E5 1A 14 */	add r7, r5, r3
/* 803CEAD0 00398090  7F A5 EB 78 */	mr r5, r29
/* 803CEAD4 00398094  93 C7 00 04 */	stw r30, 0x4(r7)
/* 803CEAD8 00398098  7F 83 E3 78 */	mr r3, r28
/* 803CEADC 0039809C  38 C7 00 04 */	addi r6, r7, 0x4
/* 803CEAE0 003980A0  93 E7 00 08 */	stw r31, 0x8(r7)
/* 803CEAE4 003980A4  90 07 00 0C */	stw r0, 0xc(r7)
/* 803CEAE8 003980A8  90 07 00 10 */	stw r0, 0x10(r7)
/* 803CEAEC 003980AC  4B FF 09 C5 */	bl SFBUF_SetUoch
/* 803CEAF0 003980B0  38 60 00 00 */	li r3, 0x0
.L_803CEAF4:
/* 803CEAF4 003980B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CEAF8 003980B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CEAFC 003980BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CEB00 003980C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803CEB04 003980C4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 803CEB08 003980C8  7C 08 03 A6 */	mtlr r0
/* 803CEB0C 003980CC  38 21 00 20 */	addi r1, r1, 0x20
/* 803CEB10 003980D0  4E 80 00 20 */	blr
.endfn SFD_SetUsrSj

.fn SFUO_Init, global
/* 803CEB14 003980D4  38 60 00 00 */	li r3, 0x0
/* 803CEB18 003980D8  4E 80 00 20 */	blr
.endfn SFUO_Init

.fn SFUO_Finish, global
/* 803CEB1C 003980DC  38 60 00 00 */	li r3, 0x0
/* 803CEB20 003980E0  4E 80 00 20 */	blr
.endfn SFUO_Finish

.fn SFUO_ExecServer, global
/* 803CEB24 003980E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEB28 003980E8  7C 08 02 A6 */	mflr r0
/* 803CEB2C 003980EC  38 80 00 08 */	li r4, 0x8
/* 803CEB30 003980F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEB34 003980F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CEB38 003980F8  7C 7F 1B 78 */	mr r31, r3
/* 803CEB3C 003980FC  4B FF FE ED */	bl SFTRN_GetTermFlg
/* 803CEB40 00398100  2C 03 00 01 */	cmpwi r3, 0x1
/* 803CEB44 00398104  41 82 00 28 */	beq .L_803CEB6C
/* 803CEB48 00398108  80 9F 22 00 */	lwz r4, 0x2200(r31)
/* 803CEB4C 0039810C  7F E3 FB 78 */	mr r3, r31
/* 803CEB50 00398110  4B FF 10 59 */	bl SFBUF_GetTermFlg
/* 803CEB54 00398114  2C 03 00 01 */	cmpwi r3, 0x1
/* 803CEB58 00398118  40 82 00 14 */	bne .L_803CEB6C
/* 803CEB5C 0039811C  7F E3 FB 78 */	mr r3, r31
/* 803CEB60 00398120  38 80 00 08 */	li r4, 0x8
/* 803CEB64 00398124  38 A0 00 01 */	li r5, 0x1
/* 803CEB68 00398128  4B FF FE B1 */	bl SFTRN_SetTermFlg
.L_803CEB6C:
/* 803CEB6C 0039812C  7F E3 FB 78 */	mr r3, r31
/* 803CEB70 00398130  38 80 00 08 */	li r4, 0x8
/* 803CEB74 00398134  4B FF FE 95 */	bl SFTRN_GetPrepFlg
/* 803CEB78 00398138  2C 03 00 01 */	cmpwi r3, 0x1
/* 803CEB7C 0039813C  41 82 00 28 */	beq .L_803CEBA4
/* 803CEB80 00398140  80 9F 22 00 */	lwz r4, 0x2200(r31)
/* 803CEB84 00398144  7F E3 FB 78 */	mr r3, r31
/* 803CEB88 00398148  4B FF 0F E9 */	bl SFBUF_GetPrepFlg
/* 803CEB8C 0039814C  2C 03 00 01 */	cmpwi r3, 0x1
/* 803CEB90 00398150  40 82 00 14 */	bne .L_803CEBA4
/* 803CEB94 00398154  7F E3 FB 78 */	mr r3, r31
/* 803CEB98 00398158  38 80 00 08 */	li r4, 0x8
/* 803CEB9C 0039815C  38 A0 00 01 */	li r5, 0x1
/* 803CEBA0 00398160  4B FF FE 59 */	bl SFTRN_SetPrepFlg
.L_803CEBA4:
/* 803CEBA4 00398164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CEBA8 00398168  38 60 00 00 */	li r3, 0x0
/* 803CEBAC 0039816C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEBB0 00398170  7C 08 03 A6 */	mtlr r0
/* 803CEBB4 00398174  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEBB8 00398178  4E 80 00 20 */	blr
.endfn SFUO_ExecServer

.fn SFUO_Create, global
/* 803CEBBC 0039817C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CEBC0 00398180  7C 08 02 A6 */	mflr r0
/* 803CEBC4 00398184  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CEBC8 00398188  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 803CEBCC 0039818C  3B A3 26 90 */	addi r29, r3, 0x2690
/* 803CEBD0 00398190  3B E0 00 00 */	li r31, 0x0
/* 803CEBD4 00398194  7C 7A 1B 78 */	mr r26, r3
/* 803CEBD8 00398198  3B 9D 00 04 */	addi r28, r29, 0x4
/* 803CEBDC 0039819C  3B C0 00 00 */	li r30, 0x0
/* 803CEBE0 003981A0  93 A3 21 F8 */	stw r29, 0x21f8(r3)
/* 803CEBE4 003981A4  83 63 22 00 */	lwz r27, 0x2200(r3)
/* 803CEBE8 003981A8  93 E3 26 90 */	stw r31, 0x2690(r3)
.L_803CEBEC:
/* 803CEBEC 003981AC  93 FD 00 04 */	stw r31, 0x4(r29)
/* 803CEBF0 003981B0  7F 43 D3 78 */	mr r3, r26
/* 803CEBF4 003981B4  7F 64 DB 78 */	mr r4, r27
/* 803CEBF8 003981B8  7F C5 F3 78 */	mr r5, r30
/* 803CEBFC 003981BC  93 FD 00 08 */	stw r31, 0x8(r29)
/* 803CEC00 003981C0  7F 86 E3 78 */	mr r6, r28
/* 803CEC04 003981C4  93 FD 00 0C */	stw r31, 0xc(r29)
/* 803CEC08 003981C8  93 FD 00 10 */	stw r31, 0x10(r29)
/* 803CEC0C 003981CC  4B FF 08 A5 */	bl SFBUF_SetUoch
/* 803CEC10 003981D0  3B DE 00 01 */	addi r30, r30, 0x1
/* 803CEC14 003981D4  3B 9C 00 10 */	addi r28, r28, 0x10
/* 803CEC18 003981D8  2C 1E 00 03 */	cmpwi r30, 0x3
/* 803CEC1C 003981DC  3B BD 00 10 */	addi r29, r29, 0x10
/* 803CEC20 003981E0  41 80 FF CC */	blt .L_803CEBEC
/* 803CEC24 003981E4  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 803CEC28 003981E8  38 60 00 00 */	li r3, 0x0
/* 803CEC2C 003981EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CEC30 003981F0  7C 08 03 A6 */	mtlr r0
/* 803CEC34 003981F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CEC38 003981F8  4E 80 00 20 */	blr
.endfn SFUO_Create

.fn SFUO_Destroy, global
/* 803CEC3C 003981FC  38 60 00 00 */	li r3, 0x0
/* 803CEC40 00398200  4E 80 00 20 */	blr
.endfn SFUO_Destroy

.fn SFUO_RequestStop, global
/* 803CEC44 00398204  38 60 00 00 */	li r3, 0x0
/* 803CEC48 00398208  4E 80 00 20 */	blr
.endfn SFUO_RequestStop

.fn SFUO_Start, global
/* 803CEC4C 0039820C  38 60 00 00 */	li r3, 0x0
/* 803CEC50 00398210  4E 80 00 20 */	blr
.endfn SFUO_Start

.fn SFUO_Stop, global
/* 803CEC54 00398214  38 60 00 00 */	li r3, 0x0
/* 803CEC58 00398218  4E 80 00 20 */	blr
.endfn SFUO_Stop

.fn SFUO_Pause, global
/* 803CEC5C 0039821C  38 60 00 00 */	li r3, 0x0
/* 803CEC60 00398220  4E 80 00 20 */	blr
.endfn SFUO_Pause

.fn SFUO_GetWrite, global
/* 803CEC64 00398224  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEC68 00398228  38 84 06 01 */	addi r4, r4, 0x601
/* 803CEC6C 0039822C  4B FF 1F E8 */	b SFLIB_SetErr
.endfn SFUO_GetWrite

.fn SFUO_AddWrite, global
/* 803CEC70 00398230  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEC74 00398234  38 84 06 01 */	addi r4, r4, 0x601
/* 803CEC78 00398238  4B FF 1F DC */	b SFLIB_SetErr
.endfn SFUO_AddWrite

.fn SFUO_GetRead, global
/* 803CEC7C 0039823C  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEC80 00398240  38 84 06 01 */	addi r4, r4, 0x601
/* 803CEC84 00398244  4B FF 1F D0 */	b SFLIB_SetErr
.endfn SFUO_GetRead

.fn SFUO_AddRead, global
/* 803CEC88 00398248  3C 80 FF 00 */	lis r4, 0xff00
/* 803CEC8C 0039824C  38 84 06 01 */	addi r4, r4, 0x601
/* 803CEC90 00398250  4B FF 1F C4 */	b SFLIB_SetErr
.endfn SFUO_AddRead

.fn SFUO_Seek, global
/* 803CEC94 00398254  38 60 00 00 */	li r3, 0x0
/* 803CEC98 00398258  4E 80 00 20 */	blr
.endfn SFUO_Seek

# 0x80520678 - 0x805206B0
.rodata
.balign 8
.sym lbl_80520678, local
	.4byte SFUO_Init
	.4byte SFUO_Finish
	.4byte SFUO_ExecServer
	.4byte SFUO_Create
	.4byte SFUO_Destroy
	.4byte SFUO_RequestStop
	.4byte SFUO_Start
	.4byte SFUO_Stop
	.4byte SFUO_Pause
	.4byte SFUO_GetWrite
	.4byte SFUO_AddWrite
	.4byte SFUO_GetRead
	.4byte SFUO_AddRead
	.4byte SFUO_Seek
