.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global lbl_8030F6F0
lbl_8030F6F0:
/* 8030F6F0 002D8CB0  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F6F4 002D8CB4  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F6F8 002D8CB8  4D 82 00 20 */	beqlr 
/* 8030F6FC 002D8CBC  7C 60 00 34 */	cntlzw r0, r3
/* 8030F700 002D8CC0  38 80 00 00 */	li r4, 0
/* 8030F704 002D8CC4  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
/* 8030F708 002D8CC8  7C 60 00 D0 */	neg r3, r0
/* 8030F70C 002D8CCC  38 63 00 02 */	addi r3, r3, 2
/* 8030F710 002D8CD0  7D 89 03 A6 */	mtctr r12
/* 8030F714 002D8CD4  4E 80 04 20 */	bctr 
/* 8030F718 002D8CD8  4E 80 00 20 */	blr 
/* 8030F71C 002D8CDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030F720:
/* 8030F720 002D8CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F724 002D8CE4  7C 08 02 A6 */	mflr r0
/* 8030F728 002D8CE8  3C 60 80 5D */	lis r3, lbl_805CC9E0@ha
/* 8030F72C 002D8CEC  3C 80 80 31 */	lis r4, lbl_8030F6F0@ha
/* 8030F730 002D8CF0  3C A0 80 5D */	lis r5, lbl_805CCA6C@ha
/* 8030F734 002D8CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F738 002D8CF8  38 63 C9 E0 */	addi r3, r3, lbl_805CC9E0@l
/* 8030F73C 002D8CFC  38 84 F6 F0 */	addi r4, r4, lbl_8030F6F0@l
/* 8030F740 002D8D00  38 A5 CA 6C */	addi r5, r5, lbl_805CCA6C@l
/* 8030F744 002D8D04  48 04 05 8D */	bl func_8034FCD0
/* 8030F748 002D8D08  2C 03 00 00 */	cmpwi r3, 0
/* 8030F74C 002D8D0C  41 82 00 20 */	beq lbl_8030F76C
/* 8030F750 002D8D10  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F754 002D8D14  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F758 002D8D18  41 82 00 14 */	beq lbl_8030F76C
/* 8030F75C 002D8D1C  38 60 00 02 */	li r3, 2
/* 8030F760 002D8D20  38 80 00 00 */	li r4, 0
/* 8030F764 002D8D24  7D 89 03 A6 */	mtctr r12
/* 8030F768 002D8D28  4E 80 04 21 */	bctrl 
lbl_8030F76C:
/* 8030F76C 002D8D2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030F770 002D8D30  7C 08 03 A6 */	mtlr r0
/* 8030F774 002D8D34  38 21 00 10 */	addi r1, r1, 0x10
/* 8030F778 002D8D38  4E 80 00 20 */	blr 
/* 8030F77C 002D8D3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030F780:
/* 8030F780 002D8D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F784 002D8D44  7C 08 02 A6 */	mflr r0
/* 8030F788 002D8D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F78C 002D8D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030F790 002D8D50  3F E0 80 5D */	lis r31, lbl_805CC9E0@ha
/* 8030F794 002D8D54  3B FF C9 E0 */	addi r31, r31, lbl_805CC9E0@l
/* 8030F798 002D8D58  80 8D B6 FC */	lwz r4, lbl_8066787C@sda21(r13)
/* 8030F79C 002D8D5C  38 A4 00 01 */	addi r5, r4, 1
/* 8030F7A0 002D8D60  54 A0 38 30 */	slwi r0, r5, 7
/* 8030F7A4 002D8D64  7C 03 00 40 */	cmplw r3, r0
/* 8030F7A8 002D8D68  40 82 00 A4 */	bne lbl_8030F84C
/* 8030F7AC 002D8D6C  2C 04 00 00 */	cmpwi r4, 0
/* 8030F7B0 002D8D70  40 82 00 30 */	bne lbl_8030F7E0
/* 8030F7B4 002D8D74  3C 80 24 92 */	lis r4, 0x24924925@ha
/* 8030F7B8 002D8D78  38 7F 01 60 */	addi r3, r31, 0x160
/* 8030F7BC 002D8D7C  38 04 49 25 */	addi r0, r4, 0x24924925@l
/* 8030F7C0 002D8D80  7C 80 28 16 */	mulhwu r4, r0, r5
/* 8030F7C4 002D8D84  7C 04 28 50 */	subf r0, r4, r5
/* 8030F7C8 002D8D88  54 00 F8 7E */	srwi r0, r0, 1
/* 8030F7CC 002D8D8C  7C 00 22 14 */	add r0, r0, r4
/* 8030F7D0 002D8D90  54 00 F0 BE */	srwi r0, r0, 2
/* 8030F7D4 002D8D94  1C 00 00 07 */	mulli r0, r0, 7
/* 8030F7D8 002D8D98  7C 00 28 50 */	subf r0, r0, r5
/* 8030F7DC 002D8D9C  90 03 00 18 */	stw r0, 0x18(r3)
lbl_8030F7E0:
/* 8030F7E0 002D8DA0  38 7F 01 60 */	addi r3, r31, 0x160
/* 8030F7E4 002D8DA4  38 80 00 80 */	li r4, 0x80
/* 8030F7E8 002D8DA8  48 04 47 C9 */	bl func_80353FB0
/* 8030F7EC 002D8DAC  3C C0 80 31 */	lis r6, lbl_8030F720@ha
/* 8030F7F0 002D8DB0  38 7F 00 00 */	addi r3, r31, 0
/* 8030F7F4 002D8DB4  38 9F 01 60 */	addi r4, r31, 0x160
/* 8030F7F8 002D8DB8  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030F7FC 002D8DBC  38 C6 F7 20 */	addi r6, r6, lbl_8030F720@l
/* 8030F800 002D8DC0  38 A0 00 80 */	li r5, 0x80
/* 8030F804 002D8DC4  48 03 F6 8D */	bl func_8034EE90
/* 8030F808 002D8DC8  2C 03 00 00 */	cmpwi r3, 0
/* 8030F80C 002D8DCC  41 82 00 5C */	beq lbl_8030F868
/* 8030F810 002D8DD0  3C 80 80 31 */	lis r4, lbl_8030F6F0@ha
/* 8030F814 002D8DD4  38 7F 00 00 */	addi r3, r31, 0
/* 8030F818 002D8DD8  38 84 F6 F0 */	addi r4, r4, lbl_8030F6F0@l
/* 8030F81C 002D8DDC  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8030F820 002D8DE0  48 04 04 B1 */	bl func_8034FCD0
/* 8030F824 002D8DE4  2C 03 00 00 */	cmpwi r3, 0
/* 8030F828 002D8DE8  41 82 00 40 */	beq lbl_8030F868
/* 8030F82C 002D8DEC  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F830 002D8DF0  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F834 002D8DF4  41 82 00 34 */	beq lbl_8030F868
/* 8030F838 002D8DF8  38 60 00 02 */	li r3, 2
/* 8030F83C 002D8DFC  38 80 00 00 */	li r4, 0
/* 8030F840 002D8E00  7D 89 03 A6 */	mtctr r12
/* 8030F844 002D8E04  4E 80 04 21 */	bctrl 
/* 8030F848 002D8E08  48 00 00 20 */	b lbl_8030F868
lbl_8030F84C:
/* 8030F84C 002D8E0C  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F850 002D8E10  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F854 002D8E14  41 82 00 14 */	beq lbl_8030F868
/* 8030F858 002D8E18  38 60 00 02 */	li r3, 2
/* 8030F85C 002D8E1C  38 80 00 00 */	li r4, 0
/* 8030F860 002D8E20  7D 89 03 A6 */	mtctr r12
/* 8030F864 002D8E24  4E 80 04 21 */	bctrl 
lbl_8030F868:
/* 8030F868 002D8E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030F86C 002D8E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030F870 002D8E30  7C 08 03 A6 */	mtlr r0
/* 8030F874 002D8E34  38 21 00 10 */	addi r1, r1, 0x10
/* 8030F878 002D8E38  4E 80 00 20 */	blr 
/* 8030F87C 002D8E3C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030F880:
/* 8030F880 002D8E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F884 002D8E44  7C 08 02 A6 */	mflr r0
/* 8030F888 002D8E48  28 03 00 80 */	cmplwi r3, 0x80
/* 8030F88C 002D8E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F890 002D8E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030F894 002D8E54  3F E0 80 5D */	lis r31, lbl_805CC9E0@ha
/* 8030F898 002D8E58  3B FF C9 E0 */	addi r31, r31, lbl_805CC9E0@l
/* 8030F89C 002D8E5C  40 82 01 08 */	bne lbl_8030F9A4
/* 8030F8A0 002D8E60  80 8D B6 FC */	lwz r4, lbl_8066787C@sda21(r13)
/* 8030F8A4 002D8E64  3C C0 80 31 */	lis r6, lbl_8030F780@ha
/* 8030F8A8 002D8E68  38 7F 00 00 */	addi r3, r31, 0
/* 8030F8AC 002D8E6C  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030F8B0 002D8E70  38 04 00 01 */	addi r0, r4, 1
/* 8030F8B4 002D8E74  38 C6 F7 80 */	addi r6, r6, lbl_8030F780@l
/* 8030F8B8 002D8E78  54 04 38 30 */	slwi r4, r0, 7
/* 8030F8BC 002D8E7C  38 A0 00 00 */	li r5, 0
/* 8030F8C0 002D8E80  48 03 F6 51 */	bl func_8034EF10
/* 8030F8C4 002D8E84  2C 03 00 00 */	cmpwi r3, 0
/* 8030F8C8 002D8E88  41 82 00 F8 */	beq lbl_8030F9C0
/* 8030F8CC 002D8E8C  80 8D B6 FC */	lwz r4, lbl_8066787C@sda21(r13)
/* 8030F8D0 002D8E90  38 A4 00 01 */	addi r5, r4, 1
/* 8030F8D4 002D8E94  54 A3 38 30 */	slwi r3, r5, 7
/* 8030F8D8 002D8E98  3C 03 00 01 */	addis r0, r3, 1
/* 8030F8DC 002D8E9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8030F8E0 002D8EA0  40 82 00 A4 */	bne lbl_8030F984
/* 8030F8E4 002D8EA4  2C 04 00 00 */	cmpwi r4, 0
/* 8030F8E8 002D8EA8  40 82 00 30 */	bne lbl_8030F918
/* 8030F8EC 002D8EAC  3C 80 24 92 */	lis r4, 0x24924925@ha
/* 8030F8F0 002D8EB0  38 7F 01 60 */	addi r3, r31, 0x160
/* 8030F8F4 002D8EB4  38 04 49 25 */	addi r0, r4, 0x24924925@l
/* 8030F8F8 002D8EB8  7C 80 28 16 */	mulhwu r4, r0, r5
/* 8030F8FC 002D8EBC  7C 04 28 50 */	subf r0, r4, r5
/* 8030F900 002D8EC0  54 00 F8 7E */	srwi r0, r0, 1
/* 8030F904 002D8EC4  7C 00 22 14 */	add r0, r0, r4
/* 8030F908 002D8EC8  54 00 F0 BE */	srwi r0, r0, 2
/* 8030F90C 002D8ECC  1C 00 00 07 */	mulli r0, r0, 7
/* 8030F910 002D8ED0  7C 00 28 50 */	subf r0, r0, r5
/* 8030F914 002D8ED4  90 03 00 18 */	stw r0, 0x18(r3)
lbl_8030F918:
/* 8030F918 002D8ED8  38 7F 01 60 */	addi r3, r31, 0x160
/* 8030F91C 002D8EDC  38 80 00 80 */	li r4, 0x80
/* 8030F920 002D8EE0  48 04 46 91 */	bl func_80353FB0
/* 8030F924 002D8EE4  3C C0 80 31 */	lis r6, lbl_8030F720@ha
/* 8030F928 002D8EE8  38 7F 00 00 */	addi r3, r31, 0
/* 8030F92C 002D8EEC  38 9F 01 60 */	addi r4, r31, 0x160
/* 8030F930 002D8EF0  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030F934 002D8EF4  38 C6 F7 20 */	addi r6, r6, lbl_8030F720@l
/* 8030F938 002D8EF8  38 A0 00 80 */	li r5, 0x80
/* 8030F93C 002D8EFC  48 03 F5 55 */	bl func_8034EE90
/* 8030F940 002D8F00  2C 03 00 00 */	cmpwi r3, 0
/* 8030F944 002D8F04  41 82 00 7C */	beq lbl_8030F9C0
/* 8030F948 002D8F08  3C 80 80 31 */	lis r4, lbl_8030F6F0@ha
/* 8030F94C 002D8F0C  38 7F 00 00 */	addi r3, r31, 0
/* 8030F950 002D8F10  38 84 F6 F0 */	addi r4, r4, lbl_8030F6F0@l
/* 8030F954 002D8F14  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8030F958 002D8F18  48 04 03 79 */	bl func_8034FCD0
/* 8030F95C 002D8F1C  2C 03 00 00 */	cmpwi r3, 0
/* 8030F960 002D8F20  41 82 00 60 */	beq lbl_8030F9C0
/* 8030F964 002D8F24  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F968 002D8F28  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F96C 002D8F2C  41 82 00 54 */	beq lbl_8030F9C0
/* 8030F970 002D8F30  38 60 00 02 */	li r3, 2
/* 8030F974 002D8F34  38 80 00 00 */	li r4, 0
/* 8030F978 002D8F38  7D 89 03 A6 */	mtctr r12
/* 8030F97C 002D8F3C  4E 80 04 21 */	bctrl 
/* 8030F980 002D8F40  48 00 00 40 */	b lbl_8030F9C0
lbl_8030F984:
/* 8030F984 002D8F44  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F988 002D8F48  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F98C 002D8F4C  41 82 00 34 */	beq lbl_8030F9C0
/* 8030F990 002D8F50  38 60 00 02 */	li r3, 2
/* 8030F994 002D8F54  38 80 00 00 */	li r4, 0
/* 8030F998 002D8F58  7D 89 03 A6 */	mtctr r12
/* 8030F99C 002D8F5C  4E 80 04 21 */	bctrl 
/* 8030F9A0 002D8F60  48 00 00 20 */	b lbl_8030F9C0
lbl_8030F9A4:
/* 8030F9A4 002D8F64  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030F9A8 002D8F68  2C 0C 00 00 */	cmpwi r12, 0
/* 8030F9AC 002D8F6C  41 82 00 14 */	beq lbl_8030F9C0
/* 8030F9B0 002D8F70  38 60 00 02 */	li r3, 2
/* 8030F9B4 002D8F74  38 80 00 00 */	li r4, 0
/* 8030F9B8 002D8F78  7D 89 03 A6 */	mtctr r12
/* 8030F9BC 002D8F7C  4E 80 04 21 */	bctrl 
lbl_8030F9C0:
/* 8030F9C0 002D8F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030F9C4 002D8F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030F9C8 002D8F88  7C 08 03 A6 */	mtlr r0
/* 8030F9CC 002D8F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030F9D0 002D8F90  4E 80 00 20 */	blr 
/* 8030F9D4 002D8F94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8030F9D8 002D8F98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8030F9DC 002D8F9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030F9E0:
/* 8030F9E0 002D8FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030F9E4 002D8FA4  7C 08 02 A6 */	mflr r0
/* 8030F9E8 002D8FA8  28 03 00 80 */	cmplwi r3, 0x80
/* 8030F9EC 002D8FAC  3C E0 80 5D */	lis r7, lbl_805CC9E0@ha
/* 8030F9F0 002D8FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030F9F4 002D8FB4  38 E7 C9 E0 */	addi r7, r7, lbl_805CC9E0@l
/* 8030F9F8 002D8FB8  40 82 00 78 */	bne lbl_8030FA70
/* 8030F9FC 002D8FBC  38 87 01 E0 */	addi r4, r7, 0x1e0
/* 8030FA00 002D8FC0  3C 60 24 92 */	lis r3, 0x24924925@ha
/* 8030FA04 002D8FC4  80 A4 00 18 */	lwz r5, 0x18(r4)
/* 8030FA08 002D8FC8  38 03 49 25 */	addi r0, r3, 0x24924925@l
/* 8030FA0C 002D8FCC  3C C0 80 31 */	lis r6, lbl_8030F880@ha
/* 8030FA10 002D8FD0  38 67 00 00 */	addi r3, r7, 0
/* 8030FA14 002D8FD4  39 25 00 01 */	addi r9, r5, 1
/* 8030FA18 002D8FD8  38 E7 00 8C */	addi r7, r7, 0x8c
/* 8030FA1C 002D8FDC  7D 00 48 16 */	mulhwu r8, r0, r9
/* 8030FA20 002D8FE0  38 C6 F8 80 */	addi r6, r6, lbl_8030F880@l
/* 8030FA24 002D8FE4  38 A0 00 80 */	li r5, 0x80
/* 8030FA28 002D8FE8  7C 08 48 50 */	subf r0, r8, r9
/* 8030FA2C 002D8FEC  54 00 F8 7E */	srwi r0, r0, 1
/* 8030FA30 002D8FF0  7C 00 42 14 */	add r0, r0, r8
/* 8030FA34 002D8FF4  54 00 F0 BE */	srwi r0, r0, 2
/* 8030FA38 002D8FF8  1C 00 00 07 */	mulli r0, r0, 7
/* 8030FA3C 002D8FFC  7C 00 48 50 */	subf r0, r0, r9
/* 8030FA40 002D9000  90 04 00 18 */	stw r0, 0x18(r4)
/* 8030FA44 002D9004  48 03 F4 4D */	bl func_8034EE90
/* 8030FA48 002D9008  2C 03 00 00 */	cmpwi r3, 0
/* 8030FA4C 002D900C  41 82 00 40 */	beq lbl_8030FA8C
/* 8030FA50 002D9010  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FA54 002D9014  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FA58 002D9018  41 82 00 34 */	beq lbl_8030FA8C
/* 8030FA5C 002D901C  38 60 00 02 */	li r3, 2
/* 8030FA60 002D9020  38 80 00 00 */	li r4, 0
/* 8030FA64 002D9024  7D 89 03 A6 */	mtctr r12
/* 8030FA68 002D9028  4E 80 04 21 */	bctrl 
/* 8030FA6C 002D902C  48 00 00 20 */	b lbl_8030FA8C
lbl_8030FA70:
/* 8030FA70 002D9030  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FA74 002D9034  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FA78 002D9038  41 82 00 14 */	beq lbl_8030FA8C
/* 8030FA7C 002D903C  38 60 00 02 */	li r3, 2
/* 8030FA80 002D9040  38 80 00 00 */	li r4, 0
/* 8030FA84 002D9044  7D 89 03 A6 */	mtctr r12
/* 8030FA88 002D9048  4E 80 04 21 */	bctrl 
lbl_8030FA8C:
/* 8030FA8C 002D904C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FA90 002D9050  7C 08 03 A6 */	mtlr r0
/* 8030FA94 002D9054  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FA98 002D9058  4E 80 00 20 */	blr 
/* 8030FA9C 002D905C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030FAA0:
/* 8030FAA0 002D9060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FAA4 002D9064  7C 08 02 A6 */	mflr r0
/* 8030FAA8 002D9068  28 03 00 80 */	cmplwi r3, 0x80
/* 8030FAAC 002D906C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FAB0 002D9070  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030FAB4 002D9074  3F E0 80 5D */	lis r31, lbl_805CC9E0@ha
/* 8030FAB8 002D9078  3B FF C9 E0 */	addi r31, r31, lbl_805CC9E0@l
/* 8030FABC 002D907C  40 82 00 54 */	bne lbl_8030FB10
/* 8030FAC0 002D9080  38 7F 01 E0 */	addi r3, r31, 0x1e0
/* 8030FAC4 002D9084  3C C0 80 31 */	lis r6, lbl_8030F9E0@ha
/* 8030FAC8 002D9088  80 03 00 18 */	lwz r0, 0x18(r3)
/* 8030FACC 002D908C  38 7F 00 00 */	addi r3, r31, 0
/* 8030FAD0 002D9090  90 0D B6 FC */	stw r0, lbl_8066787C@sda21(r13)
/* 8030FAD4 002D9094  38 C6 F9 E0 */	addi r6, r6, lbl_8030F9E0@l
/* 8030FAD8 002D9098  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FADC 002D909C  38 80 00 80 */	li r4, 0x80
/* 8030FAE0 002D90A0  38 A0 00 00 */	li r5, 0
/* 8030FAE4 002D90A4  48 03 F4 2D */	bl func_8034EF10
/* 8030FAE8 002D90A8  2C 03 00 00 */	cmpwi r3, 0
/* 8030FAEC 002D90AC  41 82 00 88 */	beq lbl_8030FB74
/* 8030FAF0 002D90B0  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FAF4 002D90B4  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FAF8 002D90B8  41 82 00 7C */	beq lbl_8030FB74
/* 8030FAFC 002D90BC  38 60 00 02 */	li r3, 2
/* 8030FB00 002D90C0  38 80 00 00 */	li r4, 0
/* 8030FB04 002D90C4  7D 89 03 A6 */	mtctr r12
/* 8030FB08 002D90C8  4E 80 04 21 */	bctrl 
/* 8030FB0C 002D90CC  48 00 00 68 */	b lbl_8030FB74
lbl_8030FB10:
/* 8030FB10 002D90D0  38 9F 01 60 */	addi r4, r31, 0x160
/* 8030FB14 002D90D4  38 00 00 01 */	li r0, 1
/* 8030FB18 002D90D8  3C C0 80 31 */	lis r6, lbl_8030F720@ha
/* 8030FB1C 002D90DC  90 04 00 18 */	stw r0, 0x18(r4)
/* 8030FB20 002D90E0  38 7F 00 00 */	addi r3, r31, 0
/* 8030FB24 002D90E4  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FB28 002D90E8  38 C6 F7 20 */	addi r6, r6, lbl_8030F720@l
/* 8030FB2C 002D90EC  38 A0 00 80 */	li r5, 0x80
/* 8030FB30 002D90F0  48 03 F3 61 */	bl func_8034EE90
/* 8030FB34 002D90F4  2C 03 00 00 */	cmpwi r3, 0
/* 8030FB38 002D90F8  41 82 00 3C */	beq lbl_8030FB74
/* 8030FB3C 002D90FC  3C 80 80 31 */	lis r4, lbl_8030F6F0@ha
/* 8030FB40 002D9100  38 7F 00 00 */	addi r3, r31, 0
/* 8030FB44 002D9104  38 84 F6 F0 */	addi r4, r4, lbl_8030F6F0@l
/* 8030FB48 002D9108  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8030FB4C 002D910C  48 04 01 85 */	bl func_8034FCD0
/* 8030FB50 002D9110  2C 03 00 00 */	cmpwi r3, 0
/* 8030FB54 002D9114  41 82 00 20 */	beq lbl_8030FB74
/* 8030FB58 002D9118  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FB5C 002D911C  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FB60 002D9120  41 82 00 14 */	beq lbl_8030FB74
/* 8030FB64 002D9124  38 60 00 02 */	li r3, 2
/* 8030FB68 002D9128  38 80 00 00 */	li r4, 0
/* 8030FB6C 002D912C  7D 89 03 A6 */	mtctr r12
/* 8030FB70 002D9130  4E 80 04 21 */	bctrl 
lbl_8030FB74:
/* 8030FB74 002D9134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FB78 002D9138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030FB7C 002D913C  7C 08 03 A6 */	mtlr r0
/* 8030FB80 002D9140  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FB84 002D9144  4E 80 00 20 */	blr 
/* 8030FB88 002D9148  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8030FB8C 002D914C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030FB90:
/* 8030FB90 002D9150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FB94 002D9154  7C 08 02 A6 */	mflr r0
/* 8030FB98 002D9158  2C 03 00 00 */	cmpwi r3, 0
/* 8030FB9C 002D915C  3C E0 80 5D */	lis r7, lbl_805CC9E0@ha
/* 8030FBA0 002D9160  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FBA4 002D9164  38 E7 C9 E0 */	addi r7, r7, lbl_805CC9E0@l
/* 8030FBA8 002D9168  40 82 00 5C */	bne lbl_8030FC04
/* 8030FBAC 002D916C  38 A7 01 60 */	addi r5, r7, 0x160
/* 8030FBB0 002D9170  38 60 00 00 */	li r3, 0
/* 8030FBB4 002D9174  38 00 00 01 */	li r0, 1
/* 8030FBB8 002D9178  3C C0 80 31 */	lis r6, lbl_8030F880@ha
/* 8030FBBC 002D917C  90 6D B6 FC */	stw r3, lbl_8066787C@sda21(r13)
/* 8030FBC0 002D9180  38 67 00 00 */	addi r3, r7, 0
/* 8030FBC4 002D9184  38 87 01 E0 */	addi r4, r7, 0x1e0
/* 8030FBC8 002D9188  38 C6 F8 80 */	addi r6, r6, lbl_8030F880@l
/* 8030FBCC 002D918C  90 05 00 18 */	stw r0, 0x18(r5)
/* 8030FBD0 002D9190  38 E7 00 8C */	addi r7, r7, 0x8c
/* 8030FBD4 002D9194  38 A0 00 80 */	li r5, 0x80
/* 8030FBD8 002D9198  48 03 F2 B9 */	bl func_8034EE90
/* 8030FBDC 002D919C  2C 03 00 00 */	cmpwi r3, 0
/* 8030FBE0 002D91A0  41 82 00 40 */	beq lbl_8030FC20
/* 8030FBE4 002D91A4  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FBE8 002D91A8  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FBEC 002D91AC  41 82 00 34 */	beq lbl_8030FC20
/* 8030FBF0 002D91B0  38 60 00 02 */	li r3, 2
/* 8030FBF4 002D91B4  38 80 00 00 */	li r4, 0
/* 8030FBF8 002D91B8  7D 89 03 A6 */	mtctr r12
/* 8030FBFC 002D91BC  4E 80 04 21 */	bctrl 
/* 8030FC00 002D91C0  48 00 00 20 */	b lbl_8030FC20
lbl_8030FC04:
/* 8030FC04 002D91C4  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FC08 002D91C8  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FC0C 002D91CC  41 82 00 14 */	beq lbl_8030FC20
/* 8030FC10 002D91D0  38 60 00 02 */	li r3, 2
/* 8030FC14 002D91D4  38 80 00 00 */	li r4, 0
/* 8030FC18 002D91D8  7D 89 03 A6 */	mtctr r12
/* 8030FC1C 002D91DC  4E 80 04 21 */	bctrl 
lbl_8030FC20:
/* 8030FC20 002D91E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FC24 002D91E4  7C 08 03 A6 */	mtlr r0
/* 8030FC28 002D91E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FC2C 002D91EC  4E 80 00 20 */	blr

