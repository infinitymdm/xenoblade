.include "macros.inc"
.file "PowerPC_EABI_Support/Runtime/NMWException.o"

# 0x8001BEE8 - 0x8001BF30
.section extab, "a"
.balign 4

.obj "@etb_8001BEE8", local
.hidden "@etb_8001BEE8"
	.4byte 0x28080000
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv
.endobj "@etb_8001BEE8"

.obj "@etb_8001BF00", local
.hidden "@etb_8001BF00"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001BF00"

.obj "@etb_8001BF08", local
.hidden "@etb_8001BF08"
	.4byte 0x20080000
	.4byte 0x0000005C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__26__partial_array_destructorFv
.endobj "@etb_8001BF08"

.obj "@etb_8001BF20", local
.hidden "@etb_8001BF20"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001BF20"

.obj "@etb_8001BF28", local
.hidden "@etb_8001BF28"
	.4byte 0x30080000
	.4byte 0x00000000
.endobj "@etb_8001BF28"

# 0x80033A7C - 0x80033AB8
.section extabindex, "a"
.balign 4

.obj "@eti_80033A7C", local
.hidden "@eti_80033A7C"
	.4byte __construct_new_array
	.4byte 0x00000104
	.4byte "@etb_8001BEE8"
.endobj "@eti_80033A7C"

.obj "@eti_80033A88", local
.hidden "@eti_80033A88"
	.4byte __dt__26__partial_array_destructorFv
	.4byte 0x000000BC
	.4byte "@etb_8001BF00"
.endobj "@eti_80033A88"

.obj "@eti_80033A94", local
.hidden "@eti_80033A94"
	.4byte __construct_array
	.4byte 0x000000F8
	.4byte "@etb_8001BF08"
.endobj "@eti_80033A94"

.obj "@eti_80033AA0", local
.hidden "@eti_80033AA0"
	.4byte __destroy_arr
	.4byte 0x00000078
	.4byte "@etb_8001BF20"
.endobj "@eti_80033AA0"

.obj "@eti_80033AAC", local
.hidden "@eti_80033AAC"
	.4byte __destroy_new_array
	.4byte 0x00000080
	.4byte "@etb_8001BF28"
.endobj "@eti_80033AAC"

# 0x802B96FC - 0x802B9CF0
.text
.balign 4

# std::dthandler()
.fn dthandler__3stdFv, local
/* 802B96FC 00282CBC  48 00 DA EC */	b abort
.endfn dthandler__3stdFv

# std::terminate()
.fn terminate__3stdFv, global
/* 802B9700 00282CC0  81 8D 96 E0 */	lwz r12, lbl_80665860@sda21(r13)
/* 802B9704 00282CC4  7D 89 03 A6 */	mtctr r12
/* 802B9708 00282CC8  4E 80 04 20 */	bctr
.endfn terminate__3stdFv

