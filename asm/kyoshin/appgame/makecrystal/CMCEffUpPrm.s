.include "macros.inc"
.file "kyoshin/appgame/makecrystal/CMCEffUpPrm.o"

# 0x80015014 - 0x80015044
.section extab, "a"
.balign 4

.obj "@etb_80015014", local
.hidden "@etb_80015014"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80015014"

.obj "@etb_8001501C", local
.hidden "@etb_8001501C"
	.4byte 0x28080000
	.4byte 0x00000000
.endobj "@etb_8001501C"

.obj "@etb_80015024", local
.hidden "@etb_80015024"
	.4byte 0x200A0000
	.4byte 0x00000000
.endobj "@etb_80015024"

.obj "@etb_8001502C", local
.hidden "@etb_8001502C"
	.4byte 0x18080000
	.4byte 0x00000000
.endobj "@etb_8001502C"

.obj "@etb_80015034", local
.hidden "@etb_80015034"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_80015034"

.obj "@etb_8001503C", local
.hidden "@etb_8001503C"
	.4byte 0x304A0000
	.4byte 0x00000000
.endobj "@etb_8001503C"

# 0x8002DECC - 0x8002DF14
.section extabindex, "a"
.balign 4

.obj "@eti_8002DECC", local
.hidden "@eti_8002DECC"
	.4byte fn_80224374
	.4byte 0x00000040
	.4byte "@etb_80015014"
.endobj "@eti_8002DECC"

.obj "@eti_8002DED8", local
.hidden "@eti_8002DED8"
	.4byte fn_802243B4
	.4byte 0x000000C8
	.4byte "@etb_8001501C"
.endobj "@eti_8002DED8"

.obj "@eti_8002DEE4", local
.hidden "@eti_8002DEE4"
	.4byte fn_8022447C
	.4byte 0x00000098
	.4byte "@etb_80015024"
.endobj "@eti_8002DEE4"

.obj "@eti_8002DEF0", local
.hidden "@eti_8002DEF0"
	.4byte fn_80224514
	.4byte 0x00000068
	.4byte "@etb_8001502C"
.endobj "@eti_8002DEF0"

.obj "@eti_8002DEFC", local
.hidden "@eti_8002DEFC"
	.4byte fn_8022457C
	.4byte 0x00000074
	.4byte "@etb_80015034"
.endobj "@eti_8002DEFC"

.obj "@eti_8002DF08", local
.hidden "@eti_8002DF08"
	.4byte fn_802245F0
	.4byte 0x000000A0
	.4byte "@etb_8001503C"
.endobj "@eti_8002DF08"

# 0x8022432C - 0x802246EC
.text
.balign 4

.fn fn_8022432C, local
/* 8022432C 001ED8EC  3C A0 80 54 */	lis r5, __vt__CMCEffUpPrm@ha
/* 80224330 001ED8F0  38 00 00 01 */	li r0, 0x1
/* 80224334 001ED8F4  38 A5 98 60 */	addi r5, r5, __vt__CMCEffUpPrm@l
/* 80224338 001ED8F8  90 A3 00 00 */	stw r5, 0x0(r3)
/* 8022433C 001ED8FC  38 C3 00 0C */	addi r6, r3, 0xc
/* 80224340 001ED900  98 03 00 04 */	stb r0, 0x4(r3)
/* 80224344 001ED904  38 03 00 6C */	addi r0, r3, 0x6c
/* 80224348 001ED908  38 A0 00 00 */	li r5, 0x0
/* 8022434C 001ED90C  90 83 00 08 */	stw r4, 0x8(r3)
.L_80224350:
/* 80224350 001ED910  90 A6 00 00 */	stw r5, 0x0(r6)
/* 80224354 001ED914  90 A6 00 04 */	stw r5, 0x4(r6)
/* 80224358 001ED918  98 A6 00 08 */	stb r5, 0x8(r6)
/* 8022435C 001ED91C  38 C6 00 0C */	addi r6, r6, 0xc
/* 80224360 001ED920  7C 06 00 40 */	cmplw r6, r0
/* 80224364 001ED924  41 80 FF EC */	blt .L_80224350
/* 80224368 001ED928  38 00 00 00 */	li r0, 0x0
/* 8022436C 001ED92C  98 03 00 6C */	stb r0, 0x6c(r3)
/* 80224370 001ED930  4E 80 00 20 */	blr
.endfn fn_8022432C

