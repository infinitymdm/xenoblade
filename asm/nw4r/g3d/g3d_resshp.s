.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_803DA660
func_803DA660:
/* 803DA660 003A3C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA664 003A3C24  7C 08 02 A6 */	mflr r0
/* 803DA668 003A3C28  80 83 00 00 */	lwz r4, 0(r3)
/* 803DA66C 003A3C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA670 003A3C30  80 04 00 04 */	lwz r0, 4(r4)
/* 803DA674 003A3C34  2C 00 00 00 */	cmpwi r0, 0
/* 803DA678 003A3C38  41 82 00 0C */	beq lbl_803DA684
/* 803DA67C 003A3C3C  7C 04 02 14 */	add r0, r4, r0
/* 803DA680 003A3C40  48 00 00 08 */	b lbl_803DA688
lbl_803DA684:
/* 803DA684 003A3C44  38 00 00 00 */	li r0, 0
lbl_803DA688:
/* 803DA688 003A3C48  90 01 00 08 */	stw r0, 8(r1)
/* 803DA68C 003A3C4C  38 61 00 08 */	addi r3, r1, 8
/* 803DA690 003A3C50  A8 84 00 48 */	lha r4, 0x48(r4)
/* 803DA694 003A3C54  4B FF F0 F5 */	bl func_803D9788
/* 803DA698 003A3C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA69C 003A3C5C  7C 08 03 A6 */	mtlr r0
/* 803DA6A0 003A3C60  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA6A4 003A3C64  4E 80 00 20 */	blr 

.global func_803DA6A8
func_803DA6A8:
/* 803DA6A8 003A3C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA6AC 003A3C6C  7C 08 02 A6 */	mflr r0
/* 803DA6B0 003A3C70  80 83 00 00 */	lwz r4, 0(r3)
/* 803DA6B4 003A3C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA6B8 003A3C78  A8 04 00 4A */	lha r0, 0x4a(r4)
/* 803DA6BC 003A3C7C  2C 00 FF FF */	cmpwi r0, -1
/* 803DA6C0 003A3C80  41 82 00 30 */	beq lbl_803DA6F0
/* 803DA6C4 003A3C84  80 04 00 04 */	lwz r0, 4(r4)
/* 803DA6C8 003A3C88  2C 00 00 00 */	cmpwi r0, 0
/* 803DA6CC 003A3C8C  41 82 00 0C */	beq lbl_803DA6D8
/* 803DA6D0 003A3C90  7C 04 02 14 */	add r0, r4, r0
/* 803DA6D4 003A3C94  48 00 00 08 */	b lbl_803DA6DC
lbl_803DA6D8:
/* 803DA6D8 003A3C98  38 00 00 00 */	li r0, 0
lbl_803DA6DC:
/* 803DA6DC 003A3C9C  90 01 00 08 */	stw r0, 8(r1)
/* 803DA6E0 003A3CA0  38 61 00 08 */	addi r3, r1, 8
/* 803DA6E4 003A3CA4  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 803DA6E8 003A3CA8  4B FF F1 7D */	bl func_803D9864
/* 803DA6EC 003A3CAC  48 00 00 08 */	b lbl_803DA6F4
lbl_803DA6F0:
/* 803DA6F0 003A3CB0  38 60 00 00 */	li r3, 0
lbl_803DA6F4:
/* 803DA6F4 003A3CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA6F8 003A3CB8  7C 08 03 A6 */	mtlr r0
/* 803DA6FC 003A3CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA700 003A3CC0  4E 80 00 20 */	blr 

.global func_803DA704
func_803DA704:
/* 803DA704 003A3CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA708 003A3CC8  7C 08 02 A6 */	mflr r0
/* 803DA70C 003A3CCC  80 63 00 00 */	lwz r3, 0(r3)
/* 803DA710 003A3CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA714 003A3CD4  54 80 08 3C */	slwi r0, r4, 1
/* 803DA718 003A3CD8  7C 83 02 14 */	add r4, r3, r0
/* 803DA71C 003A3CDC  A8 04 00 4C */	lha r0, 0x4c(r4)
/* 803DA720 003A3CE0  2C 00 FF FF */	cmpwi r0, -1
/* 803DA724 003A3CE4  41 82 00 30 */	beq lbl_803DA754
/* 803DA728 003A3CE8  80 03 00 04 */	lwz r0, 4(r3)
/* 803DA72C 003A3CEC  2C 00 00 00 */	cmpwi r0, 0
/* 803DA730 003A3CF0  41 82 00 0C */	beq lbl_803DA73C
/* 803DA734 003A3CF4  7C 03 02 14 */	add r0, r3, r0
/* 803DA738 003A3CF8  48 00 00 08 */	b lbl_803DA740
lbl_803DA73C:
/* 803DA73C 003A3CFC  38 00 00 00 */	li r0, 0
lbl_803DA740:
/* 803DA740 003A3D00  90 01 00 08 */	stw r0, 8(r1)
/* 803DA744 003A3D04  38 61 00 08 */	addi r3, r1, 8
/* 803DA748 003A3D08  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 803DA74C 003A3D0C  4B FF F1 F5 */	bl func_803D9940
/* 803DA750 003A3D10  48 00 00 08 */	b lbl_803DA758
lbl_803DA754:
/* 803DA754 003A3D14  38 60 00 00 */	li r3, 0
lbl_803DA758:
/* 803DA758 003A3D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA75C 003A3D1C  7C 08 03 A6 */	mtlr r0
/* 803DA760 003A3D20  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA764 003A3D24  4E 80 00 20 */	blr 

