.include "macros.inc"
.file "CriWare/sofdec/sfdcore/mpv/mpv_slice.o"

# 0x803B96F4 - 0x803B9AC8
.text
.balign 4

.fn MPVSL_Init, global
/* 803B96F4 00382CB4  4E 80 00 20 */	blr
.endfn MPVSL_Init

.fn MPVSL_Finish, global
/* 803B96F8 00382CB8  4E 80 00 20 */	blr
.endfn MPVSL_Finish

.fn MPVSL_Create, global
/* 803B96FC 00382CBC  4E 80 00 20 */	blr
.endfn MPVSL_Create

.fn MPVSL_Destroy, global
/* 803B9700 00382CC0  4E 80 00 20 */	blr
.endfn MPVSL_Destroy

.fn MPVSL_DecPicture, global
/* 803B9704 00382CC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B9708 00382CC8  7C 08 02 A6 */	mflr r0
/* 803B970C 00382CCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B9710 00382CD0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803B9714 00382CD4  7C 7F 1B 78 */	mr r31, r3
/* 803B9718 00382CD8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 803B971C 00382CDC  3F C0 80 00 */	lis r30, 0x8000
/* 803B9720 00382CE0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 803B9724 00382CE4  3B A0 00 00 */	li r29, 0x0
/* 803B9728 00382CE8  93 81 00 30 */	stw r28, 0x30(r1)
/* 803B972C 00382CEC  7C 9C 23 78 */	mr r28, r4
/* 803B9730 00382CF0  B3 A3 0C 30 */	sth r29, 0xc30(r3)
.L_803B9734:
/* 803B9734 00382CF4  80 1F 0D A8 */	lwz r0, 0xda8(r31)
/* 803B9738 00382CF8  2C 00 00 00 */	cmpwi r0, 0x0
/* 803B973C 00382CFC  41 82 00 0C */	beq .L_803B9748
/* 803B9740 00382D00  38 60 00 00 */	li r3, 0x0
/* 803B9744 00382D04  48 00 00 E8 */	b .L_803B982C
.L_803B9748:
/* 803B9748 00382D08  7F E3 FB 78 */	mr r3, r31
/* 803B974C 00382D0C  7F 85 E3 78 */	mr r5, r28
/* 803B9750 00382D10  38 80 FF FF */	li r4, -0x1
/* 803B9754 00382D14  4B FE E6 6D */	bl MPVHDEC_RecoverSj
/* 803B9758 00382D18  2C 03 00 00 */	cmpwi r3, 0x0
/* 803B975C 00382D1C  7C 64 1B 78 */	mr r4, r3
/* 803B9760 00382D20  41 82 00 10 */	beq .L_803B9770
/* 803B9764 00382D24  7F E3 FB 78 */	mr r3, r31
/* 803B9768 00382D28  4B FE CA D5 */	bl MPVERR_SetCode
/* 803B976C 00382D2C  48 00 00 C0 */	b .L_803B982C
.L_803B9770:
/* 803B9770 00382D30  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 803B9774 00382D34  7F 83 E3 78 */	mr r3, r28
/* 803B9778 00382D38  38 BE FF FF */	addi r5, r30, -0x1
/* 803B977C 00382D3C  38 C1 00 08 */	addi r6, r1, 0x8
/* 803B9780 00382D40  81 84 00 18 */	lwz r12, 0x18(r4)
/* 803B9784 00382D44  38 80 00 01 */	li r4, 0x1
/* 803B9788 00382D48  7D 89 03 A6 */	mtctr r12
/* 803B978C 00382D4C  4E 80 04 21 */	bctrl
/* 803B9790 00382D50  80 DC 00 00 */	lwz r6, 0x0(r28)
/* 803B9794 00382D54  7F 83 E3 78 */	mr r3, r28
/* 803B9798 00382D58  38 A1 00 08 */	addi r5, r1, 0x8
/* 803B979C 00382D5C  38 80 00 01 */	li r4, 0x1
/* 803B97A0 00382D60  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 803B97A4 00382D64  7D 89 03 A6 */	mtctr r12
/* 803B97A8 00382D68  4E 80 04 21 */	bctrl
/* 803B97AC 00382D6C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B97B0 00382D70  2C 00 00 04 */	cmpwi r0, 0x4
/* 803B97B4 00382D74  41 80 00 44 */	blt .L_803B97F8
/* 803B97B8 00382D78  80 61 00 08 */	lwz r3, 0x8(r1)
/* 803B97BC 00382D7C  4B FE C2 39 */	bl fn_803A59F4
/* 803B97C0 00382D80  54 60 07 FF */	clrlwi. r0, r3, 31
/* 803B97C4 00382D84  41 82 00 34 */	beq .L_803B97F8
/* 803B97C8 00382D88  A8 DF 0C 30 */	lha r6, 0xc30(r31)
/* 803B97CC 00382D8C  7F E3 FB 78 */	mr r3, r31
/* 803B97D0 00382D90  7F 84 E3 78 */	mr r4, r28
/* 803B97D4 00382D94  38 A1 00 10 */	addi r5, r1, 0x10
/* 803B97D8 00382D98  38 06 00 01 */	addi r0, r6, 0x1
/* 803B97DC 00382D9C  B0 1F 0C 30 */	sth r0, 0xc30(r31)
/* 803B97E0 00382DA0  48 00 00 6D */	bl MPVSL_DecSliceOne
/* 803B97E4 00382DA4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B97E8 00382DA8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 803B97EC 00382DAC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803B97F0 00382DB0  7F BD 1A 14 */	add r29, r29, r3
/* 803B97F4 00382DB4  41 82 FF 40 */	beq .L_803B9734
.L_803B97F8:
/* 803B97F8 00382DB8  80 7F 0C D8 */	lwz r3, 0xcd8(r31)
/* 803B97FC 00382DBC  80 1F 0C E4 */	lwz r0, 0xce4(r31)
/* 803B9800 00382DC0  7C 03 00 00 */	cmpw r3, r0
/* 803B9804 00382DC4  41 82 00 10 */	beq .L_803B9814
/* 803B9808 00382DC8  80 7F 0B E8 */	lwz r3, 0xbe8(r31)
/* 803B980C 00382DCC  38 03 00 01 */	addi r0, r3, 0x1
/* 803B9810 00382DD0  90 1F 0B E8 */	stw r0, 0xbe8(r31)
.L_803B9814:
/* 803B9814 00382DD4  2C 1D 00 00 */	cmpwi r29, 0x0
/* 803B9818 00382DD8  41 82 00 10 */	beq .L_803B9828
/* 803B981C 00382DDC  80 1F 0B E8 */	lwz r0, 0xbe8(r31)
/* 803B9820 00382DE0  7C 00 EA 14 */	add r0, r0, r29
/* 803B9824 00382DE4  90 1F 0B E8 */	stw r0, 0xbe8(r31)
.L_803B9828:
/* 803B9828 00382DE8  38 60 00 00 */	li r3, 0x0
.L_803B982C:
/* 803B982C 00382DEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B9830 00382DF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803B9834 00382DF4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 803B9838 00382DF8  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 803B983C 00382DFC  83 81 00 30 */	lwz r28, 0x30(r1)
/* 803B9840 00382E00  7C 08 03 A6 */	mtlr r0
/* 803B9844 00382E04  38 21 00 40 */	addi r1, r1, 0x40
/* 803B9848 00382E08  4E 80 00 20 */	blr
.endfn MPVSL_DecPicture

