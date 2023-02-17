.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CMenuPause, global
/* 80251DF8 0021B3B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80251DFC 0021B3BC  7C 08 02 A6 */	mflr r0
/* 80251E00 0021B3C0  2C 03 00 00 */	cmpwi r3, 0
/* 80251E04 0021B3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80251E08 0021B3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80251E0C 0021B3CC  7C 9F 23 78 */	mr r31, r4
/* 80251E10 0021B3D0  93 C1 00 08 */	stw r30, 8(r1)
/* 80251E14 0021B3D4  7C 7E 1B 78 */	mr r30, r3
/* 80251E18 0021B3D8  41 82 00 38 */	beq .L_80251E50
/* 80251E1C 0021B3DC  38 80 FF FF */	li r4, -1
/* 80251E20 0021B3E0  38 63 00 64 */	addi r3, r3, 0x64
/* 80251E24 0021B3E4  48 20 D7 5D */	bl __dt__8045F580
/* 80251E28 0021B3E8  2C 1E 00 00 */	cmpwi r30, 0
/* 80251E2C 0021B3EC  41 82 00 14 */	beq .L_80251E40
/* 80251E30 0021B3F0  41 82 00 10 */	beq .L_80251E40
/* 80251E34 0021B3F4  7F C3 F3 78 */	mr r3, r30
/* 80251E38 0021B3F8  38 80 00 00 */	li r4, 0
/* 80251E3C 0021B3FC  48 1F 2C FD */	bl __dt__CProcess
.L_80251E40:
/* 80251E40 0021B400  2C 1F 00 00 */	cmpwi r31, 0
/* 80251E44 0021B404  40 81 00 0C */	ble .L_80251E50
/* 80251E48 0021B408  7F C3 F3 78 */	mr r3, r30
/* 80251E4C 0021B40C  48 1E 2D E1 */	bl __dl__FPv
.L_80251E50:
/* 80251E50 0021B410  7F C3 F3 78 */	mr r3, r30
/* 80251E54 0021B414  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80251E58 0021B418  83 C1 00 08 */	lwz r30, 8(r1)
/* 80251E5C 0021B41C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80251E60 0021B420  7C 08 03 A6 */	mtlr r0
/* 80251E64 0021B424  38 21 00 10 */	addi r1, r1, 0x10
/* 80251E68 0021B428  4E 80 00 20 */	blr 
.endfn __dt__CMenuPause