.global func_803DA768
func_803DA768:
/* 803DA768 003A3D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DA76C 003A3D2C  7C 08 02 A6 */	mflr r0
/* 803DA770 003A3D30  80 83 00 00 */	lwz r4, 0(r3)
/* 803DA774 003A3D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA778 003A3D38  A8 04 00 62 */	lha r0, 0x62(r4)
/* 803DA77C 003A3D3C  2C 00 FF FF */	cmpwi r0, -1
/* 803DA780 003A3D40  41 82 00 30 */	beq lbl_803DA7B0
/* 803DA784 003A3D44  80 04 00 04 */	lwz r0, 4(r4)
/* 803DA788 003A3D48  2C 00 00 00 */	cmpwi r0, 0
/* 803DA78C 003A3D4C  41 82 00 0C */	beq lbl_803DA798
/* 803DA790 003A3D50  7C 04 02 14 */	add r0, r4, r0
/* 803DA794 003A3D54  48 00 00 08 */	b lbl_803DA79C
lbl_803DA798:
/* 803DA798 003A3D58  38 00 00 00 */	li r0, 0
lbl_803DA79C:
/* 803DA79C 003A3D5C  90 01 00 08 */	stw r0, 8(r1)
/* 803DA7A0 003A3D60  38 61 00 08 */	addi r3, r1, 8
/* 803DA7A4 003A3D64  A8 84 00 62 */	lha r4, 0x62(r4)
/* 803DA7A8 003A3D68  4B FF F2 C9 */	bl func_803D9A70
/* 803DA7AC 003A3D6C  48 00 00 08 */	b lbl_803DA7B4
lbl_803DA7B0:
/* 803DA7B0 003A3D70  38 60 00 00 */	li r3, 0
lbl_803DA7B4:
/* 803DA7B4 003A3D74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DA7B8 003A3D78  7C 08 03 A6 */	mtlr r0
/* 803DA7BC 003A3D7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803DA7C0 003A3D80  4E 80 00 20 */	blr 

