.include "macros.inc"
.file "nw4r/snd/snd_adpcm.o"

# 0x8042B384 - 0x8042B410
.text
.balign 4

# nw4r::snd::detail::DecodeDspAdpcm(_AXPBADPCM*, unsigned char)
.fn DecodeDspAdpcm__Q34nw4r3snd6detailFP10_AXPBADPCMUc, global
/* 8042B384 003F4944  A0 E3 00 22 */	lhz r7, 0x22(r3)
/* 8042B388 003F4948  54 80 63 26 */	clrlslwi r0, r4, 24, 12
/* 8042B38C 003F494C  A1 23 00 24 */	lhz r9, 0x24(r3)
/* 8042B390 003F4950  38 A0 00 01 */	li r5, 0x1
/* 8042B394 003F4954  7C E6 26 70 */	srawi r6, r7, 4
/* 8042B398 003F4958  54 E4 07 3E */	clrlwi r4, r7, 28
/* 8042B39C 003F495C  54 C7 10 3A */	slwi r7, r6, 2
/* 8042B3A0 003F4960  7C 00 07 34 */	extsh r0, r0
/* 8042B3A4 003F4964  7C C3 3A 14 */	add r6, r3, r7
/* 8042B3A8 003F4968  7C A4 20 30 */	slw r4, r5, r4
/* 8042B3AC 003F496C  7D 03 3A AE */	lhax r8, r3, r7
/* 8042B3B0 003F4970  7D 27 07 34 */	extsh r7, r9
/* 8042B3B4 003F4974  A8 C6 00 02 */	lha r6, 0x2(r6)
/* 8042B3B8 003F4978  7C 84 07 34 */	extsh r4, r4
/* 8042B3BC 003F497C  A8 A3 00 26 */	lha r5, 0x26(r3)
/* 8042B3C0 003F4980  7C 00 0E 70 */	srawi r0, r0, 1
/* 8042B3C4 003F4984  7C E7 41 D6 */	mullw r7, r7, r8
/* 8042B3C8 003F4988  7C A5 31 D6 */	mullw r5, r5, r6
/* 8042B3CC 003F498C  7C 00 21 D6 */	mullw r0, r0, r4
/* 8042B3D0 003F4990  7C E7 2A 14 */	add r7, r7, r5
/* 8042B3D4 003F4994  7C E7 02 14 */	add r7, r7, r0
/* 8042B3D8 003F4998  7C E7 56 70 */	srawi r7, r7, 10
/* 8042B3DC 003F499C  38 E7 00 01 */	addi r7, r7, 0x1
/* 8042B3E0 003F49A0  7C E7 0E 70 */	srawi r7, r7, 1
/* 8042B3E4 003F49A4  2C 07 7F FF */	cmpwi r7, 0x7fff
/* 8042B3E8 003F49A8  40 81 00 0C */	ble .L_8042B3F4
/* 8042B3EC 003F49AC  38 E0 7F FF */	li r7, 0x7fff
/* 8042B3F0 003F49B0  48 00 00 10 */	b .L_8042B400
.L_8042B3F4:
/* 8042B3F4 003F49B4  2C 07 80 00 */	cmpwi r7, -0x8000
/* 8042B3F8 003F49B8  40 80 00 08 */	bge .L_8042B400
/* 8042B3FC 003F49BC  38 E0 80 00 */	li r7, -0x8000
.L_8042B400:
/* 8042B400 003F49C0  B1 23 00 26 */	sth r9, 0x26(r3)
/* 8042B404 003F49C4  B0 E3 00 24 */	sth r7, 0x24(r3)
/* 8042B408 003F49C8  7C E3 3B 78 */	mr r3, r7
/* 8042B40C 003F49CC  4E 80 00 20 */	blr
.endfn DecodeDspAdpcm__Q34nw4r3snd6detailFP10_AXPBADPCMUc
