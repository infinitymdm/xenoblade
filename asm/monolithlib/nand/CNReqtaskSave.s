.include "macros.inc"
.file "monolithlib/nand/CNReqtaskSave.o"

# 0x80020758 - 0x80020768
.section extab, "a"
.balign 4

.obj "@etb_80020758", local
.hidden "@etb_80020758"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_80020758"

.obj "@etb_80020760", local
.hidden "@etb_80020760"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80020760"

# 0x80038750 - 0x80038768
.section extabindex, "a"
.balign 4

.obj "@eti_80038750", local
.hidden "@eti_80038750"
	.4byte fn_804DAD38
	.4byte 0x000001B0
	.4byte "@etb_80020758"
.endobj "@eti_80038750"

.obj "@eti_8003875C", local
.hidden "@eti_8003875C"
	.4byte fn_804DAEE8
	.4byte 0x00000070
	.4byte "@etb_80020760"
.endobj "@eti_8003875C"

# 0x804DAD38 - 0x804DAF70
.text
.balign 4

.fn fn_804DAD38, local
/* 804DAD38 004A42F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAD3C 004A42FC  7C 08 02 A6 */	mflr r0
/* 804DAD40 004A4300  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAD44 004A4304  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 804DAD48 004A4308  7C 9E 23 78 */	mr r30, r4
/* 804DAD4C 004A430C  88 0D C1 28 */	lbz r0, lbl_806682A8@sda21(r13)
/* 804DAD50 004A4310  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DAD54 004A4314  41 82 00 0C */	beq .L_804DAD60
/* 804DAD58 004A4318  38 60 00 00 */	li r3, 0x0
/* 804DAD5C 004A431C  48 00 01 78 */	b .L_804DAED4
.L_804DAD60:
/* 804DAD60 004A4320  88 64 00 19 */	lbz r3, 0x19(r4)
/* 804DAD64 004A4324  7C 60 07 74 */	extsb r0, r3
/* 804DAD68 004A4328  2C 00 00 02 */	cmpwi r0, 0x2
/* 804DAD6C 004A432C  41 80 00 18 */	blt .L_804DAD84
/* 804DAD70 004A4330  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DAD74 004A4334  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DAD78 004A4338  40 80 00 0C */	bge .L_804DAD84
/* 804DAD7C 004A433C  38 60 00 02 */	li r3, 0x2
/* 804DAD80 004A4340  48 00 01 54 */	b .L_804DAED4
.L_804DAD84:
/* 804DAD84 004A4344  7C 60 07 75 */	extsb. r0, r3
/* 804DAD88 004A4348  41 82 00 38 */	beq .L_804DADC0
/* 804DAD8C 004A434C  2C 00 00 01 */	cmpwi r0, 0x1
/* 804DAD90 004A4350  41 82 00 5C */	beq .L_804DADEC
/* 804DAD94 004A4354  2C 00 00 02 */	cmpwi r0, 0x2
/* 804DAD98 004A4358  41 82 00 C8 */	beq .L_804DAE60
/* 804DAD9C 004A435C  2C 00 00 03 */	cmpwi r0, 0x3
/* 804DADA0 004A4360  41 82 00 E0 */	beq .L_804DAE80
/* 804DADA4 004A4364  2C 00 00 04 */	cmpwi r0, 0x4
/* 804DADA8 004A4368  41 82 01 0C */	beq .L_804DAEB4
/* 804DADAC 004A436C  2C 00 00 05 */	cmpwi r0, 0x5
/* 804DADB0 004A4370  41 82 01 10 */	beq .L_804DAEC0
/* 804DADB4 004A4374  2C 00 00 06 */	cmpwi r0, 0x6
/* 804DADB8 004A4378  41 82 01 10 */	beq .L_804DAEC8
/* 804DADBC 004A437C  48 00 01 14 */	b .L_804DAED0
.L_804DADC0:
/* 804DADC0 004A4380  7F C3 F3 78 */	mr r3, r30
/* 804DADC4 004A4384  48 00 01 25 */	bl fn_804DAEE8
/* 804DADC8 004A4388  38 80 00 02 */	li r4, 0x2
/* 804DADCC 004A438C  4B FF F7 75 */	bl fn_804DA540
/* 804DADD0 004A4390  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DADD4 004A4394  41 82 00 0C */	beq .L_804DADE0
/* 804DADD8 004A4398  38 60 00 02 */	li r3, 0x2
/* 804DADDC 004A439C  48 00 00 F8 */	b .L_804DAED4
.L_804DADE0:
/* 804DADE0 004A43A0  38 00 00 01 */	li r0, 0x1
/* 804DADE4 004A43A4  98 1E 00 19 */	stb r0, 0x19(r30)
/* 804DADE8 004A43A8  48 00 00 E8 */	b .L_804DAED0
.L_804DADEC:
/* 804DADEC 004A43AC  80 0D C1 2C */	lwz r0, lbl_806682AC@sda21(r13)
/* 804DADF0 004A43B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 804DADF4 004A43B4  41 82 00 44 */	beq .L_804DAE38
/* 804DADF8 004A43B8  2C 00 FF F4 */	cmpwi r0, -0xc
/* 804DADFC 004A43BC  40 82 00 34 */	bne .L_804DAE30
/* 804DAE00 004A43C0  7F C3 F3 78 */	mr r3, r30
/* 804DAE04 004A43C4  48 00 00 E5 */	bl fn_804DAEE8
/* 804DAE08 004A43C8  88 9E 00 18 */	lbz r4, 0x18(r30)
/* 804DAE0C 004A43CC  38 A0 00 00 */	li r5, 0x0
/* 804DAE10 004A43D0  4B FF F8 FD */	bl fn_804DA70C
/* 804DAE14 004A43D4  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DAE18 004A43D8  41 82 00 0C */	beq .L_804DAE24
/* 804DAE1C 004A43DC  38 60 00 02 */	li r3, 0x2
/* 804DAE20 004A43E0  48 00 00 B4 */	b .L_804DAED4
.L_804DAE24:
/* 804DAE24 004A43E4  38 00 00 06 */	li r0, 0x6
/* 804DAE28 004A43E8  98 1E 00 19 */	stb r0, 0x19(r30)
/* 804DAE2C 004A43EC  48 00 00 A4 */	b .L_804DAED0
.L_804DAE30:
/* 804DAE30 004A43F0  38 60 00 02 */	li r3, 0x2
/* 804DAE34 004A43F4  48 00 00 A0 */	b .L_804DAED4
.L_804DAE38:
/* 804DAE38 004A43F8  80 64 00 10 */	lwz r3, 0x10(r4)
/* 804DAE3C 004A43FC  80 84 00 14 */	lwz r4, 0x14(r4)
/* 804DAE40 004A4400  4B FF F7 E9 */	bl fn_804DA628
/* 804DAE44 004A4404  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DAE48 004A4408  41 82 00 0C */	beq .L_804DAE54
/* 804DAE4C 004A440C  38 60 00 02 */	li r3, 0x2
/* 804DAE50 004A4410  48 00 00 84 */	b .L_804DAED4
.L_804DAE54:
/* 804DAE54 004A4414  38 00 00 02 */	li r0, 0x2
/* 804DAE58 004A4418  98 1E 00 19 */	stb r0, 0x19(r30)
/* 804DAE5C 004A441C  48 00 00 74 */	b .L_804DAED0
.L_804DAE60:
/* 804DAE60 004A4420  4B FF F8 3D */	bl fn_804DA69C
/* 804DAE64 004A4424  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DAE68 004A4428  41 82 00 0C */	beq .L_804DAE74
/* 804DAE6C 004A442C  38 60 00 02 */	li r3, 0x2
/* 804DAE70 004A4430  48 00 00 64 */	b .L_804DAED4
.L_804DAE74:
/* 804DAE74 004A4434  38 00 00 03 */	li r0, 0x3
/* 804DAE78 004A4438  98 1E 00 19 */	stb r0, 0x19(r30)
/* 804DAE7C 004A443C  48 00 00 54 */	b .L_804DAED0
.L_804DAE80:
/* 804DAE80 004A4440  4B FF FB 0D */	bl fn_804DA98C
/* 804DAE84 004A4444  7C 7F 1B 78 */	mr r31, r3
/* 804DAE88 004A4448  7F C3 F3 78 */	mr r3, r30
/* 804DAE8C 004A444C  48 00 00 5D */	bl fn_804DAEE8
/* 804DAE90 004A4450  7F E4 FB 78 */	mr r4, r31
/* 804DAE94 004A4454  4B FF F9 39 */	bl fn_804DA7CC
/* 804DAE98 004A4458  2C 03 00 00 */	cmpwi r3, 0x0
/* 804DAE9C 004A445C  41 82 00 0C */	beq .L_804DAEA8
/* 804DAEA0 004A4460  38 60 00 02 */	li r3, 0x2
/* 804DAEA4 004A4464  48 00 00 30 */	b .L_804DAED4
.L_804DAEA8:
/* 804DAEA8 004A4468  38 00 00 04 */	li r0, 0x4
/* 804DAEAC 004A446C  98 1E 00 19 */	stb r0, 0x19(r30)
/* 804DAEB0 004A4470  48 00 00 20 */	b .L_804DAED0
.L_804DAEB4:
/* 804DAEB4 004A4474  38 00 00 05 */	li r0, 0x5
/* 804DAEB8 004A4478  98 04 00 19 */	stb r0, 0x19(r4)
/* 804DAEBC 004A447C  48 00 00 14 */	b .L_804DAED0
.L_804DAEC0:
/* 804DAEC0 004A4480  38 60 00 01 */	li r3, 0x1
/* 804DAEC4 004A4484  48 00 00 10 */	b .L_804DAED4
.L_804DAEC8:
/* 804DAEC8 004A4488  38 00 00 00 */	li r0, 0x0
/* 804DAECC 004A448C  98 04 00 19 */	stb r0, 0x19(r4)
.L_804DAED0:
/* 804DAED0 004A4490  38 60 00 00 */	li r3, 0x0
.L_804DAED4:
/* 804DAED4 004A4494  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 804DAED8 004A4498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAEDC 004A449C  7C 08 03 A6 */	mtlr r0
/* 804DAEE0 004A44A0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAEE4 004A44A4  4E 80 00 20 */	blr
.endfn fn_804DAD38