.global func_803DA7C4
func_803DA7C4:
/* 803DA7C4 003A3D84  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803DA7C8 003A3D88  7C 08 02 A6 */	mflr r0
/* 803DA7CC 003A3D8C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803DA7D0 003A3D90  39 61 00 50 */	addi r11, r1, 0x50
/* 803DA7D4 003A3D94  4B ED F9 7D */	bl _savegpr_26
/* 803DA7D8 003A3D98  80 83 00 00 */	lwz r4, 0(r3)
/* 803DA7DC 003A3D9C  7C 7D 1B 78 */	mr r29, r3
/* 803DA7E0 003A3DA0  80 04 00 04 */	lwz r0, 4(r4)
/* 803DA7E4 003A3DA4  2C 00 00 00 */	cmpwi r0, 0
/* 803DA7E8 003A3DA8  41 82 00 0C */	beq lbl_803DA7F4
/* 803DA7EC 003A3DAC  7C 04 02 14 */	add r0, r4, r0
/* 803DA7F0 003A3DB0  48 00 00 08 */	b lbl_803DA7F8
lbl_803DA7F4:
/* 803DA7F4 003A3DB4  38 00 00 00 */	li r0, 0
lbl_803DA7F8:
/* 803DA7F8 003A3DB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 803DA7FC 003A3DBC  38 61 00 18 */	addi r3, r1, 0x18
/* 803DA800 003A3DC0  A8 84 00 48 */	lha r4, 0x48(r4)
/* 803DA804 003A3DC4  4B FF EF 85 */	bl func_803D9788
/* 803DA808 003A3DC8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803DA80C 003A3DCC  38 61 00 1C */	addi r3, r1, 0x1c
/* 803DA810 003A3DD0  38 81 00 2C */	addi r4, r1, 0x2c
/* 803DA814 003A3DD4  38 A1 00 08 */	addi r5, r1, 8
/* 803DA818 003A3DD8  48 00 29 DD */	bl GetArray__Q34nw4r3g3d9ResVtxPosCFPPCvPUc
/* 803DA81C 003A3DDC  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DA820 003A3DE0  8B 81 00 08 */	lbz r28, 8(r1)
/* 803DA824 003A3DE4  38 63 00 18 */	addi r3, r3, 0x18
/* 803DA828 003A3DE8  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 803DA82C 003A3DEC  80 03 00 08 */	lwz r0, 8(r3)
/* 803DA830 003A3DF0  2C 00 00 00 */	cmpwi r0, 0
/* 803DA834 003A3DF4  41 82 00 0C */	beq lbl_803DA840
/* 803DA838 003A3DF8  7C 63 02 14 */	add r3, r3, r0
/* 803DA83C 003A3DFC  48 00 00 08 */	b lbl_803DA844
lbl_803DA840:
/* 803DA840 003A3E00  38 60 00 00 */	li r3, 0
lbl_803DA844:
/* 803DA844 003A3E04  3B C3 00 32 */	addi r30, r3, 0x32
/* 803DA848 003A3E08  3C A4 80 00 */	addis r5, r4, 0x8000
/* 803DA84C 003A3E0C  7F C3 F3 78 */	mr r3, r30
/* 803DA850 003A3E10  38 80 00 A0 */	li r4, 0xa0
/* 803DA854 003A3E14  4B FF D0 8D */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 803DA858 003A3E18  7F 85 E3 78 */	mr r5, r28
/* 803DA85C 003A3E1C  38 7E 00 06 */	addi r3, r30, 6
/* 803DA860 003A3E20  38 80 00 B0 */	li r4, 0xb0
/* 803DA864 003A3E24  4B FF D0 7D */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 803DA868 003A3E28  80 9D 00 00 */	lwz r4, 0(r29)
/* 803DA86C 003A3E2C  A8 04 00 4A */	lha r0, 0x4a(r4)
/* 803DA870 003A3E30  2C 00 FF FF */	cmpwi r0, -1
/* 803DA874 003A3E34  41 82 00 30 */	beq lbl_803DA8A4
/* 803DA878 003A3E38  80 04 00 04 */	lwz r0, 4(r4)
/* 803DA87C 003A3E3C  2C 00 00 00 */	cmpwi r0, 0
/* 803DA880 003A3E40  41 82 00 0C */	beq lbl_803DA88C
/* 803DA884 003A3E44  7C 04 02 14 */	add r0, r4, r0
/* 803DA888 003A3E48  48 00 00 08 */	b lbl_803DA890
lbl_803DA88C:
/* 803DA88C 003A3E4C  38 00 00 00 */	li r0, 0
lbl_803DA890:
/* 803DA890 003A3E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DA894 003A3E54  38 61 00 14 */	addi r3, r1, 0x14
/* 803DA898 003A3E58  A8 84 00 4A */	lha r4, 0x4a(r4)
/* 803DA89C 003A3E5C  4B FF EF C9 */	bl func_803D9864
/* 803DA8A0 003A3E60  48 00 00 08 */	b lbl_803DA8A8
lbl_803DA8A4:
/* 803DA8A4 003A3E64  38 60 00 00 */	li r3, 0
lbl_803DA8A8:
/* 803DA8A8 003A3E68  2C 03 00 00 */	cmpwi r3, 0
/* 803DA8AC 003A3E6C  90 61 00 28 */	stw r3, 0x28(r1)
/* 803DA8B0 003A3E70  41 82 00 60 */	beq lbl_803DA910
/* 803DA8B4 003A3E74  38 61 00 28 */	addi r3, r1, 0x28
/* 803DA8B8 003A3E78  38 81 00 2C */	addi r4, r1, 0x2c
/* 803DA8BC 003A3E7C  38 A1 00 08 */	addi r5, r1, 8
/* 803DA8C0 003A3E80  48 00 2A 05 */	bl GetArray__Q34nw4r3g3d9ResVtxNrmCFPPCvPUc
/* 803DA8C4 003A3E84  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DA8C8 003A3E88  8B 81 00 08 */	lbz r28, 8(r1)
/* 803DA8CC 003A3E8C  38 63 00 18 */	addi r3, r3, 0x18
/* 803DA8D0 003A3E90  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 803DA8D4 003A3E94  80 03 00 08 */	lwz r0, 8(r3)
/* 803DA8D8 003A3E98  2C 00 00 00 */	cmpwi r0, 0
/* 803DA8DC 003A3E9C  41 82 00 0C */	beq lbl_803DA8E8
/* 803DA8E0 003A3EA0  7C 63 02 14 */	add r3, r3, r0
/* 803DA8E4 003A3EA4  48 00 00 08 */	b lbl_803DA8EC
lbl_803DA8E8:
/* 803DA8E8 003A3EA8  38 60 00 00 */	li r3, 0
lbl_803DA8EC:
/* 803DA8EC 003A3EAC  3B C3 00 3E */	addi r30, r3, 0x3e
/* 803DA8F0 003A3EB0  3C A4 80 00 */	addis r5, r4, 0x8000
/* 803DA8F4 003A3EB4  7F C3 F3 78 */	mr r3, r30
/* 803DA8F8 003A3EB8  38 80 00 A1 */	li r4, 0xa1
/* 803DA8FC 003A3EBC  4B FF CF E5 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 803DA900 003A3EC0  7F 85 E3 78 */	mr r5, r28
/* 803DA904 003A3EC4  38 7E 00 06 */	addi r3, r30, 6
/* 803DA908 003A3EC8  38 80 00 B1 */	li r4, 0xb1
/* 803DA90C 003A3ECC  4B FF CF D5 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_803DA910:
/* 803DA910 003A3ED0  3B C0 00 00 */	li r30, 0
/* 803DA914 003A3ED4  3B E0 00 00 */	li r31, 0
lbl_803DA918:
/* 803DA918 003A3ED8  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DA91C 003A3EDC  7C 83 FA 14 */	add r4, r3, r31
/* 803DA920 003A3EE0  A8 04 00 4C */	lha r0, 0x4c(r4)
/* 803DA924 003A3EE4  2C 00 FF FF */	cmpwi r0, -1
/* 803DA928 003A3EE8  41 82 00 30 */	beq lbl_803DA958
/* 803DA92C 003A3EEC  80 03 00 04 */	lwz r0, 4(r3)
/* 803DA930 003A3EF0  2C 00 00 00 */	cmpwi r0, 0
/* 803DA934 003A3EF4  41 82 00 0C */	beq lbl_803DA940
/* 803DA938 003A3EF8  7C 03 02 14 */	add r0, r3, r0
/* 803DA93C 003A3EFC  48 00 00 08 */	b lbl_803DA944
lbl_803DA940:
/* 803DA940 003A3F00  38 00 00 00 */	li r0, 0
lbl_803DA944:
/* 803DA944 003A3F04  90 01 00 10 */	stw r0, 0x10(r1)
/* 803DA948 003A3F08  38 61 00 10 */	addi r3, r1, 0x10
/* 803DA94C 003A3F0C  A8 84 00 4C */	lha r4, 0x4c(r4)
/* 803DA950 003A3F10  4B FF EF F1 */	bl func_803D9940
/* 803DA954 003A3F14  48 00 00 08 */	b lbl_803DA95C
lbl_803DA958:
/* 803DA958 003A3F18  38 60 00 00 */	li r3, 0
lbl_803DA95C:
/* 803DA95C 003A3F1C  2C 03 00 00 */	cmpwi r3, 0
/* 803DA960 003A3F20  90 61 00 24 */	stw r3, 0x24(r1)
/* 803DA964 003A3F24  41 82 00 88 */	beq lbl_803DA9EC
/* 803DA968 003A3F28  38 61 00 24 */	addi r3, r1, 0x24
/* 803DA96C 003A3F2C  38 81 00 2C */	addi r4, r1, 0x2c
/* 803DA970 003A3F30  38 A1 00 08 */	addi r5, r1, 8
/* 803DA974 003A3F34  48 00 2A 2D */	bl func_803DD3A0
/* 803DA978 003A3F38  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DA97C 003A3F3C  8B 61 00 08 */	lbz r27, 8(r1)
/* 803DA980 003A3F40  38 63 00 18 */	addi r3, r3, 0x18
/* 803DA984 003A3F44  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 803DA988 003A3F48  80 03 00 08 */	lwz r0, 8(r3)
/* 803DA98C 003A3F4C  2C 00 00 00 */	cmpwi r0, 0
/* 803DA990 003A3F50  41 82 00 0C */	beq lbl_803DA99C
/* 803DA994 003A3F54  7C 83 02 14 */	add r4, r3, r0
/* 803DA998 003A3F58  48 00 00 08 */	b lbl_803DA9A0
lbl_803DA99C:
/* 803DA99C 003A3F5C  38 80 00 00 */	li r4, 0
lbl_803DA9A0:
/* 803DA9A0 003A3F60  38 DE 00 02 */	addi r6, r30, 2
/* 803DA9A4 003A3F64  38 1E 00 0B */	addi r0, r30, 0xb
/* 803DA9A8 003A3F68  1C 66 00 0C */	mulli r3, r6, 0xc
/* 803DA9AC 003A3F6C  3B 80 00 01 */	li r28, 1
/* 803DA9B0 003A3F70  2C 00 00 19 */	cmpwi r0, 0x19
/* 803DA9B4 003A3F74  7C 64 1A 14 */	add r3, r4, r3
/* 803DA9B8 003A3F78  3B 43 00 32 */	addi r26, r3, 0x32
/* 803DA9BC 003A3F7C  41 82 00 08 */	beq lbl_803DA9C4
/* 803DA9C0 003A3F80  7C DC 33 78 */	mr r28, r6
lbl_803DA9C4:
/* 803DA9C4 003A3F84  38 1C 00 A0 */	addi r0, r28, 0xa0
/* 803DA9C8 003A3F88  7F 43 D3 78 */	mr r3, r26
/* 803DA9CC 003A3F8C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803DA9D0 003A3F90  3C A5 80 00 */	addis r5, r5, 0x8000
/* 803DA9D4 003A3F94  4B FF CF 0D */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 803DA9D8 003A3F98  38 1C 00 B0 */	addi r0, r28, 0xb0
/* 803DA9DC 003A3F9C  7F 65 DB 78 */	mr r5, r27
/* 803DA9E0 003A3FA0  38 7A 00 06 */	addi r3, r26, 6
/* 803DA9E4 003A3FA4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803DA9E8 003A3FA8  4B FF CE F9 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_803DA9EC:
/* 803DA9EC 003A3FAC  3B DE 00 01 */	addi r30, r30, 1
/* 803DA9F0 003A3FB0  3B FF 00 02 */	addi r31, r31, 2
/* 803DA9F4 003A3FB4  28 1E 00 02 */	cmplwi r30, 2
/* 803DA9F8 003A3FB8  41 80 FF 20 */	blt lbl_803DA918
/* 803DA9FC 003A3FBC  3B C0 00 00 */	li r30, 0
/* 803DAA00 003A3FC0  3B E0 00 00 */	li r31, 0
lbl_803DAA04:
/* 803DAA04 003A3FC4  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DAA08 003A3FC8  7C 83 FA 14 */	add r4, r3, r31
/* 803DAA0C 003A3FCC  A8 04 00 50 */	lha r0, 0x50(r4)
/* 803DAA10 003A3FD0  2C 00 FF FF */	cmpwi r0, -1
/* 803DAA14 003A3FD4  41 82 00 30 */	beq lbl_803DAA44
/* 803DAA18 003A3FD8  80 03 00 04 */	lwz r0, 4(r3)
/* 803DAA1C 003A3FDC  2C 00 00 00 */	cmpwi r0, 0
/* 803DAA20 003A3FE0  41 82 00 0C */	beq lbl_803DAA2C
/* 803DAA24 003A3FE4  7C 03 02 14 */	add r0, r3, r0
/* 803DAA28 003A3FE8  48 00 00 08 */	b lbl_803DAA30
lbl_803DAA2C:
/* 803DAA2C 003A3FEC  38 00 00 00 */	li r0, 0
lbl_803DAA30:
/* 803DAA30 003A3FF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 803DAA34 003A3FF4  38 61 00 0C */	addi r3, r1, 0xc
/* 803DAA38 003A3FF8  A8 84 00 50 */	lha r4, 0x50(r4)
/* 803DAA3C 003A3FFC  4B FF EF E1 */	bl func_803D9A1C
/* 803DAA40 003A4000  48 00 00 08 */	b lbl_803DAA48
lbl_803DAA44:
/* 803DAA44 003A4004  38 60 00 00 */	li r3, 0
lbl_803DAA48:
/* 803DAA48 003A4008  2C 03 00 00 */	cmpwi r3, 0
/* 803DAA4C 003A400C  90 61 00 20 */	stw r3, 0x20(r1)
/* 803DAA50 003A4010  41 82 00 88 */	beq lbl_803DAAD8
/* 803DAA54 003A4014  38 61 00 20 */	addi r3, r1, 0x20
/* 803DAA58 003A4018  38 81 00 2C */	addi r4, r1, 0x2c
/* 803DAA5C 003A401C  38 A1 00 08 */	addi r5, r1, 8
/* 803DAA60 003A4020  48 00 29 DD */	bl func_803DD43C
/* 803DAA64 003A4024  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DAA68 003A4028  8B 41 00 08 */	lbz r26, 8(r1)
/* 803DAA6C 003A402C  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAA70 003A4030  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 803DAA74 003A4034  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAA78 003A4038  2C 00 00 00 */	cmpwi r0, 0
/* 803DAA7C 003A403C  41 82 00 0C */	beq lbl_803DAA88
/* 803DAA80 003A4040  7C 83 02 14 */	add r4, r3, r0
/* 803DAA84 003A4044  48 00 00 08 */	b lbl_803DAA8C
lbl_803DAA88:
/* 803DAA88 003A4048  38 80 00 00 */	li r4, 0
lbl_803DAA8C:
/* 803DAA8C 003A404C  38 DE 00 04 */	addi r6, r30, 4
/* 803DAA90 003A4050  38 1E 00 0D */	addi r0, r30, 0xd
/* 803DAA94 003A4054  1C 66 00 0C */	mulli r3, r6, 0xc
/* 803DAA98 003A4058  3B 80 00 01 */	li r28, 1
/* 803DAA9C 003A405C  2C 00 00 19 */	cmpwi r0, 0x19
/* 803DAAA0 003A4060  7C 64 1A 14 */	add r3, r4, r3
/* 803DAAA4 003A4064  3B 63 00 32 */	addi r27, r3, 0x32
/* 803DAAA8 003A4068  41 82 00 08 */	beq lbl_803DAAB0
/* 803DAAAC 003A406C  7C DC 33 78 */	mr r28, r6
lbl_803DAAB0:
/* 803DAAB0 003A4070  38 1C 00 A0 */	addi r0, r28, 0xa0
/* 803DAAB4 003A4074  7F 63 DB 78 */	mr r3, r27
/* 803DAAB8 003A4078  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803DAABC 003A407C  3C A5 80 00 */	addis r5, r5, 0x8000
/* 803DAAC0 003A4080  4B FF CE 21 */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
/* 803DAAC4 003A4084  38 1C 00 B0 */	addi r0, r28, 0xb0
/* 803DAAC8 003A4088  7F 45 D3 78 */	mr r5, r26
/* 803DAACC 003A408C  38 7B 00 06 */	addi r3, r27, 6
/* 803DAAD0 003A4090  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 803DAAD4 003A4094  4B FF CE 0D */	bl nw4r3g3d6detailFPUcUcUl$7ResWriteCPCmd
lbl_803DAAD8:
/* 803DAAD8 003A4098  3B DE 00 01 */	addi r30, r30, 1
/* 803DAADC 003A409C  3B FF 00 02 */	addi r31, r31, 2
/* 803DAAE0 003A40A0  28 1E 00 08 */	cmplwi r30, 8
/* 803DAAE4 003A40A4  41 80 FF 20 */	blt lbl_803DAA04
/* 803DAAE8 003A40A8  80 7D 00 00 */	lwz r3, 0(r29)
/* 803DAAEC 003A40AC  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAAF0 003A40B0  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAAF4 003A40B4  2C 00 00 00 */	cmpwi r0, 0
/* 803DAAF8 003A40B8  41 82 00 0C */	beq lbl_803DAB04
/* 803DAAFC 003A40BC  7C 63 02 14 */	add r3, r3, r0
/* 803DAB00 003A40C0  48 00 00 08 */	b lbl_803DAB08
lbl_803DAB04:
/* 803DAB04 003A40C4  38 60 00 00 */	li r3, 0
lbl_803DAB08:
/* 803DAB08 003A40C8  38 80 00 E0 */	li r4, 0xe0
/* 803DAB0C 003A40CC  4B F7 95 35 */	bl DCStoreRangeNoSync
/* 803DAB10 003A40D0  80 9D 00 00 */	lwz r4, 0(r29)
/* 803DAB14 003A40D4  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 803DAB18 003A40D8  38 64 00 24 */	addi r3, r4, 0x24
/* 803DAB1C 003A40DC  2C 00 00 00 */	cmpwi r0, 0
/* 803DAB20 003A40E0  41 82 00 0C */	beq lbl_803DAB2C
/* 803DAB24 003A40E4  7C 63 02 14 */	add r3, r3, r0
/* 803DAB28 003A40E8  48 00 00 08 */	b lbl_803DAB30
lbl_803DAB2C:
/* 803DAB2C 003A40EC  38 60 00 00 */	li r3, 0
lbl_803DAB30:
/* 803DAB30 003A40F0  80 84 00 24 */	lwz r4, 0x24(r4)
/* 803DAB34 003A40F4  4B F7 95 0D */	bl DCStoreRangeNoSync
/* 803DAB38 003A40F8  39 61 00 50 */	addi r11, r1, 0x50
/* 803DAB3C 003A40FC  4B ED F6 61 */	bl _restgpr_26
/* 803DAB40 003A4100  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803DAB44 003A4104  7C 08 03 A6 */	mtlr r0
/* 803DAB48 003A4108  38 21 00 50 */	addi r1, r1, 0x50
/* 803DAB4C 003A410C  4E 80 00 20 */	blr 