.fn func_80251E6C, global
/* 80251E6C 0021B42C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80251E70 0021B430  7C 08 02 A6 */	mflr r0
/* 80251E74 0021B434  90 01 00 44 */	stw r0, 0x44(r1)
/* 80251E78 0021B438  3C 00 43 30 */	lis r0, 0x4330
/* 80251E7C 0021B43C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80251E80 0021B440  7C 7F 1B 78 */	mr r31, r3
/* 80251E84 0021B444  38 60 00 01 */	li r3, 1
/* 80251E88 0021B448  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80251E8C 0021B44C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80251E90 0021B450  90 01 00 20 */	stw r0, 0x20(r1)
/* 80251E94 0021B454  90 01 00 28 */	stw r0, 0x28(r1)
/* 80251E98 0021B458  4B E3 0A B5 */	bl func_8008294C
/* 80251E9C 0021B45C  38 60 00 01 */	li r3, 1
/* 80251EA0 0021B460  4B F3 69 F1 */	bl func_80188890
/* 80251EA4 0021B464  48 1E 24 FD */	bl func_804343A0
/* 80251EA8 0021B468  3F C0 80 50 */	lis r30, CMenuPause_strpool@ha
/* 80251EAC 0021B46C  7C 64 1B 78 */	mr r4, r3
/* 80251EB0 0021B470  38 7F 00 64 */	addi r3, r31, 0x64
/* 80251EB4 0021B474  38 A0 20 00 */	li r5, 0x2000
/* 80251EB8 0021B478  38 DE 7C 58 */	addi r6, r30, CMenuPause_strpool@l
/* 80251EBC 0021B47C  38 E0 00 00 */	li r7, 0
/* 80251EC0 0021B480  48 20 D7 C1 */	bl func_8045F680
/* 80251EC4 0021B484  38 61 00 08 */	addi r3, r1, 8
/* 80251EC8 0021B488  38 9F 00 64 */	addi r4, r31, 0x64
/* 80251ECC 0021B48C  48 20 D9 8D */	bl func_8045F858
/* 80251ED0 0021B490  38 60 00 00 */	li r3, 0
/* 80251ED4 0021B494  48 1E 2B 79 */	bl func_80434A4C
/* 80251ED8 0021B498  4B EE 37 1D */	bl func_801355F4
/* 80251EDC 0021B49C  3B DE 7C 58 */	addi r30, r30, CMenuPause_strpool@l
/* 80251EE0 0021B4A0  7C 64 1B 78 */	mr r4, r3
/* 80251EE4 0021B4A4  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80251EE8 0021B4A8  38 BE 00 0B */	addi r5, r30, 0xb
/* 80251EEC 0021B4AC  4B EE 4F 99 */	bl func_80136E84
/* 80251EF0 0021B4B0  4B EE 37 05 */	bl func_801355F4
/* 80251EF4 0021B4B4  7C 65 1B 78 */	mr r5, r3
/* 80251EF8 0021B4B8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80251EFC 0021B4BC  38 9F 00 80 */	addi r4, r31, 0x80
/* 80251F00 0021B4C0  38 DE 00 24 */	addi r6, r30, 0x24
/* 80251F04 0021B4C4  4B EE 50 05 */	bl func_80136F08
/* 80251F08 0021B4C8  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 80251F0C 0021B4CC  38 60 00 01 */	li r3, 1
/* 80251F10 0021B4D0  83 A4 00 10 */	lwz r29, 0x10(r4)
/* 80251F14 0021B4D4  48 20 0C FD */	bl func_80452C10
/* 80251F18 0021B4D8  81 83 00 00 */	lwz r12, 0(r3)
/* 80251F1C 0021B4DC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80251F20 0021B4E0  7D 89 03 A6 */	mtctr r12
/* 80251F24 0021B4E4  4E 80 04 21 */	bctrl 
/* 80251F28 0021B4E8  7C 64 1B 78 */	mr r4, r3
/* 80251F2C 0021B4EC  7F A3 EB 78 */	mr r3, r29
/* 80251F30 0021B4F0  4B EE 48 3D */	bl func_8013676C
/* 80251F34 0021B4F4  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80251F38 0021B4F8  38 A0 00 01 */	li r5, 1
/* 80251F3C 0021B4FC  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80251F40 0021B500  81 83 00 00 */	lwz r12, 0(r3)
/* 80251F44 0021B504  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80251F48 0021B508  7D 89 03 A6 */	mtctr r12
/* 80251F4C 0021B50C  4E 80 04 21 */	bctrl 
/* 80251F50 0021B510  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80251F54 0021B514  38 80 00 00 */	li r4, 0
/* 80251F58 0021B518  81 83 00 00 */	lwz r12, 0(r3)
/* 80251F5C 0021B51C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80251F60 0021B520  7D 89 03 A6 */	mtctr r12
/* 80251F64 0021B524  4E 80 04 21 */	bctrl 
/* 80251F68 0021B528  38 7E 00 40 */	addi r3, r30, 0x40
/* 80251F6C 0021B52C  38 9E 00 4B */	addi r4, r30, 0x4b
/* 80251F70 0021B530  38 A0 00 08 */	li r5, 8
/* 80251F74 0021B534  4B EE 42 1D */	bl func_80136190
/* 80251F78 0021B538  7C 65 1B 78 */	mr r5, r3
/* 80251F7C 0021B53C  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80251F80 0021B540  38 9E 00 50 */	addi r4, r30, 0x50
/* 80251F84 0021B544  38 C0 00 00 */	li r6, 0
/* 80251F88 0021B548  4B EE 4B C5 */	bl func_80136B4C
/* 80251F8C 0021B54C  38 7E 00 5D */	addi r3, r30, 0x5d
/* 80251F90 0021B550  38 9E 00 6B */	addi r4, r30, 0x6b
/* 80251F94 0021B554  38 A0 00 6B */	li r5, 0x6b
/* 80251F98 0021B558  4B EE 41 F9 */	bl func_80136190
/* 80251F9C 0021B55C  7C 65 1B 78 */	mr r5, r3
/* 80251FA0 0021B560  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80251FA4 0021B564  38 9E 00 70 */	addi r4, r30, 0x70
/* 80251FA8 0021B568  38 C0 00 00 */	li r6, 0
/* 80251FAC 0021B56C  4B EE 4B A1 */	bl func_80136B4C
/* 80251FB0 0021B570  38 60 FF FF */	li r3, -1
/* 80251FB4 0021B574  4B E3 4F E9 */	bl func_80086F9C
/* 80251FB8 0021B578  2C 03 00 00 */	cmpwi r3, 0
/* 80251FBC 0021B57C  38 9E 00 86 */	addi r4, r30, 0x86
/* 80251FC0 0021B580  41 82 00 08 */	beq .L_80251FC8
/* 80251FC4 0021B584  38 9E 00 7D */	addi r4, r30, 0x7d
.L_80251FC8:
/* 80251FC8 0021B588  3F C0 80 50 */	lis r30, CMenuPause_strpool@ha
/* 80251FCC 0021B58C  38 A0 00 6B */	li r5, 0x6b
/* 80251FD0 0021B590  3B DE 7C 58 */	addi r30, r30, CMenuPause_strpool@l
/* 80251FD4 0021B594  38 7E 00 5D */	addi r3, r30, 0x5d
/* 80251FD8 0021B598  4B EE 40 95 */	bl func_8013606C
/* 80251FDC 0021B59C  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80251FE0 0021B5A0  4B EE 6F 99 */	bl func_80138F78
/* 80251FE4 0021B5A4  7C 7D 1B 78 */	mr r29, r3
/* 80251FE8 0021B5A8  4B EE 36 0D */	bl func_801355F4
/* 80251FEC 0021B5AC  81 83 00 00 */	lwz r12, 0(r3)
/* 80251FF0 0021B5B0  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 80251FF4 0021B5B4  7F A5 EB 78 */	mr r5, r29
/* 80251FF8 0021B5B8  38 C0 00 00 */	li r6, 0
/* 80251FFC 0021B5BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80252000 0021B5C0  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 80252004 0021B5C4  7D 89 03 A6 */	mtctr r12
/* 80252008 0021B5C8  4E 80 04 21 */	bctrl 
/* 8025200C 0021B5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80252010 0021B5D0  7C 7D 1B 78 */	mr r29, r3
/* 80252014 0021B5D4  41 82 00 78 */	beq .L_8025208C
/* 80252018 0021B5D8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8025201C 0021B5DC  7F A5 EB 78 */	mr r5, r29
/* 80252020 0021B5E0  38 9E 00 8F */	addi r4, r30, 0x8f
/* 80252024 0021B5E4  4B EE 5E 59 */	bl func_80137E7C
/* 80252028 0021B5E8  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8025202C 0021B5EC  38 9E 00 8F */	addi r4, r30, 0x8f
/* 80252030 0021B5F0  80 DD 00 08 */	lwz r6, 8(r29)
/* 80252034 0021B5F4  38 A0 00 01 */	li r5, 1
/* 80252038 0021B5F8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8025203C 0021B5FC  80 C6 00 00 */	lwz r6, 0(r6)
/* 80252040 0021B600  81 83 00 00 */	lwz r12, 0(r3)
/* 80252044 0021B604  A3 A6 00 02 */	lhz r29, 2(r6)
/* 80252048 0021B608  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025204C 0021B60C  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80252050 0021B610  7D 89 03 A6 */	mtctr r12
/* 80252054 0021B614  4E 80 04 21 */	bctrl 
/* 80252058 0021B618  2C 03 00 00 */	cmpwi r3, 0
/* 8025205C 0021B61C  41 82 00 30 */	beq .L_8025208C
/* 80252060 0021B620  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80252064 0021B624  C8 42 AD 00 */	lfd f2, double_8066B080@sda21(r2)
/* 80252068 0021B628  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 8025206C 0021B62C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80252070 0021B630  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80252074 0021B634  EC 21 10 28 */	fsubs f1, f1, f2
/* 80252078 0021B638  EC 00 10 28 */	fsubs f0, f0, f2
/* 8025207C 0021B63C  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80252080 0021B640  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80252084 0021B644  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80252088 0021B648  D0 03 00 50 */	stfs f0, 0x50(r3)
.L_8025208C:
/* 8025208C 0021B64C  3F C0 80 50 */	lis r30, CMenuPause_strpool@ha
/* 80252090 0021B650  38 A0 00 6C */	li r5, 0x6c
/* 80252094 0021B654  3B DE 7C 58 */	addi r30, r30, CMenuPause_strpool@l
/* 80252098 0021B658  38 7E 00 5D */	addi r3, r30, 0x5d
/* 8025209C 0021B65C  38 9E 00 6B */	addi r4, r30, 0x6b
/* 802520A0 0021B660  4B EE 40 F1 */	bl func_80136190
/* 802520A4 0021B664  7C 65 1B 78 */	mr r5, r3
/* 802520A8 0021B668  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 802520AC 0021B66C  38 9E 00 99 */	addi r4, r30, 0x99
/* 802520B0 0021B670  38 C0 00 00 */	li r6, 0
/* 802520B4 0021B674  4B EE 4A 99 */	bl func_80136B4C
/* 802520B8 0021B678  38 60 FF FF */	li r3, -1
/* 802520BC 0021B67C  4B E3 4E E1 */	bl func_80086F9C
/* 802520C0 0021B680  2C 03 00 00 */	cmpwi r3, 0
/* 802520C4 0021B684  38 9E 00 86 */	addi r4, r30, 0x86
/* 802520C8 0021B688  41 82 00 08 */	beq .L_802520D0
/* 802520CC 0021B68C  38 9E 00 7D */	addi r4, r30, 0x7d
.L_802520D0:
/* 802520D0 0021B690  3F C0 80 50 */	lis r30, CMenuPause_strpool@ha
/* 802520D4 0021B694  38 A0 00 6C */	li r5, 0x6c
/* 802520D8 0021B698  3B DE 7C 58 */	addi r30, r30, CMenuPause_strpool@l
/* 802520DC 0021B69C  38 7E 00 5D */	addi r3, r30, 0x5d
/* 802520E0 0021B6A0  4B EE 3F 8D */	bl func_8013606C
/* 802520E4 0021B6A4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802520E8 0021B6A8  4B EE 6E 91 */	bl func_80138F78
/* 802520EC 0021B6AC  7C 7D 1B 78 */	mr r29, r3
/* 802520F0 0021B6B0  4B EE 35 05 */	bl func_801355F4
/* 802520F4 0021B6B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802520F8 0021B6B8  3C 80 74 69 */	lis r4, 0x74696D67@ha
/* 802520FC 0021B6BC  7F A5 EB 78 */	mr r5, r29
/* 80252100 0021B6C0  38 C0 00 00 */	li r6, 0
/* 80252104 0021B6C4  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80252108 0021B6C8  38 84 6D 67 */	addi r4, r4, 0x74696D67@l
/* 8025210C 0021B6CC  7D 89 03 A6 */	mtctr r12
/* 80252110 0021B6D0  4E 80 04 21 */	bctrl 
/* 80252114 0021B6D4  2C 03 00 00 */	cmpwi r3, 0
/* 80252118 0021B6D8  7C 7D 1B 78 */	mr r29, r3
/* 8025211C 0021B6DC  41 82 00 78 */	beq .L_80252194
/* 80252120 0021B6E0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80252124 0021B6E4  7F A5 EB 78 */	mr r5, r29
/* 80252128 0021B6E8  38 9E 00 A6 */	addi r4, r30, 0xa6
/* 8025212C 0021B6EC  4B EE 5D 51 */	bl func_80137E7C
/* 80252130 0021B6F0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80252134 0021B6F4  38 9E 00 A6 */	addi r4, r30, 0xa6
/* 80252138 0021B6F8  80 DD 00 08 */	lwz r6, 8(r29)
/* 8025213C 0021B6FC  38 A0 00 01 */	li r5, 1
/* 80252140 0021B700  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80252144 0021B704  80 C6 00 00 */	lwz r6, 0(r6)
/* 80252148 0021B708  81 83 00 00 */	lwz r12, 0(r3)
/* 8025214C 0021B70C  A3 A6 00 02 */	lhz r29, 2(r6)
/* 80252150 0021B710  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80252154 0021B714  A3 C6 00 00 */	lhz r30, 0(r6)
/* 80252158 0021B718  7D 89 03 A6 */	mtctr r12
/* 8025215C 0021B71C  4E 80 04 21 */	bctrl 
/* 80252160 0021B720  2C 03 00 00 */	cmpwi r3, 0
/* 80252164 0021B724  41 82 00 30 */	beq .L_80252194
/* 80252168 0021B728  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8025216C 0021B72C  C8 42 AD 00 */	lfd f2, double_8066B080@sda21(r2)
/* 80252170 0021B730  93 C1 00 2C */	stw r30, 0x2c(r1)
/* 80252174 0021B734  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 80252178 0021B738  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8025217C 0021B73C  EC 21 10 28 */	fsubs f1, f1, f2
/* 80252180 0021B740  EC 00 10 28 */	fsubs f0, f0, f2
/* 80252184 0021B744  D0 23 00 4C */	stfs f1, 0x4c(r3)
/* 80252188 0021B748  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8025218C 0021B74C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80252190 0021B750  D0 03 00 50 */	stfs f0, 0x50(r3)
.L_80252194:
/* 80252194 0021B754  38 00 00 01 */	li r0, 1
/* 80252198 0021B758  98 1F 00 84 */	stb r0, 0x84(r31)
/* 8025219C 0021B75C  38 60 00 0D */	li r3, 0xd
/* 802521A0 0021B760  4B EE 5E D9 */	bl func_80138078
/* 802521A4 0021B764  2C 1F 00 00 */	cmpwi r31, 0
/* 802521A8 0021B768  38 00 00 00 */	li r0, 0
/* 802521AC 0021B76C  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802521B0 0021B770  7F E4 FB 78 */	mr r4, r31
/* 802521B4 0021B774  41 82 00 08 */	beq .L_802521BC
/* 802521B8 0021B778  38 9F 00 5C */	addi r4, r31, 0x5c
.L_802521BC:
/* 802521BC 0021B77C  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802521C0 0021B780  38 A0 00 12 */	li r5, 0x12
/* 802521C4 0021B784  38 C0 00 00 */	li r6, 0
/* 802521C8 0021B788  48 24 3C ED */	bl func_80495EB4
/* 802521CC 0021B78C  38 7F 00 64 */	addi r3, r31, 0x64
/* 802521D0 0021B790  48 20 D6 41 */	bl func_8045F810
/* 802521D4 0021B794  38 61 00 08 */	addi r3, r1, 8
/* 802521D8 0021B798  38 80 FF FF */	li r4, -1
/* 802521DC 0021B79C  48 20 D6 ED */	bl __dt__8045F8C8
/* 802521E0 0021B7A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802521E4 0021B7A4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802521E8 0021B7A8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802521EC 0021B7AC  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802521F0 0021B7B0  7C 08 03 A6 */	mtlr r0
/* 802521F4 0021B7B4  38 21 00 40 */	addi r1, r1, 0x40
/* 802521F8 0021B7B8  4E 80 00 20 */	blr 
.endfn func_80251E6C

