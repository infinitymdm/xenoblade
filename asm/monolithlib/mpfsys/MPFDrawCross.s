.include "macros.inc"
.file "monolithlib/mpfsys/MPFDrawCross.o"

# 0x80479F04 - 0x80479F2C
.text
.balign 4

.fn fn_80479F04, local
/* 80479F04 004434C4  88 0D C0 00 */	lbz r0, lbl_80668180@sda21(r13)
/* 80479F08 004434C8  7C 00 07 75 */	extsb. r0, r0
/* 80479F0C 004434CC  40 82 00 18 */	bne .L_80479F24
/* 80479F10 004434D0  3C 60 80 57 */	lis r3, __vt__mpfsys_MPFDrawCross@ha
/* 80479F14 004434D4  38 00 00 01 */	li r0, 0x1
/* 80479F18 004434D8  38 63 14 70 */	addi r3, r3, __vt__mpfsys_MPFDrawCross@l
/* 80479F1C 004434DC  90 6D C0 04 */	stw r3, lbl_80668184@sda21(r13)
/* 80479F20 004434E0  98 0D C0 00 */	stb r0, lbl_80668180@sda21(r13)
.L_80479F24:
/* 80479F24 004434E4  38 6D C0 04 */	addi r3, r13, lbl_80668184@sda21
/* 80479F28 004434E8  4E 80 00 20 */	blr
.endfn fn_80479F04

# 0x80668180 - 0x80668188
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80668180, local
	.skip 0x4
.sym lbl_80668184, local
	.skip 0x4
