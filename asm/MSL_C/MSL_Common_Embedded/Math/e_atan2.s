.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global lbl_802C77FC
lbl_802C77FC:
/* 802C77FC 00290DBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C7800 00290DC0  7C 08 02 A6 */	mflr r0
/* 802C7804 00290DC4  3C 60 7F F0 */	lis r3, 0x7ff0
/* 802C7808 00290DC8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 802C780C 00290DCC  81 01 00 14 */	lwz r8, 0x14(r1)
/* 802C7810 00290DD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C7814 00290DD4  7C 08 00 D0 */	neg r0, r8
/* 802C7818 00290DD8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802C781C 00290DDC  7D 00 03 78 */	or r0, r8, r0
/* 802C7820 00290DE0  D8 21 00 08 */	stfd f1, 8(r1)
/* 802C7824 00290DE4  54 86 00 7E */	clrlwi r6, r4, 1
/* 802C7828 00290DE8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C782C 00290DEC  80 A1 00 08 */	lwz r5, 8(r1)
/* 802C7830 00290DF0  7C C0 03 78 */	or r0, r6, r0
/* 802C7834 00290DF4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C7838 00290DF8  7C 00 18 40 */	cmplw r0, r3
/* 802C783C 00290DFC  81 21 00 0C */	lwz r9, 0xc(r1)
/* 802C7840 00290E00  54 A7 00 7E */	clrlwi r7, r5, 1
/* 802C7844 00290E04  41 81 00 1C */	bgt lbl_802C7860
/* 802C7848 00290E08  7C 09 00 D0 */	neg r0, r9
/* 802C784C 00290E0C  7D 20 03 78 */	or r0, r9, r0
/* 802C7850 00290E10  54 00 0F FE */	srwi r0, r0, 0x1f
/* 802C7854 00290E14  7C E0 03 78 */	or r0, r7, r0
/* 802C7858 00290E18  7C 00 18 40 */	cmplw r0, r3
/* 802C785C 00290E1C  40 81 00 0C */	ble lbl_802C7868
lbl_802C7860:
/* 802C7860 00290E20  FC 22 08 2A */	fadd f1, f2, f1
/* 802C7864 00290E24  48 00 01 DC */	b lbl_802C7A40
lbl_802C7868:
/* 802C7868 00290E28  3C 04 C0 10 */	addis r0, r4, 0xc010
/* 802C786C 00290E2C  7C 00 43 79 */	or. r0, r0, r8
/* 802C7870 00290E30  40 82 00 0C */	bne lbl_802C787C
/* 802C7874 00290E34  48 00 2F 99 */	bl func_802CA80C
/* 802C7878 00290E38  48 00 01 C8 */	b lbl_802C7A40
lbl_802C787C:
/* 802C787C 00290E3C  7C E0 4B 79 */	or. r0, r7, r9
/* 802C7880 00290E40  54 9F 17 BC */	rlwinm r31, r4, 2, 0x1e, 0x1e
/* 802C7884 00290E44  50 BF 0F FE */	rlwimi r31, r5, 1, 0x1f, 0x1f
/* 802C7888 00290E48  40 82 00 34 */	bne lbl_802C78BC
/* 802C788C 00290E4C  28 1F 00 01 */	cmplwi r31, 1
/* 802C7890 00290E50  40 81 01 B0 */	ble lbl_802C7A40
/* 802C7894 00290E54  2C 1F 00 02 */	cmpwi r31, 2
/* 802C7898 00290E58  41 82 00 14 */	beq lbl_802C78AC
/* 802C789C 00290E5C  2C 1F 00 03 */	cmpwi r31, 3
/* 802C78A0 00290E60  41 82 00 14 */	beq lbl_802C78B4
/* 802C78A4 00290E64  48 00 00 18 */	b lbl_802C78BC
/* 802C78A8 00290E68  48 00 01 98 */	b lbl_802C7A40
lbl_802C78AC:
/* 802C78AC 00290E6C  C8 22 B6 30 */	lfd f1, lbl_8066B9B0@sda21(r2)
/* 802C78B0 00290E70  48 00 01 90 */	b lbl_802C7A40
lbl_802C78B4:
/* 802C78B4 00290E74  C8 22 B6 38 */	lfd f1, lbl_8066B9B8@sda21(r2)
/* 802C78B8 00290E78  48 00 01 88 */	b lbl_802C7A40
lbl_802C78BC:
/* 802C78BC 00290E7C  7C C0 43 79 */	or. r0, r6, r8
/* 802C78C0 00290E80  40 82 00 1C */	bne lbl_802C78DC
/* 802C78C4 00290E84  2C 05 00 00 */	cmpwi r5, 0
/* 802C78C8 00290E88  40 80 00 0C */	bge lbl_802C78D4
/* 802C78CC 00290E8C  C8 22 B6 40 */	lfd f1, lbl_8066B9C0@sda21(r2)
/* 802C78D0 00290E90  48 00 01 70 */	b lbl_802C7A40
lbl_802C78D4:
/* 802C78D4 00290E94  C8 22 B6 48 */	lfd f1, lbl_8066B9C8@sda21(r2)
/* 802C78D8 00290E98  48 00 01 68 */	b lbl_802C7A40
lbl_802C78DC:
/* 802C78DC 00290E9C  3C 06 80 10 */	addis r0, r6, 0x8010
/* 802C78E0 00290EA0  28 00 00 00 */	cmplwi r0, 0
/* 802C78E4 00290EA4  40 82 00 98 */	bne lbl_802C797C
/* 802C78E8 00290EA8  3C 07 80 10 */	addis r0, r7, 0x8010
/* 802C78EC 00290EAC  28 00 00 00 */	cmplwi r0, 0
/* 802C78F0 00290EB0  40 82 00 48 */	bne lbl_802C7938
/* 802C78F4 00290EB4  2C 1F 00 00 */	cmpwi r31, 0
/* 802C78F8 00290EB8  41 82 00 20 */	beq lbl_802C7918
/* 802C78FC 00290EBC  2C 1F 00 01 */	cmpwi r31, 1
/* 802C7900 00290EC0  41 82 00 20 */	beq lbl_802C7920
/* 802C7904 00290EC4  2C 1F 00 02 */	cmpwi r31, 2
/* 802C7908 00290EC8  41 82 00 20 */	beq lbl_802C7928
/* 802C790C 00290ECC  2C 1F 00 03 */	cmpwi r31, 3
/* 802C7910 00290ED0  41 82 00 20 */	beq lbl_802C7930
/* 802C7914 00290ED4  48 00 00 68 */	b lbl_802C797C
lbl_802C7918:
/* 802C7918 00290ED8  C8 22 B6 50 */	lfd f1, lbl_8066B9D0@sda21(r2)
/* 802C791C 00290EDC  48 00 01 24 */	b lbl_802C7A40
lbl_802C7920:
/* 802C7920 00290EE0  C8 22 B6 58 */	lfd f1, lbl_8066B9D8@sda21(r2)
/* 802C7924 00290EE4  48 00 01 1C */	b lbl_802C7A40
lbl_802C7928:
/* 802C7928 00290EE8  C8 22 B6 60 */	lfd f1, lbl_8066B9E0@sda21(r2)
/* 802C792C 00290EEC  48 00 01 14 */	b lbl_802C7A40
lbl_802C7930:
/* 802C7930 00290EF0  C8 22 B6 68 */	lfd f1, lbl_8066B9E8@sda21(r2)
/* 802C7934 00290EF4  48 00 01 0C */	b lbl_802C7A40
lbl_802C7938:
/* 802C7938 00290EF8  2C 1F 00 00 */	cmpwi r31, 0
/* 802C793C 00290EFC  41 82 00 20 */	beq lbl_802C795C
/* 802C7940 00290F00  2C 1F 00 01 */	cmpwi r31, 1
/* 802C7944 00290F04  41 82 00 20 */	beq lbl_802C7964
/* 802C7948 00290F08  2C 1F 00 02 */	cmpwi r31, 2
/* 802C794C 00290F0C  41 82 00 20 */	beq lbl_802C796C
/* 802C7950 00290F10  2C 1F 00 03 */	cmpwi r31, 3
/* 802C7954 00290F14  41 82 00 20 */	beq lbl_802C7974
/* 802C7958 00290F18  48 00 00 24 */	b lbl_802C797C
lbl_802C795C:
/* 802C795C 00290F1C  C8 22 B6 70 */	lfd f1, lbl_8066B9F0@sda21(r2)
/* 802C7960 00290F20  48 00 00 E0 */	b lbl_802C7A40
lbl_802C7964:
/* 802C7964 00290F24  C8 22 B6 78 */	lfd f1, lbl_8066B9F8@sda21(r2)
/* 802C7968 00290F28  48 00 00 D8 */	b lbl_802C7A40
lbl_802C796C:
/* 802C796C 00290F2C  C8 22 B6 30 */	lfd f1, lbl_8066B9B0@sda21(r2)
/* 802C7970 00290F30  48 00 00 D0 */	b lbl_802C7A40
lbl_802C7974:
/* 802C7974 00290F34  C8 22 B6 38 */	lfd f1, lbl_8066B9B8@sda21(r2)
/* 802C7978 00290F38  48 00 00 C8 */	b lbl_802C7A40
lbl_802C797C:
/* 802C797C 00290F3C  3C 07 80 10 */	addis r0, r7, 0x8010
/* 802C7980 00290F40  28 00 00 00 */	cmplwi r0, 0
/* 802C7984 00290F44  40 82 00 1C */	bne lbl_802C79A0
/* 802C7988 00290F48  2C 05 00 00 */	cmpwi r5, 0
/* 802C798C 00290F4C  40 80 00 0C */	bge lbl_802C7998
/* 802C7990 00290F50  C8 22 B6 40 */	lfd f1, lbl_8066B9C0@sda21(r2)
/* 802C7994 00290F54  48 00 00 AC */	b lbl_802C7A40
lbl_802C7998:
/* 802C7998 00290F58  C8 22 B6 48 */	lfd f1, lbl_8066B9C8@sda21(r2)
/* 802C799C 00290F5C  48 00 00 A4 */	b lbl_802C7A40
lbl_802C79A0:
/* 802C79A0 00290F60  7C 06 38 50 */	subf r0, r6, r7
/* 802C79A4 00290F64  7C 00 A6 70 */	srawi r0, r0, 0x14
/* 802C79A8 00290F68  2C 00 00 3C */	cmpwi r0, 0x3c
/* 802C79AC 00290F6C  40 81 00 10 */	ble lbl_802C79BC
/* 802C79B0 00290F70  C8 22 B6 48 */	lfd f1, lbl_8066B9C8@sda21(r2)
/* 802C79B4 00290F74  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 802C79B8 00290F78  48 00 00 30 */	b lbl_802C79E8
lbl_802C79BC:
/* 802C79BC 00290F7C  2C 04 00 00 */	cmpwi r4, 0
/* 802C79C0 00290F80  40 80 00 18 */	bge lbl_802C79D8
/* 802C79C4 00290F84  2C 00 FF C4 */	cmpwi r0, -60
/* 802C79C8 00290F88  40 80 00 10 */	bge lbl_802C79D8
/* 802C79CC 00290F8C  C8 22 B6 70 */	lfd f1, lbl_8066B9F0@sda21(r2)
/* 802C79D0 00290F90  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 802C79D4 00290F94  48 00 00 14 */	b lbl_802C79E8
lbl_802C79D8:
/* 802C79D8 00290F98  FC 01 10 24 */	fdiv f0, f1, f2
/* 802C79DC 00290F9C  FC 20 02 10 */	fabs f1, f0
/* 802C79E0 00290FA0  48 00 2E 2D */	bl func_802CA80C
/* 802C79E4 00290FA4  D8 21 00 18 */	stfd f1, 0x18(r1)
lbl_802C79E8:
/* 802C79E8 00290FA8  2C 1F 00 00 */	cmpwi r31, 0
/* 802C79EC 00290FAC  41 82 00 54 */	beq lbl_802C7A40
/* 802C79F0 00290FB0  2C 1F 00 01 */	cmpwi r31, 1
/* 802C79F4 00290FB4  41 82 00 14 */	beq lbl_802C7A08
/* 802C79F8 00290FB8  2C 1F 00 02 */	cmpwi r31, 2
/* 802C79FC 00290FBC  41 82 00 20 */	beq lbl_802C7A1C
/* 802C7A00 00290FC0  48 00 00 30 */	b lbl_802C7A30
/* 802C7A04 00290FC4  48 00 00 3C */	b lbl_802C7A40
lbl_802C7A08:
/* 802C7A08 00290FC8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802C7A0C 00290FCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C7A10 00290FD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C7A14 00290FD4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 802C7A18 00290FD8  48 00 00 28 */	b lbl_802C7A40
lbl_802C7A1C:
/* 802C7A1C 00290FDC  C8 42 B6 80 */	lfd f2, lbl_8066BA00@sda21(r2)
/* 802C7A20 00290FE0  C8 02 B6 30 */	lfd f0, lbl_8066B9B0@sda21(r2)
/* 802C7A24 00290FE4  FC 21 10 28 */	fsub f1, f1, f2
/* 802C7A28 00290FE8  FC 20 08 28 */	fsub f1, f0, f1
/* 802C7A2C 00290FEC  48 00 00 14 */	b lbl_802C7A40
lbl_802C7A30:
/* 802C7A30 00290FF0  C8 42 B6 80 */	lfd f2, lbl_8066BA00@sda21(r2)
/* 802C7A34 00290FF4  C8 02 B6 30 */	lfd f0, lbl_8066B9B0@sda21(r2)
/* 802C7A38 00290FF8  FC 21 10 28 */	fsub f1, f1, f2
/* 802C7A3C 00290FFC  FC 21 00 28 */	fsub f1, f1, f0
lbl_802C7A40:
/* 802C7A40 00291000  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C7A44 00291004  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C7A48 00291008  7C 08 03 A6 */	mtlr r0
/* 802C7A4C 0029100C  38 21 00 30 */	addi r1, r1, 0x30
/* 802C7A50 00291010  4E 80 00 20 */	blr