.fn fn_80224374, local
/* 80224374 001ED934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80224378 001ED938  7C 08 02 A6 */	mflr r0
/* 8022437C 001ED93C  2C 03 00 00 */	cmpwi r3, 0x0
/* 80224380 001ED940  90 01 00 14 */	stw r0, 0x14(r1)
/* 80224384 001ED944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80224388 001ED948  7C 7F 1B 78 */	mr r31, r3
/* 8022438C 001ED94C  41 82 00 10 */	beq .L_8022439C
/* 80224390 001ED950  2C 04 00 00 */	cmpwi r4, 0x0
/* 80224394 001ED954  40 81 00 08 */	ble .L_8022439C
/* 80224398 001ED958  48 21 08 95 */	bl __dl__FPv
.L_8022439C:
/* 8022439C 001ED95C  7F E3 FB 78 */	mr r3, r31
/* 802243A0 001ED960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802243A4 001ED964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802243A8 001ED968  7C 08 03 A6 */	mtlr r0
/* 802243AC 001ED96C  38 21 00 10 */	addi r1, r1, 0x10
/* 802243B0 001ED970  4E 80 00 20 */	blr
.endfn fn_80224374

.fn fn_802243B4, local
/* 802243B4 001ED974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802243B8 001ED978  7C 08 02 A6 */	mflr r0
/* 802243BC 001ED97C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802243C0 001ED980  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802243C4 001ED984  3F E0 80 50 */	lis r31, lbl_80504CFC@ha
/* 802243C8 001ED988  7C 7B 1B 78 */	mr r27, r3
/* 802243CC 001ED98C  3B A0 00 00 */	li r29, 0x0
/* 802243D0 001ED990  3B FF 4C FC */	addi r31, r31, lbl_80504CFC@l
.L_802243D4:
/* 802243D4 001ED994  57 A0 06 3E */	clrlwi r0, r29, 24
/* 802243D8 001ED998  80 9B 00 08 */	lwz r4, 0x8(r27)
/* 802243DC 001ED99C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802243E0 001ED9A0  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 802243E4 001ED9A4  7C 7B 02 14 */	add r3, r27, r0
/* 802243E8 001ED9A8  3B 83 00 0C */	addi r28, r3, 0xc
/* 802243EC 001ED9AC  7F 83 E3 78 */	mr r3, r28
/* 802243F0 001ED9B0  4B F1 2A 95 */	bl fn_80136E84
/* 802243F4 001ED9B4  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 802243F8 001ED9B8  38 9C 00 04 */	addi r4, r28, 0x4
/* 802243FC 001ED9BC  80 BB 00 08 */	lwz r5, 0x8(r27)
/* 80224400 001ED9C0  38 DF 00 DB */	addi r6, r31, 0xdb
/* 80224404 001ED9C4  4B F1 2B 05 */	bl fn_80136F08
/* 80224408 001ED9C8  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 8022440C 001ED9CC  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 80224410 001ED9D0  4B F1 11 AD */	bl fn_801355BC
/* 80224414 001ED9D4  7C 64 1B 78 */	mr r4, r3
/* 80224418 001ED9D8  7F C3 F3 78 */	mr r3, r30
/* 8022441C 001ED9DC  4B F1 23 51 */	bl fn_8013676C
/* 80224420 001ED9E0  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 80224424 001ED9E4  38 A0 00 01 */	li r5, 0x1
/* 80224428 001ED9E8  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 8022442C 001ED9EC  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224430 001ED9F0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80224434 001ED9F4  7D 89 03 A6 */	mtctr r12
/* 80224438 001ED9F8  4E 80 04 21 */	bctrl
/* 8022443C 001ED9FC  80 7C 00 00 */	lwz r3, 0x0(r28)
/* 80224440 001EDA00  38 80 00 00 */	li r4, 0x0
/* 80224444 001EDA04  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224448 001EDA08  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022444C 001EDA0C  7D 89 03 A6 */	mtctr r12
/* 80224450 001EDA10  4E 80 04 21 */	bctrl
/* 80224454 001EDA14  3B BD 00 01 */	addi r29, r29, 0x1
/* 80224458 001EDA18  28 1D 00 08 */	cmplwi r29, 0x8
/* 8022445C 001EDA1C  41 80 FF 78 */	blt .L_802243D4
/* 80224460 001EDA20  38 00 00 01 */	li r0, 0x1
/* 80224464 001EDA24  98 1B 00 6C */	stb r0, 0x6c(r27)
/* 80224468 001EDA28  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8022446C 001EDA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80224470 001EDA30  7C 08 03 A6 */	mtlr r0
/* 80224474 001EDA34  38 21 00 20 */	addi r1, r1, 0x20
/* 80224478 001EDA38  4E 80 00 20 */	blr
.endfn fn_802243B4

.fn fn_8022447C, local
/* 8022447C 001EDA3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80224480 001EDA40  7C 08 02 A6 */	mflr r0
/* 80224484 001EDA44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80224488 001EDA48  39 61 00 20 */	addi r11, r1, 0x20
/* 8022448C 001EDA4C  48 09 5C CD */	bl _savegpr_28
/* 80224490 001EDA50  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 80224494 001EDA54  7C 7C 1B 78 */	mr r28, r3
/* 80224498 001EDA58  2C 00 00 00 */	cmpwi r0, 0x0
/* 8022449C 001EDA5C  41 82 00 60 */	beq .L_802244FC
/* 802244A0 001EDA60  3B A0 00 00 */	li r29, 0x0
/* 802244A4 001EDA64  3B E0 00 00 */	li r31, 0x0
.L_802244A8:
/* 802244A8 001EDA68  57 A0 06 3E */	clrlwi r0, r29, 24
/* 802244AC 001EDA6C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802244B0 001EDA70  7F DC 02 14 */	add r30, r28, r0
/* 802244B4 001EDA74  88 1E 00 14 */	lbz r0, 0x14(r30)
/* 802244B8 001EDA78  2C 00 00 01 */	cmpwi r0, 0x1
/* 802244BC 001EDA7C  40 82 00 1C */	bne .L_802244D8
/* 802244C0 001EDA80  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 802244C4 001EDA84  C0 22 AA 94 */	lfs f1, lbl_8066AE14@sda21(r2)
/* 802244C8 001EDA88  4B F1 2F 7D */	bl fn_80137444
/* 802244CC 001EDA8C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802244D0 001EDA90  41 82 00 08 */	beq .L_802244D8
/* 802244D4 001EDA94  9B FE 00 14 */	stb r31, 0x14(r30)
.L_802244D8:
/* 802244D8 001EDA98  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 802244DC 001EDA9C  38 80 00 00 */	li r4, 0x0
/* 802244E0 001EDAA0  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802244E4 001EDAA4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802244E8 001EDAA8  7D 89 03 A6 */	mtctr r12
/* 802244EC 001EDAAC  4E 80 04 21 */	bctrl
/* 802244F0 001EDAB0  3B BD 00 01 */	addi r29, r29, 0x1
/* 802244F4 001EDAB4  28 1D 00 08 */	cmplwi r29, 0x8
/* 802244F8 001EDAB8  41 80 FF B0 */	blt .L_802244A8
.L_802244FC:
/* 802244FC 001EDABC  39 61 00 20 */	addi r11, r1, 0x20
/* 80224500 001EDAC0  48 09 5C A5 */	bl _restgpr_28
/* 80224504 001EDAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80224508 001EDAC8  7C 08 03 A6 */	mtlr r0
/* 8022450C 001EDACC  38 21 00 20 */	addi r1, r1, 0x20
/* 80224510 001EDAD0  4E 80 00 20 */	blr
.endfn fn_8022447C

.fn fn_80224514, local
/* 80224514 001EDAD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80224518 001EDAD8  7C 08 02 A6 */	mflr r0
/* 8022451C 001EDADC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80224520 001EDAE0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 80224524 001EDAE4  7C 7D 1B 78 */	mr r29, r3
/* 80224528 001EDAE8  7C 9E 23 78 */	mr r30, r4
/* 8022452C 001EDAEC  88 03 00 6C */	lbz r0, 0x6c(r3)
/* 80224530 001EDAF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 80224534 001EDAF4  41 82 00 34 */	beq .L_80224568
/* 80224538 001EDAF8  3B E0 00 00 */	li r31, 0x0
.L_8022453C:
/* 8022453C 001EDAFC  57 E0 06 3E */	clrlwi r0, r31, 24
/* 80224540 001EDB00  7F C4 F3 78 */	mr r4, r30
/* 80224544 001EDB04  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80224548 001EDB08  38 A0 00 00 */	li r5, 0x0
/* 8022454C 001EDB0C  38 C0 00 01 */	li r6, 0x1
/* 80224550 001EDB10  7C 7D 02 14 */	add r3, r29, r0
/* 80224554 001EDB14  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80224558 001EDB18  4B F1 2A E1 */	bl fn_80137038
/* 8022455C 001EDB1C  3B FF 00 01 */	addi r31, r31, 0x1
/* 80224560 001EDB20  28 1F 00 08 */	cmplwi r31, 0x8
/* 80224564 001EDB24  41 80 FF D8 */	blt .L_8022453C
.L_80224568:
/* 80224568 001EDB28  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8022456C 001EDB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80224570 001EDB30  7C 08 03 A6 */	mtlr r0
/* 80224574 001EDB34  38 21 00 20 */	addi r1, r1, 0x20
/* 80224578 001EDB38  4E 80 00 20 */	blr
.endfn fn_80224514

.fn fn_8022457C, local
/* 8022457C 001EDB3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80224580 001EDB40  7C 08 02 A6 */	mflr r0
/* 80224584 001EDB44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80224588 001EDB48  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 8022458C 001EDB4C  3B C0 00 00 */	li r30, 0x0
/* 80224590 001EDB50  7C 7C 1B 78 */	mr r28, r3
/* 80224594 001EDB54  3B A0 00 00 */	li r29, 0x0
/* 80224598 001EDB58  9B C3 00 6C */	stb r30, 0x6c(r3)
.L_8022459C:
/* 8022459C 001EDB5C  57 A0 06 3E */	clrlwi r0, r29, 24
/* 802245A0 001EDB60  1C 00 00 0C */	mulli r0, r0, 0xc
/* 802245A4 001EDB64  7F FC 02 14 */	add r31, r28, r0
/* 802245A8 001EDB68  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802245AC 001EDB6C  2C 03 00 00 */	cmpwi r3, 0x0
/* 802245B0 001EDB70  41 82 00 20 */	beq .L_802245D0
/* 802245B4 001EDB74  41 82 00 18 */	beq .L_802245CC
/* 802245B8 001EDB78  81 83 00 00 */	lwz r12, 0x0(r3)
/* 802245BC 001EDB7C  38 80 00 01 */	li r4, 0x1
/* 802245C0 001EDB80  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 802245C4 001EDB84  7D 89 03 A6 */	mtctr r12
/* 802245C8 001EDB88  4E 80 04 21 */	bctrl
.L_802245CC:
/* 802245CC 001EDB8C  93 DF 00 0C */	stw r30, 0xc(r31)
.L_802245D0:
/* 802245D0 001EDB90  3B BD 00 01 */	addi r29, r29, 0x1
/* 802245D4 001EDB94  28 1D 00 08 */	cmplwi r29, 0x8
/* 802245D8 001EDB98  41 80 FF C4 */	blt .L_8022459C
/* 802245DC 001EDB9C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 802245E0 001EDBA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802245E4 001EDBA4  7C 08 03 A6 */	mtlr r0
/* 802245E8 001EDBA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802245EC 001EDBAC  4E 80 00 20 */	blr
.endfn fn_8022457C

.fn fn_802245F0, local
/* 802245F0 001EDBB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802245F4 001EDBB4  7C 08 02 A6 */	mflr r0
/* 802245F8 001EDBB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 802245FC 001EDBBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80224600 001EDBC0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80224604 001EDBC4  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 80224608 001EDBC8  48 09 5B 49 */	bl _savegpr_26
/* 8022460C 001EDBCC  C3 E2 AA 90 */	lfs f31, lbl_8066AE10@sda21(r2)
/* 80224610 001EDBD0  7C 7A 1B 78 */	mr r26, r3
/* 80224614 001EDBD4  7C 9B 23 78 */	mr r27, r4
/* 80224618 001EDBD8  3B 80 00 00 */	li r28, 0x0
/* 8022461C 001EDBDC  3B C0 00 00 */	li r30, 0x0
/* 80224620 001EDBE0  3B E0 00 01 */	li r31, 0x1
.L_80224624:
/* 80224624 001EDBE4  57 80 06 3E */	clrlwi r0, r28, 24
/* 80224628 001EDBE8  38 80 00 00 */	li r4, 0x0
/* 8022462C 001EDBEC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80224630 001EDBF0  7F BA 02 14 */	add r29, r26, r0
/* 80224634 001EDBF4  9B DD 00 14 */	stb r30, 0x14(r29)
/* 80224638 001EDBF8  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 8022463C 001EDBFC  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 80224640 001EDC00  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 80224644 001EDC04  81 83 00 00 */	lwz r12, 0x0(r3)
/* 80224648 001EDC08  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8022464C 001EDC0C  7D 89 03 A6 */	mtctr r12
/* 80224650 001EDC10  4E 80 04 21 */	bctrl
/* 80224654 001EDC14  57 80 06 3E */	clrlwi r0, r28, 24
/* 80224658 001EDC18  7C 00 D8 40 */	cmplw r0, r27
/* 8022465C 001EDC1C  40 80 00 08 */	bge .L_80224664
/* 80224660 001EDC20  9B FD 00 14 */	stb r31, 0x14(r29)
.L_80224664:
/* 80224664 001EDC24  3B 9C 00 01 */	addi r28, r28, 0x1
/* 80224668 001EDC28  28 1C 00 08 */	cmplwi r28, 0x8
/* 8022466C 001EDC2C  41 80 FF B8 */	blt .L_80224624
/* 80224670 001EDC30  39 61 00 20 */	addi r11, r1, 0x20
/* 80224674 001EDC34  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 80224678 001EDC38  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8022467C 001EDC3C  48 09 5B 21 */	bl _restgpr_26
/* 80224680 001EDC40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80224684 001EDC44  7C 08 03 A6 */	mtlr r0
/* 80224688 001EDC48  38 21 00 30 */	addi r1, r1, 0x30
/* 8022468C 001EDC4C  4E 80 00 20 */	blr
.endfn fn_802245F0

.fn fn_80224690, local
/* 80224690 001EDC50  28 04 00 08 */	cmplwi r4, 0x8
/* 80224694 001EDC54  4C 80 00 20 */	bgelr
/* 80224698 001EDC58  1C 04 00 0C */	mulli r0, r4, 0xc
/* 8022469C 001EDC5C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 802246A0 001EDC60  7C 63 02 14 */	add r3, r3, r0
/* 802246A4 001EDC64  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802246A8 001EDC68  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802246AC 001EDC6C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 802246B0 001EDC70  C0 05 00 04 */	lfs f0, 0x4(r5)
/* 802246B4 001EDC74  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 802246B8 001EDC78  C0 05 00 08 */	lfs f0, 0x8(r5)
/* 802246BC 001EDC7C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 802246C0 001EDC80  4E 80 00 20 */	blr
.endfn fn_80224690

.fn fn_802246C4, local
/* 802246C4 001EDC84  28 04 00 08 */	cmplwi r4, 0x8
/* 802246C8 001EDC88  4C 80 00 20 */	bgelr
/* 802246CC 001EDC8C  1C 04 00 0C */	mulli r0, r4, 0xc
/* 802246D0 001EDC90  3C 80 80 50 */	lis r4, lbl_80504CFC@ha
/* 802246D4 001EDC94  38 84 4C FC */	addi r4, r4, lbl_80504CFC@l
/* 802246D8 001EDC98  7C 63 02 14 */	add r3, r3, r0
/* 802246DC 001EDC9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802246E0 001EDCA0  38 84 00 F5 */	addi r4, r4, 0xf5
/* 802246E4 001EDCA4  4B F1 22 2C */	b fn_80136910
/* 802246E8 001EDCA8  4E 80 00 20 */	blr
.endfn fn_802246C4
