.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn func_8043738C, global
/* 8043738C 0040094C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80437390 00400950  7C 08 02 A6 */	mflr r0
/* 80437394 00400954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80437398 00400958  4B FF D0 01 */	bl Heap_getRegionIndex1
/* 8043739C 0040095C  3C 80 00 07 */	lis r4, 0x0006FFE0@ha
/* 804373A0 00400960  80 AD 9C C0 */	lwz r5, lbl_80665E40@sda21(r13)
/* 804373A4 00400964  38 84 FF E0 */	addi r4, r4, 0x0006FFE0@l
/* 804373A8 00400968  4B FF CC 99 */	bl heap_createRegion
/* 804373AC 0040096C  38 00 00 01 */	li r0, 1
/* 804373B0 00400970  90 6D 9C C4 */	stw r3, lbl_80665E44@sda21(r13)
/* 804373B4 00400974  7C 64 1B 78 */	mr r4, r3
/* 804373B8 00400978  38 60 01 00 */	li r3, 0x100
/* 804373BC 0040097C  90 0D BC F0 */	stw r0, lbl_80667E70@sda21(r13)
/* 804373C0 00400980  4B FF D6 C1 */	bl heap_malloc_1
/* 804373C4 00400984  90 6D BC F4 */	stw r3, lbl_80667E74@sda21(r13)
/* 804373C8 00400988  38 80 20 00 */	li r4, 0x2000
/* 804373CC 0040098C  80 6D 9C C4 */	lwz r3, lbl_80665E44@sda21(r13)
/* 804373D0 00400990  38 A0 00 04 */	li r5, 4
/* 804373D4 00400994  4B FF D0 59 */	bl func_8043442C
/* 804373D8 00400998  38 00 00 04 */	li r0, 4
/* 804373DC 0040099C  90 6D BC F8 */	stw r3, lbl_80667E78@sda21(r13)
/* 804373E0 004009A0  38 A0 00 00 */	li r5, 0
/* 804373E4 004009A4  38 80 00 00 */	li r4, 0
/* 804373E8 004009A8  7C 09 03 A6 */	mtctr r0
.L_804373EC:
/* 804373EC 004009AC  80 6D BC F4 */	lwz r3, lbl_80667E74@sda21(r13)
/* 804373F0 004009B0  7C 83 29 2E */	stwx r4, r3, r5
/* 804373F4 004009B4  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 804373F8 004009B8  7C 60 2A 14 */	add r3, r0, r5
/* 804373FC 004009BC  90 83 00 04 */	stw r4, 4(r3)
/* 80437400 004009C0  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437404 004009C4  7C 60 2A 14 */	add r3, r0, r5
/* 80437408 004009C8  90 83 00 08 */	stw r4, 8(r3)
/* 8043740C 004009CC  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437410 004009D0  7C 60 2A 14 */	add r3, r0, r5
/* 80437414 004009D4  90 83 00 0C */	stw r4, 0xc(r3)
/* 80437418 004009D8  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 8043741C 004009DC  7C 60 2A 14 */	add r3, r0, r5
/* 80437420 004009E0  90 83 00 10 */	stw r4, 0x10(r3)
/* 80437424 004009E4  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437428 004009E8  7C 60 2A 14 */	add r3, r0, r5
/* 8043742C 004009EC  90 83 00 14 */	stw r4, 0x14(r3)
/* 80437430 004009F0  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437434 004009F4  7C 60 2A 14 */	add r3, r0, r5
/* 80437438 004009F8  90 83 00 18 */	stw r4, 0x18(r3)
/* 8043743C 004009FC  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437440 00400A00  7C 60 2A 14 */	add r3, r0, r5
/* 80437444 00400A04  38 A5 00 20 */	addi r5, r5, 0x20
/* 80437448 00400A08  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8043744C 00400A0C  80 6D BC F4 */	lwz r3, lbl_80667E74@sda21(r13)
/* 80437450 00400A10  7C 83 29 2E */	stwx r4, r3, r5
/* 80437454 00400A14  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437458 00400A18  7C 60 2A 14 */	add r3, r0, r5
/* 8043745C 00400A1C  90 83 00 04 */	stw r4, 4(r3)
/* 80437460 00400A20  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437464 00400A24  7C 60 2A 14 */	add r3, r0, r5
/* 80437468 00400A28  90 83 00 08 */	stw r4, 8(r3)
/* 8043746C 00400A2C  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437470 00400A30  7C 60 2A 14 */	add r3, r0, r5
/* 80437474 00400A34  90 83 00 0C */	stw r4, 0xc(r3)
/* 80437478 00400A38  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 8043747C 00400A3C  7C 60 2A 14 */	add r3, r0, r5
/* 80437480 00400A40  90 83 00 10 */	stw r4, 0x10(r3)
/* 80437484 00400A44  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437488 00400A48  7C 60 2A 14 */	add r3, r0, r5
/* 8043748C 00400A4C  90 83 00 14 */	stw r4, 0x14(r3)
/* 80437490 00400A50  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 80437494 00400A54  7C 60 2A 14 */	add r3, r0, r5
/* 80437498 00400A58  90 83 00 18 */	stw r4, 0x18(r3)
/* 8043749C 00400A5C  80 0D BC F4 */	lwz r0, lbl_80667E74@sda21(r13)
/* 804374A0 00400A60  7C 60 2A 14 */	add r3, r0, r5
/* 804374A4 00400A64  38 A5 00 20 */	addi r5, r5, 0x20
/* 804374A8 00400A68  90 83 00 1C */	stw r4, 0x1c(r3)
/* 804374AC 00400A6C  42 00 FF 40 */	bdnz .L_804373EC
/* 804374B0 00400A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804374B4 00400A74  7C 08 03 A6 */	mtlr r0
/* 804374B8 00400A78  38 21 00 10 */	addi r1, r1, 0x10
/* 804374BC 00400A7C  4E 80 00 20 */	blr 
.endfn func_8043738C