.global func_803DAB50
func_803DAB50:
/* 803DAB50 003A4110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DAB54 003A4114  7C 08 02 A6 */	mflr r0
/* 803DAB58 003A4118  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DAB5C 003A411C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DAB60 003A4120  7C 7F 1B 78 */	mr r31, r3
/* 803DAB64 003A4124  80 83 00 00 */	lwz r4, 0(r3)
/* 803DAB68 003A4128  80 04 00 20 */	lwz r0, 0x20(r4)
/* 803DAB6C 003A412C  38 64 00 18 */	addi r3, r4, 0x18
/* 803DAB70 003A4130  2C 00 00 00 */	cmpwi r0, 0
/* 803DAB74 003A4134  41 82 00 0C */	beq lbl_803DAB80
/* 803DAB78 003A4138  7C 63 02 14 */	add r3, r3, r0
/* 803DAB7C 003A413C  48 00 00 08 */	b lbl_803DAB84
lbl_803DAB80:
/* 803DAB80 003A4140  38 60 00 00 */	li r3, 0
lbl_803DAB84:
/* 803DAB84 003A4144  38 63 00 32 */	addi r3, r3, 0x32
/* 803DAB88 003A4148  38 80 00 00 */	li r4, 0
/* 803DAB8C 003A414C  38 A0 00 0C */	li r5, 0xc
/* 803DAB90 003A4150  4B C2 97 C1 */	bl memset
/* 803DAB94 003A4154  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAB98 003A4158  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAB9C 003A415C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DABA0 003A4160  2C 00 00 00 */	cmpwi r0, 0
/* 803DABA4 003A4164  41 82 00 0C */	beq lbl_803DABB0
/* 803DABA8 003A4168  7C 63 02 14 */	add r3, r3, r0
/* 803DABAC 003A416C  48 00 00 08 */	b lbl_803DABB4
lbl_803DABB0:
/* 803DABB0 003A4170  38 60 00 00 */	li r3, 0
lbl_803DABB4:
/* 803DABB4 003A4174  38 63 00 3E */	addi r3, r3, 0x3e
/* 803DABB8 003A4178  38 80 00 00 */	li r4, 0
/* 803DABBC 003A417C  38 A0 00 0C */	li r5, 0xc
/* 803DABC0 003A4180  4B C2 97 91 */	bl memset
/* 803DABC4 003A4184  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DABC8 003A4188  38 63 00 18 */	addi r3, r3, 0x18
/* 803DABCC 003A418C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DABD0 003A4190  2C 00 00 00 */	cmpwi r0, 0
/* 803DABD4 003A4194  41 82 00 0C */	beq lbl_803DABE0
/* 803DABD8 003A4198  7C 63 02 14 */	add r3, r3, r0
/* 803DABDC 003A419C  48 00 00 08 */	b lbl_803DABE4
lbl_803DABE0:
/* 803DABE0 003A41A0  38 60 00 00 */	li r3, 0
lbl_803DABE4:
/* 803DABE4 003A41A4  38 63 00 4A */	addi r3, r3, 0x4a
/* 803DABE8 003A41A8  38 80 00 00 */	li r4, 0
/* 803DABEC 003A41AC  38 A0 00 0C */	li r5, 0xc
/* 803DABF0 003A41B0  4B C2 97 61 */	bl memset
/* 803DABF4 003A41B4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DABF8 003A41B8  38 63 00 18 */	addi r3, r3, 0x18
/* 803DABFC 003A41BC  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAC00 003A41C0  2C 00 00 00 */	cmpwi r0, 0
/* 803DAC04 003A41C4  41 82 00 0C */	beq lbl_803DAC10
/* 803DAC08 003A41C8  7C 63 02 14 */	add r3, r3, r0
/* 803DAC0C 003A41CC  48 00 00 08 */	b lbl_803DAC14
lbl_803DAC10:
/* 803DAC10 003A41D0  38 60 00 00 */	li r3, 0
lbl_803DAC14:
/* 803DAC14 003A41D4  38 63 00 56 */	addi r3, r3, 0x56
/* 803DAC18 003A41D8  38 80 00 00 */	li r4, 0
/* 803DAC1C 003A41DC  38 A0 00 0C */	li r5, 0xc
/* 803DAC20 003A41E0  4B C2 97 31 */	bl memset
/* 803DAC24 003A41E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAC28 003A41E8  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAC2C 003A41EC  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAC30 003A41F0  2C 00 00 00 */	cmpwi r0, 0
/* 803DAC34 003A41F4  41 82 00 0C */	beq lbl_803DAC40
/* 803DAC38 003A41F8  7C 63 02 14 */	add r3, r3, r0
/* 803DAC3C 003A41FC  48 00 00 08 */	b lbl_803DAC44
lbl_803DAC40:
/* 803DAC40 003A4200  38 60 00 00 */	li r3, 0
lbl_803DAC44:
/* 803DAC44 003A4204  38 63 00 62 */	addi r3, r3, 0x62
/* 803DAC48 003A4208  38 80 00 00 */	li r4, 0
/* 803DAC4C 003A420C  38 A0 00 0C */	li r5, 0xc
/* 803DAC50 003A4210  4B C2 97 01 */	bl memset
/* 803DAC54 003A4214  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAC58 003A4218  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAC5C 003A421C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAC60 003A4220  2C 00 00 00 */	cmpwi r0, 0
/* 803DAC64 003A4224  41 82 00 0C */	beq lbl_803DAC70
/* 803DAC68 003A4228  7C 63 02 14 */	add r3, r3, r0
/* 803DAC6C 003A422C  48 00 00 08 */	b lbl_803DAC74
lbl_803DAC70:
/* 803DAC70 003A4230  38 60 00 00 */	li r3, 0
lbl_803DAC74:
/* 803DAC74 003A4234  38 63 00 6E */	addi r3, r3, 0x6e
/* 803DAC78 003A4238  38 80 00 00 */	li r4, 0
/* 803DAC7C 003A423C  38 A0 00 0C */	li r5, 0xc
/* 803DAC80 003A4240  4B C2 96 D1 */	bl memset
/* 803DAC84 003A4244  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAC88 003A4248  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAC8C 003A424C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAC90 003A4250  2C 00 00 00 */	cmpwi r0, 0
/* 803DAC94 003A4254  41 82 00 0C */	beq lbl_803DACA0
/* 803DAC98 003A4258  7C 63 02 14 */	add r3, r3, r0
/* 803DAC9C 003A425C  48 00 00 08 */	b lbl_803DACA4
lbl_803DACA0:
/* 803DACA0 003A4260  38 60 00 00 */	li r3, 0
lbl_803DACA4:
/* 803DACA4 003A4264  38 63 00 7A */	addi r3, r3, 0x7a
/* 803DACA8 003A4268  38 80 00 00 */	li r4, 0
/* 803DACAC 003A426C  38 A0 00 0C */	li r5, 0xc
/* 803DACB0 003A4270  4B C2 96 A1 */	bl memset
/* 803DACB4 003A4274  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DACB8 003A4278  38 63 00 18 */	addi r3, r3, 0x18
/* 803DACBC 003A427C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DACC0 003A4280  2C 00 00 00 */	cmpwi r0, 0
/* 803DACC4 003A4284  41 82 00 0C */	beq lbl_803DACD0
/* 803DACC8 003A4288  7C 63 02 14 */	add r3, r3, r0
/* 803DACCC 003A428C  48 00 00 08 */	b lbl_803DACD4
lbl_803DACD0:
/* 803DACD0 003A4290  38 60 00 00 */	li r3, 0
lbl_803DACD4:
/* 803DACD4 003A4294  38 63 00 86 */	addi r3, r3, 0x86
/* 803DACD8 003A4298  38 80 00 00 */	li r4, 0
/* 803DACDC 003A429C  38 A0 00 0C */	li r5, 0xc
/* 803DACE0 003A42A0  4B C2 96 71 */	bl memset
/* 803DACE4 003A42A4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DACE8 003A42A8  38 63 00 18 */	addi r3, r3, 0x18
/* 803DACEC 003A42AC  80 03 00 08 */	lwz r0, 8(r3)
/* 803DACF0 003A42B0  2C 00 00 00 */	cmpwi r0, 0
/* 803DACF4 003A42B4  41 82 00 0C */	beq lbl_803DAD00
/* 803DACF8 003A42B8  7C 63 02 14 */	add r3, r3, r0
/* 803DACFC 003A42BC  48 00 00 08 */	b lbl_803DAD04
lbl_803DAD00:
/* 803DAD00 003A42C0  38 60 00 00 */	li r3, 0
lbl_803DAD04:
/* 803DAD04 003A42C4  38 63 00 92 */	addi r3, r3, 0x92
/* 803DAD08 003A42C8  38 80 00 00 */	li r4, 0
/* 803DAD0C 003A42CC  38 A0 00 0C */	li r5, 0xc
/* 803DAD10 003A42D0  4B C2 96 41 */	bl memset
/* 803DAD14 003A42D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAD18 003A42D8  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAD1C 003A42DC  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAD20 003A42E0  2C 00 00 00 */	cmpwi r0, 0
/* 803DAD24 003A42E4  41 82 00 0C */	beq lbl_803DAD30
/* 803DAD28 003A42E8  7C 63 02 14 */	add r3, r3, r0
/* 803DAD2C 003A42EC  48 00 00 08 */	b lbl_803DAD34
lbl_803DAD30:
/* 803DAD30 003A42F0  38 60 00 00 */	li r3, 0
lbl_803DAD34:
/* 803DAD34 003A42F4  38 63 00 9E */	addi r3, r3, 0x9e
/* 803DAD38 003A42F8  38 80 00 00 */	li r4, 0
/* 803DAD3C 003A42FC  38 A0 00 0C */	li r5, 0xc
/* 803DAD40 003A4300  4B C2 96 11 */	bl memset
/* 803DAD44 003A4304  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAD48 003A4308  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAD4C 003A430C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAD50 003A4310  2C 00 00 00 */	cmpwi r0, 0
/* 803DAD54 003A4314  41 82 00 0C */	beq lbl_803DAD60
/* 803DAD58 003A4318  7C 63 02 14 */	add r3, r3, r0
/* 803DAD5C 003A431C  48 00 00 08 */	b lbl_803DAD64
lbl_803DAD60:
/* 803DAD60 003A4320  38 60 00 00 */	li r3, 0
lbl_803DAD64:
/* 803DAD64 003A4324  38 63 00 AA */	addi r3, r3, 0xaa
/* 803DAD68 003A4328  38 80 00 00 */	li r4, 0
/* 803DAD6C 003A432C  38 A0 00 0C */	li r5, 0xc
/* 803DAD70 003A4330  4B C2 95 E1 */	bl memset
/* 803DAD74 003A4334  80 7F 00 00 */	lwz r3, 0(r31)
/* 803DAD78 003A4338  38 63 00 18 */	addi r3, r3, 0x18
/* 803DAD7C 003A433C  80 03 00 08 */	lwz r0, 8(r3)
/* 803DAD80 003A4340  2C 00 00 00 */	cmpwi r0, 0
/* 803DAD84 003A4344  41 82 00 0C */	beq lbl_803DAD90
/* 803DAD88 003A4348  7C 63 02 14 */	add r3, r3, r0
/* 803DAD8C 003A434C  48 00 00 08 */	b lbl_803DAD94
lbl_803DAD90:
/* 803DAD90 003A4350  38 60 00 00 */	li r3, 0
lbl_803DAD94:
/* 803DAD94 003A4354  38 63 00 B6 */	addi r3, r3, 0xb6
/* 803DAD98 003A4358  38 80 00 00 */	li r4, 0
/* 803DAD9C 003A435C  38 A0 00 0C */	li r5, 0xc
/* 803DADA0 003A4360  4B C2 95 B1 */	bl memset
/* 803DADA4 003A4364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DADA8 003A4368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DADAC 003A436C  7C 08 03 A6 */	mtlr r0
/* 803DADB0 003A4370  38 21 00 10 */	addi r1, r1, 0x10
/* 803DADB4 003A4374  4E 80 00 20 */	blr 