.fn func_802521FC, global
/* 802521FC 0021B7BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252200 0021B7C0  7C 08 02 A6 */	mflr r0
/* 80252204 0021B7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252208 0021B7C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025220C 0021B7CC  7C 7F 1B 78 */	mr r31, r3
/* 80252210 0021B7D0  48 1F 68 35 */	bl func_80448A44
/* 80252214 0021B7D4  2C 1F 00 00 */	cmpwi r31, 0
/* 80252218 0021B7D8  7F E4 FB 78 */	mr r4, r31
/* 8025221C 0021B7DC  41 82 00 08 */	beq .L_80252224
/* 80252220 0021B7E0  38 9F 00 5C */	addi r4, r31, 0x5c
.L_80252224:
/* 80252224 0021B7E4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80252228 0021B7E8  48 24 3D 29 */	bl func_80495F50
/* 8025222C 0021B7EC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 80252230 0021B7F0  2C 03 00 00 */	cmpwi r3, 0
/* 80252234 0021B7F4  41 82 00 24 */	beq .L_80252258
/* 80252238 0021B7F8  41 82 00 18 */	beq .L_80252250
/* 8025223C 0021B7FC  81 83 00 00 */	lwz r12, 0(r3)
/* 80252240 0021B800  38 80 00 01 */	li r4, 1
/* 80252244 0021B804  81 8C 00 08 */	lwz r12, 8(r12)
/* 80252248 0021B808  7D 89 03 A6 */	mtctr r12
/* 8025224C 0021B80C  4E 80 04 21 */	bctrl 
.L_80252250:
/* 80252250 0021B810  38 00 00 00 */	li r0, 0
/* 80252254 0021B814  90 1F 00 7C */	stw r0, 0x7c(r31)
.L_80252258:
/* 80252258 0021B818  38 7F 00 64 */	addi r3, r31, 0x64
/* 8025225C 0021B81C  48 20 D5 1D */	bl func_8045F778
/* 80252260 0021B820  38 00 00 00 */	li r0, 0
/* 80252264 0021B824  90 0D AF 38 */	stw r0, lbl_806670B8@sda21(r13)
/* 80252268 0021B828  38 60 00 00 */	li r3, 0
/* 8025226C 0021B82C  4B F3 66 25 */	bl func_80188890
/* 80252270 0021B830  38 60 00 00 */	li r3, 0
/* 80252274 0021B834  4B E3 06 D9 */	bl func_8008294C
/* 80252278 0021B838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025227C 0021B83C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252280 0021B840  7C 08 03 A6 */	mtlr r0
/* 80252284 0021B844  38 21 00 10 */	addi r1, r1, 0x10
/* 80252288 0021B848  4E 80 00 20 */	blr 
.endfn func_802521FC