.global lbl_8030FC30
lbl_8030FC30:
/* 8030FC30 002D91F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FC34 002D91F4  7C 08 02 A6 */	mflr r0
/* 8030FC38 002D91F8  28 03 00 80 */	cmplwi r3, 0x80
/* 8030FC3C 002D91FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FC40 002D9200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030FC44 002D9204  3F E0 80 5D */	lis r31, lbl_805CC9E0@ha
/* 8030FC48 002D9208  3B FF C9 E0 */	addi r31, r31, lbl_805CC9E0@l
/* 8030FC4C 002D920C  40 82 00 90 */	bne lbl_8030FCDC
/* 8030FC50 002D9210  3C C0 80 31 */	lis r6, lbl_8030FAA0@ha
/* 8030FC54 002D9214  38 7F 00 00 */	addi r3, r31, 0
/* 8030FC58 002D9218  38 9F 01 E0 */	addi r4, r31, 0x1e0
/* 8030FC5C 002D921C  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FC60 002D9220  38 C6 FA A0 */	addi r6, r6, lbl_8030FAA0@l
/* 8030FC64 002D9224  38 A0 00 80 */	li r5, 0x80
/* 8030FC68 002D9228  48 03 F1 39 */	bl func_8034EDA0
/* 8030FC6C 002D922C  2C 03 00 00 */	cmpwi r3, 0
/* 8030FC70 002D9230  41 82 00 AC */	beq lbl_8030FD1C
/* 8030FC74 002D9234  38 9F 01 60 */	addi r4, r31, 0x160
/* 8030FC78 002D9238  38 00 00 01 */	li r0, 1
/* 8030FC7C 002D923C  3C C0 80 31 */	lis r6, lbl_8030F720@ha
/* 8030FC80 002D9240  90 04 00 18 */	stw r0, 0x18(r4)
/* 8030FC84 002D9244  38 7F 00 00 */	addi r3, r31, 0
/* 8030FC88 002D9248  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FC8C 002D924C  38 C6 F7 20 */	addi r6, r6, lbl_8030F720@l
/* 8030FC90 002D9250  38 A0 00 80 */	li r5, 0x80
/* 8030FC94 002D9254  48 03 F1 FD */	bl func_8034EE90
/* 8030FC98 002D9258  2C 03 00 00 */	cmpwi r3, 0
/* 8030FC9C 002D925C  41 82 00 80 */	beq lbl_8030FD1C
/* 8030FCA0 002D9260  3C 80 80 31 */	lis r4, lbl_8030F6F0@ha
/* 8030FCA4 002D9264  38 7F 00 00 */	addi r3, r31, 0
/* 8030FCA8 002D9268  38 84 F6 F0 */	addi r4, r4, lbl_8030F6F0@l
/* 8030FCAC 002D926C  38 BF 00 8C */	addi r5, r31, 0x8c
/* 8030FCB0 002D9270  48 04 00 21 */	bl func_8034FCD0
/* 8030FCB4 002D9274  2C 03 00 00 */	cmpwi r3, 0
/* 8030FCB8 002D9278  41 82 00 64 */	beq lbl_8030FD1C
/* 8030FCBC 002D927C  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FCC0 002D9280  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FCC4 002D9284  41 82 00 58 */	beq lbl_8030FD1C
/* 8030FCC8 002D9288  38 60 00 02 */	li r3, 2
/* 8030FCCC 002D928C  38 80 00 00 */	li r4, 0
/* 8030FCD0 002D9290  7D 89 03 A6 */	mtctr r12
/* 8030FCD4 002D9294  4E 80 04 21 */	bctrl 
/* 8030FCD8 002D9298  48 00 00 44 */	b lbl_8030FD1C
lbl_8030FCDC:
/* 8030FCDC 002D929C  3C C0 80 31 */	lis r6, lbl_8030FB90@ha
/* 8030FCE0 002D92A0  38 7F 00 00 */	addi r3, r31, 0
/* 8030FCE4 002D92A4  38 C6 FB 90 */	addi r6, r6, lbl_8030FB90@l
/* 8030FCE8 002D92A8  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FCEC 002D92AC  38 80 00 00 */	li r4, 0
/* 8030FCF0 002D92B0  38 A0 00 00 */	li r5, 0
/* 8030FCF4 002D92B4  48 03 F2 1D */	bl func_8034EF10
/* 8030FCF8 002D92B8  2C 03 00 00 */	cmpwi r3, 0
/* 8030FCFC 002D92BC  41 82 00 20 */	beq lbl_8030FD1C
/* 8030FD00 002D92C0  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FD04 002D92C4  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FD08 002D92C8  41 82 00 14 */	beq lbl_8030FD1C
/* 8030FD0C 002D92CC  38 60 00 02 */	li r3, 2
/* 8030FD10 002D92D0  38 80 00 00 */	li r4, 0
/* 8030FD14 002D92D4  7D 89 03 A6 */	mtctr r12
/* 8030FD18 002D92D8  4E 80 04 21 */	bctrl 
lbl_8030FD1C:
/* 8030FD1C 002D92DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FD20 002D92E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030FD24 002D92E4  7C 08 03 A6 */	mtlr r0
/* 8030FD28 002D92E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FD2C 002D92EC  4E 80 00 20 */	blr