.global func_803DADB8
func_803DADB8:
/* 803DADB8 003A4378  80 63 00 00 */	lwz r3, 0(r3)
/* 803DADBC 003A437C  2C 05 00 00 */	cmpwi r5, 0
/* 803DADC0 003A4380  38 A3 00 18 */	addi r5, r3, 0x18
/* 803DADC4 003A4384  41 82 00 70 */	beq lbl_803DAE34
/* 803DADC8 003A4388  2C 04 00 00 */	cmpwi r4, 0
/* 803DADCC 003A438C  41 82 00 2C */	beq lbl_803DADF8
/* 803DADD0 003A4390  80 05 00 08 */	lwz r0, 8(r5)
/* 803DADD4 003A4394  2C 00 00 00 */	cmpwi r0, 0
/* 803DADD8 003A4398  41 82 00 0C */	beq lbl_803DADE4
/* 803DADDC 003A439C  7C 65 02 14 */	add r3, r5, r0
/* 803DADE0 003A43A0  48 00 00 08 */	b lbl_803DADE8
lbl_803DADE4:
/* 803DADE4 003A43A4  38 60 00 00 */	li r3, 0
lbl_803DADE8:
/* 803DADE8 003A43A8  80 85 00 04 */	lwz r4, 4(r5)
/* 803DADEC 003A43AC  38 63 00 20 */	addi r3, r3, 0x20
/* 803DADF0 003A43B0  38 84 FF E0 */	addi r4, r4, -32
/* 803DADF4 003A43B4  4B F4 36 7C */	b GXCallDisplayList
lbl_803DADF8:
/* 803DADF8 003A43B8  80 05 00 08 */	lwz r0, 8(r5)
/* 803DADFC 003A43BC  2C 00 00 00 */	cmpwi r0, 0
/* 803DAE00 003A43C0  41 82 00 0C */	beq lbl_803DAE0C
/* 803DAE04 003A43C4  7C C5 02 14 */	add r6, r5, r0
/* 803DAE08 003A43C8  48 00 00 08 */	b lbl_803DAE10
lbl_803DAE0C:
/* 803DAE0C 003A43CC  38 C0 00 00 */	li r6, 0
lbl_803DAE10:
/* 803DAE10 003A43D0  80 A5 00 04 */	lwz r5, 4(r5)
/* 803DAE14 003A43D4  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 803DAE18 003A43D8  38 80 00 40 */	li r4, 0x40
/* 803DAE1C 003A43DC  38 06 00 20 */	addi r0, r6, 0x20
/* 803DAE20 003A43E0  98 83 80 00 */	stb r4, 0xCC008000@l(r3)
/* 803DAE24 003A43E4  38 85 FF E0 */	addi r4, r5, -32
/* 803DAE28 003A43E8  90 03 80 00 */	stw r0, -0x8000(r3)
/* 803DAE2C 003A43EC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 803DAE30 003A43F0  4E 80 00 20 */	blr