.fn func_8025228C, global
/* 8025228C 0021B84C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252290 0021B850  7C 08 02 A6 */	mflr r0
/* 80252294 0021B854  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252298 0021B858  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025229C 0021B85C  7C 7F 1B 78 */	mr r31, r3
/* 802522A0 0021B860  4B DE E2 49 */	bl func_800404E8
/* 802522A4 0021B864  4B DF 04 4D */	bl func_800426F0
/* 802522A8 0021B868  2C 03 00 00 */	cmpwi r3, 0
/* 802522AC 0021B86C  40 82 00 B4 */	bne .L_80252360
/* 802522B0 0021B870  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 802522B4 0021B874  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 802522B8 0021B878  41 82 00 08 */	beq .L_802522C0
/* 802522BC 0021B87C  48 00 00 A4 */	b .L_80252360
.L_802522C0:
/* 802522C0 0021B880  4B EE 9B 91 */	bl func_8013BE50
/* 802522C4 0021B884  2C 03 00 00 */	cmpwi r3, 0
/* 802522C8 0021B888  41 82 00 98 */	beq .L_80252360
/* 802522CC 0021B88C  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 802522D0 0021B890  2C 00 00 00 */	cmpwi r0, 0
/* 802522D4 0021B894  41 82 00 8C */	beq .L_80252360
/* 802522D8 0021B898  88 1F 00 84 */	lbz r0, 0x84(r31)
/* 802522DC 0021B89C  2C 00 00 01 */	cmpwi r0, 1
/* 802522E0 0021B8A0  41 82 00 18 */	beq .L_802522F8
/* 802522E4 0021B8A4  2C 00 00 02 */	cmpwi r0, 2
/* 802522E8 0021B8A8  41 82 00 30 */	beq .L_80252318
/* 802522EC 0021B8AC  2C 00 00 03 */	cmpwi r0, 3
/* 802522F0 0021B8B0  41 82 00 34 */	beq .L_80252324
/* 802522F4 0021B8B4  48 00 00 54 */	b .L_80252348
.L_802522F8:
/* 802522F8 0021B8B8  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 802522FC 0021B8BC  C0 22 AD 08 */	lfs f1, float_8066B088@sda21(r2)
/* 80252300 0021B8C0  4B EE 51 45 */	bl func_80137444
/* 80252304 0021B8C4  2C 03 00 00 */	cmpwi r3, 0
/* 80252308 0021B8C8  41 82 00 40 */	beq .L_80252348
/* 8025230C 0021B8CC  38 00 00 02 */	li r0, 2
/* 80252310 0021B8D0  98 1F 00 84 */	stb r0, 0x84(r31)
/* 80252314 0021B8D4  48 00 00 34 */	b .L_80252348
.L_80252318:
/* 80252318 0021B8D8  7F E3 FB 78 */	mr r3, r31
/* 8025231C 0021B8DC  48 00 02 49 */	bl func_80252564
/* 80252320 0021B8E0  48 00 00 28 */	b .L_80252348
.L_80252324:
/* 80252324 0021B8E4  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 80252328 0021B8E8  C0 22 AD 08 */	lfs f1, float_8066B088@sda21(r2)
/* 8025232C 0021B8EC  4B EE 51 E5 */	bl func_80137510
/* 80252330 0021B8F0  2C 03 00 00 */	cmpwi r3, 0
/* 80252334 0021B8F4  41 82 00 14 */	beq .L_80252348
/* 80252338 0021B8F8  38 60 00 00 */	li r3, 0
/* 8025233C 0021B8FC  38 00 00 01 */	li r0, 1
/* 80252340 0021B900  98 7F 00 84 */	stb r3, 0x84(r31)
/* 80252344 0021B904  98 1F 00 54 */	stb r0, 0x54(r31)
.L_80252348:
/* 80252348 0021B908  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8025234C 0021B90C  38 80 00 00 */	li r4, 0
/* 80252350 0021B910  81 83 00 00 */	lwz r12, 0(r3)
/* 80252354 0021B914  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80252358 0021B918  7D 89 03 A6 */	mtctr r12
/* 8025235C 0021B91C  4E 80 04 21 */	bctrl 
.L_80252360:
/* 80252360 0021B920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252364 0021B924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252368 0021B928  7C 08 03 A6 */	mtlr r0
/* 8025236C 0021B92C  38 21 00 10 */	addi r1, r1, 0x10
/* 80252370 0021B930  4E 80 00 20 */	blr
.endfn func_8025228C