.fn __throw_catch_compare, global
/* 802B970C 00282CCC  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B9710 00282CD0  38 00 00 00 */	li r0, 0x0
/* 802B9714 00282CD4  90 05 00 00 */	stw r0, 0x0(r5)
/* 802B9718 00282CD8  7C 87 23 78 */	mr r7, r4
/* 802B971C 00282CDC  40 82 00 0C */	bne .L_802B9728
/* 802B9720 00282CE0  38 60 00 01 */	li r3, 0x1
/* 802B9724 00282CE4  4E 80 00 20 */	blr
.L_802B9728:
/* 802B9728 00282CE8  88 04 00 00 */	lbz r0, 0x0(r4)
/* 802B972C 00282CEC  7C 66 1B 78 */	mr r6, r3
/* 802B9730 00282CF0  2C 00 00 50 */	cmpwi r0, 0x50
/* 802B9734 00282CF4  40 82 00 58 */	bne .L_802B978C
/* 802B9738 00282CF8  88 04 00 01 */	lbz r0, 0x1(r4)
/* 802B973C 00282CFC  38 E4 00 01 */	addi r7, r4, 0x1
/* 802B9740 00282D00  2C 00 00 43 */	cmpwi r0, 0x43
/* 802B9744 00282D04  40 82 00 08 */	bne .L_802B974C
/* 802B9748 00282D08  38 E7 00 01 */	addi r7, r7, 0x1
.L_802B974C:
/* 802B974C 00282D0C  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B9750 00282D10  2C 00 00 56 */	cmpwi r0, 0x56
/* 802B9754 00282D14  40 82 00 08 */	bne .L_802B975C
/* 802B9758 00282D18  38 E7 00 01 */	addi r7, r7, 0x1
.L_802B975C:
/* 802B975C 00282D1C  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B9760 00282D20  2C 00 00 76 */	cmpwi r0, 0x76
/* 802B9764 00282D24  40 82 00 24 */	bne .L_802B9788
/* 802B9768 00282D28  88 03 00 00 */	lbz r0, 0x0(r3)
/* 802B976C 00282D2C  7C 00 07 74 */	extsb r0, r0
/* 802B9770 00282D30  2C 00 00 50 */	cmpwi r0, 0x50
/* 802B9774 00282D34  41 82 00 0C */	beq .L_802B9780
/* 802B9778 00282D38  2C 00 00 2A */	cmpwi r0, 0x2a
/* 802B977C 00282D3C  40 82 00 0C */	bne .L_802B9788
.L_802B9780:
/* 802B9780 00282D40  38 60 00 01 */	li r3, 0x1
/* 802B9784 00282D44  4E 80 00 20 */	blr
.L_802B9788:
/* 802B9788 00282D48  7C 87 23 78 */	mr r7, r4
.L_802B978C:
/* 802B978C 00282D4C  88 03 00 00 */	lbz r0, 0x0(r3)
/* 802B9790 00282D50  7C 00 07 74 */	extsb r0, r0
/* 802B9794 00282D54  2C 00 00 2A */	cmpwi r0, 0x2a
/* 802B9798 00282D58  41 82 00 0C */	beq .L_802B97A4
/* 802B979C 00282D5C  2C 00 00 21 */	cmpwi r0, 0x21
/* 802B97A0 00282D60  40 82 01 38 */	bne .L_802B98D8
.L_802B97A4:
/* 802B97A4 00282D64  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B97A8 00282D68  38 C3 00 01 */	addi r6, r3, 0x1
/* 802B97AC 00282D6C  88 63 00 00 */	lbz r3, 0x0(r3)
/* 802B97B0 00282D70  38 E7 00 01 */	addi r7, r7, 0x1
/* 802B97B4 00282D74  7C 00 07 74 */	extsb r0, r0
/* 802B97B8 00282D78  7C 63 07 74 */	extsb r3, r3
/* 802B97BC 00282D7C  7C 03 00 00 */	cmpw r3, r0
/* 802B97C0 00282D80  41 82 00 0C */	beq .L_802B97CC
/* 802B97C4 00282D84  38 60 00 00 */	li r3, 0x0
/* 802B97C8 00282D88  4E 80 00 20 */	blr
.L_802B97CC:
/* 802B97CC 00282D8C  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B97D0 00282D90  38 E7 00 01 */	addi r7, r7, 0x1
/* 802B97D4 00282D94  88 66 00 00 */	lbz r3, 0x0(r6)
/* 802B97D8 00282D98  7C 00 07 74 */	extsb r0, r0
/* 802B97DC 00282D9C  7C 63 07 74 */	extsb r3, r3
/* 802B97E0 00282DA0  7C 03 00 00 */	cmpw r3, r0
/* 802B97E4 00282DA4  40 82 00 48 */	bne .L_802B982C
/* 802B97E8 00282DA8  2C 03 00 21 */	cmpwi r3, 0x21
/* 802B97EC 00282DAC  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B97F0 00282DB0  40 82 FF DC */	bne .L_802B97CC
/* 802B97F4 00282DB4  38 80 00 00 */	li r4, 0x0
/* 802B97F8 00282DB8  48 00 00 1C */	b .L_802B9814
.L_802B97FC:
/* 802B97FC 00282DBC  88 66 00 00 */	lbz r3, 0x0(r6)
/* 802B9800 00282DC0  1C 04 00 0A */	mulli r0, r4, 0xa
/* 802B9804 00282DC4  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B9808 00282DC8  7C 63 07 74 */	extsb r3, r3
/* 802B980C 00282DCC  7C 83 02 14 */	add r4, r3, r0
/* 802B9810 00282DD0  38 84 FF D0 */	addi r4, r4, -0x30
.L_802B9814:
/* 802B9814 00282DD4  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9818 00282DD8  2C 00 00 21 */	cmpwi r0, 0x21
/* 802B981C 00282DDC  40 82 FF E0 */	bne .L_802B97FC
/* 802B9820 00282DE0  90 85 00 00 */	stw r4, 0x0(r5)
/* 802B9824 00282DE4  38 60 00 01 */	li r3, 0x1
/* 802B9828 00282DE8  4E 80 00 20 */	blr
.L_802B982C:
/* 802B982C 00282DEC  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9830 00282DF0  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B9834 00282DF4  2C 00 00 21 */	cmpwi r0, 0x21
/* 802B9838 00282DF8  40 82 FF F4 */	bne .L_802B982C
.L_802B983C:
/* 802B983C 00282DFC  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9840 00282E00  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B9844 00282E04  2C 00 00 21 */	cmpwi r0, 0x21
/* 802B9848 00282E08  40 82 FF F4 */	bne .L_802B983C
/* 802B984C 00282E0C  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9850 00282E10  7C 00 07 75 */	extsb. r0, r0
/* 802B9854 00282E14  40 82 00 0C */	bne .L_802B9860
/* 802B9858 00282E18  38 60 00 00 */	li r3, 0x0
/* 802B985C 00282E1C  4E 80 00 20 */	blr
.L_802B9860:
/* 802B9860 00282E20  38 E4 00 01 */	addi r7, r4, 0x1
/* 802B9864 00282E24  4B FF FF 68 */	b .L_802B97CC
/* 802B9868 00282E28  48 00 00 70 */	b .L_802B98D8
.L_802B986C:
/* 802B986C 00282E2C  8C 07 00 01 */	lbzu r0, 0x1(r7)
/* 802B9870 00282E30  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B9874 00282E34  2C 00 00 43 */	cmpwi r0, 0x43
/* 802B9878 00282E38  40 82 00 18 */	bne .L_802B9890
/* 802B987C 00282E3C  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9880 00282E40  2C 00 00 43 */	cmpwi r0, 0x43
/* 802B9884 00282E44  40 82 00 08 */	bne .L_802B988C
/* 802B9888 00282E48  38 C6 00 01 */	addi r6, r6, 0x1
.L_802B988C:
/* 802B988C 00282E4C  38 E7 00 01 */	addi r7, r7, 0x1
.L_802B9890:
/* 802B9890 00282E50  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B9894 00282E54  7C 03 07 74 */	extsb r3, r0
/* 802B9898 00282E58  2C 03 00 43 */	cmpwi r3, 0x43
/* 802B989C 00282E5C  40 82 00 0C */	bne .L_802B98A8
/* 802B98A0 00282E60  38 60 00 00 */	li r3, 0x0
/* 802B98A4 00282E64  4E 80 00 20 */	blr
.L_802B98A8:
/* 802B98A8 00282E68  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B98AC 00282E6C  2C 00 00 56 */	cmpwi r0, 0x56
/* 802B98B0 00282E70  40 82 00 14 */	bne .L_802B98C4
/* 802B98B4 00282E74  2C 03 00 56 */	cmpwi r3, 0x56
/* 802B98B8 00282E78  40 82 00 08 */	bne .L_802B98C0
/* 802B98BC 00282E7C  38 C6 00 01 */	addi r6, r6, 0x1
.L_802B98C0:
/* 802B98C0 00282E80  38 E7 00 01 */	addi r7, r7, 0x1
.L_802B98C4:
/* 802B98C4 00282E84  88 06 00 00 */	lbz r0, 0x0(r6)
/* 802B98C8 00282E88  2C 00 00 56 */	cmpwi r0, 0x56
/* 802B98CC 00282E8C  40 82 00 0C */	bne .L_802B98D8
/* 802B98D0 00282E90  38 60 00 00 */	li r3, 0x0
/* 802B98D4 00282E94  4E 80 00 20 */	blr
.L_802B98D8:
/* 802B98D8 00282E98  88 66 00 00 */	lbz r3, 0x0(r6)
/* 802B98DC 00282E9C  7C 60 07 74 */	extsb r0, r3
/* 802B98E0 00282EA0  2C 00 00 50 */	cmpwi r0, 0x50
/* 802B98E4 00282EA4  41 82 00 0C */	beq .L_802B98F0
/* 802B98E8 00282EA8  2C 00 00 52 */	cmpwi r0, 0x52
/* 802B98EC 00282EAC  40 82 00 34 */	bne .L_802B9920
.L_802B98F0:
/* 802B98F0 00282EB0  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B98F4 00282EB4  7C 63 07 74 */	extsb r3, r3
/* 802B98F8 00282EB8  7C 00 07 74 */	extsb r0, r0
/* 802B98FC 00282EBC  7C 03 00 00 */	cmpw r3, r0
/* 802B9900 00282EC0  41 82 FF 6C */	beq .L_802B986C
/* 802B9904 00282EC4  48 00 00 1C */	b .L_802B9920
.L_802B9908:
/* 802B9908 00282EC8  7C 80 07 75 */	extsb. r0, r4
/* 802B990C 00282ECC  40 82 00 0C */	bne .L_802B9918
/* 802B9910 00282ED0  38 60 00 01 */	li r3, 0x1
/* 802B9914 00282ED4  4E 80 00 20 */	blr
.L_802B9918:
/* 802B9918 00282ED8  38 C6 00 01 */	addi r6, r6, 0x1
/* 802B991C 00282EDC  38 E7 00 01 */	addi r7, r7, 0x1
.L_802B9920:
/* 802B9920 00282EE0  88 86 00 00 */	lbz r4, 0x0(r6)
/* 802B9924 00282EE4  88 07 00 00 */	lbz r0, 0x0(r7)
/* 802B9928 00282EE8  7C 83 07 74 */	extsb r3, r4
/* 802B992C 00282EEC  7C 00 07 74 */	extsb r0, r0
/* 802B9930 00282EF0  7C 03 00 00 */	cmpw r3, r0
/* 802B9934 00282EF4  41 82 FF D4 */	beq .L_802B9908
/* 802B9938 00282EF8  38 60 00 00 */	li r3, 0x0
/* 802B993C 00282EFC  4E 80 00 20 */	blr
.endfn __throw_catch_compare