.global lbl_803DAE34
lbl_803DAE34:
/* 803DAE34 003A43F4  2C 04 00 00 */	cmpwi r4, 0
/* 803DAE38 003A43F8  41 82 00 24 */	beq lbl_803DAE5C
/* 803DAE3C 003A43FC  80 05 00 08 */	lwz r0, 8(r5)
/* 803DAE40 003A4400  2C 00 00 00 */	cmpwi r0, 0
/* 803DAE44 003A4404  41 82 00 0C */	beq lbl_803DAE50
/* 803DAE48 003A4408  7C 65 02 14 */	add r3, r5, r0
/* 803DAE4C 003A440C  48 00 00 08 */	b lbl_803DAE54
lbl_803DAE50:
/* 803DAE50 003A4410  38 60 00 00 */	li r3, 0
lbl_803DAE54:
/* 803DAE54 003A4414  80 85 00 04 */	lwz r4, 4(r5)
/* 803DAE58 003A4418  4B F4 36 18 */	b GXCallDisplayList
lbl_803DAE5C:
/* 803DAE5C 003A441C  80 05 00 08 */	lwz r0, 8(r5)
/* 803DAE60 003A4420  2C 00 00 00 */	cmpwi r0, 0
/* 803DAE64 003A4424  41 82 00 0C */	beq lbl_803DAE70
/* 803DAE68 003A4428  7C 85 02 14 */	add r4, r5, r0
/* 803DAE6C 003A442C  48 00 00 08 */	b lbl_803DAE74
lbl_803DAE70:
/* 803DAE70 003A4430  38 80 00 00 */	li r4, 0
lbl_803DAE74:
/* 803DAE74 003A4434  80 A5 00 04 */	lwz r5, 4(r5)
/* 803DAE78 003A4438  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 803DAE7C 003A443C  38 00 00 40 */	li r0, 0x40
/* 803DAE80 003A4440  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 803DAE84 003A4444  90 83 80 00 */	stw r4, -0x8000(r3)
/* 803DAE88 003A4448  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 803DAE8C 003A444C  4E 80 00 20 */	blr 