.global lbl_8030FD30
lbl_8030FD30:
/* 8030FD30 002D92F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FD34 002D92F4  7C 08 02 A6 */	mflr r0
/* 8030FD38 002D92F8  2C 03 00 00 */	cmpwi r3, 0
/* 8030FD3C 002D92FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FD40 002D9300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030FD44 002D9304  3F E0 80 5D */	lis r31, lbl_805CC9E0@ha
/* 8030FD48 002D9308  3B FF C9 E0 */	addi r31, r31, lbl_805CC9E0@l
/* 8030FD4C 002D930C  40 82 00 D0 */	bne lbl_8030FE1C
/* 8030FD50 002D9310  80 0D B6 F8 */	lwz r0, lbl_80667878@sda21(r13)
/* 8030FD54 002D9314  2C 00 00 00 */	cmpwi r0, 0
/* 8030FD58 002D9318  41 82 00 6C */	beq lbl_8030FDC4
/* 8030FD5C 002D931C  3C C0 80 31 */	lis r6, lbl_8030FC30@ha
/* 8030FD60 002D9320  38 7F 00 00 */	addi r3, r31, 0
/* 8030FD64 002D9324  38 C6 FC 30 */	addi r6, r6, lbl_8030FC30@l
/* 8030FD68 002D9328  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FD6C 002D932C  38 80 00 80 */	li r4, 0x80
/* 8030FD70 002D9330  38 A0 00 00 */	li r5, 0
/* 8030FD74 002D9334  48 03 F1 9D */	bl func_8034EF10
/* 8030FD78 002D9338  2C 03 00 00 */	cmpwi r3, 0
/* 8030FD7C 002D933C  41 82 00 BC */	beq lbl_8030FE38
/* 8030FD80 002D9340  3C C0 80 31 */	lis r6, lbl_8030FB90@ha
/* 8030FD84 002D9344  38 7F 00 00 */	addi r3, r31, 0
/* 8030FD88 002D9348  38 C6 FB 90 */	addi r6, r6, lbl_8030FB90@l
/* 8030FD8C 002D934C  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FD90 002D9350  38 80 00 00 */	li r4, 0
/* 8030FD94 002D9354  38 A0 00 00 */	li r5, 0
/* 8030FD98 002D9358  48 03 F1 79 */	bl func_8034EF10
/* 8030FD9C 002D935C  2C 03 00 00 */	cmpwi r3, 0
/* 8030FDA0 002D9360  41 82 00 98 */	beq lbl_8030FE38
/* 8030FDA4 002D9364  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FDA8 002D9368  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FDAC 002D936C  41 82 00 8C */	beq lbl_8030FE38
/* 8030FDB0 002D9370  38 60 00 02 */	li r3, 2
/* 8030FDB4 002D9374  38 80 00 00 */	li r4, 0
/* 8030FDB8 002D9378  7D 89 03 A6 */	mtctr r12
/* 8030FDBC 002D937C  4E 80 04 21 */	bctrl 
/* 8030FDC0 002D9380  48 00 00 78 */	b lbl_8030FE38
lbl_8030FDC4:
/* 8030FDC4 002D9384  38 BF 01 60 */	addi r5, r31, 0x160
/* 8030FDC8 002D9388  38 60 00 00 */	li r3, 0
/* 8030FDCC 002D938C  38 00 00 01 */	li r0, 1
/* 8030FDD0 002D9390  3C C0 80 31 */	lis r6, lbl_8030F880@ha
/* 8030FDD4 002D9394  90 6D B6 FC */	stw r3, lbl_8066787C@sda21(r13)
/* 8030FDD8 002D9398  38 7F 00 00 */	addi r3, r31, 0
/* 8030FDDC 002D939C  38 9F 01 E0 */	addi r4, r31, 0x1e0
/* 8030FDE0 002D93A0  38 C6 F8 80 */	addi r6, r6, lbl_8030F880@l
/* 8030FDE4 002D93A4  90 05 00 18 */	stw r0, 0x18(r5)
/* 8030FDE8 002D93A8  38 FF 00 8C */	addi r7, r31, 0x8c
/* 8030FDEC 002D93AC  38 A0 00 80 */	li r5, 0x80
/* 8030FDF0 002D93B0  48 03 F0 A1 */	bl func_8034EE90
/* 8030FDF4 002D93B4  2C 03 00 00 */	cmpwi r3, 0
/* 8030FDF8 002D93B8  41 82 00 40 */	beq lbl_8030FE38
/* 8030FDFC 002D93BC  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FE00 002D93C0  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FE04 002D93C4  41 82 00 34 */	beq lbl_8030FE38
/* 8030FE08 002D93C8  38 60 00 02 */	li r3, 2
/* 8030FE0C 002D93CC  38 80 00 00 */	li r4, 0
/* 8030FE10 002D93D0  7D 89 03 A6 */	mtctr r12
/* 8030FE14 002D93D4  4E 80 04 21 */	bctrl 
/* 8030FE18 002D93D8  48 00 00 20 */	b lbl_8030FE38
lbl_8030FE1C:
/* 8030FE1C 002D93DC  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FE20 002D93E0  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FE24 002D93E4  41 82 00 14 */	beq lbl_8030FE38
/* 8030FE28 002D93E8  38 60 00 02 */	li r3, 2
/* 8030FE2C 002D93EC  38 80 00 00 */	li r4, 0
/* 8030FE30 002D93F0  7D 89 03 A6 */	mtctr r12
/* 8030FE34 002D93F4  4E 80 04 21 */	bctrl 
lbl_8030FE38:
/* 8030FE38 002D93F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FE3C 002D93FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030FE40 002D9400  7C 08 03 A6 */	mtlr r0
/* 8030FE44 002D9404  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FE48 002D9408  4E 80 00 20 */	blr 
/* 8030FE4C 002D940C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030FE50:
/* 8030FE50 002D9410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FE54 002D9414  7C 08 02 A6 */	mflr r0
/* 8030FE58 002D9418  2C 03 00 00 */	cmpwi r3, 0
/* 8030FE5C 002D941C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FE60 002D9420  41 82 00 14 */	beq lbl_8030FE74
/* 8030FE64 002D9424  2C 03 FF FA */	cmpwi r3, -6
/* 8030FE68 002D9428  40 82 00 5C */	bne lbl_8030FEC4
/* 8030FE6C 002D942C  38 00 00 01 */	li r0, 1
/* 8030FE70 002D9430  90 0D B6 F8 */	stw r0, lbl_80667878@sda21(r13)
lbl_8030FE74:
/* 8030FE74 002D9434  3C 60 80 55 */	lis r3, lbl_80549D30@ha
/* 8030FE78 002D9438  3C 80 80 5D */	lis r4, lbl_805CC9E0@ha
/* 8030FE7C 002D943C  3C C0 80 31 */	lis r6, lbl_8030FD30@ha
/* 8030FE80 002D9440  3C E0 80 5D */	lis r7, lbl_805CCA6C@ha
/* 8030FE84 002D9444  38 63 9D 30 */	addi r3, r3, lbl_80549D30@l
/* 8030FE88 002D9448  38 84 C9 E0 */	addi r4, r4, lbl_805CC9E0@l
/* 8030FE8C 002D944C  38 C6 FD 30 */	addi r6, r6, lbl_8030FD30@l
/* 8030FE90 002D9450  38 E7 CA 6C */	addi r7, r7, lbl_805CCA6C@l
/* 8030FE94 002D9454  38 A0 00 03 */	li r5, 3
/* 8030FE98 002D9458  48 03 FC C9 */	bl func_8034FB60
/* 8030FE9C 002D945C  2C 03 00 00 */	cmpwi r3, 0
/* 8030FEA0 002D9460  41 82 00 40 */	beq lbl_8030FEE0
/* 8030FEA4 002D9464  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FEA8 002D9468  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FEAC 002D946C  41 82 00 34 */	beq lbl_8030FEE0
/* 8030FEB0 002D9470  38 60 00 02 */	li r3, 2
/* 8030FEB4 002D9474  38 80 00 00 */	li r4, 0
/* 8030FEB8 002D9478  7D 89 03 A6 */	mtctr r12
/* 8030FEBC 002D947C  4E 80 04 21 */	bctrl 
/* 8030FEC0 002D9480  48 00 00 20 */	b lbl_8030FEE0
lbl_8030FEC4:
/* 8030FEC4 002D9484  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FEC8 002D9488  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FECC 002D948C  41 82 00 14 */	beq lbl_8030FEE0
/* 8030FED0 002D9490  38 60 00 02 */	li r3, 2
/* 8030FED4 002D9494  38 80 00 00 */	li r4, 0
/* 8030FED8 002D9498  7D 89 03 A6 */	mtctr r12
/* 8030FEDC 002D949C  4E 80 04 21 */	bctrl 
lbl_8030FEE0:
/* 8030FEE0 002D94A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FEE4 002D94A4  7C 08 03 A6 */	mtlr r0
/* 8030FEE8 002D94A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FEEC 002D94AC  4E 80 00 20 */	blr