.fn __construct_new_array, global
/* 802B9940 00282F00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802B9944 00282F04  7C 08 02 A6 */	mflr r0
/* 802B9948 00282F08  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B994C 00282F0C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802B9950 00282F10  BF 61 00 2C */	stmw r27, 0x2c(r1)
/* 802B9954 00282F14  7C 7E 1B 78 */	mr r30, r3
/* 802B9958 00282F18  7C 9B 23 78 */	mr r27, r4
/* 802B995C 00282F1C  7C DC 33 78 */	mr r28, r6
/* 802B9960 00282F20  7C FD 3B 78 */	mr r29, r7
/* 802B9964 00282F24  41 82 00 C8 */	beq .L_802B9A2C
/* 802B9968 00282F28  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B996C 00282F2C  90 C3 00 00 */	stw r6, 0x0(r3)
/* 802B9970 00282F30  3B C3 00 10 */	addi r30, r3, 0x10
/* 802B9974 00282F34  90 E3 00 04 */	stw r7, 0x4(r3)
/* 802B9978 00282F38  41 82 00 B4 */	beq .L_802B9A2C
/* 802B997C 00282F3C  38 00 00 00 */	li r0, 0x0
/* 802B9980 00282F40  93 C1 00 08 */	stw r30, 0x8(r1)
/* 802B9984 00282F44  7F DF F3 78 */	mr r31, r30
/* 802B9988 00282F48  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802B998C 00282F4C  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B9990 00282F50  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802B9994 00282F54  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B9998 00282F58  48 00 00 28 */	b .L_802B99C0
.L_802B999C:
/* 802B999C 00282F5C  7F 6C DB 78 */	mr r12, r27
/* 802B99A0 00282F60  7F E3 FB 78 */	mr r3, r31
/* 802B99A4 00282F64  38 80 00 01 */	li r4, 0x1
/* 802B99A8 00282F68  7D 89 03 A6 */	mtctr r12
/* 802B99AC 00282F6C  4E 80 04 21 */	bctrl
/* 802B99B0 00282F70  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802B99B4 00282F74  7F FF E2 14 */	add r31, r31, r28
/* 802B99B8 00282F78  38 03 00 01 */	addi r0, r3, 0x1
/* 802B99BC 00282F7C  90 01 00 18 */	stw r0, 0x18(r1)
.L_802B99C0:
/* 802B99C0 00282F80  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802B99C4 00282F84  7C 04 E8 40 */	cmplw r4, r29
/* 802B99C8 00282F88  41 80 FF D4 */	blt .L_802B999C
/* 802B99CC 00282F8C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802B99D0 00282F90  7C 04 00 40 */	cmplw r4, r0
/* 802B99D4 00282F94  40 80 00 58 */	bge .L_802B9A2C
/* 802B99D8 00282F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B99DC 00282F9C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B99E0 00282FA0  41 82 00 4C */	beq .L_802B9A2C
/* 802B99E4 00282FA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B99E8 00282FA8  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802B99EC 00282FAC  7C 00 21 D6 */	mullw r0, r0, r4
/* 802B99F0 00282FB0  7F E3 02 14 */	add r31, r3, r0
/* 802B99F4 00282FB4  48 00 00 2C */	b .L_802B9A20
.L_802B99F8:
/* 802B99F8 00282FB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B99FC 00282FBC  38 80 FF FF */	li r4, -0x1
/* 802B9A00 00282FC0  81 81 00 14 */	lwz r12, 0x14(r1)
/* 802B9A04 00282FC4  7F E0 F8 50 */	subf r31, r0, r31
/* 802B9A08 00282FC8  7F E3 FB 78 */	mr r3, r31
/* 802B9A0C 00282FCC  7D 89 03 A6 */	mtctr r12
/* 802B9A10 00282FD0  4E 80 04 21 */	bctrl
/* 802B9A14 00282FD4  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802B9A18 00282FD8  38 03 FF FF */	addi r0, r3, -0x1
/* 802B9A1C 00282FDC  90 01 00 18 */	stw r0, 0x18(r1)
.L_802B9A20:
/* 802B9A20 00282FE0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802B9A24 00282FE4  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B9A28 00282FE8  40 82 FF D0 */	bne .L_802B99F8
.L_802B9A2C:
/* 802B9A2C 00282FEC  7F C3 F3 78 */	mr r3, r30
/* 802B9A30 00282FF0  BB 61 00 2C */	lmw r27, 0x2c(r1)
/* 802B9A34 00282FF4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802B9A38 00282FF8  7C 08 03 A6 */	mtlr r0
/* 802B9A3C 00282FFC  38 21 00 40 */	addi r1, r1, 0x40
/* 802B9A40 00283000  4E 80 00 20 */	blr
.endfn __construct_new_array