.fn func_804374C0, global
/* 804374C0 00400A80  80 CD BC F4 */	lwz r6, lbl_80667E74@sda21(r13)
/* 804374C4 00400A84  38 00 00 40 */	li r0, 0x40
/* 804374C8 00400A88  38 E0 00 00 */	li r7, 0
/* 804374CC 00400A8C  7C C5 33 78 */	mr r5, r6
/* 804374D0 00400A90  7C 09 03 A6 */	mtctr r0
.L_804374D4:
/* 804374D4 00400A94  80 85 00 00 */	lwz r4, 0(r5)
/* 804374D8 00400A98  3C 04 00 01 */	addis r0, r4, 1
/* 804374DC 00400A9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804374E0 00400AA0  41 82 00 5C */	beq .L_8043753C
/* 804374E4 00400AA4  54 E5 10 3A */	slwi r5, r7, 2
/* 804374E8 00400AA8  38 00 00 20 */	li r0, 0x20
/* 804374EC 00400AAC  7C 86 28 2E */	lwzx r4, r6, r5
/* 804374F0 00400AB0  39 00 00 01 */	li r8, 1
/* 804374F4 00400AB4  39 20 00 00 */	li r9, 0
/* 804374F8 00400AB8  7C 09 03 A6 */	mtctr r0
.L_804374FC:
/* 804374FC 00400ABC  7C 80 40 39 */	and. r0, r4, r8
/* 80437500 00400AC0  40 82 00 2C */	bne .L_8043752C
/* 80437504 00400AC4  7C 06 28 2E */	lwzx r0, r6, r5
/* 80437508 00400AC8  54 E4 28 34 */	slwi r4, r7, 5
/* 8043750C 00400ACC  7C E9 22 14 */	add r7, r9, r4
/* 80437510 00400AD0  7C 00 43 78 */	or r0, r0, r8
/* 80437514 00400AD4  7C 06 29 2E */	stwx r0, r6, r5
/* 80437518 00400AD8  54 E0 10 3A */	slwi r0, r7, 2
/* 8043751C 00400ADC  80 8D BC F8 */	lwz r4, lbl_80667E78@sda21(r13)
/* 80437520 00400AE0  7C 64 01 2E */	stwx r3, r4, r0
/* 80437524 00400AE4  7C E3 3B 78 */	mr r3, r7
/* 80437528 00400AE8  4E 80 00 20 */	blr
.L_8043752C:
/* 8043752C 00400AEC  55 08 08 3C */	slwi r8, r8, 1
/* 80437530 00400AF0  39 29 00 01 */	addi r9, r9, 1
/* 80437534 00400AF4  42 00 FF C8 */	bdnz .L_804374FC
/* 80437538 00400AF8  48 00 00 10 */	b .L_80437548
.L_8043753C:
/* 8043753C 00400AFC  38 A5 00 04 */	addi r5, r5, 4
/* 80437540 00400B00  38 E7 00 01 */	addi r7, r7, 1
/* 80437544 00400B04  42 00 FF 90 */	bdnz .L_804374D4
.L_80437548:
/* 80437548 00400B08  38 60 FF FF */	li r3, -1
/* 8043754C 00400B0C  4E 80 00 20 */	blr 
.endfn func_804374C0