.global func_803DAE90
func_803DAE90:
/* 803DAE90 003A4450  80 63 00 00 */	lwz r3, 0(r3)
/* 803DAE94 003A4454  2C 04 00 00 */	cmpwi r4, 0
/* 803DAE98 003A4458  38 83 00 24 */	addi r4, r3, 0x24
/* 803DAE9C 003A445C  41 82 00 24 */	beq lbl_803DAEC0
/* 803DAEA0 003A4460  80 04 00 08 */	lwz r0, 8(r4)
/* 803DAEA4 003A4464  2C 00 00 00 */	cmpwi r0, 0
/* 803DAEA8 003A4468  41 82 00 0C */	beq lbl_803DAEB4
/* 803DAEAC 003A446C  7C 64 02 14 */	add r3, r4, r0
/* 803DAEB0 003A4470  48 00 00 08 */	b lbl_803DAEB8
lbl_803DAEB4:
/* 803DAEB4 003A4474  38 60 00 00 */	li r3, 0
lbl_803DAEB8:
/* 803DAEB8 003A4478  80 84 00 04 */	lwz r4, 4(r4)
/* 803DAEBC 003A447C  4B F4 35 B4 */	b GXCallDisplayList
lbl_803DAEC0:
/* 803DAEC0 003A4480  80 04 00 08 */	lwz r0, 8(r4)
/* 803DAEC4 003A4484  2C 00 00 00 */	cmpwi r0, 0
/* 803DAEC8 003A4488  41 82 00 0C */	beq lbl_803DAED4
/* 803DAECC 003A448C  7C A4 02 14 */	add r5, r4, r0
/* 803DAED0 003A4490  48 00 00 08 */	b lbl_803DAED8
lbl_803DAED4:
/* 803DAED4 003A4494  38 A0 00 00 */	li r5, 0
lbl_803DAED8:
/* 803DAED8 003A4498  80 84 00 04 */	lwz r4, 4(r4)
/* 803DAEDC 003A449C  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 803DAEE0 003A44A0  38 00 00 40 */	li r0, 0x40
/* 803DAEE4 003A44A4  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 803DAEE8 003A44A8  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 803DAEEC 003A44AC  90 83 80 00 */	stw r4, -0x8000(r3)
/* 803DAEF0 003A44B0  4E 80 00 20 */	blr 