# __partial_array_destructor::~__partial_array_destructor()
.fn __dt__26__partial_array_destructorFv, weak
/* 802B9A44 00283004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9A48 00283008  7C 08 02 A6 */	mflr r0
/* 802B9A4C 0028300C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B9A50 00283010  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9A54 00283014  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B9A58 00283018  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B9A5C 0028301C  7C 9E 23 78 */	mr r30, r4
/* 802B9A60 00283020  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B9A64 00283024  7C 7D 1B 78 */	mr r29, r3
/* 802B9A68 00283028  41 82 00 78 */	beq .L_802B9AE0
/* 802B9A6C 0028302C  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802B9A70 00283030  80 03 00 08 */	lwz r0, 0x8(r3)
/* 802B9A74 00283034  7C 04 00 40 */	cmplw r4, r0
/* 802B9A78 00283038  40 80 00 58 */	bge .L_802B9AD0
/* 802B9A7C 0028303C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802B9A80 00283040  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B9A84 00283044  41 82 00 4C */	beq .L_802B9AD0
/* 802B9A88 00283048  80 03 00 04 */	lwz r0, 0x4(r3)
/* 802B9A8C 0028304C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 802B9A90 00283050  7C 00 21 D6 */	mullw r0, r0, r4
/* 802B9A94 00283054  7F E3 02 14 */	add r31, r3, r0
/* 802B9A98 00283058  48 00 00 2C */	b .L_802B9AC4
.L_802B9A9C:
/* 802B9A9C 0028305C  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 802B9AA0 00283060  38 80 FF FF */	li r4, -0x1
/* 802B9AA4 00283064  81 9D 00 0C */	lwz r12, 0xc(r29)
/* 802B9AA8 00283068  7F E0 F8 50 */	subf r31, r0, r31
/* 802B9AAC 0028306C  7F E3 FB 78 */	mr r3, r31
/* 802B9AB0 00283070  7D 89 03 A6 */	mtctr r12
/* 802B9AB4 00283074  4E 80 04 21 */	bctrl
/* 802B9AB8 00283078  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 802B9ABC 0028307C  38 03 FF FF */	addi r0, r3, -0x1
/* 802B9AC0 00283080  90 1D 00 10 */	stw r0, 0x10(r29)
.L_802B9AC4:
/* 802B9AC4 00283084  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 802B9AC8 00283088  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B9ACC 0028308C  40 82 FF D0 */	bne .L_802B9A9C
.L_802B9AD0:
/* 802B9AD0 00283090  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802B9AD4 00283094  40 81 00 0C */	ble .L_802B9AE0
/* 802B9AD8 00283098  7F A3 EB 78 */	mr r3, r29
/* 802B9ADC 0028309C  48 17 B1 51 */	bl __dl__FPv
.L_802B9AE0:
/* 802B9AE0 002830A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B9AE4 002830A4  7F A3 EB 78 */	mr r3, r29
/* 802B9AE8 002830A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B9AEC 002830AC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B9AF0 002830B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9AF4 002830B4  7C 08 03 A6 */	mtlr r0
/* 802B9AF8 002830B8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B9AFC 002830BC  4E 80 00 20 */	blr
.endfn __dt__26__partial_array_destructorFv

