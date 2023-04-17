.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn List_Init__Q26nw4hbm2utFPQ36nw4hbm2ut4ListUs, global
/* 80338650 00301C10  38 00 00 00 */	li r0, 0
/* 80338654 00301C14  90 03 00 00 */	stw r0, 0(r3)
/* 80338658 00301C18  90 03 00 04 */	stw r0, 4(r3)
/* 8033865C 00301C1C  B0 03 00 08 */	sth r0, 8(r3)
/* 80338660 00301C20  B0 83 00 0A */	sth r4, 0xa(r3)
/* 80338664 00301C24  4E 80 00 20 */	blr 
.endfn List_Init__Q26nw4hbm2utFPQ36nw4hbm2ut4ListUs

.balign 16, 0
.fn List_Insert__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPvPv, global
/* 80338670 00301C30  80 03 00 00 */	lwz r0, 0(r3)
/* 80338674 00301C34  2C 00 00 00 */	cmpwi r0, 0
/* 80338678 00301C38  40 82 00 30 */	bne .L_803386A8
/* 8033867C 00301C3C  A0 A3 00 0A */	lhz r5, 0xa(r3)
/* 80338680 00301C40  38 00 00 00 */	li r0, 0
/* 80338684 00301C44  7C A4 2A 14 */	add r5, r4, r5
/* 80338688 00301C48  90 05 00 04 */	stw r0, 4(r5)
/* 8033868C 00301C4C  90 05 00 00 */	stw r0, 0(r5)
/* 80338690 00301C50  A0 A3 00 08 */	lhz r5, 8(r3)
/* 80338694 00301C54  90 83 00 00 */	stw r4, 0(r3)
/* 80338698 00301C58  38 05 00 01 */	addi r0, r5, 1
/* 8033869C 00301C5C  90 83 00 04 */	stw r4, 4(r3)
/* 803386A0 00301C60  B0 03 00 08 */	sth r0, 8(r3)
/* 803386A4 00301C64  4E 80 00 20 */	blr
.L_803386A8:
/* 803386A8 00301C68  A0 C3 00 0A */	lhz r6, 0xa(r3)
/* 803386AC 00301C6C  38 00 00 00 */	li r0, 0
/* 803386B0 00301C70  80 A3 00 04 */	lwz r5, 4(r3)
/* 803386B4 00301C74  7C A6 21 6E */	stwux r5, r6, r4
/* 803386B8 00301C78  90 06 00 04 */	stw r0, 4(r6)
/* 803386BC 00301C7C  80 A3 00 04 */	lwz r5, 4(r3)
/* 803386C0 00301C80  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 803386C4 00301C84  7C A5 02 14 */	add r5, r5, r0
/* 803386C8 00301C88  90 85 00 04 */	stw r4, 4(r5)
/* 803386CC 00301C8C  A0 A3 00 08 */	lhz r5, 8(r3)
/* 803386D0 00301C90  90 83 00 04 */	stw r4, 4(r3)
/* 803386D4 00301C94  38 05 00 01 */	addi r0, r5, 1
/* 803386D8 00301C98  B0 03 00 08 */	sth r0, 8(r3)
/* 803386DC 00301C9C  4E 80 00 20 */	blr 
.endfn List_Insert__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPvPv


.fn List_Remove__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPv, global
/* 803386E0 00301CA0  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 803386E4 00301CA4  7C C4 02 14 */	add r6, r4, r0
/* 803386E8 00301CA8  7C 84 00 2E */	lwzx r4, r4, r0
/* 803386EC 00301CAC  2C 04 00 00 */	cmpwi r4, 0
/* 803386F0 00301CB0  40 82 00 10 */	bne .L_80338700
/* 803386F4 00301CB4  80 06 00 04 */	lwz r0, 4(r6)
/* 803386F8 00301CB8  90 03 00 00 */	stw r0, 0(r3)
/* 803386FC 00301CBC  48 00 00 10 */	b .L_8033870C
.L_80338700:
/* 80338700 00301CC0  7C 84 02 14 */	add r4, r4, r0
/* 80338704 00301CC4  80 06 00 04 */	lwz r0, 4(r6)
/* 80338708 00301CC8  90 04 00 04 */	stw r0, 4(r4)
.L_8033870C:
/* 8033870C 00301CCC  80 A6 00 04 */	lwz r5, 4(r6)
/* 80338710 00301CD0  2C 05 00 00 */	cmpwi r5, 0
/* 80338714 00301CD4  40 82 00 10 */	bne .L_80338724
/* 80338718 00301CD8  80 06 00 00 */	lwz r0, 0(r6)
/* 8033871C 00301CDC  90 03 00 04 */	stw r0, 4(r3)
/* 80338720 00301CE0  48 00 00 10 */	b .L_80338730
.L_80338724:
/* 80338724 00301CE4  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80338728 00301CE8  80 86 00 00 */	lwz r4, 0(r6)
/* 8033872C 00301CEC  7C 85 01 2E */	stwx r4, r5, r0
.L_80338730:
/* 80338730 00301CF0  38 00 00 00 */	li r0, 0
/* 80338734 00301CF4  90 06 00 00 */	stw r0, 0(r6)
/* 80338738 00301CF8  90 06 00 04 */	stw r0, 4(r6)
/* 8033873C 00301CFC  A0 83 00 08 */	lhz r4, 8(r3)
/* 80338740 00301D00  38 04 FF FF */	addi r0, r4, -1
/* 80338744 00301D04  B0 03 00 08 */	sth r0, 8(r3)
/* 80338748 00301D08  4E 80 00 20 */	blr 
.endfn List_Remove__Q26nw4hbm2utFPQ36nw4hbm2ut4ListPv

.balign 16, 0
.fn List_GetNext__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListPCv, global
/* 80338750 00301D10  2C 04 00 00 */	cmpwi r4, 0
/* 80338754 00301D14  40 82 00 0C */	bne .L_80338760
/* 80338758 00301D18  80 63 00 00 */	lwz r3, 0(r3)
/* 8033875C 00301D1C  4E 80 00 20 */	blr
.L_80338760:
/* 80338760 00301D20  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 80338764 00301D24  7C 64 02 14 */	add r3, r4, r0
/* 80338768 00301D28  80 63 00 04 */	lwz r3, 4(r3)
/* 8033876C 00301D2C  4E 80 00 20 */	blr 
.endfn List_GetNext__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListPCv

.balign 16, 0
.fn List_GetNth__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListUs, global
/* 80338770 00301D30  38 C0 00 00 */	li r6, 0
/* 80338774 00301D34  38 A0 00 00 */	li r5, 0
/* 80338778 00301D38  48 00 00 1C */	b .L_80338794
/* 8033877C 00301D3C  60 00 00 00 */	nop 
.L_80338780:
/* 80338780 00301D40  7C 04 30 00 */	cmpw r4, r6
/* 80338784 00301D44  40 82 00 0C */	bne .L_80338790
/* 80338788 00301D48  7C A3 2B 78 */	mr r3, r5
/* 8033878C 00301D4C  4E 80 00 20 */	blr
.L_80338790:
/* 80338790 00301D50  38 C6 00 01 */	addi r6, r6, 1
.L_80338794:
/* 80338794 00301D54  2C 05 00 00 */	cmpwi r5, 0
/* 80338798 00301D58  41 82 00 14 */	beq .L_803387AC
/* 8033879C 00301D5C  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 803387A0 00301D60  7C A5 02 14 */	add r5, r5, r0
/* 803387A4 00301D64  80 A5 00 04 */	lwz r5, 4(r5)
/* 803387A8 00301D68  48 00 00 08 */	b .L_803387B0
.L_803387AC:
/* 803387AC 00301D6C  80 A3 00 00 */	lwz r5, 0(r3)
.L_803387B0:
/* 803387B0 00301D70  2C 05 00 00 */	cmpwi r5, 0
/* 803387B4 00301D74  40 82 FF CC */	bne .L_80338780
/* 803387B8 00301D78  38 60 00 00 */	li r3, 0
/* 803387BC 00301D7C  4E 80 00 20 */	blr 
.endfn List_GetNth__Q26nw4hbm2utFPCQ36nw4hbm2ut4ListUs