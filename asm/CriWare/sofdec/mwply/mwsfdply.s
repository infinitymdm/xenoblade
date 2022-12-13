.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global mwPlySfdStart
mwPlySfdStart:
/* 803A1338 0036A8F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A133C 0036A8FC  7C 08 02 A6 */	mflr r0
/* 803A1340 0036A900  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1344 0036A904  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A1348 0036A908  48 02 97 4D */	bl SFD_Start
/* 803A134C 0036A90C  2C 03 00 00 */	cmpwi r3, 0
/* 803A1350 0036A910  41 82 00 28 */	beq lbl_803A1378
/* 803A1354 0036A914  38 60 FE CD */	li r3, -307
/* 803A1358 0036A918  4B FF FC 5D */	bl MWSFLIB_SetErrCode
/* 803A135C 0036A91C  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1360 0036A920  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1364 0036A924  38 63 00 1B */	addi r3, r3, 0x1b
/* 803A1368 0036A928  4C C6 31 82 */	crclr 6
/* 803A136C 0036A92C  4B FF C8 CD */	bl MWSFSVM_Error
/* 803A1370 0036A930  38 60 FE CD */	li r3, -307
/* 803A1374 0036A934  48 00 00 08 */	b lbl_803A137C
lbl_803A1378:
/* 803A1378 0036A938  38 60 00 00 */	li r3, 0
lbl_803A137C:
/* 803A137C 0036A93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1380 0036A940  7C 08 03 A6 */	mtlr r0
/* 803A1384 0036A944  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1388 0036A948  4E 80 00 20 */	blr 

.global func_803A138C
func_803A138C:
/* 803A138C 0036A94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1390 0036A950  7C 08 02 A6 */	mflr r0
/* 803A1394 0036A954  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1398 0036A958  80 63 00 48 */	lwz r3, 0x48(r3)
/* 803A139C 0036A95C  48 02 A0 45 */	bl SFD_TermSupply
/* 803A13A0 0036A960  2C 03 00 00 */	cmpwi r3, 0
/* 803A13A4 0036A964  41 82 00 18 */	beq lbl_803A13BC
/* 803A13A8 0036A968  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A13AC 0036A96C  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A13B0 0036A970  38 63 00 62 */	addi r3, r3, 0x62
/* 803A13B4 0036A974  4C C6 31 82 */	crclr 6
/* 803A13B8 0036A978  4B FF C8 81 */	bl MWSFSVM_Error
lbl_803A13BC:
/* 803A13BC 0036A97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A13C0 0036A980  7C 08 03 A6 */	mtlr r0
/* 803A13C4 0036A984  38 21 00 10 */	addi r1, r1, 0x10
/* 803A13C8 0036A988  4E 80 00 20 */	blr 

.global func_803A13CC
func_803A13CC:
/* 803A13CC 0036A98C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A13D0 0036A990  7C 08 02 A6 */	mflr r0
/* 803A13D4 0036A994  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A13D8 0036A998  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A13DC 0036A99C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A13E0 0036A9A0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A13E4 0036A9A4  7C 7D 1B 78 */	mr r29, r3
/* 803A13E8 0036A9A8  4B FF F8 79 */	bl MWSFLIB_GetLibWorkPtr
/* 803A13EC 0036A9AC  38 00 00 00 */	li r0, 0
/* 803A13F0 0036A9B0  7F A3 EB 78 */	mr r3, r29
/* 803A13F4 0036A9B4  90 1D 06 68 */	stw r0, 0x668(r29)
/* 803A13F8 0036A9B8  38 80 00 00 */	li r4, 0
/* 803A13FC 0036A9BC  4B FF C1 19 */	bl MWSFLSC_Pause
/* 803A1400 0036A9C0  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 803A1404 0036A9C4  2C 00 00 00 */	cmpwi r0, 0
/* 803A1408 0036A9C8  41 82 00 84 */	beq lbl_803A148C
/* 803A140C 0036A9CC  7F A3 EB 78 */	mr r3, r29
/* 803A1410 0036A9D0  4B FF EA 6D */	bl MWSFCRE_ResetSfdHn
/* 803A1414 0036A9D4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1418 0036A9D8  41 82 00 1C */	beq lbl_803A1434
/* 803A141C 0036A9DC  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1420 0036A9E0  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1424 0036A9E4  38 63 00 88 */	addi r3, r3, 0x88
/* 803A1428 0036A9E8  4C C6 31 82 */	crclr 6
/* 803A142C 0036A9EC  4B FF C8 0D */	bl MWSFSVM_Error
/* 803A1430 0036A9F0  48 00 01 F0 */	b lbl_803A1620
lbl_803A1434:
/* 803A1434 0036A9F4  7F A3 EB 78 */	mr r3, r29
/* 803A1438 0036A9F8  38 80 00 00 */	li r4, 0
/* 803A143C 0036A9FC  48 00 22 C9 */	bl MWSST_Reset
/* 803A1440 0036AA00  7F A3 EB 78 */	mr r3, r29
/* 803A1444 0036AA04  38 80 00 01 */	li r4, 1
/* 803A1448 0036AA08  48 00 22 BD */	bl MWSST_Reset
/* 803A144C 0036AA0C  7F A3 EB 78 */	mr r3, r29
/* 803A1450 0036AA10  4B FF D2 55 */	bl MWSFTAG_ResetAinfSj
/* 803A1454 0036AA14  7F A3 EB 78 */	mr r3, r29
/* 803A1458 0036AA18  4B FF D1 A5 */	bl MWSFTAG_SetAinfSj
/* 803A145C 0036AA1C  2C 03 00 00 */	cmpwi r3, 0
/* 803A1460 0036AA20  41 82 00 1C */	beq lbl_803A147C
/* 803A1464 0036AA24  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1468 0036AA28  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A146C 0036AA2C  38 63 00 B0 */	addi r3, r3, 0xb0
/* 803A1470 0036AA30  4C C6 31 82 */	crclr 6
/* 803A1474 0036AA34  4B FF C7 C5 */	bl MWSFSVM_Error
/* 803A1478 0036AA38  48 00 01 A8 */	b lbl_803A1620
lbl_803A147C:
/* 803A147C 0036AA3C  7F A3 EB 78 */	mr r3, r29
/* 803A1480 0036AA40  4B FF D2 09 */	bl MWSFTAG_InitTagInf
/* 803A1484 0036AA44  7F A3 EB 78 */	mr r3, r29
/* 803A1488 0036AA48  4B FF B0 25 */	bl MWSFFRM_InitSfhInfTable
lbl_803A148C:
/* 803A148C 0036AA4C  88 1D 00 80 */	lbz r0, 0x80(r29)
/* 803A1490 0036AA50  38 60 00 00 */	li r3, 0
/* 803A1494 0036AA54  90 7D 00 8C */	stw r3, 0x8c(r29)
/* 803A1498 0036AA58  2C 00 00 01 */	cmpwi r0, 1
/* 803A149C 0036AA5C  90 7D 00 90 */	stw r3, 0x90(r29)
/* 803A14A0 0036AA60  40 82 00 40 */	bne lbl_803A14E0
/* 803A14A4 0036AA64  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 803A14A8 0036AA68  48 01 E8 91 */	bl SFD_SetConcatPlay
/* 803A14AC 0036AA6C  2C 03 00 00 */	cmpwi r3, 0
/* 803A14B0 0036AA70  41 82 00 18 */	beq lbl_803A14C8
/* 803A14B4 0036AA74  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A14B8 0036AA78  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A14BC 0036AA7C  38 63 00 DC */	addi r3, r3, 0xdc
/* 803A14C0 0036AA80  4C C6 31 82 */	crclr 6
/* 803A14C4 0036AA84  4B FF C7 75 */	bl MWSFSVM_Error
lbl_803A14C8:
/* 803A14C8 0036AA88  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A14CC 0036AA8C  38 80 00 01 */	li r4, 1
/* 803A14D0 0036AA90  48 00 21 45 */	bl func_803A3614
/* 803A14D4 0036AA94  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A14D8 0036AA98  38 80 00 01 */	li r4, 1
/* 803A14DC 0036AA9C  48 00 21 39 */	bl func_803A3614
lbl_803A14E0:
/* 803A14E0 0036AAA0  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 803A14E4 0036AAA4  48 02 7A 51 */	bl SFD_Standby
/* 803A14E8 0036AAA8  2C 03 00 00 */	cmpwi r3, 0
/* 803A14EC 0036AAAC  41 82 00 1C */	beq lbl_803A1508
/* 803A14F0 0036AAB0  38 60 FE C9 */	li r3, -311
/* 803A14F4 0036AAB4  4B FF FA C1 */	bl MWSFLIB_SetErrCode
/* 803A14F8 0036AAB8  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A14FC 0036AABC  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1500 0036AAC0  4C C6 31 82 */	crclr 6
/* 803A1504 0036AAC4  4B FF C7 35 */	bl MWSFSVM_Error
lbl_803A1508:
/* 803A1508 0036AAC8  88 1D 00 82 */	lbz r0, 0x82(r29)
/* 803A150C 0036AACC  7C 1F 07 75 */	extsb. r31, r0
/* 803A1510 0036AAD0  40 82 00 08 */	bne lbl_803A1518
/* 803A1514 0036AAD4  41 82 00 B4 */	beq lbl_803A15C8
lbl_803A1518:
/* 803A1518 0036AAD8  83 DD 00 48 */	lwz r30, 0x48(r29)
/* 803A151C 0036AADC  4B FF FA 89 */	bl MWSFD_GetPauseBdr
/* 803A1520 0036AAE0  2C 03 00 01 */	cmpwi r3, 1
/* 803A1524 0036AAE4  40 82 00 48 */	bne lbl_803A156C
/* 803A1528 0036AAE8  80 1D 00 08 */	lwz r0, 8(r29)
/* 803A152C 0036AAEC  2C 00 00 01 */	cmpwi r0, 1
/* 803A1530 0036AAF0  40 82 00 3C */	bne lbl_803A156C
/* 803A1534 0036AAF4  7F C3 F3 78 */	mr r3, r30
/* 803A1538 0036AAF8  38 A1 00 08 */	addi r5, r1, 8
/* 803A153C 0036AAFC  38 80 00 06 */	li r4, 6
/* 803A1540 0036AB00  48 02 B0 A1 */	bl func_803CC5E0
/* 803A1544 0036AB04  2C 03 00 00 */	cmpwi r3, 0
/* 803A1548 0036AB08  40 82 00 1C */	bne lbl_803A1564
/* 803A154C 0036AB0C  80 01 00 08 */	lwz r0, 8(r1)
/* 803A1550 0036AB10  2C 00 00 01 */	cmpwi r0, 1
/* 803A1554 0036AB14  40 82 00 18 */	bne lbl_803A156C
/* 803A1558 0036AB18  7F A3 EB 78 */	mr r3, r29
/* 803A155C 0036AB1C  48 00 1A 61 */	bl mwlSfdSleepDecSvr
/* 803A1560 0036AB20  48 00 00 0C */	b lbl_803A156C
lbl_803A1564:
/* 803A1564 0036AB24  7F A3 EB 78 */	mr r3, r29
/* 803A1568 0036AB28  48 00 1A 55 */	bl mwlSfdSleepDecSvr
lbl_803A156C:
/* 803A156C 0036AB2C  7F C3 F3 78 */	mr r3, r30
/* 803A1570 0036AB30  7F E4 FB 78 */	mr r4, r31
/* 803A1574 0036AB34  48 02 76 35 */	bl SFD_Pause
/* 803A1578 0036AB38  2C 03 00 00 */	cmpwi r3, 0
/* 803A157C 0036AB3C  41 82 00 30 */	beq lbl_803A15AC
/* 803A1580 0036AB40  38 60 FE CA */	li r3, -310
/* 803A1584 0036AB44  4B FF FA 31 */	bl MWSFLIB_SetErrCode
/* 803A1588 0036AB48  3C A0 80 52 */	lis r5, lbl_8051E7C0@ha
/* 803A158C 0036AB4C  2C 1F 00 01 */	cmpwi r31, 1
/* 803A1590 0036AB50  38 A5 E7 C0 */	addi r5, r5, lbl_8051E7C0@l
/* 803A1594 0036AB54  38 65 01 06 */	addi r3, r5, 0x106
/* 803A1598 0036AB58  38 85 01 2C */	addi r4, r5, 0x12c
/* 803A159C 0036AB5C  40 82 00 08 */	bne lbl_803A15A4
/* 803A15A0 0036AB60  38 85 01 29 */	addi r4, r5, 0x129
lbl_803A15A4:
/* 803A15A4 0036AB64  4C C6 31 82 */	crclr 6
/* 803A15A8 0036AB68  4B FF C6 91 */	bl MWSFSVM_Error
lbl_803A15AC:
/* 803A15AC 0036AB6C  7F E4 FB 78 */	mr r4, r31
/* 803A15B0 0036AB70  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A15B4 0036AB74  48 00 1E CD */	bl MWSST_GetTime
/* 803A15B8 0036AB78  7F E4 FB 78 */	mr r4, r31
/* 803A15BC 0036AB7C  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A15C0 0036AB80  48 00 1E C1 */	bl MWSST_GetTime
/* 803A15C4 0036AB84  9B FD 00 82 */	stb r31, 0x82(r29)
lbl_803A15C8:
/* 803A15C8 0036AB88  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A15CC 0036AB8C  38 80 00 01 */	li r4, 1
/* 803A15D0 0036AB90  48 00 1E B1 */	bl MWSST_GetTime
/* 803A15D4 0036AB94  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A15D8 0036AB98  38 80 00 01 */	li r4, 1
/* 803A15DC 0036AB9C  48 00 1E A5 */	bl MWSST_GetTime
/* 803A15E0 0036ABA0  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A15E4 0036ABA4  48 00 1C F5 */	bl MWSST_StartSj
/* 803A15E8 0036ABA8  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A15EC 0036ABAC  48 00 1C ED */	bl MWSST_StartSj
/* 803A15F0 0036ABB0  80 9D 00 7C */	lwz r4, 0x7c(r29)
/* 803A15F4 0036ABB4  7F A3 EB 78 */	mr r3, r29
/* 803A15F8 0036ABB8  48 00 07 5D */	bl MWSFD_SetAudioSw
/* 803A15FC 0036ABBC  80 9D 00 78 */	lwz r4, 0x78(r29)
/* 803A1600 0036ABC0  7F A3 EB 78 */	mr r3, r29
/* 803A1604 0036ABC4  48 00 07 61 */	bl func_803A1D64
/* 803A1608 0036ABC8  38 60 00 00 */	li r3, 0
/* 803A160C 0036ABCC  38 00 00 01 */	li r0, 1
/* 803A1610 0036ABD0  90 7D 00 94 */	stw r3, 0x94(r29)
/* 803A1614 0036ABD4  98 7D 00 81 */	stb r3, 0x81(r29)
/* 803A1618 0036ABD8  90 1D 00 04 */	stw r0, 4(r29)
/* 803A161C 0036ABDC  90 7D 06 28 */	stw r3, 0x628(r29)
lbl_803A1620:
/* 803A1620 0036ABE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1624 0036ABE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A1628 0036ABE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A162C 0036ABEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A1630 0036ABF0  7C 08 03 A6 */	mtlr r0
/* 803A1634 0036ABF4  38 21 00 20 */	addi r1, r1, 0x20
/* 803A1638 0036ABF8  4E 80 00 20 */	blr 

.global func_803A163C
func_803A163C:
/* 803A163C 0036ABFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1640 0036AC00  7C 08 02 A6 */	mflr r0
/* 803A1644 0036AC04  3C A0 80 60 */	lis r5, lbl_80602960@ha
/* 803A1648 0036AC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A164C 0036AC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1650 0036AC10  7C 9F 23 78 */	mr r31, r4
/* 803A1654 0036AC14  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1658 0036AC18  7C 7E 1B 78 */	mr r30, r3
/* 803A165C 0036AC1C  80 C5 29 60 */	lwz r6, lbl_80602960@l(r5)
/* 803A1660 0036AC20  2C 06 00 00 */	cmpwi r6, 0
/* 803A1664 0036AC24  41 82 00 2C */	beq lbl_803A1690
/* 803A1668 0036AC28  3C A0 80 57 */	lis r5, lbl_80569BD4@ha
/* 803A166C 0036AC2C  38 A5 9B D4 */	addi r5, r5, lbl_80569BD4@l
/* 803A1670 0036AC30  90 65 00 0C */	stw r3, 0xc(r5)
/* 803A1674 0036AC34  7C C3 33 78 */	mr r3, r6
/* 803A1678 0036AC38  90 85 00 18 */	stw r4, 0x18(r5)
/* 803A167C 0036AC3C  38 85 00 04 */	addi r4, r5, 4
/* 803A1680 0036AC40  80 A6 00 00 */	lwz r5, 0(r6)
/* 803A1684 0036AC44  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803A1688 0036AC48  7D 89 03 A6 */	mtctr r12
/* 803A168C 0036AC4C  4E 80 04 21 */	bctrl 
lbl_803A1690:
/* 803A1690 0036AC50  7F C3 F3 78 */	mr r3, r30
/* 803A1694 0036AC54  48 00 07 B9 */	bl MWSFD_IsEnableHndl
/* 803A1698 0036AC58  2C 03 00 01 */	cmpwi r3, 1
/* 803A169C 0036AC5C  41 82 00 1C */	beq lbl_803A16B8
/* 803A16A0 0036AC60  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A16A4 0036AC64  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A16A8 0036AC68  38 63 01 30 */	addi r3, r3, 0x130
/* 803A16AC 0036AC6C  4C C6 31 82 */	crclr 6
/* 803A16B0 0036AC70  4B FF C5 89 */	bl MWSFSVM_Error
/* 803A16B4 0036AC74  48 00 00 F8 */	b lbl_803A17AC
lbl_803A16B8:
/* 803A16B8 0036AC78  2C 1F 00 00 */	cmpwi r31, 0
/* 803A16BC 0036AC7C  40 82 00 1C */	bne lbl_803A16D8
/* 803A16C0 0036AC80  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A16C4 0036AC84  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A16C8 0036AC88  38 63 01 5D */	addi r3, r3, 0x15d
/* 803A16CC 0036AC8C  4C C6 31 82 */	crclr 6
/* 803A16D0 0036AC90  4B FF C5 69 */	bl MWSFSVM_Error
/* 803A16D4 0036AC94  48 00 00 D8 */	b lbl_803A17AC
lbl_803A16D8:
/* 803A16D8 0036AC98  80 1E 00 08 */	lwz r0, 8(r30)
/* 803A16DC 0036AC9C  2C 00 00 0A */	cmpwi r0, 0xa
/* 803A16E0 0036ACA0  41 82 00 CC */	beq lbl_803A17AC
/* 803A16E4 0036ACA4  38 60 00 01 */	li r3, 1
/* 803A16E8 0036ACA8  48 00 19 E5 */	bl MWSFD_SetProhibitServer
/* 803A16EC 0036ACAC  7F C3 F3 78 */	mr r3, r30
/* 803A16F0 0036ACB0  38 80 00 00 */	li r4, 0
/* 803A16F4 0036ACB4  4B FF B9 C1 */	bl func_8039D0B4
/* 803A16F8 0036ACB8  7F C3 F3 78 */	mr r3, r30
/* 803A16FC 0036ACBC  38 80 00 00 */	li r4, 0
/* 803A1700 0036ACC0  4B FF BE 29 */	bl func_8039D528
/* 803A1704 0036ACC4  80 1E 04 F4 */	lwz r0, 0x4f4(r30)
/* 803A1708 0036ACC8  7F C3 F3 78 */	mr r3, r30
/* 803A170C 0036ACCC  90 1E 04 F0 */	stw r0, 0x4f0(r30)
/* 803A1710 0036ACD0  48 00 01 75 */	bl func_803A1884
/* 803A1714 0036ACD4  7F C3 F3 78 */	mr r3, r30
/* 803A1718 0036ACD8  4B FF FC B5 */	bl func_803A13CC
/* 803A171C 0036ACDC  38 60 00 00 */	li r3, 0
/* 803A1720 0036ACE0  48 00 19 AD */	bl MWSFD_SetProhibitServer
/* 803A1724 0036ACE4  7F E3 FB 78 */	mr r3, r31
/* 803A1728 0036ACE8  4B F1 7E 91 */	bl strlen
/* 803A172C 0036ACEC  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 803A1730 0036ACF0  7C 03 00 00 */	cmpw r3, r0
/* 803A1734 0036ACF4  40 81 00 2C */	ble lbl_803A1760
/* 803A1738 0036ACF8  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A173C 0036ACFC  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1740 0036AD00  38 63 01 85 */	addi r3, r3, 0x185
/* 803A1744 0036AD04  4C C6 31 82 */	crclr 6
/* 803A1748 0036AD08  4B FF C4 F1 */	bl MWSFSVM_Error
/* 803A174C 0036AD0C  80 7E 04 D8 */	lwz r3, 0x4d8(r30)
/* 803A1750 0036AD10  7F E4 FB 78 */	mr r4, r31
/* 803A1754 0036AD14  80 BE 04 DC */	lwz r5, 0x4dc(r30)
/* 803A1758 0036AD18  4B F2 10 21 */	bl strncpy
/* 803A175C 0036AD1C  48 00 00 10 */	b lbl_803A176C
lbl_803A1760:
/* 803A1760 0036AD20  80 7E 04 D8 */	lwz r3, 0x4d8(r30)
/* 803A1764 0036AD24  7F E4 FB 78 */	mr r4, r31
/* 803A1768 0036AD28  4B F2 0F 51 */	bl strcpy
lbl_803A176C:
/* 803A176C 0036AD2C  3C 60 00 10 */	lis r3, 0x000FFFFF@ha
/* 803A1770 0036AD30  38 E0 00 00 */	li r7, 0
/* 803A1774 0036AD34  38 C3 FF FF */	addi r6, r3, 0x000FFFFF@l
/* 803A1778 0036AD38  38 00 00 01 */	li r0, 1
/* 803A177C 0036AD3C  90 FE 04 E4 */	stw r7, 0x4e4(r30)
/* 803A1780 0036AD40  7F C3 F3 78 */	mr r3, r30
/* 803A1784 0036AD44  38 80 00 00 */	li r4, 0
/* 803A1788 0036AD48  38 A0 FF FF */	li r5, -1
/* 803A178C 0036AD4C  90 FE 04 E8 */	stw r7, 0x4e8(r30)
/* 803A1790 0036AD50  90 DE 04 EC */	stw r6, 0x4ec(r30)
/* 803A1794 0036AD54  90 1E 04 E0 */	stw r0, 0x4e0(r30)
/* 803A1798 0036AD58  4B FF C7 35 */	bl func_8039DECC
/* 803A179C 0036AD5C  7F C3 F3 78 */	mr r3, r30
/* 803A17A0 0036AD60  38 80 00 00 */	li r4, 0
/* 803A17A4 0036AD64  38 A0 FF FF */	li r5, -1
/* 803A17A8 0036AD68  4B FF C7 29 */	bl func_8039DED0
lbl_803A17AC:
/* 803A17AC 0036AD6C  3C 60 80 60 */	lis r3, lbl_80602960@ha
/* 803A17B0 0036AD70  80 63 29 60 */	lwz r3, lbl_80602960@l(r3)
/* 803A17B4 0036AD74  2C 03 00 00 */	cmpwi r3, 0
/* 803A17B8 0036AD78  41 82 00 20 */	beq lbl_803A17D8
/* 803A17BC 0036AD7C  80 83 00 00 */	lwz r4, 0(r3)
/* 803A17C0 0036AD80  3C A0 80 57 */	lis r5, lbl_80569BD4@ha
/* 803A17C4 0036AD84  38 A5 9B D4 */	addi r5, r5, lbl_80569BD4@l
/* 803A17C8 0036AD88  81 84 00 24 */	lwz r12, 0x24(r4)
/* 803A17CC 0036AD8C  38 85 00 6C */	addi r4, r5, 0x6c
/* 803A17D0 0036AD90  7D 89 03 A6 */	mtctr r12
/* 803A17D4 0036AD94  4E 80 04 21 */	bctrl 
lbl_803A17D8:
/* 803A17D8 0036AD98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A17DC 0036AD9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A17E0 0036ADA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A17E4 0036ADA4  7C 08 03 A6 */	mtlr r0
/* 803A17E8 0036ADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803A17EC 0036ADAC  4E 80 00 20 */	blr 

.global func_803A17F0
func_803A17F0:
/* 803A17F0 0036ADB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A17F4 0036ADB4  7C 08 02 A6 */	mflr r0
/* 803A17F8 0036ADB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A17FC 0036ADBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1800 0036ADC0  7C 9F 23 78 */	mr r31, r4
/* 803A1804 0036ADC4  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1808 0036ADC8  7C 7E 1B 78 */	mr r30, r3
/* 803A180C 0036ADCC  48 00 06 41 */	bl MWSFD_IsEnableHndl
/* 803A1810 0036ADD0  2C 03 00 01 */	cmpwi r3, 1
/* 803A1814 0036ADD4  41 82 00 1C */	beq lbl_803A1830
/* 803A1818 0036ADD8  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A181C 0036ADDC  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1820 0036ADE0  38 63 03 36 */	addi r3, r3, 0x336
/* 803A1824 0036ADE4  4C C6 31 82 */	crclr 6
/* 803A1828 0036ADE8  4B FF C4 11 */	bl MWSFSVM_Error
/* 803A182C 0036ADEC  48 00 00 40 */	b lbl_803A186C
lbl_803A1830:
/* 803A1830 0036ADF0  38 60 00 01 */	li r3, 1
/* 803A1834 0036ADF4  48 00 18 99 */	bl MWSFD_SetProhibitServer
/* 803A1838 0036ADF8  7F C3 F3 78 */	mr r3, r30
/* 803A183C 0036ADFC  48 00 00 49 */	bl func_803A1884
/* 803A1840 0036AE00  38 00 00 00 */	li r0, 0
/* 803A1844 0036AE04  38 80 00 02 */	li r4, 2
/* 803A1848 0036AE08  93 FE 04 F0 */	stw r31, 0x4f0(r30)
/* 803A184C 0036AE0C  7F C3 F3 78 */	mr r3, r30
/* 803A1850 0036AE10  90 9E 05 04 */	stw r4, 0x504(r30)
/* 803A1854 0036AE14  90 1E 05 08 */	stw r0, 0x508(r30)
/* 803A1858 0036AE18  90 1E 05 0C */	stw r0, 0x50c(r30)
/* 803A185C 0036AE1C  90 1E 05 10 */	stw r0, 0x510(r30)
/* 803A1860 0036AE20  4B FF FB 6D */	bl func_803A13CC
/* 803A1864 0036AE24  38 60 00 00 */	li r3, 0
/* 803A1868 0036AE28  48 00 18 65 */	bl MWSFD_SetProhibitServer
lbl_803A186C:
/* 803A186C 0036AE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1870 0036AE30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1874 0036AE34  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A1878 0036AE38  7C 08 03 A6 */	mtlr r0
/* 803A187C 0036AE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1880 0036AE40  4E 80 00 20 */	blr 

.global func_803A1884
func_803A1884:
/* 803A1884 0036AE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1888 0036AE48  7C 08 02 A6 */	mflr r0
/* 803A188C 0036AE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1890 0036AE50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1894 0036AE54  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1898 0036AE58  7C 7E 1B 78 */	mr r30, r3
/* 803A189C 0036AE5C  83 E3 00 48 */	lwz r31, 0x48(r3)
/* 803A18A0 0036AE60  2C 1F 00 00 */	cmpwi r31, 0
/* 803A18A4 0036AE64  41 82 00 F4 */	beq lbl_803A1998
/* 803A18A8 0036AE68  48 00 17 15 */	bl mwlSfdSleepDecSvr
/* 803A18AC 0036AE6C  38 00 00 00 */	li r0, 0
/* 803A18B0 0036AE70  7F E3 FB 78 */	mr r3, r31
/* 803A18B4 0036AE74  90 1E 00 04 */	stw r0, 4(r30)
/* 803A18B8 0036AE78  90 1E 00 48 */	stw r0, 0x48(r30)
/* 803A18BC 0036AE7C  48 02 92 C1 */	bl func_803CAB7C
/* 803A18C0 0036AE80  2C 03 00 00 */	cmpwi r3, 0
/* 803A18C4 0036AE84  41 82 00 20 */	beq lbl_803A18E4
/* 803A18C8 0036AE88  38 60 FE CC */	li r3, -308
/* 803A18CC 0036AE8C  4B FF F6 E9 */	bl MWSFLIB_SetErrCode
/* 803A18D0 0036AE90  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A18D4 0036AE94  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A18D8 0036AE98  38 63 03 61 */	addi r3, r3, 0x361
/* 803A18DC 0036AE9C  4C C6 31 82 */	crclr 6
/* 803A18E0 0036AEA0  4B FF C3 59 */	bl MWSFSVM_Error
lbl_803A18E4:
/* 803A18E4 0036AEA4  93 FE 00 48 */	stw r31, 0x48(r30)
/* 803A18E8 0036AEA8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 803A18EC 0036AEAC  48 00 1A 6D */	bl MWSST_Stop
/* 803A18F0 0036AEB0  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 803A18F4 0036AEB4  48 00 1A 65 */	bl MWSST_Stop
/* 803A18F8 0036AEB8  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 803A18FC 0036AEBC  38 00 00 00 */	li r0, 0
/* 803A1900 0036AEC0  90 1E 06 20 */	stw r0, 0x620(r30)
/* 803A1904 0036AEC4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1908 0036AEC8  41 82 00 08 */	beq lbl_803A1910
/* 803A190C 0036AECC  4B FF C5 89 */	bl func_8039DE94
lbl_803A1910:
/* 803A1910 0036AED0  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 803A1914 0036AED4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1918 0036AED8  41 82 00 08 */	beq lbl_803A1920
/* 803A191C 0036AEDC  4B FF 0B 61 */	bl LSC_Stop
lbl_803A1920:
/* 803A1920 0036AEE0  80 7E 05 14 */	lwz r3, 0x514(r30)
/* 803A1924 0036AEE4  38 00 00 00 */	li r0, 0
/* 803A1928 0036AEE8  90 1E 05 28 */	stw r0, 0x528(r30)
/* 803A192C 0036AEEC  2C 03 00 00 */	cmpwi r3, 0
/* 803A1930 0036AEF0  90 1E 05 20 */	stw r0, 0x520(r30)
/* 803A1934 0036AEF4  90 1E 05 24 */	stw r0, 0x524(r30)
/* 803A1938 0036AEF8  90 1E 05 2C */	stw r0, 0x52c(r30)
/* 803A193C 0036AEFC  41 82 00 14 */	beq lbl_803A1950
/* 803A1940 0036AF00  80 83 00 00 */	lwz r4, 0(r3)
/* 803A1944 0036AF04  81 84 00 14 */	lwz r12, 0x14(r4)
/* 803A1948 0036AF08  7D 89 03 A6 */	mtctr r12
/* 803A194C 0036AF0C  4E 80 04 21 */	bctrl 
lbl_803A1950:
/* 803A1950 0036AF10  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 803A1954 0036AF14  2C 00 00 00 */	cmpwi r0, 0
/* 803A1958 0036AF18  40 82 00 24 */	bne lbl_803A197C
/* 803A195C 0036AF1C  38 60 00 00 */	li r3, 0
/* 803A1960 0036AF20  38 00 FF FF */	li r0, -1
/* 803A1964 0036AF24  90 7E 06 3C */	stw r3, 0x63c(r30)
/* 803A1968 0036AF28  90 7E 06 38 */	stw r3, 0x638(r30)
/* 803A196C 0036AF2C  90 7E 06 30 */	stw r3, 0x630(r30)
/* 803A1970 0036AF30  90 7E 06 54 */	stw r3, 0x654(r30)
/* 803A1974 0036AF34  90 1E 06 50 */	stw r0, 0x650(r30)
/* 803A1978 0036AF38  48 00 00 0C */	b lbl_803A1984
lbl_803A197C:
/* 803A197C 0036AF3C  38 00 00 02 */	li r0, 2
/* 803A1980 0036AF40  90 1E 06 3C */	stw r0, 0x63c(r30)
lbl_803A1984:
/* 803A1984 0036AF44  38 00 00 00 */	li r0, 0
/* 803A1988 0036AF48  7F C3 F3 78 */	mr r3, r30
/* 803A198C 0036AF4C  90 1E 06 68 */	stw r0, 0x668(r30)
/* 803A1990 0036AF50  38 80 00 00 */	li r4, 0
/* 803A1994 0036AF54  4B FF BB 81 */	bl MWSFLSC_Pause
lbl_803A1998:
/* 803A1998 0036AF58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A199C 0036AF5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A19A0 0036AF60  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A19A4 0036AF64  7C 08 03 A6 */	mtlr r0
/* 803A19A8 0036AF68  38 21 00 10 */	addi r1, r1, 0x10
/* 803A19AC 0036AF6C  4E 80 00 20 */	blr 

.global mwPlyStop
mwPlyStop:
/* 803A19B0 0036AF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A19B4 0036AF74  7C 08 02 A6 */	mflr r0
/* 803A19B8 0036AF78  3C 80 80 60 */	lis r4, lbl_80602960@ha
/* 803A19BC 0036AF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A19C0 0036AF80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A19C4 0036AF84  7C 7F 1B 78 */	mr r31, r3
/* 803A19C8 0036AF88  80 A4 29 60 */	lwz r5, lbl_80602960@l(r4)
/* 803A19CC 0036AF8C  2C 05 00 00 */	cmpwi r5, 0
/* 803A19D0 0036AF90  41 82 00 28 */	beq lbl_803A19F8
/* 803A19D4 0036AF94  3C 80 80 57 */	lis r4, lbl_8056A1A0@ha
/* 803A19D8 0036AF98  38 84 A1 A0 */	addi r4, r4, lbl_8056A1A0@l
/* 803A19DC 0036AF9C  90 64 00 0C */	stw r3, 0xc(r4)
/* 803A19E0 0036AFA0  7C A3 2B 78 */	mr r3, r5
/* 803A19E4 0036AFA4  38 84 00 04 */	addi r4, r4, 4
/* 803A19E8 0036AFA8  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A19EC 0036AFAC  81 85 00 24 */	lwz r12, 0x24(r5)
/* 803A19F0 0036AFB0  7D 89 03 A6 */	mtctr r12
/* 803A19F4 0036AFB4  4E 80 04 21 */	bctrl 
lbl_803A19F8:
/* 803A19F8 0036AFB8  7F E3 FB 78 */	mr r3, r31
/* 803A19FC 0036AFBC  48 00 04 51 */	bl MWSFD_IsEnableHndl
/* 803A1A00 0036AFC0  2C 03 00 01 */	cmpwi r3, 1
/* 803A1A04 0036AFC4  41 82 00 1C */	beq lbl_803A1A20
/* 803A1A08 0036AFC8  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1A0C 0036AFCC  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1A10 0036AFD0  38 63 03 80 */	addi r3, r3, 0x380
/* 803A1A14 0036AFD4  4C C6 31 82 */	crclr 6
/* 803A1A18 0036AFD8  4B FF C2 21 */	bl MWSFSVM_Error
/* 803A1A1C 0036AFDC  48 00 00 30 */	b lbl_803A1A4C
lbl_803A1A20:
/* 803A1A20 0036AFE0  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 803A1A24 0036AFE4  48 02 98 BD */	bl SFD_RequestStop
/* 803A1A28 0036AFE8  7F E3 FB 78 */	mr r3, r31
/* 803A1A2C 0036AFEC  4B FF FE 59 */	bl func_803A1884
/* 803A1A30 0036AFF0  7F E3 FB 78 */	mr r3, r31
/* 803A1A34 0036AFF4  38 80 00 00 */	li r4, 0
/* 803A1A38 0036AFF8  4B FF BA F1 */	bl func_8039D528
/* 803A1A3C 0036AFFC  38 00 00 00 */	li r0, 0
/* 803A1A40 0036B000  80 7F 00 54 */	lwz r3, 0x54(r31)
/* 803A1A44 0036B004  90 1F 00 84 */	stw r0, 0x84(r31)
/* 803A1A48 0036B008  4B FF 0A 35 */	bl LSC_Stop
lbl_803A1A4C:
/* 803A1A4C 0036B00C  3C 60 80 60 */	lis r3, lbl_80602960@ha
/* 803A1A50 0036B010  80 63 29 60 */	lwz r3, lbl_80602960@l(r3)
/* 803A1A54 0036B014  2C 03 00 00 */	cmpwi r3, 0
/* 803A1A58 0036B018  41 82 00 20 */	beq lbl_803A1A78
/* 803A1A5C 0036B01C  80 83 00 00 */	lwz r4, 0(r3)
/* 803A1A60 0036B020  3C A0 80 57 */	lis r5, lbl_8056A1A0@ha
/* 803A1A64 0036B024  38 A5 A1 A0 */	addi r5, r5, lbl_8056A1A0@l
/* 803A1A68 0036B028  81 84 00 24 */	lwz r12, 0x24(r4)
/* 803A1A6C 0036B02C  38 85 00 6C */	addi r4, r5, 0x6c
/* 803A1A70 0036B030  7D 89 03 A6 */	mtctr r12
/* 803A1A74 0036B034  4E 80 04 21 */	bctrl 
lbl_803A1A78:
/* 803A1A78 0036B038  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1A7C 0036B03C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1A80 0036B040  7C 08 03 A6 */	mtlr r0
/* 803A1A84 0036B044  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1A88 0036B048  4E 80 00 20 */	blr 

.global func_803A1A8C
func_803A1A8C:
/* 803A1A8C 0036B04C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A1A90 0036B050  7C 08 02 A6 */	mflr r0
/* 803A1A94 0036B054  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A1A98 0036B058  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803A1A9C 0036B05C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803A1AA0 0036B060  7C 9E 23 78 */	mr r30, r4
/* 803A1AA4 0036B064  93 A1 00 14 */	stw r29, 0x14(r1)
/* 803A1AA8 0036B068  7C 7D 1B 78 */	mr r29, r3
/* 803A1AAC 0036B06C  48 00 03 A1 */	bl MWSFD_IsEnableHndl
/* 803A1AB0 0036B070  2C 03 00 01 */	cmpwi r3, 1
/* 803A1AB4 0036B074  41 82 00 1C */	beq lbl_803A1AD0
/* 803A1AB8 0036B078  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1ABC 0036B07C  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1AC0 0036B080  38 63 03 D4 */	addi r3, r3, 0x3d4
/* 803A1AC4 0036B084  4C C6 31 82 */	crclr 6
/* 803A1AC8 0036B088  4B FF C1 71 */	bl MWSFSVM_Error
/* 803A1ACC 0036B08C  48 00 00 DC */	b lbl_803A1BA8
lbl_803A1AD0:
/* 803A1AD0 0036B090  88 7D 00 82 */	lbz r3, 0x82(r29)
/* 803A1AD4 0036B094  7C 60 07 75 */	extsb. r0, r3
/* 803A1AD8 0036B098  40 82 00 0C */	bne lbl_803A1AE4
/* 803A1ADC 0036B09C  2C 1E 00 00 */	cmpwi r30, 0
/* 803A1AE0 0036B0A0  41 82 00 C8 */	beq lbl_803A1BA8
lbl_803A1AE4:
/* 803A1AE4 0036B0A4  7C 60 07 74 */	extsb r0, r3
/* 803A1AE8 0036B0A8  2C 00 00 01 */	cmpwi r0, 1
/* 803A1AEC 0036B0AC  40 82 00 0C */	bne lbl_803A1AF8
/* 803A1AF0 0036B0B0  2C 1E 00 01 */	cmpwi r30, 1
/* 803A1AF4 0036B0B4  41 82 00 B4 */	beq lbl_803A1BA8
lbl_803A1AF8:
/* 803A1AF8 0036B0B8  83 FD 00 48 */	lwz r31, 0x48(r29)
/* 803A1AFC 0036B0BC  4B FF F4 A9 */	bl MWSFD_GetPauseBdr
/* 803A1B00 0036B0C0  2C 03 00 01 */	cmpwi r3, 1
/* 803A1B04 0036B0C4  40 82 00 48 */	bne lbl_803A1B4C
/* 803A1B08 0036B0C8  80 1D 00 08 */	lwz r0, 8(r29)
/* 803A1B0C 0036B0CC  2C 00 00 01 */	cmpwi r0, 1
/* 803A1B10 0036B0D0  40 82 00 3C */	bne lbl_803A1B4C
/* 803A1B14 0036B0D4  7F E3 FB 78 */	mr r3, r31
/* 803A1B18 0036B0D8  38 A1 00 08 */	addi r5, r1, 8
/* 803A1B1C 0036B0DC  38 80 00 06 */	li r4, 6
/* 803A1B20 0036B0E0  48 02 AA C1 */	bl func_803CC5E0
/* 803A1B24 0036B0E4  2C 03 00 00 */	cmpwi r3, 0
/* 803A1B28 0036B0E8  40 82 00 1C */	bne lbl_803A1B44
/* 803A1B2C 0036B0EC  80 01 00 08 */	lwz r0, 8(r1)
/* 803A1B30 0036B0F0  2C 00 00 01 */	cmpwi r0, 1
/* 803A1B34 0036B0F4  40 82 00 18 */	bne lbl_803A1B4C
/* 803A1B38 0036B0F8  7F A3 EB 78 */	mr r3, r29
/* 803A1B3C 0036B0FC  48 00 14 81 */	bl mwlSfdSleepDecSvr
/* 803A1B40 0036B100  48 00 00 0C */	b lbl_803A1B4C
lbl_803A1B44:
/* 803A1B44 0036B104  7F A3 EB 78 */	mr r3, r29
/* 803A1B48 0036B108  48 00 14 75 */	bl mwlSfdSleepDecSvr
lbl_803A1B4C:
/* 803A1B4C 0036B10C  7F E3 FB 78 */	mr r3, r31
/* 803A1B50 0036B110  7F C4 F3 78 */	mr r4, r30
/* 803A1B54 0036B114  48 02 70 55 */	bl SFD_Pause
/* 803A1B58 0036B118  2C 03 00 00 */	cmpwi r3, 0
/* 803A1B5C 0036B11C  41 82 00 30 */	beq lbl_803A1B8C
/* 803A1B60 0036B120  38 60 FE CA */	li r3, -310
/* 803A1B64 0036B124  4B FF F4 51 */	bl MWSFLIB_SetErrCode
/* 803A1B68 0036B128  3C A0 80 52 */	lis r5, lbl_8051E7C0@ha
/* 803A1B6C 0036B12C  2C 1E 00 01 */	cmpwi r30, 1
/* 803A1B70 0036B130  38 A5 E7 C0 */	addi r5, r5, lbl_8051E7C0@l
/* 803A1B74 0036B134  38 65 01 06 */	addi r3, r5, 0x106
/* 803A1B78 0036B138  38 85 01 2C */	addi r4, r5, 0x12c
/* 803A1B7C 0036B13C  40 82 00 08 */	bne lbl_803A1B84
/* 803A1B80 0036B140  38 85 01 29 */	addi r4, r5, 0x129
lbl_803A1B84:
/* 803A1B84 0036B144  4C C6 31 82 */	crclr 6
/* 803A1B88 0036B148  4B FF C0 B1 */	bl MWSFSVM_Error
lbl_803A1B8C:
/* 803A1B8C 0036B14C  7F C4 F3 78 */	mr r4, r30
/* 803A1B90 0036B150  38 7D 05 C8 */	addi r3, r29, 0x5c8
/* 803A1B94 0036B154  48 00 18 ED */	bl MWSST_GetTime
/* 803A1B98 0036B158  7F C4 F3 78 */	mr r4, r30
/* 803A1B9C 0036B15C  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 803A1BA0 0036B160  48 00 18 E1 */	bl MWSST_GetTime
/* 803A1BA4 0036B164  9B DD 00 82 */	stb r30, 0x82(r29)
lbl_803A1BA8:
/* 803A1BA8 0036B168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1BAC 0036B16C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803A1BB0 0036B170  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803A1BB4 0036B174  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 803A1BB8 0036B178  7C 08 03 A6 */	mtlr r0
/* 803A1BBC 0036B17C  38 21 00 20 */	addi r1, r1, 0x20
/* 803A1BC0 0036B180  4E 80 00 20 */	blr 

.global MWSFPLY_SetFlowLimit
MWSFPLY_SetFlowLimit:
/* 803A1BC4 0036B184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A1BC8 0036B188  7C 08 02 A6 */	mflr r0
/* 803A1BCC 0036B18C  3C E0 80 52 */	lis r7, lbl_8051E7B8@ha
/* 803A1BD0 0036B190  3C 80 80 52 */	lis r4, lbl_8051E7B0@ha
/* 803A1BD4 0036B194  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A1BD8 0036B198  3C 00 43 30 */	lis r0, 0x4330
/* 803A1BDC 0036B19C  C8 47 E7 B8 */	lfd f2, lbl_8051E7B8@l(r7)
/* 803A1BE0 0036B1A0  80 A3 04 FC */	lwz r5, 0x4fc(r3)
/* 803A1BE4 0036B1A4  90 01 00 08 */	stw r0, 8(r1)
/* 803A1BE8 0036B1A8  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 803A1BEC 0036B1AC  C8 04 E7 B0 */	lfd f0, lbl_8051E7B0@l(r4)
/* 803A1BF0 0036B1B0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803A1BF4 0036B1B4  C8 21 00 08 */	lfd f1, 8(r1)
/* 803A1BF8 0036B1B8  FC 21 10 28 */	fsub f1, f1, f2
/* 803A1BFC 0036B1BC  FC 00 00 72 */	fmul f0, f0, f1
/* 803A1C00 0036B1C0  FC 00 00 1E */	fctiwz f0, f0
/* 803A1C04 0036B1C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803A1C08 0036B1C8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A1C0C 0036B1CC  48 00 01 F9 */	bl func_803A1E04
/* 803A1C10 0036B1D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A1C14 0036B1D4  7C 08 03 A6 */	mtlr r0
/* 803A1C18 0036B1D8  38 21 00 20 */	addi r1, r1, 0x20
/* 803A1C1C 0036B1DC  4E 80 00 20 */	blr 

.global func_803A1C20
func_803A1C20:
/* 803A1C20 0036B1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1C24 0036B1E4  7C 08 02 A6 */	mflr r0
/* 803A1C28 0036B1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1C2C 0036B1EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1C30 0036B1F0  7C 7F 1B 78 */	mr r31, r3
/* 803A1C34 0036B1F4  80 03 00 4C */	lwz r0, 0x4c(r3)
/* 803A1C38 0036B1F8  2C 00 00 00 */	cmpwi r0, 0
/* 803A1C3C 0036B1FC  41 82 00 38 */	beq lbl_803A1C74
/* 803A1C40 0036B200  7C 03 03 78 */	mr r3, r0
/* 803A1C44 0036B204  4B FF C2 85 */	bl MWSTM_GetStat
/* 803A1C48 0036B208  2C 03 00 03 */	cmpwi r3, 3
/* 803A1C4C 0036B20C  40 82 00 28 */	bne lbl_803A1C74
/* 803A1C50 0036B210  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 803A1C54 0036B214  48 02 97 8D */	bl SFD_TermSupply
/* 803A1C58 0036B218  2C 03 00 00 */	cmpwi r3, 0
/* 803A1C5C 0036B21C  41 82 00 18 */	beq lbl_803A1C74
/* 803A1C60 0036B220  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1C64 0036B224  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1C68 0036B228  38 63 00 62 */	addi r3, r3, 0x62
/* 803A1C6C 0036B22C  4C C6 31 82 */	crclr 6
/* 803A1C70 0036B230  4B FF BF C9 */	bl MWSFSVM_Error
lbl_803A1C74:
/* 803A1C74 0036B234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1C78 0036B238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1C7C 0036B23C  7C 08 03 A6 */	mtlr r0
/* 803A1C80 0036B240  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1C84 0036B244  4E 80 00 20 */	blr 

.global func_803A1C88
func_803A1C88:
/* 803A1C88 0036B248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1C8C 0036B24C  7C 08 02 A6 */	mflr r0
/* 803A1C90 0036B250  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1C94 0036B254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1C98 0036B258  7C 9F 23 78 */	mr r31, r4
/* 803A1C9C 0036B25C  93 C1 00 08 */	stw r30, 8(r1)
/* 803A1CA0 0036B260  7C 7E 1B 78 */	mr r30, r3
/* 803A1CA4 0036B264  7F E3 FB 78 */	mr r3, r31
/* 803A1CA8 0036B268  4B F1 79 11 */	bl strlen
/* 803A1CAC 0036B26C  80 1E 04 DC */	lwz r0, 0x4dc(r30)
/* 803A1CB0 0036B270  7C 03 00 00 */	cmpw r3, r0
/* 803A1CB4 0036B274  40 81 00 2C */	ble lbl_803A1CE0
/* 803A1CB8 0036B278  3C 60 80 52 */	lis r3, lbl_8051E7C0@ha
/* 803A1CBC 0036B27C  38 63 E7 C0 */	addi r3, r3, lbl_8051E7C0@l
/* 803A1CC0 0036B280  38 63 01 85 */	addi r3, r3, 0x185
/* 803A1CC4 0036B284  4C C6 31 82 */	crclr 6
/* 803A1CC8 0036B288  4B FF BF 71 */	bl MWSFSVM_Error
/* 803A1CCC 0036B28C  80 7E 04 D8 */	lwz r3, 0x4d8(r30)
/* 803A1CD0 0036B290  7F E4 FB 78 */	mr r4, r31
/* 803A1CD4 0036B294  80 BE 04 DC */	lwz r5, 0x4dc(r30)
/* 803A1CD8 0036B298  4B F2 0A A1 */	bl strncpy
/* 803A1CDC 0036B29C  48 00 00 10 */	b lbl_803A1CEC
lbl_803A1CE0:
/* 803A1CE0 0036B2A0  80 7E 04 D8 */	lwz r3, 0x4d8(r30)
/* 803A1CE4 0036B2A4  7F E4 FB 78 */	mr r4, r31
/* 803A1CE8 0036B2A8  4B F2 09 D1 */	bl strcpy
lbl_803A1CEC:
/* 803A1CEC 0036B2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1CF0 0036B2B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1CF4 0036B2B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803A1CF8 0036B2B8  7C 08 03 A6 */	mtlr r0
/* 803A1CFC 0036B2BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1D00 0036B2C0  4E 80 00 20 */	blr 

.global MWSFD_IsEndPrepareStop
MWSFD_IsEndPrepareStop:
/* 803A1D04 0036B2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A1D08 0036B2C8  7C 08 02 A6 */	mflr r0
/* 803A1D0C 0036B2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A1D10 0036B2D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803A1D14 0036B2D4  7C 7F 1B 78 */	mr r31, r3
/* 803A1D18 0036B2D8  48 00 13 81 */	bl MWSFD_IsFsBdr
/* 803A1D1C 0036B2DC  2C 03 00 00 */	cmpwi r3, 0
/* 803A1D20 0036B2E0  40 82 00 0C */	bne lbl_803A1D2C
/* 803A1D24 0036B2E4  38 60 00 00 */	li r3, 0
/* 803A1D28 0036B2E8  48 00 00 18 */	b lbl_803A1D40
lbl_803A1D2C:
/* 803A1D2C 0036B2EC  7F E3 FB 78 */	mr r3, r31
/* 803A1D30 0036B2F0  48 00 12 29 */	bl MWSFSVR_IsSvrBdrHndl
/* 803A1D34 0036B2F4  7C 03 00 D0 */	neg r0, r3
/* 803A1D38 0036B2F8  7C 00 1B 78 */	or r0, r0, r3
/* 803A1D3C 0036B2FC  54 03 0F FE */	srwi r3, r0, 0x1f
lbl_803A1D40:
/* 803A1D40 0036B300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A1D44 0036B304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803A1D48 0036B308  7C 08 03 A6 */	mtlr r0
/* 803A1D4C 0036B30C  38 21 00 10 */	addi r1, r1, 0x10
/* 803A1D50 0036B310  4E 80 00 20 */	blr 