.fn __construct_array, global
/* 802B9B00 002830C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B9B04 002830C4  7C 08 02 A6 */	mflr r0
/* 802B9B08 002830C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B9B0C 002830CC  38 00 00 00 */	li r0, 0x0
/* 802B9B10 002830D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802B9B14 002830D4  7C 7F 1B 78 */	mr r31, r3
/* 802B9B18 002830D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802B9B1C 002830DC  7C FE 3B 78 */	mr r30, r7
/* 802B9B20 002830E0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 802B9B24 002830E4  7C DD 33 78 */	mr r29, r6
/* 802B9B28 002830E8  93 81 00 20 */	stw r28, 0x20(r1)
/* 802B9B2C 002830EC  7C 9C 23 78 */	mr r28, r4
/* 802B9B30 002830F0  90 61 00 08 */	stw r3, 0x8(r1)
/* 802B9B34 002830F4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 802B9B38 002830F8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 802B9B3C 002830FC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802B9B40 00283100  90 01 00 18 */	stw r0, 0x18(r1)
/* 802B9B44 00283104  48 00 00 28 */	b .L_802B9B6C
.L_802B9B48:
/* 802B9B48 00283108  7F 8C E3 78 */	mr r12, r28
/* 802B9B4C 0028310C  7F E3 FB 78 */	mr r3, r31
/* 802B9B50 00283110  38 80 00 01 */	li r4, 0x1
/* 802B9B54 00283114  7D 89 03 A6 */	mtctr r12
/* 802B9B58 00283118  4E 80 04 21 */	bctrl
/* 802B9B5C 0028311C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802B9B60 00283120  7F FF EA 14 */	add r31, r31, r29
/* 802B9B64 00283124  38 03 00 01 */	addi r0, r3, 0x1
/* 802B9B68 00283128  90 01 00 18 */	stw r0, 0x18(r1)
.L_802B9B6C:
/* 802B9B6C 0028312C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 802B9B70 00283130  7C 04 F0 40 */	cmplw r4, r30
/* 802B9B74 00283134  41 80 FF D4 */	blt .L_802B9B48
/* 802B9B78 00283138  80 01 00 10 */	lwz r0, 0x10(r1)
/* 802B9B7C 0028313C  7C 04 00 40 */	cmplw r4, r0
/* 802B9B80 00283140  40 80 00 58 */	bge .L_802B9BD8
/* 802B9B84 00283144  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9B88 00283148  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B9B8C 0028314C  41 82 00 4C */	beq .L_802B9BD8
/* 802B9B90 00283150  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B9B94 00283154  80 61 00 08 */	lwz r3, 0x8(r1)
/* 802B9B98 00283158  7C 00 21 D6 */	mullw r0, r0, r4
/* 802B9B9C 0028315C  7F E3 02 14 */	add r31, r3, r0
/* 802B9BA0 00283160  48 00 00 2C */	b .L_802B9BCC
.L_802B9BA4:
/* 802B9BA4 00283164  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802B9BA8 00283168  38 80 FF FF */	li r4, -0x1
/* 802B9BAC 0028316C  81 81 00 14 */	lwz r12, 0x14(r1)
/* 802B9BB0 00283170  7F E0 F8 50 */	subf r31, r0, r31
/* 802B9BB4 00283174  7F E3 FB 78 */	mr r3, r31
/* 802B9BB8 00283178  7D 89 03 A6 */	mtctr r12
/* 802B9BBC 0028317C  4E 80 04 21 */	bctrl
/* 802B9BC0 00283180  80 61 00 18 */	lwz r3, 0x18(r1)
/* 802B9BC4 00283184  38 03 FF FF */	addi r0, r3, -0x1
/* 802B9BC8 00283188  90 01 00 18 */	stw r0, 0x18(r1)
.L_802B9BCC:
/* 802B9BCC 0028318C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802B9BD0 00283190  2C 00 00 00 */	cmpwi r0, 0x0
/* 802B9BD4 00283194  40 82 FF D0 */	bne .L_802B9BA4
.L_802B9BD8:
/* 802B9BD8 00283198  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B9BDC 0028319C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802B9BE0 002831A0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802B9BE4 002831A4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 802B9BE8 002831A8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 802B9BEC 002831AC  7C 08 03 A6 */	mtlr r0
/* 802B9BF0 002831B0  38 21 00 30 */	addi r1, r1, 0x30
/* 802B9BF4 002831B4  4E 80 00 20 */	blr
.endfn __construct_array