.fn func_80252374, global
/* 80252374 0021B934  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80252378 0021B938  7C 08 02 A6 */	mflr r0
/* 8025237C 0021B93C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80252380 0021B940  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80252384 0021B944  7C 7F 1B 78 */	mr r31, r3
/* 80252388 0021B948  4B DE E1 61 */	bl func_800404E8
/* 8025238C 0021B94C  4B DF 03 65 */	bl func_800426F0
/* 80252390 0021B950  2C 03 00 00 */	cmpwi r3, 0
/* 80252394 0021B954  40 82 00 68 */	bne .L_802523FC
/* 80252398 0021B958  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8025239C 0021B95C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 802523A0 0021B960  41 82 00 08 */	beq .L_802523A8
/* 802523A4 0021B964  48 00 00 58 */	b .L_802523FC
.L_802523A8:
/* 802523A8 0021B968  4B EE 9A A9 */	bl func_8013BE50
/* 802523AC 0021B96C  2C 03 00 00 */	cmpwi r3, 0
/* 802523B0 0021B970  41 82 00 4C */	beq .L_802523FC
/* 802523B4 0021B974  38 60 00 00 */	li r3, 0
/* 802523B8 0021B978  38 80 00 00 */	li r4, 0
/* 802523BC 0021B97C  38 A0 00 00 */	li r5, 0
/* 802523C0 0021B980  48 0C BE 81 */	bl GXSetZMode
/* 802523C4 0021B984  38 61 00 08 */	addi r3, r1, 8
/* 802523C8 0021B988  48 1B 62 A1 */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 802523CC 0021B98C  38 61 00 08 */	addi r3, r1, 8
/* 802523D0 0021B990  4B EE 4E 81 */	bl func_80137250
/* 802523D4 0021B994  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 802523D8 0021B998  2C 03 00 00 */	cmpwi r3, 0
/* 802523DC 0021B99C  41 82 00 14 */	beq .L_802523F0
/* 802523E0 0021B9A0  38 81 00 08 */	addi r4, r1, 8
/* 802523E4 0021B9A4  38 A0 00 00 */	li r5, 0
/* 802523E8 0021B9A8  38 C0 00 01 */	li r6, 1
/* 802523EC 0021B9AC  4B EE 4C 4D */	bl func_80137038
.L_802523F0:
/* 802523F0 0021B9B0  38 61 00 08 */	addi r3, r1, 8
/* 802523F4 0021B9B4  38 80 FF FF */	li r4, -1
/* 802523F8 0021B9B8  48 1B 62 E5 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_802523FC:
/* 802523FC 0021B9BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80252400 0021B9C0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80252404 0021B9C4  7C 08 03 A6 */	mtlr r0
/* 80252408 0021B9C8  38 21 00 70 */	addi r1, r1, 0x70
/* 8025240C 0021B9CC  4E 80 00 20 */	blr 
.endfn func_80252374

