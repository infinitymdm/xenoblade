.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/s_atan.o"

# 0x802CA80C - 0x802CAA3C
.text
.balign 4

.fn atan, global
/* 802CA80C 00293DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CA810 00293DD0  3C A0 80 51 */	lis r5, ...rodata.0@ha
/* 802CA814 00293DD4  3C 00 44 10 */	lis r0, 0x4410
/* 802CA818 00293DD8  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CA81C 00293DDC  38 A5 DE 10 */	addi r5, r5, ...rodata.0@l
/* 802CA820 00293DE0  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 802CA824 00293DE4  54 C4 00 7E */	clrlwi r4, r6, 1
/* 802CA828 00293DE8  7C 04 00 00 */	cmpw r4, r0
/* 802CA82C 00293DEC  40 80 00 20 */	bge .L_802CA84C
/* 802CA830 00293DF0  3C 00 3F DC */	lis r0, 0x3fdc
/* 802CA834 00293DF4  7C 04 00 00 */	cmpw r4, r0
/* 802CA838 00293DF8  40 80 00 98 */	bge .L_802CA8D0
/* 802CA83C 00293DFC  3C 00 3E 20 */	lis r0, 0x3e20
/* 802CA840 00293E00  7C 04 00 00 */	cmpw r4, r0
/* 802CA844 00293E04  40 80 00 84 */	bge .L_802CA8C8
/* 802CA848 00293E08  48 00 00 68 */	b .L_802CA8B0
.L_802CA84C:
/* 802CA84C 00293E0C  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802CA850 00293E10  7C 04 00 00 */	cmpw r4, r0
/* 802CA854 00293E14  41 82 00 0C */	beq .L_802CA860
/* 802CA858 00293E18  40 80 00 14 */	bge .L_802CA86C
/* 802CA85C 00293E1C  48 00 00 18 */	b .L_802CA874
.L_802CA860:
/* 802CA860 00293E20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CA864 00293E24  2C 00 00 00 */	cmpwi r0, 0x0
/* 802CA868 00293E28  41 82 00 0C */	beq .L_802CA874
.L_802CA86C:
/* 802CA86C 00293E2C  FC 21 08 2A */	fadd f1, f1, f1
/* 802CA870 00293E30  48 00 01 C4 */	b .L_802CAA34
.L_802CA874:
/* 802CA874 00293E34  2C 06 00 00 */	cmpwi r6, 0x0
/* 802CA878 00293E38  40 81 00 1C */	ble .L_802CA894
/* 802CA87C 00293E3C  38 85 00 00 */	addi r4, r5, 0x0
/* 802CA880 00293E40  38 65 00 20 */	addi r3, r5, 0x20
/* 802CA884 00293E44  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 802CA888 00293E48  C8 03 00 18 */	lfd f0, 0x18(r3)
/* 802CA88C 00293E4C  FC 21 00 2A */	fadd f1, f1, f0
/* 802CA890 00293E50  48 00 01 A4 */	b .L_802CAA34
.L_802CA894:
/* 802CA894 00293E54  38 85 00 00 */	addi r4, r5, 0x0
/* 802CA898 00293E58  38 65 00 20 */	addi r3, r5, 0x20
/* 802CA89C 00293E5C  C8 24 00 18 */	lfd f1, 0x18(r4)
/* 802CA8A0 00293E60  C8 03 00 18 */	lfd f0, 0x18(r3)
/* 802CA8A4 00293E64  FC 20 08 50 */	fneg f1, f1
/* 802CA8A8 00293E68  FC 21 00 28 */	fsub f1, f1, f0
/* 802CA8AC 00293E6C  48 00 01 88 */	b .L_802CAA34
.L_802CA8B0:
/* 802CA8B0 00293E70  C8 42 B9 98 */	lfd f2, "@51"@sda21(r2)
/* 802CA8B4 00293E74  C8 02 B9 A0 */	lfd f0, "@52"@sda21(r2)
/* 802CA8B8 00293E78  FC 42 08 2A */	fadd f2, f2, f1
/* 802CA8BC 00293E7C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802CA8C0 00293E80  40 81 00 08 */	ble .L_802CA8C8
/* 802CA8C4 00293E84  48 00 01 70 */	b .L_802CAA34
.L_802CA8C8:
/* 802CA8C8 00293E88  38 00 FF FF */	li r0, -0x1
/* 802CA8CC 00293E8C  48 00 00 94 */	b .L_802CA960
.L_802CA8D0:
/* 802CA8D0 00293E90  3C 00 3F F3 */	lis r0, 0x3ff3
/* 802CA8D4 00293E94  FC 60 0A 10 */	fabs f3, f1
/* 802CA8D8 00293E98  7C 04 00 00 */	cmpw r4, r0
/* 802CA8DC 00293E9C  40 80 00 48 */	bge .L_802CA924
/* 802CA8E0 00293EA0  3C 00 3F E6 */	lis r0, 0x3fe6
/* 802CA8E4 00293EA4  7C 04 00 00 */	cmpw r4, r0
/* 802CA8E8 00293EA8  40 80 00 24 */	bge .L_802CA90C
/* 802CA8EC 00293EAC  C8 02 B9 A8 */	lfd f0, "@53"@sda21(r2)
/* 802CA8F0 00293EB0  38 00 00 00 */	li r0, 0x0
/* 802CA8F4 00293EB4  C8 22 B9 A0 */	lfd f1, "@52"@sda21(r2)
/* 802CA8F8 00293EB8  FC 40 00 F2 */	fmul f2, f0, f3
/* 802CA8FC 00293EBC  FC 00 18 2A */	fadd f0, f0, f3
/* 802CA900 00293EC0  FC 22 08 28 */	fsub f1, f2, f1
/* 802CA904 00293EC4  FC 21 00 24 */	fdiv f1, f1, f0
/* 802CA908 00293EC8  48 00 00 58 */	b .L_802CA960
.L_802CA90C:
/* 802CA90C 00293ECC  C8 02 B9 A0 */	lfd f0, "@52"@sda21(r2)
/* 802CA910 00293ED0  38 00 00 01 */	li r0, 0x1
/* 802CA914 00293ED4  FC 23 00 28 */	fsub f1, f3, f0
/* 802CA918 00293ED8  FC 00 18 2A */	fadd f0, f0, f3
/* 802CA91C 00293EDC  FC 21 00 24 */	fdiv f1, f1, f0
/* 802CA920 00293EE0  48 00 00 40 */	b .L_802CA960
.L_802CA924:
/* 802CA924 00293EE4  3C 60 40 04 */	lis r3, 0x4004
/* 802CA928 00293EE8  38 03 80 00 */	addi r0, r3, -0x8000
/* 802CA92C 00293EEC  7C 04 00 00 */	cmpw r4, r0
/* 802CA930 00293EF0  40 80 00 24 */	bge .L_802CA954
/* 802CA934 00293EF4  C8 42 B9 B0 */	lfd f2, "@54"@sda21(r2)
/* 802CA938 00293EF8  38 00 00 02 */	li r0, 0x2
/* 802CA93C 00293EFC  C8 02 B9 A0 */	lfd f0, "@52"@sda21(r2)
/* 802CA940 00293F00  FC 22 00 F2 */	fmul f1, f2, f3
/* 802CA944 00293F04  FC 43 10 28 */	fsub f2, f3, f2
/* 802CA948 00293F08  FC 00 08 2A */	fadd f0, f0, f1
/* 802CA94C 00293F0C  FC 22 00 24 */	fdiv f1, f2, f0
/* 802CA950 00293F10  48 00 00 10 */	b .L_802CA960
.L_802CA954:
/* 802CA954 00293F14  C8 02 B9 B8 */	lfd f0, "@55"@sda21(r2)
/* 802CA958 00293F18  38 00 00 03 */	li r0, 0x3
/* 802CA95C 00293F1C  FC 20 18 24 */	fdiv f1, f0, f3
.L_802CA960:
/* 802CA960 00293F20  FC 01 00 72 */	fmul f0, f1, f1
/* 802CA964 00293F24  38 65 00 40 */	addi r3, r5, 0x40
/* 802CA968 00293F28  C8 63 00 50 */	lfd f3, 0x50(r3)
/* 802CA96C 00293F2C  2C 00 00 00 */	cmpwi r0, 0x0
/* 802CA970 00293F30  C8 43 00 48 */	lfd f2, 0x48(r3)
/* 802CA974 00293F34  C9 63 00 40 */	lfd f11, 0x40(r3)
/* 802CA978 00293F38  FD A0 00 32 */	fmul f13, f0, f0
/* 802CA97C 00293F3C  C8 A3 00 38 */	lfd f5, 0x38(r3)
/* 802CA980 00293F40  C9 43 00 30 */	lfd f10, 0x30(r3)
/* 802CA984 00293F44  C8 83 00 28 */	lfd f4, 0x28(r3)
/* 802CA988 00293F48  C9 23 00 20 */	lfd f9, 0x20(r3)
/* 802CA98C 00293F4C  FD 8D 00 F2 */	fmul f12, f13, f3
/* 802CA990 00293F50  C8 63 00 18 */	lfd f3, 0x18(r3)
/* 802CA994 00293F54  FC CD 00 B2 */	fmul f6, f13, f2
/* 802CA998 00293F58  C9 03 00 10 */	lfd f8, 0x10(r3)
/* 802CA99C 00293F5C  C8 43 00 08 */	lfd f2, 0x8(r3)
/* 802CA9A0 00293F60  FD 6B 60 2A */	fadd f11, f11, f12
/* 802CA9A4 00293F64  C8 E5 00 40 */	lfd f7, 0x40(r5)
/* 802CA9A8 00293F68  FC A5 30 2A */	fadd f5, f5, f6
/* 802CA9AC 00293F6C  FC CD 02 F2 */	fmul f6, f13, f11
/* 802CA9B0 00293F70  FC AD 01 72 */	fmul f5, f13, f5
/* 802CA9B4 00293F74  FC CA 30 2A */	fadd f6, f10, f6
/* 802CA9B8 00293F78  FC 84 28 2A */	fadd f4, f4, f5
/* 802CA9BC 00293F7C  FC AD 01 B2 */	fmul f5, f13, f6
/* 802CA9C0 00293F80  FC 8D 01 32 */	fmul f4, f13, f4
/* 802CA9C4 00293F84  FC A9 28 2A */	fadd f5, f9, f5
/* 802CA9C8 00293F88  FC 63 20 2A */	fadd f3, f3, f4
/* 802CA9CC 00293F8C  FC 8D 01 72 */	fmul f4, f13, f5
/* 802CA9D0 00293F90  FC 6D 00 F2 */	fmul f3, f13, f3
/* 802CA9D4 00293F94  FC 88 20 2A */	fadd f4, f8, f4
/* 802CA9D8 00293F98  FC 42 18 2A */	fadd f2, f2, f3
/* 802CA9DC 00293F9C  FC 6D 01 32 */	fmul f3, f13, f4
/* 802CA9E0 00293FA0  FC 8D 00 B2 */	fmul f4, f13, f2
/* 802CA9E4 00293FA4  FC 47 18 2A */	fadd f2, f7, f3
/* 802CA9E8 00293FA8  FC 00 00 B2 */	fmul f0, f0, f2
/* 802CA9EC 00293FAC  40 80 00 14 */	bge .L_802CAA00
/* 802CA9F0 00293FB0  FC 00 20 2A */	fadd f0, f0, f4
/* 802CA9F4 00293FB4  FC 01 00 32 */	fmul f0, f1, f0
/* 802CA9F8 00293FB8  FC 21 00 28 */	fsub f1, f1, f0
/* 802CA9FC 00293FBC  48 00 00 38 */	b .L_802CAA34
.L_802CAA00:
/* 802CAA00 00293FC0  FC 00 20 2A */	fadd f0, f0, f4
/* 802CAA04 00293FC4  54 00 18 38 */	slwi r0, r0, 3
/* 802CAA08 00293FC8  38 65 00 20 */	addi r3, r5, 0x20
/* 802CAA0C 00293FCC  38 85 00 00 */	addi r4, r5, 0x0
/* 802CAA10 00293FD0  7C 43 04 AE */	lfdx f2, r3, r0
/* 802CAA14 00293FD4  2C 06 00 00 */	cmpwi r6, 0x0
/* 802CAA18 00293FD8  FC 61 00 32 */	fmul f3, f1, f0
/* 802CAA1C 00293FDC  7C 04 04 AE */	lfdx f0, r4, r0
/* 802CAA20 00293FE0  FC 43 10 28 */	fsub f2, f3, f2
/* 802CAA24 00293FE4  FC 22 08 28 */	fsub f1, f2, f1
/* 802CAA28 00293FE8  FC 20 08 28 */	fsub f1, f0, f1
/* 802CAA2C 00293FEC  40 80 00 08 */	bge .L_802CAA34
/* 802CAA30 00293FF0  FC 20 08 50 */	fneg f1, f1
.L_802CAA34:
/* 802CAA34 00293FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 802CAA38 00293FF8  4E 80 00 20 */	blr
.endfn atan