.fn __dt__80437550, global
/* 80437550 00400B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80437554 00400B14  7C 08 02 A6 */	mflr r0
/* 80437558 00400B18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043755C 00400B1C  80 6D BC F4 */	lwz r3, lbl_80667E74@sda21(r13)
/* 80437560 00400B20  2C 03 00 00 */	cmpwi r3, 0
/* 80437564 00400B24  41 82 00 10 */	beq .L_80437574
/* 80437568 00400B28  4B FF D8 79 */	bl __dla__FPv
/* 8043756C 00400B2C  38 00 00 00 */	li r0, 0
/* 80437570 00400B30  90 0D BC F4 */	stw r0, lbl_80667E74@sda21(r13)
.L_80437574:
/* 80437574 00400B34  80 6D BC F8 */	lwz r3, lbl_80667E78@sda21(r13)
/* 80437578 00400B38  2C 03 00 00 */	cmpwi r3, 0
/* 8043757C 00400B3C  41 82 00 10 */	beq .L_8043758C
/* 80437580 00400B40  4B FF CF 59 */	bl func_804344D8
/* 80437584 00400B44  38 00 00 00 */	li r0, 0
/* 80437588 00400B48  90 0D BC F8 */	stw r0, lbl_80667E78@sda21(r13)
.L_8043758C:
/* 8043758C 00400B4C  80 6D 9C C4 */	lwz r3, lbl_80665E44@sda21(r13)
/* 80437590 00400B50  4B FF CE 21 */	bl func_804343B0
/* 80437594 00400B54  38 60 FF FF */	li r3, -1
/* 80437598 00400B58  38 00 00 00 */	li r0, 0
/* 8043759C 00400B5C  90 6D 9C C4 */	stw r3, lbl_80665E44@sda21(r13)
/* 804375A0 00400B60  90 0D BC F0 */	stw r0, lbl_80667E70@sda21(r13)
/* 804375A4 00400B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804375A8 00400B68  7C 08 03 A6 */	mtlr r0
/* 804375AC 00400B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 804375B0 00400B70  4E 80 00 20 */	blr 
.endfn __dt__80437550

.fn getHeapIndex, global
/* 804375B4 00400B74  80 6D 9C C4 */	lwz r3, lbl_80665E44@sda21(r13)
/* 804375B8 00400B78  4E 80 00 20 */	blr 
.endfn getHeapIndex


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj lbl_80525D78, global
	.asciz "WorkThreadSystem"
	.balign 4
.endobj lbl_80525D78

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj lbl_80665E40, global
	.4byte lbl_80525D78
.endobj lbl_80665E40


.obj lbl_80665E44, global
	.4byte 0xFFFFFFFF
.endobj lbl_80665E44


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667E70, global
	.skip 0x4
.endobj lbl_80667E70

.obj lbl_80667E74, global
	.skip 0x4
.endobj lbl_80667E74

.obj lbl_80667E78, global
	.skip 0x8
.endobj lbl_80667E78

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C0F0", local
.hidden "@etb_8001C0F0"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C0F0"

.obj "@etb_8001C0F8", local
.hidden "@etb_8001C0F8"
	.4byte 0x00080000
	.4byte 0x00000000
.endobj "@etb_8001C0F8"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033D34", local
.hidden "@eti_80033D34"
	.4byte func_8043738C
	.4byte 0x00000134
	.4byte "@etb_8001C0F0"
.endobj "@eti_80033D34"

.obj "@eti_80033D40", local
.hidden "@eti_80033D40"
	.4byte __dt__80437550
	.4byte 0x00000064
	.4byte "@etb_8001C0F8"
.endobj "@eti_80033D40"