.global lbl_8030FEF0
lbl_8030FEF0:
/* 8030FEF0 002D94B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FEF4 002D94B4  7C 08 02 A6 */	mflr r0
/* 8030FEF8 002D94B8  2C 03 00 00 */	cmpwi r3, 0
/* 8030FEFC 002D94BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FF00 002D94C0  41 82 00 0C */	beq lbl_8030FF0C
/* 8030FF04 002D94C4  2C 03 FF FA */	cmpwi r3, -6
/* 8030FF08 002D94C8  40 82 00 50 */	bne lbl_8030FF58
lbl_8030FF0C:
/* 8030FF0C 002D94CC  3C 60 80 55 */	lis r3, lbl_80549D30@ha
/* 8030FF10 002D94D0  3C C0 80 31 */	lis r6, lbl_8030FE50@ha
/* 8030FF14 002D94D4  3C E0 80 5D */	lis r7, lbl_805CCA6C@ha
/* 8030FF18 002D94D8  38 80 00 3F */	li r4, 0x3f
/* 8030FF1C 002D94DC  38 63 9D 30 */	addi r3, r3, lbl_80549D30@l
/* 8030FF20 002D94E0  38 C6 FE 50 */	addi r6, r6, lbl_8030FE50@l
/* 8030FF24 002D94E4  38 E7 CA 6C */	addi r7, r7, lbl_805CCA6C@l
/* 8030FF28 002D94E8  38 A0 00 00 */	li r5, 0
/* 8030FF2C 002D94EC  48 03 EA 15 */	bl func_8034E940
/* 8030FF30 002D94F0  2C 03 00 00 */	cmpwi r3, 0
/* 8030FF34 002D94F4  41 82 00 40 */	beq lbl_8030FF74
/* 8030FF38 002D94F8  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FF3C 002D94FC  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FF40 002D9500  41 82 00 34 */	beq lbl_8030FF74
/* 8030FF44 002D9504  38 60 00 02 */	li r3, 2
/* 8030FF48 002D9508  38 80 00 00 */	li r4, 0
/* 8030FF4C 002D950C  7D 89 03 A6 */	mtctr r12
/* 8030FF50 002D9510  4E 80 04 21 */	bctrl 
/* 8030FF54 002D9514  48 00 00 20 */	b lbl_8030FF74
lbl_8030FF58:
/* 8030FF58 002D9518  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FF5C 002D951C  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FF60 002D9520  41 82 00 14 */	beq lbl_8030FF74
/* 8030FF64 002D9524  38 60 00 02 */	li r3, 2
/* 8030FF68 002D9528  38 80 00 00 */	li r4, 0
/* 8030FF6C 002D952C  7D 89 03 A6 */	mtctr r12
/* 8030FF70 002D9530  4E 80 04 21 */	bctrl 
lbl_8030FF74:
/* 8030FF74 002D9534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030FF78 002D9538  7C 08 03 A6 */	mtlr r0
/* 8030FF7C 002D953C  38 21 00 10 */	addi r1, r1, 0x10
/* 8030FF80 002D9540  4E 80 00 20 */	blr 
/* 8030FF84 002D9544  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8030FF88 002D9548  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8030FF8C 002D954C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
lbl_8030FF90:
/* 8030FF90 002D9550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030FF94 002D9554  7C 08 02 A6 */	mflr r0
/* 8030FF98 002D9558  28 03 00 01 */	cmplwi r3, 1
/* 8030FF9C 002D955C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030FFA0 002D9560  40 82 00 18 */	bne lbl_8030FFB8
/* 8030FFA4 002D9564  48 00 26 FD */	bl func_803126A0
/* 8030FFA8 002D9568  3C 80 80 5D */	lis r4, lbl_805CCB40@ha
/* 8030FFAC 002D956C  38 84 CB 40 */	addi r4, r4, lbl_805CCB40@l
/* 8030FFB0 002D9570  90 64 00 14 */	stw r3, 0x14(r4)
/* 8030FFB4 002D9574  48 00 00 14 */	b lbl_8030FFC8
lbl_8030FFB8:
/* 8030FFB8 002D9578  3C 60 80 5D */	lis r3, lbl_805CCB40@ha
/* 8030FFBC 002D957C  38 00 FF FF */	li r0, -1
/* 8030FFC0 002D9580  38 63 CB 40 */	addi r3, r3, lbl_805CCB40@l
/* 8030FFC4 002D9584  90 03 00 14 */	stw r0, 0x14(r3)
lbl_8030FFC8:
/* 8030FFC8 002D9588  3C 60 80 55 */	lis r3, lbl_80549D4C@ha
/* 8030FFCC 002D958C  3C C0 80 31 */	lis r6, lbl_8030FEF0@ha
/* 8030FFD0 002D9590  3C E0 80 5D */	lis r7, lbl_805CCA6C@ha
/* 8030FFD4 002D9594  38 80 00 3F */	li r4, 0x3f
/* 8030FFD8 002D9598  38 63 9D 4C */	addi r3, r3, lbl_80549D4C@l
/* 8030FFDC 002D959C  38 C6 FE F0 */	addi r6, r6, lbl_8030FEF0@l
/* 8030FFE0 002D95A0  38 E7 CA 6C */	addi r7, r7, lbl_805CCA6C@l
/* 8030FFE4 002D95A4  38 A0 00 00 */	li r5, 0
/* 8030FFE8 002D95A8  48 03 F0 B9 */	bl func_8034F0A0
/* 8030FFEC 002D95AC  2C 03 00 00 */	cmpwi r3, 0
/* 8030FFF0 002D95B0  41 82 00 20 */	beq lbl_80310010
/* 8030FFF4 002D95B4  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 8030FFF8 002D95B8  2C 0C 00 00 */	cmpwi r12, 0
/* 8030FFFC 002D95BC  41 82 00 14 */	beq lbl_80310010
/* 80310000 002D95C0  38 60 00 02 */	li r3, 2
/* 80310004 002D95C4  38 80 00 00 */	li r4, 0
/* 80310008 002D95C8  7D 89 03 A6 */	mtctr r12
/* 8031000C 002D95CC  4E 80 04 21 */	bctrl 
lbl_80310010:
/* 80310010 002D95D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310014 002D95D4  7C 08 03 A6 */	mtlr r0
/* 80310018 002D95D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031001C 002D95DC  4E 80 00 20 */	blr