.fn __ct__CMenuPause, global
/* 80252410 0021B9D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80252414 0021B9D4  7C 08 02 A6 */	mflr r0
/* 80252418 0021B9D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025241C 0021B9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80252420 0021B9E0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80252424 0021B9E4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80252428 0021B9E8  7C 9D 23 78 */	mr r29, r4
/* 8025242C 0021B9EC  93 81 00 10 */	stw r28, 0x10(r1)
/* 80252430 0021B9F0  7C 7C 1B 78 */	mr r28, r3
/* 80252434 0021B9F4  80 0D AF 38 */	lwz r0, lbl_806670B8@sda21(r13)
/* 80252438 0021B9F8  2C 00 00 00 */	cmpwi r0, 0
/* 8025243C 0021B9FC  41 82 00 0C */	beq .L_80252448
/* 80252440 0021BA00  38 60 00 00 */	li r3, 0
/* 80252444 0021BA04  48 00 00 C0 */	b .L_80252504
.L_80252448:
/* 80252448 0021BA08  48 1E 51 6D */	bl func_804375B4
/* 8025244C 0021BA0C  7C 64 1B 78 */	mr r4, r3
/* 80252450 0021BA10  38 60 00 88 */	li r3, 0x88
/* 80252454 0021BA14  48 1E 26 09 */	bl mm_malloc
/* 80252458 0021BA18  2C 03 00 00 */	cmpwi r3, 0
/* 8025245C 0021BA1C  7C 7E 1B 78 */	mr r30, r3
/* 80252460 0021BA20  41 82 00 8C */	beq .L_802524EC
/* 80252464 0021BA24  48 1F 25 B5 */	bl __ct__8CProcessFv
/* 80252468 0021BA28  3C 60 80 53 */	lis r3, __vt__CTTask_IUICf@ha
/* 8025246C 0021BA2C  3D 00 80 51 */	lis r8, lbl_8050CE10@ha
/* 80252470 0021BA30  38 63 F7 40 */	addi r3, r3, __vt__CTTask_IUICf@l
/* 80252474 0021BA34  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80252478 0021BA38  39 08 CE 10 */	addi r8, r8, lbl_8050CE10@l
/* 8025247C 0021BA3C  3C A0 80 54 */	lis r5, __vt__CMenuPause@ha
/* 80252480 0021BA40  80 C8 00 04 */	lwz r6, 4(r8)
/* 80252484 0021BA44  38 A5 A9 58 */	addi r5, r5, __vt__CMenuPause@l
/* 80252488 0021BA48  80 08 00 00 */	lwz r0, 0(r8)
/* 8025248C 0021BA4C  3B E0 00 00 */	li r31, 0
/* 80252490 0021BA50  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80252494 0021BA54  38 85 00 24 */	addi r4, r5, 0x24
/* 80252498 0021BA58  38 05 00 AC */	addi r0, r5, 0xac
/* 8025249C 0021BA5C  38 7E 00 64 */	addi r3, r30, 0x64
/* 802524A0 0021BA60  90 DE 00 40 */	stw r6, 0x40(r30)
/* 802524A4 0021BA64  80 C8 00 08 */	lwz r6, 8(r8)
/* 802524A8 0021BA68  90 DE 00 44 */	stw r6, 0x44(r30)
/* 802524AC 0021BA6C  80 C8 00 04 */	lwz r6, 4(r8)
/* 802524B0 0021BA70  80 E8 00 00 */	lwz r7, 0(r8)
/* 802524B4 0021BA74  90 FE 00 48 */	stw r7, 0x48(r30)
/* 802524B8 0021BA78  90 DE 00 4C */	stw r6, 0x4c(r30)
/* 802524BC 0021BA7C  80 C8 00 08 */	lwz r6, 8(r8)
/* 802524C0 0021BA80  90 DE 00 50 */	stw r6, 0x50(r30)
/* 802524C4 0021BA84  9B FE 00 54 */	stb r31, 0x54(r30)
/* 802524C8 0021BA88  9B FE 00 55 */	stb r31, 0x55(r30)
/* 802524CC 0021BA8C  90 BE 00 10 */	stw r5, 0x10(r30)
/* 802524D0 0021BA90  90 9E 00 58 */	stw r4, 0x58(r30)
/* 802524D4 0021BA94  90 1E 00 5C */	stw r0, 0x5c(r30)
/* 802524D8 0021BA98  93 BE 00 60 */	stw r29, 0x60(r30)
/* 802524DC 0021BA9C  48 20 D0 89 */	bl __ct__8045F564
/* 802524E0 0021BAA0  93 FE 00 7C */	stw r31, 0x7c(r30)
/* 802524E4 0021BAA4  93 FE 00 80 */	stw r31, 0x80(r30)
/* 802524E8 0021BAA8  9B FE 00 84 */	stb r31, 0x84(r30)
.L_802524EC:
/* 802524EC 0021BAAC  93 CD AF 38 */	stw r30, lbl_806670B8@sda21(r13)
/* 802524F0 0021BAB0  7F C3 F3 78 */	mr r3, r30
/* 802524F4 0021BAB4  7F 84 E3 78 */	mr r4, r28
/* 802524F8 0021BAB8  38 A0 00 00 */	li r5, 0
/* 802524FC 0021BABC  48 1F 27 79 */	bl func_80444C74
/* 80252500 0021BAC0  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
.L_80252504:
/* 80252504 0021BAC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80252508 0021BAC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8025250C 0021BACC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80252510 0021BAD0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80252514 0021BAD4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80252518 0021BAD8  7C 08 03 A6 */	mtlr r0
/* 8025251C 0021BADC  38 21 00 20 */	addi r1, r1, 0x20
/* 80252520 0021BAE0  4E 80 00 20 */	blr 
.endfn __ct__CMenuPause

.fn func_80252524, global
/* 80252524 0021BAE4  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
/* 80252528 0021BAE8  7C 03 00 D0 */	neg r0, r3
/* 8025252C 0021BAEC  7C 00 1B 78 */	or r0, r0, r3
/* 80252530 0021BAF0  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252534 0021BAF4  4E 80 00 20 */	blr 
.endfn func_80252524

.fn func_80252538, global
/* 80252538 0021BAF8  80 6D AF 38 */	lwz r3, lbl_806670B8@sda21(r13)
/* 8025253C 0021BAFC  2C 03 00 00 */	cmpwi r3, 0
/* 80252540 0021BB00  40 82 00 0C */	bne .L_8025254C
/* 80252544 0021BB04  38 60 00 00 */	li r3, 0
/* 80252548 0021BB08  4E 80 00 20 */	blr
.L_8025254C:
/* 8025254C 0021BB0C  88 83 00 84 */	lbz r4, 0x84(r3)
/* 80252550 0021BB10  20 64 00 03 */	subfic r3, r4, 3
/* 80252554 0021BB14  38 04 FF FD */	addi r0, r4, -3
/* 80252558 0021BB18  7C 60 03 78 */	or r0, r3, r0
/* 8025255C 0021BB1C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80252560 0021BB20  4E 80 00 20 */	blr 
.endfn func_80252538