.global func_803DAEF4
func_803DAEF4:
/* 803DAEF4 003A44B4  1C 04 00 14 */	mulli r0, r4, 0x14
/* 803DAEF8 003A44B8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DAEFC 003A44BC  7D 23 02 14 */	add r9, r3, r0
/* 803DAF00 003A44C0  88 09 00 20 */	lbz r0, 0x20(r9)
/* 803DAF04 003A44C4  2C 00 00 00 */	cmpwi r0, 0
/* 803DAF08 003A44C8  40 82 00 0C */	bne lbl_803DAF14
/* 803DAF0C 003A44CC  38 60 00 00 */	li r3, 0
/* 803DAF10 003A44D0  4E 80 00 20 */	blr

.global lbl_803DAF14
lbl_803DAF14:
/* 803DAF14 003A44D4  88 69 00 27 */	lbz r3, 0x27(r9)
/* 803DAF18 003A44D8  2C 05 00 00 */	cmpwi r5, 0
/* 803DAF1C 003A44DC  88 09 00 28 */	lbz r0, 0x28(r9)
/* 803DAF20 003A44E0  54 6A 80 1E */	slwi r10, r3, 0x10
/* 803DAF24 003A44E4  88 89 00 26 */	lbz r4, 0x26(r9)
/* 803DAF28 003A44E8  54 03 40 2E */	slwi r3, r0, 8
/* 803DAF2C 003A44EC  88 09 00 29 */	lbz r0, 0x29(r9)
/* 803DAF30 003A44F0  50 8A C0 0E */	rlwimi r10, r4, 0x18, 0, 7
/* 803DAF34 003A44F4  7D 4A 1B 78 */	or r10, r10, r3
/* 803DAF38 003A44F8  7D 4A 03 78 */	or r10, r10, r0
/* 803DAF3C 003A44FC  41 82 00 0C */	beq lbl_803DAF48
/* 803DAF40 003A4500  55 40 07 BE */	clrlwi r0, r10, 0x1e
/* 803DAF44 003A4504  90 05 00 00 */	stw r0, 0(r5)
lbl_803DAF48:
/* 803DAF48 003A4508  2C 06 00 00 */	cmpwi r6, 0
/* 803DAF4C 003A450C  41 82 00 0C */	beq lbl_803DAF58
/* 803DAF50 003A4510  55 40 F7 BE */	rlwinm r0, r10, 0x1e, 0x1e, 0x1f
/* 803DAF54 003A4514  90 06 00 00 */	stw r0, 0(r6)
lbl_803DAF58:
/* 803DAF58 003A4518  88 69 00 31 */	lbz r3, 0x31(r9)
/* 803DAF5C 003A451C  2C 07 00 00 */	cmpwi r7, 0
/* 803DAF60 003A4520  88 09 00 32 */	lbz r0, 0x32(r9)
/* 803DAF64 003A4524  54 65 80 1E */	slwi r5, r3, 0x10
/* 803DAF68 003A4528  88 89 00 30 */	lbz r4, 0x30(r9)
/* 803DAF6C 003A452C  54 03 40 2E */	slwi r3, r0, 8
/* 803DAF70 003A4530  88 09 00 33 */	lbz r0, 0x33(r9)
/* 803DAF74 003A4534  50 85 C0 0E */	rlwimi r5, r4, 0x18, 0, 7
/* 803DAF78 003A4538  7C A5 1B 78 */	or r5, r5, r3
/* 803DAF7C 003A453C  7C A5 03 78 */	or r5, r5, r0
/* 803DAF80 003A4540  41 82 00 0C */	beq lbl_803DAF8C
/* 803DAF84 003A4544  54 A0 07 BE */	clrlwi r0, r5, 0x1e
/* 803DAF88 003A4548  90 07 00 00 */	stw r0, 0(r7)
lbl_803DAF8C:
/* 803DAF8C 003A454C  2C 08 00 00 */	cmpwi r8, 0
/* 803DAF90 003A4550  41 82 00 0C */	beq lbl_803DAF9C
/* 803DAF94 003A4554  54 A0 F7 BE */	rlwinm r0, r5, 0x1e, 0x1e, 0x1f
/* 803DAF98 003A4558  90 08 00 00 */	stw r0, 0(r8)
lbl_803DAF9C:
/* 803DAF9C 003A455C  38 60 00 01 */	li r3, 1
/* 803DAFA0 003A4560  4E 80 00 20 */	blr 
