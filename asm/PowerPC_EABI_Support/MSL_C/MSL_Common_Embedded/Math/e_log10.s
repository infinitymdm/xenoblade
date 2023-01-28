.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/e_log10.o"

# 0x802C8088 - 0x802C819C
.text
.balign 4

.fn __ieee754_log10, global
/* 802C8088 00291648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C808C 0029164C  7C 08 02 A6 */	mflr r0
/* 802C8090 00291650  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8094 00291654  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 802C8098 00291658  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802C809C 0029165C  3C 00 00 10 */	lis r0, 0x10
/* 802C80A0 00291660  38 80 00 00 */	li r4, 0x0
/* 802C80A4 00291664  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 802C80A8 00291668  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802C80AC 0029166C  7C 05 00 00 */	cmpw r5, r0
/* 802C80B0 00291670  40 80 00 5C */	bge .L_802C810C
/* 802C80B4 00291674  54 A0 00 7E */	clrlwi r0, r5, 1
/* 802C80B8 00291678  7C 00 1B 79 */	or. r0, r0, r3
/* 802C80BC 0029167C  40 82 00 1C */	bne .L_802C80D8
/* 802C80C0 00291680  C8 22 B7 08 */	lfd f1, "@22"@sda21(r2)
/* 802C80C4 00291684  38 00 00 21 */	li r0, 0x21
/* 802C80C8 00291688  C8 0D B3 D8 */	lfd f0, zero@sda21(r13)
/* 802C80CC 0029168C  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802C80D0 00291690  FC 21 00 24 */	fdiv f1, f1, f0
/* 802C80D4 00291694  48 00 00 B4 */	b .L_802C8188
.L_802C80D8:
/* 802C80D8 00291698  2C 05 00 00 */	cmpwi r5, 0x0
/* 802C80DC 0029169C  40 80 00 1C */	bge .L_802C80F8
/* 802C80E0 002916A0  FC 21 08 28 */	fsub f1, f1, f1
/* 802C80E4 002916A4  C8 0D B3 D8 */	lfd f0, zero@sda21(r13)
/* 802C80E8 002916A8  38 00 00 21 */	li r0, 0x21
/* 802C80EC 002916AC  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802C80F0 002916B0  FC 21 00 24 */	fdiv f1, f1, f0
/* 802C80F4 002916B4  48 00 00 94 */	b .L_802C8188
.L_802C80F8:
/* 802C80F8 002916B8  C8 02 B7 10 */	lfd f0, "@23"@sda21(r2)
/* 802C80FC 002916BC  38 80 FF CA */	li r4, -0x36
/* 802C8100 002916C0  FC 21 00 32 */	fmul f1, f1, f0
/* 802C8104 002916C4  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802C8108 002916C8  80 A1 00 08 */	lwz r5, 0x8(r1)
.L_802C810C:
/* 802C810C 002916CC  3C 00 7F F0 */	lis r0, 0x7ff0
/* 802C8110 002916D0  7C 05 00 00 */	cmpw r5, r0
/* 802C8114 002916D4  41 80 00 0C */	blt .L_802C8120
/* 802C8118 002916D8  FC 21 08 2A */	fadd f1, f1, f1
/* 802C811C 002916DC  48 00 00 6C */	b .L_802C8188
.L_802C8120:
/* 802C8120 002916E0  7C A3 A6 70 */	srawi r3, r5, 20
/* 802C8124 002916E4  3C 00 43 30 */	lis r0, 0x4330
/* 802C8128 002916E8  7C 64 1A 14 */	add r3, r4, r3
/* 802C812C 002916EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C8130 002916F0  38 83 FC 01 */	addi r4, r3, -0x3ff
/* 802C8134 002916F4  C8 22 B7 30 */	lfd f1, "@28"@sda21(r2)
/* 802C8138 002916F8  54 83 0F FE */	srwi r3, r4, 31
/* 802C813C 002916FC  7C 04 1A 14 */	add r0, r4, r3
/* 802C8140 00291700  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C8144 00291704  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C8148 00291708  20 03 03 FF */	subfic r0, r3, 0x3ff
/* 802C814C 0029170C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C8150 00291710  54 00 A0 16 */	slwi r0, r0, 20
/* 802C8154 00291714  50 A0 03 3E */	rlwimi r0, r5, 0, 12, 31
/* 802C8158 00291718  90 01 00 08 */	stw r0, 0x8(r1)
/* 802C815C 0029171C  FF E0 08 28 */	fsub f31, f0, f1
/* 802C8160 00291720  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 802C8164 00291724  4B FF FC 71 */	bl __ieee754_log
/* 802C8168 00291728  C8 02 B7 20 */	lfd f0, "@25"@sda21(r2)
/* 802C816C 0029172C  C8 42 B7 18 */	lfd f2, "@24"@sda21(r2)
/* 802C8170 00291730  FC 60 00 72 */	fmul f3, f0, f1
/* 802C8174 00291734  C8 02 B7 28 */	lfd f0, "@26"@sda21(r2)
/* 802C8178 00291738  FC 22 07 F2 */	fmul f1, f2, f31
/* 802C817C 0029173C  FC 00 07 F2 */	fmul f0, f0, f31
/* 802C8180 00291740  FC 21 18 2A */	fadd f1, f1, f3
/* 802C8184 00291744  FC 21 00 2A */	fadd f1, f1, f0
.L_802C8188:
/* 802C8188 00291748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C818C 0029174C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 802C8190 00291750  7C 08 03 A6 */	mtlr r0
/* 802C8194 00291754  38 21 00 20 */	addi r1, r1, 0x20
/* 802C8198 00291758  4E 80 00 20 */	blr
.endfn __ieee754_log10

# 0x80667558 - 0x80667560
.section .sbss, "wa", @nobits
.balign 8

.obj zero, local
	.skip 0x8
.endobj zero

# 0x8066BA88 - 0x8066BAB8
.section .sdata2, "a"
.balign 8

.obj "@22", local
	.4byte 0xC3500000
	.4byte 0x00000000
.endobj "@22"

.obj "@23", local
	.4byte 0x43500000
	.4byte 0x00000000
.endobj "@23"

.obj "@24", local
	.4byte 0x3D59FEF3
	.4byte 0x11F12B36
.endobj "@24"

.obj "@25", local
	.4byte 0x3FDBCB7B
	.4byte 0x1526E50E
.endobj "@25"

.obj "@26", local
	.4byte 0x3FD34413
	.4byte 0x509F6000
.endobj "@26"

.obj "@28", local
	.4byte 0x43300000
	.4byte 0x80000000
.endobj "@28"