.fn func_80252564, global
/* 80252564 0021BB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252568 0021BB28  7C 08 02 A6 */	mflr r0
/* 8025256C 0021BB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252570 0021BB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80252574 0021BB34  93 C1 00 08 */	stw r30, 8(r1)
/* 80252578 0021BB38  7C 7E 1B 78 */	mr r30, r3
/* 8025257C 0021BB3C  4B E3 4C 41 */	bl func_800871BC
/* 80252580 0021BB40  7C 7F 1B 78 */	mr r31, r3
/* 80252584 0021BB44  38 60 FF FF */	li r3, -1
/* 80252588 0021BB48  4B E3 4A 15 */	bl func_80086F9C
/* 8025258C 0021BB4C  2C 03 00 00 */	cmpwi r3, 0
/* 80252590 0021BB50  41 82 00 14 */	beq .L_802525A4
/* 80252594 0021BB54  80 1F 00 04 */	lwz r0, 4(r31)
/* 80252598 0021BB58  54 03 5F FE */	rlwinm r3, r0, 0xb, 0x1f, 0x1f
/* 8025259C 0021BB5C  54 00 57 FE */	rlwinm r0, r0, 0xa, 0x1f, 0x1f
/* 802525A0 0021BB60  48 00 00 10 */	b .L_802525B0
.L_802525A4:
/* 802525A4 0021BB64  80 1F 00 04 */	lwz r0, 4(r31)
/* 802525A8 0021BB68  54 03 E7 FE */	rlwinm r3, r0, 0x1c, 0x1f, 0x1f
/* 802525AC 0021BB6C  54 00 DF FE */	rlwinm r0, r0, 0x1b, 0x1f, 0x1f
.L_802525B0:
/* 802525B0 0021BB70  2C 03 00 00 */	cmpwi r3, 0
/* 802525B4 0021BB74  41 82 00 3C */	beq .L_802525F0
/* 802525B8 0021BB78  4B E3 2E 11 */	bl func_800853C8
/* 802525BC 0021BB7C  C0 22 AD 0C */	lfs f1, float_8066B08C@sda21(r2)
/* 802525C0 0021BB80  38 60 00 00 */	li r3, 0
/* 802525C4 0021BB84  38 80 00 03 */	li r4, 3
/* 802525C8 0021BB88  38 A0 00 00 */	li r5, 0
/* 802525CC 0021BB8C  4B F6 D5 69 */	bl func_801BFB34
/* 802525D0 0021BB90  C0 22 AD 0C */	lfs f1, float_8066B08C@sda21(r2)
/* 802525D4 0021BB94  38 60 00 00 */	li r3, 0
/* 802525D8 0021BB98  38 80 00 0E */	li r4, 0xe
/* 802525DC 0021BB9C  38 A0 00 00 */	li r5, 0
/* 802525E0 0021BBA0  4B F6 D5 55 */	bl func_801BFB34
/* 802525E4 0021BBA4  38 00 00 03 */	li r0, 3
/* 802525E8 0021BBA8  98 1E 00 84 */	stb r0, 0x84(r30)
/* 802525EC 0021BBAC  48 00 00 24 */	b .L_80252610
.L_802525F0:
/* 802525F0 0021BBB0  2C 00 00 00 */	cmpwi r0, 0
/* 802525F4 0021BBB4  41 82 00 1C */	beq .L_80252610
/* 802525F8 0021BBB8  38 60 00 06 */	li r3, 6
/* 802525FC 0021BBBC  4B EE 5A 7D */	bl func_80138078
/* 80252600 0021BBC0  38 60 00 0E */	li r3, 0xe
/* 80252604 0021BBC4  4B EE 5A 75 */	bl func_80138078
/* 80252608 0021BBC8  38 00 00 03 */	li r0, 3
/* 8025260C 0021BBCC  98 1E 00 84 */	stb r0, 0x84(r30)
.L_80252610:
/* 80252610 0021BBD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252614 0021BBD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80252618 0021BBD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025261C 0021BBDC  7C 08 03 A6 */	mtlr r0
/* 80252620 0021BBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80252624 0021BBE4  4E 80 00 20 */	blr 
.endfn func_80252564

.fn func_80252628, global
/* 80252628 0021BBE8  38 63 FF A8 */	addi r3, r3, -88
/* 8025262C 0021BBEC  4B FF F7 CC */	b __dt__CMenuPause
.endfn func_80252628

.fn func_80252630, global
/* 80252630 0021BBF0  38 63 FF A4 */	addi r3, r3, -92
/* 80252634 0021BBF4  4B FF FD 40 */	b func_80252374
.endfn func_80252630

.fn func_80252638, global
/* 80252638 0021BBF8  38 63 FF A4 */	addi r3, r3, -92
/* 8025263C 0021BBFC  4B FF F7 BC */	b __dt__CMenuPause
.endfn func_80252638


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0




.global CMenuPause_typestr
CMenuPause_typestr:
	.asciz "CMenuPause"
	.balign 4
	.4byte 0


.global CMenuPause_strpool
CMenuPause_strpool:
	.asciz "CMenuPause"
	.asciz "mf70_cf60_syswin13.brlyt"
	.asciz "mf70_cf60_syswin13_in.brlan"
	.asciz "MNU_sysmes"
	.asciz "name"
	.asciz "txt_titlemes"
	.asciz "MNU_kyeassign"
	.asciz "help"
	.asciz "txt_sysmes00"
	.asciz "fileID_2"
	.asciz "fileID_1"
	.asciz "pic_btn00"
	.asciz "txt_sysmes01"
	.asciz "pic_btn01"

.section .data, "wa"  # 0x805281E0 - 0x80573C60