.global lbl_80310020
lbl_80310020:
/* 80310020 002D95E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310024 002D95E4  7C 08 02 A6 */	mflr r0
/* 80310028 002D95E8  28 03 00 01 */	cmplwi r3, 1
/* 8031002C 002D95EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310030 002D95F0  40 82 00 18 */	bne lbl_80310048
/* 80310034 002D95F4  48 00 26 5D */	bl func_80312690
/* 80310038 002D95F8  3C 80 80 5D */	lis r4, lbl_805CCB40@ha
/* 8031003C 002D95FC  38 84 CB 40 */	addi r4, r4, lbl_805CCB40@l
/* 80310040 002D9600  90 64 00 10 */	stw r3, 0x10(r4)
/* 80310044 002D9604  48 00 00 14 */	b lbl_80310058
lbl_80310048:
/* 80310048 002D9608  3C 60 80 5D */	lis r3, lbl_805CCB40@ha
/* 8031004C 002D960C  38 00 FF FF */	li r0, -1
/* 80310050 002D9610  38 63 CB 40 */	addi r3, r3, lbl_805CCB40@l
/* 80310054 002D9614  90 03 00 10 */	stw r0, 0x10(r3)
lbl_80310058:
/* 80310058 002D9618  3C 60 80 31 */	lis r3, lbl_8030FF90@ha
/* 8031005C 002D961C  38 63 FF 90 */	addi r3, r3, lbl_8030FF90@l
/* 80310060 002D9620  48 00 29 31 */	bl func_80312990
/* 80310064 002D9624  2C 03 00 00 */	cmpwi r3, 0
/* 80310068 002D9628  40 82 00 20 */	bne lbl_80310088
/* 8031006C 002D962C  81 8D B7 00 */	lwz r12, lbl_80667880@sda21(r13)
/* 80310070 002D9630  2C 0C 00 00 */	cmpwi r12, 0
/* 80310074 002D9634  41 82 00 14 */	beq lbl_80310088
/* 80310078 002D9638  38 60 00 02 */	li r3, 2
/* 8031007C 002D963C  38 80 00 00 */	li r4, 0
/* 80310080 002D9640  7D 89 03 A6 */	mtctr r12
/* 80310084 002D9644  4E 80 04 21 */	bctrl 
lbl_80310088:
/* 80310088 002D9648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031008C 002D964C  7C 08 03 A6 */	mtlr r0
/* 80310090 002D9650  38 21 00 10 */	addi r1, r1, 0x10
/* 80310094 002D9654  4E 80 00 20 */	blr 
/* 80310098 002D9658  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8031009C 002D965C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global func_803100A0
func_803100A0:
/* 803100A0 002D9660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803100A4 002D9664  7C 08 02 A6 */	mflr r0
/* 803100A8 002D9668  90 01 00 14 */	stw r0, 0x14(r1)
/* 803100AC 002D966C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803100B0 002D9670  3F E0 80 5D */	lis r31, lbl_805CCB40@ha
/* 803100B4 002D9674  3B FF CB 40 */	addi r31, r31, lbl_805CCB40@l
/* 803100B8 002D9678  93 C1 00 08 */	stw r30, 8(r1)
/* 803100BC 002D967C  7C 9E 23 78 */	mr r30, r4
/* 803100C0 002D9680  90 7F 00 08 */	stw r3, 8(r31)
/* 803100C4 002D9684  48 04 C8 9D */	bl OSGetTime
/* 803100C8 002D9688  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 803100CC 002D968C  38 A0 00 00 */	li r5, 0
/* 803100D0 002D9690  80 06 00 F8 */	lwz r0, 0x800000F8@l(r6)
/* 803100D4 002D9694  54 06 F0 BE */	srwi r6, r0, 2
/* 803100D8 002D9698  4B FA A1 CD */	bl __div2i
/* 803100DC 002D969C  3C 60 80 31 */	lis r3, lbl_80310020@ha
/* 803100E0 002D96A0  90 9F 00 0C */	stw r4, 0xc(r31)
/* 803100E4 002D96A4  38 63 00 20 */	addi r3, r3, lbl_80310020@l
/* 803100E8 002D96A8  93 CD B7 00 */	stw r30, lbl_80667880@sda21(r13)
/* 803100EC 002D96AC  48 00 27 35 */	bl func_80312820
/* 803100F0 002D96B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803100F4 002D96B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803100F8 002D96B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803100FC 002D96BC  7C 08 03 A6 */	mtlr r0
/* 80310100 002D96C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80310104 002D96C4  4E 80 00 20 */	blr 
/* 80310108 002D96C8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8031010C 002D96CC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */