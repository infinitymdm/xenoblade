.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_802AF5CC
func_802AF5CC:
/* 802AF5CC 00278B8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802AF5D0 00278B90  7C 08 02 A6 */	mflr r0
/* 802AF5D4 00278B94  90 01 00 44 */	stw r0, 0x44(r1)
/* 802AF5D8 00278B98  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802AF5DC 00278B9C  7C 3F 0B 78 */	mr r31, r1
/* 802AF5E0 00278BA0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802AF5E4 00278BA4  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802AF5E8 00278BA8  7C 7D 1B 78 */	mr r29, r3
/* 802AF5EC 00278BAC  38 60 00 00 */	li r3, 0
/* 802AF5F0 00278BB0  4B DD 37 65 */	bl func_80082D54
/* 802AF5F4 00278BB4  2C 03 00 00 */	cmpwi r3, 0
/* 802AF5F8 00278BB8  7C 7E 1B 78 */	mr r30, r3
/* 802AF5FC 00278BBC  41 82 00 08 */	beq .L_802AF604
/* 802AF600 00278BC0  3B C3 C1 64 */	addi r30, r3, -16028
.L_802AF604:
/* 802AF604 00278BC4  2C 1E 00 00 */	cmpwi r30, 0
/* 802AF608 00278BC8  40 82 00 0C */	bne .L_802AF614
/* 802AF60C 00278BCC  38 60 00 00 */	li r3, 0
/* 802AF610 00278BD0  48 00 00 F0 */	b .L_802AF700
.L_802AF614:
/* 802AF614 00278BD4  80 7E 00 04 */	lwz r3, 4(r30)
/* 802AF618 00278BD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF61C 00278BDC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802AF620 00278BE0  7D 89 03 A6 */	mtctr r12
/* 802AF624 00278BE4  4E 80 04 21 */	bctrl 
/* 802AF628 00278BE8  80 03 00 00 */	lwz r0, 0(r3)
/* 802AF62C 00278BEC  7F C3 F3 78 */	mr r3, r30
/* 802AF630 00278BF0  90 1F 00 08 */	stw r0, 8(r31)
/* 802AF634 00278BF4  38 9F 00 08 */	addi r4, r31, 8
/* 802AF638 00278BF8  38 A0 08 03 */	li r5, 0x803
/* 802AF63C 00278BFC  4B EC 56 5D */	bl func_80174C98
/* 802AF640 00278C00  2C 03 00 00 */	cmpwi r3, 0
/* 802AF644 00278C04  40 82 00 0C */	bne .L_802AF650
/* 802AF648 00278C08  38 60 00 00 */	li r3, 0
/* 802AF64C 00278C0C  48 00 00 B4 */	b .L_802AF700
.L_802AF650:
/* 802AF650 00278C10  81 9E 00 00 */	lwz r12, 0(r30)
/* 802AF654 00278C14  7F C3 F3 78 */	mr r3, r30
/* 802AF658 00278C18  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AF65C 00278C1C  7D 89 03 A6 */	mtctr r12
/* 802AF660 00278C20  4E 80 04 21 */	bctrl 
/* 802AF664 00278C24  2C 03 00 00 */	cmpwi r3, 0
/* 802AF668 00278C28  41 82 00 0C */	beq .L_802AF674
/* 802AF66C 00278C2C  38 60 00 00 */	li r3, 0
/* 802AF670 00278C30  48 00 00 90 */	b .L_802AF700
.L_802AF674:
/* 802AF674 00278C34  38 60 01 0E */	li r3, 0x10e
/* 802AF678 00278C38  38 80 00 01 */	li r4, 1
/* 802AF67C 00278C3C  4B FF 3C 91 */	bl func_802A330C
/* 802AF680 00278C40  2C 03 00 00 */	cmpwi r3, 0
/* 802AF684 00278C44  40 82 00 0C */	bne .L_802AF690
/* 802AF688 00278C48  38 60 00 00 */	li r3, 0
/* 802AF68C 00278C4C  48 00 00 74 */	b .L_802AF700
.L_802AF690:
/* 802AF690 00278C50  38 60 00 24 */	li r3, 0x24
/* 802AF694 00278C54  4B FF 3E 51 */	bl func_802A34E4
/* 802AF698 00278C58  2C 03 00 00 */	cmpwi r3, 0
/* 802AF69C 00278C5C  7C 7E 1B 78 */	mr r30, r3
/* 802AF6A0 00278C60  40 82 00 0C */	bne .L_802AF6AC
/* 802AF6A4 00278C64  38 60 00 00 */	li r3, 0
/* 802AF6A8 00278C68  48 00 00 58 */	b .L_802AF700
.L_802AF6AC:
/* 802AF6AC 00278C6C  41 82 00 30 */	beq .L_802AF6DC
/* 802AF6B0 00278C70  90 3F 00 24 */	stw r1, 0x24(r31)
/* 802AF6B4 00278C74  4B FF 43 CD */	bl func_802A3A80
/* 802AF6B8 00278C78  3C 60 80 54 */	lis r3, __vt__cf_CVS_THREAD_BATTLE_MAIN@ha
/* 802AF6BC 00278C7C  38 63 E1 94 */	addi r3, r3, __vt__cf_CVS_THREAD_BATTLE_MAIN@l
/* 802AF6C0 00278C80  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802AF6C4 00278C84  9B BE 00 20 */	stb r29, 0x20(r30)
/* 802AF6C8 00278C88  48 00 00 14 */	b .L_802AF6DC
/* 802AF6CC 00278C8C  38 60 00 00 */	li r3, 0
/* 802AF6D0 00278C90  38 80 00 00 */	li r4, 0
/* 802AF6D4 00278C94  38 A0 00 00 */	li r5, 0
/* 802AF6D8 00278C98  48 00 C4 E5 */	bl __throw
.L_802AF6DC:
/* 802AF6DC 00278C9C  3C A0 80 54 */	lis r5, lbl_8053E170@ha
/* 802AF6E0 00278CA0  7F C3 F3 78 */	mr r3, r30
/* 802AF6E4 00278CA4  38 A5 E1 70 */	addi r5, r5, lbl_8053E170@l
/* 802AF6E8 00278CA8  80 05 00 04 */	lwz r0, 4(r5)
/* 802AF6EC 00278CAC  80 85 00 00 */	lwz r4, 0(r5)
/* 802AF6F0 00278CB0  90 9E 00 00 */	stw r4, 0(r30)
/* 802AF6F4 00278CB4  90 1E 00 04 */	stw r0, 4(r30)
/* 802AF6F8 00278CB8  80 05 00 08 */	lwz r0, 8(r5)
/* 802AF6FC 00278CBC  90 1E 00 08 */	stw r0, 8(r30)
.L_802AF700:
/* 802AF700 00278CC0  7F EA FB 78 */	mr r10, r31
/* 802AF704 00278CC4  83 FF 00 3C */	lwz r31, 0x3c(r31)
/* 802AF708 00278CC8  83 CA 00 38 */	lwz r30, 0x38(r10)
/* 802AF70C 00278CCC  83 AA 00 34 */	lwz r29, 0x34(r10)
/* 802AF710 00278CD0  81 41 00 00 */	lwz r10, 0(r1)
/* 802AF714 00278CD4  80 0A 00 04 */	lwz r0, 4(r10)
/* 802AF718 00278CD8  7D 41 53 78 */	mr r1, r10
/* 802AF71C 00278CDC  7C 08 03 A6 */	mtlr r0
/* 802AF720 00278CE0  4E 80 00 20 */	blr 

.global func_802AF724
func_802AF724:
/* 802AF724 00278CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF728 00278CE8  7C 08 02 A6 */	mflr r0
/* 802AF72C 00278CEC  3C A0 80 54 */	lis r5, lbl_8053E17C@ha
/* 802AF730 00278CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF734 00278CF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF738 00278CF8  93 C1 00 08 */	stw r30, 8(r1)
/* 802AF73C 00278CFC  7C 7E 1B 78 */	mr r30, r3
/* 802AF740 00278D00  84 85 E1 7C */	lwzu r4, lbl_8053E17C@l(r5)
/* 802AF744 00278D04  80 05 00 04 */	lwz r0, 4(r5)
/* 802AF748 00278D08  90 03 00 04 */	stw r0, 4(r3)
/* 802AF74C 00278D0C  90 83 00 00 */	stw r4, 0(r3)
/* 802AF750 00278D10  80 05 00 08 */	lwz r0, 8(r5)
/* 802AF754 00278D14  90 03 00 08 */	stw r0, 8(r3)
/* 802AF758 00278D18  38 60 00 00 */	li r3, 0
/* 802AF75C 00278D1C  4B DD 35 F9 */	bl func_80082D54
/* 802AF760 00278D20  2C 03 00 00 */	cmpwi r3, 0
/* 802AF764 00278D24  7C 7F 1B 78 */	mr r31, r3
/* 802AF768 00278D28  41 82 00 08 */	beq .L_802AF770
/* 802AF76C 00278D2C  3B E3 C1 64 */	addi r31, r3, -16028
.L_802AF770:
/* 802AF770 00278D30  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF774 00278D34  41 82 00 B8 */	beq .L_802AF82C
/* 802AF778 00278D38  81 9F 00 00 */	lwz r12, 0(r31)
/* 802AF77C 00278D3C  7F E3 FB 78 */	mr r3, r31
/* 802AF780 00278D40  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AF784 00278D44  7D 89 03 A6 */	mtctr r12
/* 802AF788 00278D48  4E 80 04 21 */	bctrl 
/* 802AF78C 00278D4C  2C 03 00 00 */	cmpwi r3, 0
/* 802AF790 00278D50  40 82 00 9C */	bne .L_802AF82C
/* 802AF794 00278D54  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 802AF798 00278D58  2C 00 00 00 */	cmpwi r0, 0
/* 802AF79C 00278D5C  41 82 00 4C */	beq .L_802AF7E8
/* 802AF7A0 00278D60  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF7A4 00278D64  41 82 00 08 */	beq .L_802AF7AC
/* 802AF7A8 00278D68  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802AF7AC:
/* 802AF7AC 00278D6C  38 60 00 02 */	li r3, 2
/* 802AF7B0 00278D70  48 18 67 4D */	bl mtRand__2mlFi
/* 802AF7B4 00278D74  7C 65 1B 78 */	mr r5, r3
/* 802AF7B8 00278D78  7F C3 F3 78 */	mr r3, r30
/* 802AF7BC 00278D7C  7F E4 FB 78 */	mr r4, r31
/* 802AF7C0 00278D80  38 A5 05 1B */	addi r5, r5, 0x51b
/* 802AF7C4 00278D84  4B FF 44 81 */	bl func_802A3C44
/* 802AF7C8 00278D88  2C 03 00 00 */	cmpwi r3, 0
/* 802AF7CC 00278D8C  40 82 00 60 */	bne .L_802AF82C
/* 802AF7D0 00278D90  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802AF7D4 00278D94  7F C3 F3 78 */	mr r3, r30
/* 802AF7D8 00278D98  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF7DC 00278D9C  7D 89 03 A6 */	mtctr r12
/* 802AF7E0 00278DA0  4E 80 04 21 */	bctrl 
/* 802AF7E4 00278DA4  48 00 00 48 */	b .L_802AF82C
.L_802AF7E8:
/* 802AF7E8 00278DA8  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF7EC 00278DAC  41 82 00 08 */	beq .L_802AF7F4
/* 802AF7F0 00278DB0  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802AF7F4:
/* 802AF7F4 00278DB4  38 60 00 02 */	li r3, 2
/* 802AF7F8 00278DB8  48 18 67 05 */	bl mtRand__2mlFi
/* 802AF7FC 00278DBC  7C 65 1B 78 */	mr r5, r3
/* 802AF800 00278DC0  7F C3 F3 78 */	mr r3, r30
/* 802AF804 00278DC4  7F E4 FB 78 */	mr r4, r31
/* 802AF808 00278DC8  38 A5 05 19 */	addi r5, r5, 0x519
/* 802AF80C 00278DCC  4B FF 44 39 */	bl func_802A3C44
/* 802AF810 00278DD0  2C 03 00 00 */	cmpwi r3, 0
/* 802AF814 00278DD4  40 82 00 18 */	bne .L_802AF82C
/* 802AF818 00278DD8  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802AF81C 00278DDC  7F C3 F3 78 */	mr r3, r30
/* 802AF820 00278DE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF824 00278DE4  7D 89 03 A6 */	mtctr r12
/* 802AF828 00278DE8  4E 80 04 21 */	bctrl 
.L_802AF82C:
/* 802AF82C 00278DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF830 00278DF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF834 00278DF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AF838 00278DF8  7C 08 03 A6 */	mtlr r0
/* 802AF83C 00278DFC  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF840 00278E00  4E 80 00 20 */	blr 

.global func_802AF844
func_802AF844:
/* 802AF844 00278E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF848 00278E08  7C 08 02 A6 */	mflr r0
/* 802AF84C 00278E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF850 00278E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF854 00278E14  93 C1 00 08 */	stw r30, 8(r1)
/* 802AF858 00278E18  7C 7E 1B 78 */	mr r30, r3
/* 802AF85C 00278E1C  4B FF 46 2D */	bl func_802A3E88
/* 802AF860 00278E20  2C 03 00 00 */	cmpwi r3, 0
/* 802AF864 00278E24  40 82 01 04 */	bne .L_802AF968
/* 802AF868 00278E28  3C A0 80 54 */	lis r5, lbl_8053E188@ha
/* 802AF86C 00278E2C  84 85 E1 88 */	lwzu r4, lbl_8053E188@l(r5)
/* 802AF870 00278E30  38 60 00 00 */	li r3, 0
/* 802AF874 00278E34  80 05 00 04 */	lwz r0, 4(r5)
/* 802AF878 00278E38  90 1E 00 04 */	stw r0, 4(r30)
/* 802AF87C 00278E3C  90 9E 00 00 */	stw r4, 0(r30)
/* 802AF880 00278E40  80 05 00 08 */	lwz r0, 8(r5)
/* 802AF884 00278E44  90 1E 00 08 */	stw r0, 8(r30)
/* 802AF888 00278E48  4B DD 34 CD */	bl func_80082D54
/* 802AF88C 00278E4C  2C 03 00 00 */	cmpwi r3, 0
/* 802AF890 00278E50  7C 7F 1B 78 */	mr r31, r3
/* 802AF894 00278E54  41 82 00 08 */	beq .L_802AF89C
/* 802AF898 00278E58  3B E3 C1 64 */	addi r31, r3, -16028
.L_802AF89C:
/* 802AF89C 00278E5C  7F E3 FB 78 */	mr r3, r31
/* 802AF8A0 00278E60  4B FF 80 F9 */	bl func_802A7998
/* 802AF8A4 00278E64  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF8A8 00278E68  7C 7F 1B 78 */	mr r31, r3
/* 802AF8AC 00278E6C  41 82 00 BC */	beq .L_802AF968
/* 802AF8B0 00278E70  2C 03 00 00 */	cmpwi r3, 0
/* 802AF8B4 00278E74  41 82 00 B4 */	beq .L_802AF968
/* 802AF8B8 00278E78  81 83 00 00 */	lwz r12, 0(r3)
/* 802AF8BC 00278E7C  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AF8C0 00278E80  7D 89 03 A6 */	mtctr r12
/* 802AF8C4 00278E84  4E 80 04 21 */	bctrl 
/* 802AF8C8 00278E88  2C 03 00 00 */	cmpwi r3, 0
/* 802AF8CC 00278E8C  40 82 00 9C */	bne .L_802AF968
/* 802AF8D0 00278E90  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 802AF8D4 00278E94  2C 00 00 00 */	cmpwi r0, 0
/* 802AF8D8 00278E98  41 82 00 4C */	beq .L_802AF924
/* 802AF8DC 00278E9C  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF8E0 00278EA0  41 82 00 08 */	beq .L_802AF8E8
/* 802AF8E4 00278EA4  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802AF8E8:
/* 802AF8E8 00278EA8  38 60 00 02 */	li r3, 2
/* 802AF8EC 00278EAC  48 18 66 11 */	bl mtRand__2mlFi
/* 802AF8F0 00278EB0  7C 65 1B 78 */	mr r5, r3
/* 802AF8F4 00278EB4  7F C3 F3 78 */	mr r3, r30
/* 802AF8F8 00278EB8  7F E4 FB 78 */	mr r4, r31
/* 802AF8FC 00278EBC  38 A5 05 23 */	addi r5, r5, 0x523
/* 802AF900 00278EC0  4B FF 43 45 */	bl func_802A3C44
/* 802AF904 00278EC4  2C 03 00 00 */	cmpwi r3, 0
/* 802AF908 00278EC8  40 82 00 60 */	bne .L_802AF968
/* 802AF90C 00278ECC  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802AF910 00278ED0  7F C3 F3 78 */	mr r3, r30
/* 802AF914 00278ED4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF918 00278ED8  7D 89 03 A6 */	mtctr r12
/* 802AF91C 00278EDC  4E 80 04 21 */	bctrl 
/* 802AF920 00278EE0  48 00 00 48 */	b .L_802AF968
.L_802AF924:
/* 802AF924 00278EE4  2C 1F 00 00 */	cmpwi r31, 0
/* 802AF928 00278EE8  41 82 00 08 */	beq .L_802AF930
/* 802AF92C 00278EEC  3B FF 3E 9C */	addi r31, r31, 0x3e9c
.L_802AF930:
/* 802AF930 00278EF0  38 60 00 02 */	li r3, 2
/* 802AF934 00278EF4  48 18 65 C9 */	bl mtRand__2mlFi
/* 802AF938 00278EF8  7C 65 1B 78 */	mr r5, r3
/* 802AF93C 00278EFC  7F C3 F3 78 */	mr r3, r30
/* 802AF940 00278F00  7F E4 FB 78 */	mr r4, r31
/* 802AF944 00278F04  38 A5 05 21 */	addi r5, r5, 0x521
/* 802AF948 00278F08  4B FF 42 FD */	bl func_802A3C44
/* 802AF94C 00278F0C  2C 03 00 00 */	cmpwi r3, 0
/* 802AF950 00278F10  40 82 00 18 */	bne .L_802AF968
/* 802AF954 00278F14  81 9E 00 1C */	lwz r12, 0x1c(r30)
/* 802AF958 00278F18  7F C3 F3 78 */	mr r3, r30
/* 802AF95C 00278F1C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF960 00278F20  7D 89 03 A6 */	mtctr r12
/* 802AF964 00278F24  4E 80 04 21 */	bctrl 
.L_802AF968:
/* 802AF968 00278F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF96C 00278F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF970 00278F30  83 C1 00 08 */	lwz r30, 8(r1)
/* 802AF974 00278F34  7C 08 03 A6 */	mtlr r0
/* 802AF978 00278F38  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF97C 00278F3C  4E 80 00 20 */	blr 

.global func_802AF980
func_802AF980:
/* 802AF980 00278F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AF984 00278F44  7C 08 02 A6 */	mflr r0
/* 802AF988 00278F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AF98C 00278F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AF990 00278F50  7C 7F 1B 78 */	mr r31, r3
/* 802AF994 00278F54  4B FF 44 F5 */	bl func_802A3E88
/* 802AF998 00278F58  2C 03 00 00 */	cmpwi r3, 0
/* 802AF99C 00278F5C  40 82 00 18 */	bne .L_802AF9B4
/* 802AF9A0 00278F60  81 9F 00 1C */	lwz r12, 0x1c(r31)
/* 802AF9A4 00278F64  7F E3 FB 78 */	mr r3, r31
/* 802AF9A8 00278F68  81 8C 00 08 */	lwz r12, 8(r12)
/* 802AF9AC 00278F6C  7D 89 03 A6 */	mtctr r12
/* 802AF9B0 00278F70  4E 80 04 21 */	bctrl 
.L_802AF9B4:
/* 802AF9B4 00278F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AF9B8 00278F78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AF9BC 00278F7C  7C 08 03 A6 */	mtlr r0
/* 802AF9C0 00278F80  38 21 00 10 */	addi r1, r1, 0x10
/* 802AF9C4 00278F84  4E 80 00 20 */	blr 