.fn __destroy_arr, global
/* 802B9BF8 002831B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9BFC 002831BC  7C 08 02 A6 */	mflr r0
/* 802B9C00 002831C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9C04 002831C4  7C 05 31 D6 */	mullw r0, r5, r6
/* 802B9C08 002831C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802B9C0C 002831CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802B9C10 002831D0  7C DE 33 78 */	mr r30, r6
/* 802B9C14 002831D4  7F E3 02 14 */	add r31, r3, r0
/* 802B9C18 002831D8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802B9C1C 002831DC  7C BD 2B 78 */	mr r29, r5
/* 802B9C20 002831E0  93 81 00 10 */	stw r28, 0x10(r1)
/* 802B9C24 002831E4  7C 9C 23 78 */	mr r28, r4
/* 802B9C28 002831E8  48 00 00 20 */	b .L_802B9C48
.L_802B9C2C:
/* 802B9C2C 002831EC  7F FD F8 50 */	subf r31, r29, r31
/* 802B9C30 002831F0  7F 8C E3 78 */	mr r12, r28
/* 802B9C34 002831F4  7F E3 FB 78 */	mr r3, r31
/* 802B9C38 002831F8  38 80 FF FF */	li r4, -0x1
/* 802B9C3C 002831FC  7D 89 03 A6 */	mtctr r12
/* 802B9C40 00283200  4E 80 04 21 */	bctrl
/* 802B9C44 00283204  3B DE FF FF */	addi r30, r30, -0x1
.L_802B9C48:
/* 802B9C48 00283208  2C 1E 00 00 */	cmpwi r30, 0x0
/* 802B9C4C 0028320C  40 82 FF E0 */	bne .L_802B9C2C
/* 802B9C50 00283210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9C54 00283214  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802B9C58 00283218  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802B9C5C 0028321C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802B9C60 00283220  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802B9C64 00283224  7C 08 03 A6 */	mtlr r0
/* 802B9C68 00283228  38 21 00 20 */	addi r1, r1, 0x20
/* 802B9C6C 0028322C  4E 80 00 20 */	blr
.endfn __destroy_arr