.fn MPVSL_DecSliceOne, global
/* 803B984C 00382E0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803B9850 00382E10  7C 08 02 A6 */	mflr r0
/* 803B9854 00382E14  39 00 00 00 */	li r8, 0x0
/* 803B9858 00382E18  3C E0 80 00 */	lis r7, 0x8000
/* 803B985C 00382E1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803B9860 00382E20  38 00 FF FF */	li r0, -0x1
/* 803B9864 00382E24  BE E1 00 1C */	stmw r23, 0x1c(r1)
/* 803B9868 00382E28  7C 98 23 78 */	mr r24, r4
/* 803B986C 00382E2C  7C 77 1B 78 */	mr r23, r3
/* 803B9870 00382E30  7C B9 2B 78 */	mr r25, r5
/* 803B9874 00382E34  38 D7 0D 2C */	addi r6, r23, 0xd2c
/* 803B9878 00382E38  38 80 00 01 */	li r4, 0x1
/* 803B987C 00382E3C  91 05 00 00 */	stw r8, 0x0(r5)
/* 803B9880 00382E40  91 05 00 04 */	stw r8, 0x4(r5)
/* 803B9884 00382E44  91 05 00 08 */	stw r8, 0x8(r5)
/* 803B9888 00382E48  90 05 00 0C */	stw r0, 0xc(r5)
/* 803B988C 00382E4C  90 05 00 10 */	stw r0, 0x10(r5)
/* 803B9890 00382E50  91 05 00 14 */	stw r8, 0x14(r5)
/* 803B9894 00382E54  38 A7 FF FF */	addi r5, r7, -0x1
/* 803B9898 00382E58  80 03 0B 50 */	lwz r0, 0xb50(r3)
/* 803B989C 00382E5C  91 03 0D A4 */	stw r8, 0xda4(r3)
/* 803B98A0 00382E60  83 63 0B E8 */	lwz r27, 0xbe8(r3)
/* 803B98A4 00382E64  90 03 0D 48 */	stw r0, 0xd48(r3)
/* 803B98A8 00382E68  83 43 0B EC */	lwz r26, 0xbec(r3)
/* 803B98AC 00382E6C  7F 03 C3 78 */	mr r3, r24
/* 803B98B0 00382E70  80 F8 00 00 */	lwz r7, 0x0(r24)
/* 803B98B4 00382E74  81 87 00 18 */	lwz r12, 0x18(r7)
/* 803B98B8 00382E78  7D 89 03 A6 */	mtctr r12
/* 803B98BC 00382E7C  4E 80 04 21 */	bctrl
/* 803B98C0 00382E80  80 17 0D 2C */	lwz r0, 0xd2c(r23)
/* 803B98C4 00382E84  54 05 00 3A */	clrrwi r5, r0, 2
/* 803B98C8 00382E88  7C 05 00 50 */	subf r0, r5, r0
/* 803B98CC 00382E8C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 803B98D0 00382E90  54 1D 18 39 */	slwi. r29, r0, 3
/* 803B98D4 00382E94  80 65 00 04 */	lwz r3, 0x4(r5)
/* 803B98D8 00382E98  7C 84 E8 30 */	slw r4, r4, r29
/* 803B98DC 00382E9C  41 82 00 18 */	beq .L_803B98F4
/* 803B98E0 00382EA0  20 1D 00 20 */	subfic r0, r29, 0x20
/* 803B98E4 00382EA4  7C 7F E8 30 */	slw r31, r3, r29
/* 803B98E8 00382EA8  7C 60 04 30 */	srw r0, r3, r0
/* 803B98EC 00382EAC  7C 84 03 78 */	or r4, r4, r0
/* 803B98F0 00382EB0  48 00 00 08 */	b .L_803B98F8
.L_803B98F4:
/* 803B98F4 00382EB4  7C 7F 1B 78 */	mr r31, r3
.L_803B98F8:
/* 803B98F8 00382EB8  54 83 06 3E */	clrlwi r3, r4, 24
/* 803B98FC 00382EBC  80 17 0B 64 */	lwz r0, 0xb64(r23)
/* 803B9900 00382EC0  38 83 FF FF */	addi r4, r3, -0x1
/* 803B9904 00382EC4  83 C5 00 08 */	lwz r30, 0x8(r5)
/* 803B9908 00382EC8  7C 64 01 D6 */	mullw r3, r4, r0
/* 803B990C 00382ECC  38 00 FF FF */	li r0, -0x1
/* 803B9910 00382ED0  90 17 0C E0 */	stw r0, 0xce0(r23)
/* 803B9914 00382ED4  2C 1D 00 1B */	cmpwi r29, 0x1b
/* 803B9918 00382ED8  3B 85 00 0C */	addi r28, r5, 0xc
/* 803B991C 00382EDC  90 97 0C DC */	stw r4, 0xcdc(r23)
/* 803B9920 00382EE0  38 03 FF FF */	addi r0, r3, -0x1
/* 803B9924 00382EE4  90 17 0C D8 */	stw r0, 0xcd8(r23)
/* 803B9928 00382EE8  41 80 00 40 */	blt .L_803B9968
/* 803B992C 00382EEC  37 BD FF E5 */	addic. r29, r29, -0x1b
/* 803B9930 00382EF0  41 82 00 20 */	beq .L_803B9950
/* 803B9934 00382EF4  20 1D 00 05 */	subfic r0, r29, 0x5
/* 803B9938 00382EF8  7F C0 04 30 */	srw r0, r30, r0
/* 803B993C 00382EFC  7F FF 03 78 */	or r31, r31, r0
/* 803B9940 00382F00  57 E0 2E FE */	srwi r0, r31, 27
/* 803B9944 00382F04  90 17 0C 8C */	stw r0, 0xc8c(r23)
/* 803B9948 00382F08  7F DF E8 30 */	slw r31, r30, r29
/* 803B994C 00382F0C  48 00 00 10 */	b .L_803B995C
.L_803B9950:
/* 803B9950 00382F10  57 E0 2E FE */	srwi r0, r31, 27
/* 803B9954 00382F14  7F DF F3 78 */	mr r31, r30
/* 803B9958 00382F18  90 17 0C 8C */	stw r0, 0xc8c(r23)
.L_803B995C:
/* 803B995C 00382F1C  83 DC 00 00 */	lwz r30, 0x0(r28)
/* 803B9960 00382F20  3B 9C 00 04 */	addi r28, r28, 0x4
/* 803B9964 00382F24  48 00 00 14 */	b .L_803B9978
.L_803B9968:
/* 803B9968 00382F28  57 E0 2E FE */	srwi r0, r31, 27
/* 803B996C 00382F2C  57 FF 28 34 */	slwi r31, r31, 5
/* 803B9970 00382F30  90 17 0C 8C */	stw r0, 0xc8c(r23)
/* 803B9974 00382F34  3B BD 00 05 */	addi r29, r29, 0x5
.L_803B9978:
/* 803B9978 00382F38  38 77 0C 90 */	addi r3, r23, 0xc90
/* 803B997C 00382F3C  4B FE B7 A9 */	bl MPVDEC_ResetMv
/* 803B9980 00382F40  38 77 0C B4 */	addi r3, r23, 0xcb4
/* 803B9984 00382F44  4B FE B7 A1 */	bl MPVDEC_ResetMv
/* 803B9988 00382F48  7E E3 BB 78 */	mr r3, r23
/* 803B998C 00382F4C  4B FE B7 B1 */	bl MPVDEC_ResetDc
.L_803B9990:
/* 803B9990 00382F50  57 E0 0F FF */	srwi. r0, r31, 31
/* 803B9994 00382F54  40 82 00 1C */	bne .L_803B99B0
/* 803B9998 00382F58  3B BD 00 01 */	addi r29, r29, 0x1
/* 803B999C 00382F5C  2C 1D 00 20 */	cmpwi r29, 0x20
/* 803B99A0 00382F60  41 80 00 5C */	blt .L_803B99FC
/* 803B99A4 00382F64  3B BD FF E0 */	addi r29, r29, -0x20
/* 803B99A8 00382F68  3B 9C 00 04 */	addi r28, r28, 0x4
/* 803B99AC 00382F6C  48 00 00 50 */	b .L_803B99FC
.L_803B99B0:
/* 803B99B0 00382F70  3B BD 00 09 */	addi r29, r29, 0x9
/* 803B99B4 00382F74  2C 1D 00 20 */	cmpwi r29, 0x20
/* 803B99B8 00382F78  41 80 00 18 */	blt .L_803B99D0
/* 803B99BC 00382F7C  3B BD FF E0 */	addi r29, r29, -0x20
/* 803B99C0 00382F80  7F DF E8 30 */	slw r31, r30, r29
/* 803B99C4 00382F84  83 DC 00 00 */	lwz r30, 0x0(r28)
/* 803B99C8 00382F88  3B 9C 00 04 */	addi r28, r28, 0x4
/* 803B99CC 00382F8C  48 00 00 08 */	b .L_803B99D4
.L_803B99D0:
/* 803B99D0 00382F90  57 FF 48 2C */	slwi r31, r31, 9
.L_803B99D4:
/* 803B99D4 00382F94  38 1D 00 07 */	addi r0, r29, 0x7
/* 803B99D8 00382F98  80 97 0D 2C */	lwz r4, 0xd2c(r23)
/* 803B99DC 00382F9C  7C 00 1E 70 */	srawi r0, r0, 3
/* 803B99E0 00382FA0  80 B7 0D 30 */	lwz r5, 0xd30(r23)
/* 803B99E4 00382FA4  7C 7C 02 14 */	add r3, r28, r0
/* 803B99E8 00382FA8  38 03 FF F8 */	addi r0, r3, -0x8
/* 803B99EC 00382FAC  7C 04 00 50 */	subf r0, r4, r0
/* 803B99F0 00382FB0  7C 05 00 00 */	cmpw r5, r0
/* 803B99F4 00382FB4  41 81 FF 9C */	bgt .L_803B9990
/* 803B99F8 00382FB8  48 00 00 BC */	b .L_803B9AB4
.L_803B99FC:
/* 803B99FC 00382FBC  57 A5 07 7E */	clrlwi r5, r29, 29
/* 803B9A00 00382FC0  80 F7 0D 2C */	lwz r7, 0xd2c(r23)
/* 803B9A04 00382FC4  7C 85 E8 50 */	subf r4, r5, r29
/* 803B9A08 00382FC8  38 77 0D 2C */	addi r3, r23, 0xd2c
/* 803B9A0C 00382FCC  38 04 00 07 */	addi r0, r4, 0x7
/* 803B9A10 00382FD0  90 B7 0D 34 */	stw r5, 0xd34(r23)
/* 803B9A14 00382FD4  7C 00 1E 70 */	srawi r0, r0, 3
/* 803B9A18 00382FD8  7C 65 1B 78 */	mr r5, r3
/* 803B9A1C 00382FDC  7C 9C 02 14 */	add r4, r28, r0
/* 803B9A20 00382FE0  38 C1 00 08 */	addi r6, r1, 0x8
/* 803B9A24 00382FE4  38 04 FF F8 */	addi r0, r4, -0x8
/* 803B9A28 00382FE8  7C 87 00 50 */	subf r4, r7, r0
/* 803B9A2C 00382FEC  4B FD CC 39 */	bl SJ_SplitChunk
/* 803B9A30 00382FF0  80 D8 00 00 */	lwz r6, 0x0(r24)
/* 803B9A34 00382FF4  7F 03 C3 78 */	mr r3, r24
/* 803B9A38 00382FF8  38 B7 0D 2C */	addi r5, r23, 0xd2c
/* 803B9A3C 00382FFC  38 80 00 00 */	li r4, 0x0
/* 803B9A40 00383000  81 86 00 20 */	lwz r12, 0x20(r6)
/* 803B9A44 00383004  7D 89 03 A6 */	mtctr r12
/* 803B9A48 00383008  4E 80 04 21 */	bctrl
/* 803B9A4C 0038300C  80 D8 00 00 */	lwz r6, 0x0(r24)
/* 803B9A50 00383010  7F 03 C3 78 */	mr r3, r24
/* 803B9A54 00383014  38 A1 00 08 */	addi r5, r1, 0x8
/* 803B9A58 00383018  38 80 00 01 */	li r4, 0x1
/* 803B9A5C 0038301C  81 86 00 1C */	lwz r12, 0x1c(r6)
/* 803B9A60 00383020  7D 89 03 A6 */	mtctr r12
/* 803B9A64 00383024  4E 80 04 21 */	bctrl
/* 803B9A68 00383028  81 97 0C 60 */	lwz r12, 0xc60(r23)
/* 803B9A6C 0038302C  7E E3 BB 78 */	mr r3, r23
/* 803B9A70 00383030  7F 04 C3 78 */	mr r4, r24
/* 803B9A74 00383034  7D 89 03 A6 */	mtctr r12
/* 803B9A78 00383038  4E 80 04 21 */	bctrl
/* 803B9A7C 0038303C  80 77 0C D8 */	lwz r3, 0xcd8(r23)
/* 803B9A80 00383040  80 17 0C E4 */	lwz r0, 0xce4(r23)
/* 803B9A84 00383044  7C 03 00 00 */	cmpw r3, r0
/* 803B9A88 00383048  41 80 00 0C */	blt .L_803B9A94
/* 803B9A8C 0038304C  38 00 00 01 */	li r0, 0x1
/* 803B9A90 00383050  90 19 00 14 */	stw r0, 0x14(r25)
.L_803B9A94:
/* 803B9A94 00383054  80 17 0B E8 */	lwz r0, 0xbe8(r23)
/* 803B9A98 00383058  7C 1B 00 50 */	subf r0, r27, r0
/* 803B9A9C 0038305C  90 19 00 00 */	stw r0, 0x0(r25)
/* 803B9AA0 00383060  80 17 0B EC */	lwz r0, 0xbec(r23)
/* 803B9AA4 00383064  7C 1A 00 50 */	subf r0, r26, r0
/* 803B9AA8 00383068  90 19 00 04 */	stw r0, 0x4(r25)
/* 803B9AAC 0038306C  80 17 0D A4 */	lwz r0, 0xda4(r23)
/* 803B9AB0 00383070  90 19 00 08 */	stw r0, 0x8(r25)
.L_803B9AB4:
/* 803B9AB4 00383074  BA E1 00 1C */	lmw r23, 0x1c(r1)
/* 803B9AB8 00383078  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803B9ABC 0038307C  7C 08 03 A6 */	mtlr r0
/* 803B9AC0 00383080  38 21 00 40 */	addi r1, r1, 0x40
/* 803B9AC4 00383084  4E 80 00 20 */	blr
.endfn MPVSL_DecSliceOne