.fn fn_804DAEE8, local
/* 804DAEE8 004A44A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAEEC 004A44AC  7C 08 02 A6 */	mflr r0
/* 804DAEF0 004A44B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAEF4 004A44B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAEF8 004A44B8  88 0D C1 3C */	lbz r0, lbl_806682BC@sda21(r13)
/* 804DAEFC 004A44BC  7C 00 07 75 */	extsb. r0, r0
/* 804DAF00 004A44C0  40 82 00 20 */	bne .L_804DAF20
/* 804DAF04 004A44C4  3C A0 80 66 */	lis r5, lbl_80662908@ha
/* 804DAF08 004A44C8  38 C0 00 00 */	li r6, 0x0
/* 804DAF0C 004A44CC  38 85 29 08 */	addi r4, r5, lbl_80662908@l
/* 804DAF10 004A44D0  38 00 00 01 */	li r0, 0x1
/* 804DAF14 004A44D4  98 C5 29 08 */	stb r6, lbl_80662908@l(r5)
/* 804DAF18 004A44D8  90 C4 00 20 */	stw r6, 0x20(r4)
/* 804DAF1C 004A44DC  98 0D C1 3C */	stb r0, lbl_806682BC@sda21(r13)
.L_804DAF20:
/* 804DAF20 004A44E0  3C 80 80 52 */	lis r4, lbl_80527F08@ha
/* 804DAF24 004A44E4  3F E0 80 66 */	lis r31, lbl_80662908@ha
/* 804DAF28 004A44E8  7C 66 1B 78 */	mr r6, r3
/* 804DAF2C 004A44EC  80 AD A3 20 */	lwz r5, lbl_806664A0@sda21(r13)
/* 804DAF30 004A44F0  38 7F 29 08 */	addi r3, r31, lbl_80662908@l
/* 804DAF34 004A44F4  38 84 7F 08 */	addi r4, r4, lbl_80527F08@l
/* 804DAF38 004A44F8  4C C6 31 82 */	crclr 4*cr1+eq
/* 804DAF3C 004A44FC  4B B6 90 7D */	bl fn_80043FB8
/* 804DAF40 004A4500  38 7F 29 08 */	addi r3, r31, lbl_80662908@l
/* 804DAF44 004A4504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAF48 004A4508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAF4C 004A450C  7C 08 03 A6 */	mtlr r0
/* 804DAF50 004A4510  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAF54 004A4514  4E 80 00 20 */	blr
.endfn fn_804DAEE8

.fn sinit_804DAF58, global
/* 804DAF58 004A4518  38 6D C1 38 */	addi r3, r13, lbl_806682B8@sda21
/* 804DAF5C 004A451C  48 00 00 04 */	b .L_804DAF60
.L_804DAF60:
/* 804DAF60 004A4520  3C 80 80 57 */	lis r4, __vt__CNReqtaskSave@ha
/* 804DAF64 004A4524  38 84 35 B0 */	addi r4, r4, __vt__CNReqtaskSave@l
/* 804DAF68 004A4528  90 83 00 00 */	stw r4, 0x0(r3)
/* 804DAF6C 004A452C  4E 80 00 20 */	blr
.endfn sinit_804DAF58

# 0x804F5AD0 - 0x804F5AD4
.section .ctors, "a"
.balign 4
	.4byte sinit_804DAF58

# 0x80527EF8 - 0x80527F10
.rodata
.balign 8

.obj CNReqtaskSave_typestr, global
	.4byte 0x434E5265
	.4byte 0x71746173
	.4byte 0x6B536176
	.4byte 0x65000000
.sym lbl_80527F08, local
	.4byte 0x25732573
	.4byte 0x00000000

# 0x805735B0 - 0x805735D0
.data
.balign 8

.obj __vt__CNReqtaskSave, global
	.4byte __RTTI__CNReqtaskSave
	.4byte 0x00000000
	.4byte fn_804DAD38
	.4byte fn_804DA4CC

.obj CNReqtaskSave_hierarchy, global
	.4byte __RTTI__CNReqtask
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

# 0x80662908 - 0x80662930
.section .bss, "wa", @nobits
.balign 8
.sym lbl_80662908, local
	.skip 0x28

# 0x806664A0 - 0x806664B0
.section .sdata, "wa"
.balign 8
.sym lbl_806664A0, local
	.4byte lbl_8066D9D0
	.4byte 0x00000000

.obj __RTTI__CNReqtaskSave, global
	.4byte CNReqtaskSave_typestr
	.4byte CNReqtaskSave_hierarchy

# 0x806682BC - 0x806682C0
.section .sbss, "wa", @nobits
.balign 4
.sym lbl_806682BC, local
	.skip 0x4

# 0x8066D9D0 - 0x8066D9D8
.section .sdata2, "a"
.balign 8
.sym lbl_8066D9D0, local
	.4byte 0x2F746D70
	.4byte 0x2F000000