.fn __destroy_new_array, global
/* 802B9C70 00283230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B9C74 00283234  7C 08 02 A6 */	mflr r0
/* 802B9C78 00283238  2C 03 00 00 */	cmpwi r3, 0x0
/* 802B9C7C 0028323C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B9C80 00283240  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 802B9C84 00283244  7C 7A 1B 78 */	mr r26, r3
/* 802B9C88 00283248  7C 9B 23 78 */	mr r27, r4
/* 802B9C8C 0028324C  41 82 00 50 */	beq .L_802B9CDC
/* 802B9C90 00283250  2C 04 00 00 */	cmpwi r4, 0x0
/* 802B9C94 00283254  41 82 00 40 */	beq .L_802B9CD4
/* 802B9C98 00283258  83 A3 FF F0 */	lwz r29, -0x10(r3)
/* 802B9C9C 0028325C  3B E0 00 00 */	li r31, 0x0
/* 802B9CA0 00283260  83 C3 FF F4 */	lwz r30, -0xc(r3)
/* 802B9CA4 00283264  7C 1D F1 D6 */	mullw r0, r29, r30
/* 802B9CA8 00283268  7F 83 02 14 */	add r28, r3, r0
/* 802B9CAC 0028326C  48 00 00 20 */	b .L_802B9CCC
.L_802B9CB0:
/* 802B9CB0 00283270  7F 9D E0 50 */	subf r28, r29, r28
/* 802B9CB4 00283274  7F 6C DB 78 */	mr r12, r27
/* 802B9CB8 00283278  7F 83 E3 78 */	mr r3, r28
/* 802B9CBC 0028327C  38 80 FF FF */	li r4, -0x1
/* 802B9CC0 00283280  7D 89 03 A6 */	mtctr r12
/* 802B9CC4 00283284  4E 80 04 21 */	bctrl
/* 802B9CC8 00283288  3B FF 00 01 */	addi r31, r31, 0x1
.L_802B9CCC:
/* 802B9CCC 0028328C  7C 1F F0 40 */	cmplw r31, r30
/* 802B9CD0 00283290  41 80 FF E0 */	blt .L_802B9CB0
.L_802B9CD4:
/* 802B9CD4 00283294  38 7A FF F0 */	addi r3, r26, -0x10
/* 802B9CD8 00283298  48 17 B1 09 */	bl __dla__FPv
.L_802B9CDC:
/* 802B9CDC 0028329C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 802B9CE0 002832A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B9CE4 002832A4  7C 08 03 A6 */	mtlr r0
/* 802B9CE8 002832A8  38 21 00 20 */	addi r1, r1, 0x20
/* 802B9CEC 002832AC  4E 80 00 20 */	blr
.endfn __destroy_new_array
