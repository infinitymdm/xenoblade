.include "macros.inc"
.file "PowerPC_EABI_Support/MetroTRK/string_TRK.o"

# 0x802CCA84 - 0x802CCAA0
.text
.balign 4

.fn TRK_strlen, global
/* 802CCA84 00296044  38 83 FF FF */	addi r4, r3, -0x1
/* 802CCA88 00296048  38 60 FF FF */	li r3, -0x1
.L_802CCA8C:
/* 802CCA8C 0029604C  8C 04 00 01 */	lbzu r0, 0x1(r4)
/* 802CCA90 00296050  38 63 00 01 */	addi r3, r3, 0x1
/* 802CCA94 00296054  2C 00 00 00 */	cmpwi r0, 0x0
/* 802CCA98 00296058  40 82 FF F4 */	bne .L_802CCA8C
/* 802CCA9C 0029605C  4E 80 00 20 */	blr
.endfn TRK_strlen