# 0x8050DE10 - 0x8050DEA8
.rodata
.balign 8

.obj ...rodata.0, local
	.4byte 0x3FDDAC67
	.4byte 0x0561BB4F
	.4byte 0x3FE921FB
	.4byte 0x54442D18
	.4byte 0x3FEF730B
	.4byte 0xD281F69B
	.4byte 0x3FF921FB
	.4byte 0x54442D18

.obj atanlo, local
	.4byte 0x3C7A2B7F
	.4byte 0x222F65E2
	.4byte 0x3C81A626
	.4byte 0x33145C07
	.4byte 0x3C700788
	.4byte 0x7AF0CBBD
	.4byte 0x3C91A626
	.4byte 0x33145C07
.endobj atanlo

.obj aT, local
	.4byte 0x3FD55555
	.4byte 0x5555550D
	.4byte 0xBFC99999
	.4byte 0x9998EBC4
	.4byte 0x3FC24924
	.4byte 0x920083FF
	.4byte 0xBFBC71C6
	.4byte 0xFE231671
	.4byte 0x3FB745CD
	.4byte 0xC54C206E
	.4byte 0xBFB3B0F2
	.4byte 0xAF749A6D
	.4byte 0x3FB10D66
	.4byte 0xA0D03D51
	.4byte 0xBFADDE2D
	.4byte 0x52DEFD9A
	.4byte 0x3FA97B4B
	.4byte 0x24760DEB
	.4byte 0xBFA2B444
	.4byte 0x2C6A6C2F
	.4byte 0x3F90AD3A
	.4byte 0xE322DA11
.endobj aT

# 0x8066BD18 - 0x8066BD40
.section .sdata2, "a"
.balign 8

.obj "@51", local
	.4byte 0x7E37E43C
	.4byte 0x8800759C
.endobj "@51"

.obj "@52", local
	.4byte 0x3FF00000
	.4byte 0x00000000
.endobj "@52"

.obj "@53", local
	.4byte 0x40000000
	.4byte 0x00000000
.endobj "@53"

.obj "@54", local
	.4byte 0x3FF80000
	.4byte 0x00000000
.endobj "@54"

.obj "@55", local
	.4byte 0xBFF00000
	.4byte 0x00000000
.endobj "@55"