.global __vt__CMenuPause
__vt__CMenuPause:
	.4byte __RTTI__CMenuPause
	.4byte 0
	.4byte __dt__CMenuPause
	.4byte CChildListNode_Reset
	.4byte func_80251E6C
	.4byte func_802521FC
	.4byte func_8025228C
	.4byte func_80101FB8
	.4byte func_80043F20
	.4byte __RTTI__CMenuPause
	.4byte 0xFFFFFFA8
	.4byte func_80252628
	.4byte IWorkEvent_80039E28
	.4byte IWorkEvent_80039E20
	.4byte IWorkEvent_80039E18
	.4byte IWorkEvent_80039E10
	.4byte IWorkEvent_80039E0C
	.4byte IWorkEvent_80039E04
	.4byte IWorkEvent_80039DFC
	.4byte IWorkEvent_80039DF4
	.4byte IWorkEvent_80039DEC
	.4byte IWorkEvent_80039DE4
	.4byte IWorkEvent_80039DDC
	.4byte IWorkEvent_80039DD4
	.4byte IWorkEvent_80039DCC
	.4byte IWorkEvent_80039DC4
	.4byte IWorkEvent_80039DBC
	.4byte IWorkEvent_80039DB4
	.4byte IWorkEvent_80039DAC
	.4byte IWorkEvent_80039DA4
	.4byte IWorkEvent_80039D9C
	.4byte IWorkEvent_80039D94
	.4byte IWorkEvent_80039D8C
	.4byte IWorkEvent_80039D84
	.4byte IWorkEvent_80039D7C
	.4byte IWorkEvent_80039D74
	.4byte IWorkEvent_80039D6C
	.4byte IWorkEvent_80039D64
	.4byte IWorkEvent_80039D5C
	.4byte IWorkEvent_80039D54
	.4byte IWorkEvent_80039D4C
	.4byte IWorkEvent_80039D44
	.4byte IWorkEvent_80039D40
	.4byte __RTTI__CMenuPause
	.4byte 0xFFFFFFA4
	.4byte func_80252638
	.4byte func_80252630
	.4byte func_80252374

.global CMenuPause_hierarchy
CMenuPause_hierarchy:
	.4byte __RTTI__IScnRender
	.4byte 0x0000005C
	.4byte __RTTI__IWorkEvent
	.4byte 0x00000058
	.4byte __RTTI__CDoubleListNode
	.4byte 0
	.4byte __RTTI__CChildListNode
	.4byte 0
	.4byte __RTTI__CProcess
	.4byte 0
	.4byte __RTTI__CTTask_IUICf
	.4byte 0
	.4byte __RTTI__IUICf
	.4byte 0
	.4byte 0
	.4byte 0

.section .sdata, "wa"  # 0x80664180 - 0x80666600



.global __RTTI__CMenuPause
__RTTI__CMenuPause:
	.4byte CMenuPause_typestr
	.4byte CMenuPause_hierarchy

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0


.global double_8066B080
double_8066B080:
	.8byte 0x4330000000000000 #unsigned int to float constant

.global float_8066B088
float_8066B088:
	.float 1.0

.global float_8066B08C
float_8066B08C:
	.float 0.6 #0x3F19999A

.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_806670B8
lbl_806670B8:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_80016B9C", local
.hidden "@etb_80016B9C"
	.4byte 0x10080000
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0780001E
	.4byte 0x00000064
	.4byte __dt__8045F580
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x8680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
.endobj "@etb_80016B9C"

.obj "@etb_80016BD0", local
.hidden "@etb_80016BD0"
	.4byte 0x180A0000
	.4byte 0x0000006C
	.4byte 0x00BF0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_80016BD0"

.obj "@etb_80016BE8", local
.hidden "@etb_80016BE8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_80016BE8"

.obj "@etb_80016BF0", local
.hidden "@etb_80016BF0"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_80016BF0"

.obj "@etb_80016BF8", local
.hidden "@etb_80016BF8"
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00070010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv
.endobj "@etb_80016BF8"

.obj "@etb_80016C10", local
.hidden "@etb_80016C10"
	.4byte 0x20080000
	.4byte 0x000000D0
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0680001E
	.4byte 0x0000005C
	.4byte __dt__IScnRender
	.4byte 0x0680001E
	.4byte 0x00000058
	.4byte __dt__IWorkEvent
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__800FED0C
.endobj "@etb_80016C10"

.obj "@etb_80016C44", local
.hidden "@etb_80016C44"
	.4byte 0x100A0000
	.4byte 0x00000000
.endobj "@etb_80016C44"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_8002F6B4", local
.hidden "@eti_8002F6B4"
	.4byte __dt__CMenuPause
	.4byte 0x00000074
	.4byte "@etb_80016B9C"
.endobj "@eti_8002F6B4"

.obj "@eti_8002F6C0", local
.hidden "@eti_8002F6C0"
	.4byte func_80251E6C
	.4byte 0x00000390
	.4byte "@etb_80016BD0"
.endobj "@eti_8002F6C0"

.obj "@eti_8002F6CC", local
.hidden "@eti_8002F6CC"
	.4byte func_802521FC
	.4byte 0x00000090
	.4byte "@etb_80016BE8"
.endobj "@eti_8002F6CC"

.obj "@eti_8002F6D8", local
.hidden "@eti_8002F6D8"
	.4byte func_8025228C
	.4byte 0x000000E8
	.4byte "@etb_80016BF0"
.endobj "@eti_8002F6D8"

.obj "@eti_8002F6E4", local
.hidden "@eti_8002F6E4"
	.4byte func_80252374
	.4byte 0x0000009C
	.4byte "@etb_80016BF8"
.endobj "@eti_8002F6E4"

.obj "@eti_8002F6F0", local
.hidden "@eti_8002F6F0"
	.4byte __ct__CMenuPause
	.4byte 0x00000114
	.4byte "@etb_80016C10"
.endobj "@eti_8002F6F0"

.obj "@eti_8002F6FC", local
.hidden "@eti_8002F6FC"
	.4byte func_80252564
	.4byte 0x000000C4
	.4byte "@etb_80016C44"
.endobj "@eti_8002F6FC"