.global func_802AF9C8
func_802AF9C8:
/* 802AF9C8 00278F88  38 60 01 0E */	li r3, 0x10e
/* 802AF9CC 00278F8C  4E 80 00 20 */	blr 

.global func_802AF9D0
func_802AF9D0:
/* 802AF9D0 00278F90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AF9D4 00278F94  7C 08 02 A6 */	mflr r0
/* 802AF9D8 00278F98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AF9DC 00278F9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AF9E0 00278FA0  7C BF 2B 78 */	mr r31, r5
/* 802AF9E4 00278FA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802AF9E8 00278FA8  7C 9E 23 78 */	mr r30, r4
/* 802AF9EC 00278FAC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802AF9F0 00278FB0  7C 7D 1B 78 */	mr r29, r3
/* 802AF9F4 00278FB4  80 03 3F 00 */	lwz r0, 0x3f00(r3)
/* 802AF9F8 00278FB8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802AF9FC 00278FBC  40 82 00 0C */	bne .L_802AFA08
/* 802AFA00 00278FC0  38 60 00 00 */	li r3, 0
/* 802AFA04 00278FC4  48 00 00 60 */	b .L_802AFA64
.L_802AFA08:
/* 802AFA08 00278FC8  81 83 00 00 */	lwz r12, 0(r3)
/* 802AFA0C 00278FCC  81 8C 02 BC */	lwz r12, 0x2bc(r12)
/* 802AFA10 00278FD0  7D 89 03 A6 */	mtctr r12
/* 802AFA14 00278FD4  4E 80 04 21 */	bctrl 
/* 802AFA18 00278FD8  2C 03 00 00 */	cmpwi r3, 0
/* 802AFA1C 00278FDC  41 82 00 0C */	beq .L_802AFA28
/* 802AFA20 00278FE0  38 60 00 00 */	li r3, 0
/* 802AFA24 00278FE4  48 00 00 40 */	b .L_802AFA64
.L_802AFA28:
/* 802AFA28 00278FE8  7F E3 FB 78 */	mr r3, r31
/* 802AFA2C 00278FEC  38 80 00 01 */	li r4, 1
/* 802AFA30 00278FF0  4B FF 38 DD */	bl func_802A330C
/* 802AFA34 00278FF4  2C 03 00 00 */	cmpwi r3, 0
/* 802AFA38 00278FF8  40 82 00 0C */	bne .L_802AFA44
/* 802AFA3C 00278FFC  38 60 00 00 */	li r3, 0
/* 802AFA40 00279000  48 00 00 24 */	b .L_802AFA64
.L_802AFA44:
/* 802AFA44 00279004  2C 1D 00 00 */	cmpwi r29, 0
/* 802AFA48 00279008  41 82 00 08 */	beq .L_802AFA50
/* 802AFA4C 0027900C  3B BD 3E 9C */	addi r29, r29, 0x3e9c
.L_802AFA50:
/* 802AFA50 00279010  7F A3 EB 78 */	mr r3, r29
/* 802AFA54 00279014  7F C4 F3 78 */	mr r4, r30
/* 802AFA58 00279018  7F E5 FB 78 */	mr r5, r31
/* 802AFA5C 0027901C  4B FF 42 F9 */	bl func_802A3D54
/* 802AFA60 00279020  38 60 00 00 */	li r3, 0
.L_802AFA64:
/* 802AFA64 00279024  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AFA68 00279028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AFA6C 0027902C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802AFA70 00279030  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802AFA74 00279034  7C 08 03 A6 */	mtlr r0
/* 802AFA78 00279038  38 21 00 20 */	addi r1, r1, 0x20
/* 802AFA7C 0027903C  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global cf_CVS_THREAD_BATTLE_MAIN_typestr
cf_CVS_THREAD_BATTLE_MAIN_typestr:
	.asciz "cf::CVS_THREAD_BATTLE_MAIN"
	.balign 4
	.4byte 0

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8053E170
lbl_8053E170:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AF724

.global lbl_8053E17C
lbl_8053E17C:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AF844

.global lbl_8053E188
lbl_8053E188:
	.4byte 0
	.4byte 0xFFFFFFFF
	.4byte func_802AF980


.global __vt__cf_CVS_THREAD_BATTLE_MAIN
__vt__cf_CVS_THREAD_BATTLE_MAIN:
	.4byte __RTTI__cf_CVS_THREAD_BATTLE_MAIN
	.4byte 0
	.4byte func_802A3B50
	.4byte func_802A3BEC
	.4byte func_802AF9C8
	.4byte func_802A1EA0
	.4byte func_802A3740

.global cf_CVS_THREAD_BATTLE_MAIN_hierarchy
cf_CVS_THREAD_BATTLE_MAIN_hierarchy:
	.4byte __RTTI__cf_CVS_THREAD
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600


.global __RTTI__cf_CVS_THREAD_BATTLE_MAIN
__RTTI__cf_CVS_THREAD_BATTLE_MAIN:
	.4byte cf_CVS_THREAD_BATTLE_MAIN_typestr
	.4byte cf_CVS_THREAD_BATTLE_MAIN_hierarchy

.section extab_, "a"  # 0x800066E0 - 0x80021020

.global lbl_8001B5E0
lbl_8001B5E0:
	.4byte 0x18180000
	.4byte 0x000000EC
	.4byte 0x00000018
	.4byte 0x00000110
	.4byte 0x00000028
	.4byte 0
	.4byte 0x90000000
	.4byte 0
	.4byte 0x00000100
	.4byte 0x00000010
	.4byte 0x8D000010

.global lbl_8001B60C
lbl_8001B60C:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001B614
lbl_8001B614:
	.4byte 0x10080000
	.4byte 0

.global lbl_8001B61C
lbl_8001B61C:
	.4byte 0x08080000
	.4byte 0

.global lbl_8001B624
lbl_8001B624:
	.4byte 0x18080000
	.4byte 0

.section extabindex_, "a"  # 0x80021020 - 0x80039220

.4byte func_802AF5CC
	.4byte 0x00000158
	.4byte lbl_8001B5E0
	.4byte func_802AF724
	.4byte 0x00000120
	.4byte lbl_8001B60C
	.4byte func_802AF844
	.4byte 0x0000013C
	.4byte lbl_8001B614
	.4byte func_802AF980
	.4byte 0x00000048
	.4byte lbl_8001B61C
	.4byte func_802AF9D0
	.4byte 0x000000B0
	.4byte lbl_8001B624