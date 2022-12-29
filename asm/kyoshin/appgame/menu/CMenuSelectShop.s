.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global func_80189DE8
func_80189DE8:
/* 80189DE8 001533A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80189DEC 001533AC  7C 08 02 A6 */	mflr r0
/* 80189DF0 001533B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80189DF4 001533B4  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 80189DF8 001533B8  7C 7C 1B 78 */	mr r28, r3
/* 80189DFC 001533BC  7C 9D 23 78 */	mr r29, r4
/* 80189E00 001533C0  7C BE 2B 78 */	mr r30, r5
/* 80189E04 001533C4  48 2B AC 15 */	bl __ct__8CProcessFv
/* 80189E08 001533C8  3C 60 80 53 */	lis r3, __vt__CTTask_IUIWindow@ha
/* 80189E0C 001533CC  3C A0 80 53 */	lis r5, __vt__CMenuSelectShop@ha
/* 80189E10 001533D0  38 63 0A 08 */	addi r3, r3, __vt__CTTask_IUIWindow@l
/* 80189E14 001533D4  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80189E18 001533D8  3D 40 80 51 */	lis r10, lbl_8050CE10@ha
/* 80189E1C 001533DC  38 A5 5D 20 */	addi r5, r5, __vt__CMenuSelectShop@l
/* 80189E20 001533E0  84 6A CE 10 */	lwzu r3, lbl_8050CE10@l(r10)
/* 80189E24 001533E4  38 85 00 24 */	addi r4, r5, 0x24
/* 80189E28 001533E8  3B E0 00 00 */	li r31, 0
/* 80189E2C 001533EC  38 E0 FF FF */	li r7, -1
/* 80189E30 001533F0  80 0A 00 04 */	lwz r0, 4(r10)
/* 80189E34 001533F4  38 C0 00 01 */	li r6, 1
/* 80189E38 001533F8  90 1C 00 40 */	stw r0, 0x40(r28)
/* 80189E3C 001533FC  38 05 00 AC */	addi r0, r5, 0xac
/* 80189E40 00153400  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 80189E44 00153404  38 7C 00 78 */	addi r3, r28, 0x78
/* 80189E48 00153408  81 0A 00 08 */	lwz r8, 8(r10)
/* 80189E4C 0015340C  91 1C 00 44 */	stw r8, 0x44(r28)
/* 80189E50 00153410  81 2A 00 00 */	lwz r9, 0(r10)
/* 80189E54 00153414  81 0A 00 04 */	lwz r8, 4(r10)
/* 80189E58 00153418  91 1C 00 4C */	stw r8, 0x4c(r28)
/* 80189E5C 0015341C  91 3C 00 48 */	stw r9, 0x48(r28)
/* 80189E60 00153420  81 0A 00 08 */	lwz r8, 8(r10)
/* 80189E64 00153424  91 1C 00 50 */	stw r8, 0x50(r28)
/* 80189E68 00153428  93 FC 00 54 */	stw r31, 0x54(r28)
/* 80189E6C 0015342C  93 FC 00 58 */	stw r31, 0x58(r28)
/* 80189E70 00153430  93 FC 00 5C */	stw r31, 0x5c(r28)
/* 80189E74 00153434  90 FC 00 60 */	stw r7, 0x60(r28)
/* 80189E78 00153438  9B FC 00 64 */	stb r31, 0x64(r28)
/* 80189E7C 0015343C  9B FC 00 65 */	stb r31, 0x65(r28)
/* 80189E80 00153440  9B FC 00 66 */	stb r31, 0x66(r28)
/* 80189E84 00153444  98 DC 00 67 */	stb r6, 0x67(r28)
/* 80189E88 00153448  93 FC 00 68 */	stw r31, 0x68(r28)
/* 80189E8C 0015344C  90 BC 00 10 */	stw r5, 0x10(r28)
/* 80189E90 00153450  90 9C 00 6C */	stw r4, 0x6c(r28)
/* 80189E94 00153454  90 1C 00 70 */	stw r0, 0x70(r28)
/* 80189E98 00153458  93 BC 00 74 */	stw r29, 0x74(r28)
/* 80189E9C 0015345C  48 2D 56 C9 */	bl func_8045F564
/* 80189EA0 00153460  38 7C 00 88 */	addi r3, r28, 0x88
/* 80189EA4 00153464  48 0A 28 11 */	bl func_8022C6B4
/* 80189EA8 00153468  38 7C 00 B0 */	addi r3, r28, 0xb0
/* 80189EAC 0015346C  38 80 00 00 */	li r4, 0
/* 80189EB0 00153470  48 04 8B 4D */	bl func_801D29FC
/* 80189EB4 00153474  9B FC 00 C8 */	stb r31, 0xc8(r28)
/* 80189EB8 00153478  7F 83 E3 78 */	mr r3, r28
/* 80189EBC 0015347C  93 FC 00 CC */	stw r31, 0xcc(r28)
/* 80189EC0 00153480  93 DC 00 D0 */	stw r30, 0xd0(r28)
/* 80189EC4 00153484  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 80189EC8 00153488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80189ECC 0015348C  7C 08 03 A6 */	mtlr r0
/* 80189ED0 00153490  38 21 00 20 */	addi r1, r1, 0x20
/* 80189ED4 00153494  4E 80 00 20 */	blr

.global func_80189ED8
func_80189ED8:
/* 80189ED8 00153498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80189EDC 0015349C  7C 08 02 A6 */	mflr r0
/* 80189EE0 001534A0  2C 03 00 00 */	cmpwi r3, 0
/* 80189EE4 001534A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80189EE8 001534A8  BF C1 00 08 */	stmw r30, 8(r1)
/* 80189EEC 001534AC  7C 7E 1B 78 */	mr r30, r3
/* 80189EF0 001534B0  7C 9F 23 78 */	mr r31, r4
/* 80189EF4 001534B4  41 82 00 44 */	beq .L_80189F38
/* 80189EF8 001534B8  38 80 FF FF */	li r4, -1
/* 80189EFC 001534BC  38 63 00 B0 */	addi r3, r3, 0xb0
/* 80189F00 001534C0  48 04 8B 39 */	bl func_801D2A38
/* 80189F04 001534C4  38 7E 00 88 */	addi r3, r30, 0x88
/* 80189F08 001534C8  38 80 FF FF */	li r4, -1
/* 80189F0C 001534CC  48 0A 28 11 */	bl func_8022C71C
/* 80189F10 001534D0  38 7E 00 78 */	addi r3, r30, 0x78
/* 80189F14 001534D4  38 80 FF FF */	li r4, -1
/* 80189F18 001534D8  48 2D 56 69 */	bl func_8045F580
/* 80189F1C 001534DC  7F C3 F3 78 */	mr r3, r30
/* 80189F20 001534E0  38 80 00 00 */	li r4, 0
/* 80189F24 001534E4  4B F9 84 39 */	bl func_8012235C
/* 80189F28 001534E8  2C 1F 00 00 */	cmpwi r31, 0
/* 80189F2C 001534EC  40 81 00 0C */	ble .L_80189F38
/* 80189F30 001534F0  7F C3 F3 78 */	mr r3, r30
/* 80189F34 001534F4  48 2A AC F9 */	bl __dl__FPv
.L_80189F38:
/* 80189F38 001534F8  7F C3 F3 78 */	mr r3, r30
/* 80189F3C 001534FC  BB C1 00 08 */	lmw r30, 8(r1)
/* 80189F40 00153500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80189F44 00153504  7C 08 03 A6 */	mtlr r0
/* 80189F48 00153508  38 21 00 10 */	addi r1, r1, 0x10
/* 80189F4C 0015350C  4E 80 00 20 */	blr 

.global func_80189F50
func_80189F50:
/* 80189F50 00153510  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80189F54 00153514  7C 08 02 A6 */	mflr r0
/* 80189F58 00153518  90 01 00 64 */	stw r0, 0x64(r1)
/* 80189F5C 0015351C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80189F60 00153520  7C 7F 1B 78 */	mr r31, r3
/* 80189F64 00153524  48 2A A4 3D */	bl func_804343A0
/* 80189F68 00153528  3C C0 80 50 */	lis r6, lbl_804FF308@ha
/* 80189F6C 0015352C  7C 64 1B 78 */	mr r4, r3
/* 80189F70 00153530  38 7F 00 78 */	addi r3, r31, 0x78
/* 80189F74 00153534  38 A0 20 00 */	li r5, 0x2000
/* 80189F78 00153538  38 C6 F3 08 */	addi r6, r6, lbl_804FF308@l
/* 80189F7C 0015353C  38 E0 00 00 */	li r7, 0
/* 80189F80 00153540  48 2D 57 01 */	bl func_8045F680
/* 80189F84 00153544  38 61 00 08 */	addi r3, r1, 8
/* 80189F88 00153548  38 9F 00 78 */	addi r4, r31, 0x78
/* 80189F8C 0015354C  48 2D 58 CD */	bl func_8045F858
/* 80189F90 00153550  38 61 00 28 */	addi r3, r1, 0x28
/* 80189F94 00153554  48 0A 27 21 */	bl func_8022C6B4
/* 80189F98 00153558  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80189F9C 0015355C  38 61 00 28 */	addi r3, r1, 0x28
/* 80189FA0 00153560  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 80189FA4 00153564  38 80 FF FF */	li r4, -1
/* 80189FA8 00153568  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80189FAC 0015356C  90 1F 00 90 */	stw r0, 0x90(r31)
/* 80189FB0 00153570  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80189FB4 00153574  90 1F 00 94 */	stw r0, 0x94(r31)
/* 80189FB8 00153578  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80189FBC 0015357C  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80189FC0 00153580  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80189FC4 00153584  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 80189FC8 00153588  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80189FCC 0015358C  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 80189FD0 00153590  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80189FD4 00153594  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 80189FD8 00153598  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80189FDC 0015359C  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80189FE0 001535A0  88 01 00 4C */	lbz r0, 0x4c(r1)
/* 80189FE4 001535A4  98 1F 00 AC */	stb r0, 0xac(r31)
/* 80189FE8 001535A8  88 01 00 4D */	lbz r0, 0x4d(r1)
/* 80189FEC 001535AC  98 1F 00 AD */	stb r0, 0xad(r31)
/* 80189FF0 001535B0  88 01 00 4E */	lbz r0, 0x4e(r1)
/* 80189FF4 001535B4  98 1F 00 AE */	stb r0, 0xae(r31)
/* 80189FF8 001535B8  88 01 00 4F */	lbz r0, 0x4f(r1)
/* 80189FFC 001535BC  98 1F 00 AF */	stb r0, 0xaf(r31)
/* 8018A000 001535C0  48 0A 27 1D */	bl func_8022C71C
/* 8018A004 001535C4  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A008 001535C8  48 0A 27 69 */	bl func_8022C770
/* 8018A00C 001535CC  4B FA B5 E9 */	bl func_801355F4
/* 8018A010 001535D0  7C 64 1B 78 */	mr r4, r3
/* 8018A014 001535D4  38 61 00 10 */	addi r3, r1, 0x10
/* 8018A018 001535D8  48 04 89 E5 */	bl func_801D29FC
/* 8018A01C 001535DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A020 001535E0  38 61 00 10 */	addi r3, r1, 0x10
/* 8018A024 001535E4  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 8018A028 001535E8  38 80 FF FF */	li r4, -1
/* 8018A02C 001535EC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8018A030 001535F0  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8018A034 001535F4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8018A038 001535F8  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 8018A03C 001535FC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 8018A040 00153600  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 8018A044 00153604  88 01 00 24 */	lbz r0, 0x24(r1)
/* 8018A048 00153608  98 1F 00 C4 */	stb r0, 0xc4(r31)
/* 8018A04C 0015360C  88 01 00 25 */	lbz r0, 0x25(r1)
/* 8018A050 00153610  98 1F 00 C5 */	stb r0, 0xc5(r31)
/* 8018A054 00153614  48 04 89 E5 */	bl func_801D2A38
/* 8018A058 00153618  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 8018A05C 0015361C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A060 00153620  81 8C 00 08 */	lwz r12, 8(r12)
/* 8018A064 00153624  7D 89 03 A6 */	mtctr r12
/* 8018A068 00153628  4E 80 04 21 */	bctrl 
/* 8018A06C 0015362C  38 60 00 29 */	li r3, 0x29
/* 8018A070 00153630  4B FA E0 09 */	bl func_80138078
/* 8018A074 00153634  2C 1F 00 00 */	cmpwi r31, 0
/* 8018A078 00153638  7F E4 FB 78 */	mr r4, r31
/* 8018A07C 0015363C  41 82 00 08 */	beq .L_8018A084
/* 8018A080 00153640  38 9F 00 70 */	addi r4, r31, 0x70
.L_8018A084:
/* 8018A084 00153644  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8018A088 00153648  38 A0 00 0D */	li r5, 0xd
/* 8018A08C 0015364C  38 C0 00 00 */	li r6, 0
/* 8018A090 00153650  48 30 BE 25 */	bl func_80495EB4
/* 8018A094 00153654  38 7F 00 78 */	addi r3, r31, 0x78
/* 8018A098 00153658  48 2D 57 79 */	bl func_8045F810
/* 8018A09C 0015365C  38 61 00 08 */	addi r3, r1, 8
/* 8018A0A0 00153660  38 80 FF FF */	li r4, -1
/* 8018A0A4 00153664  48 2D 58 25 */	bl func_8045F8C8
/* 8018A0A8 00153668  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8018A0AC 0015366C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8018A0B0 00153670  7C 08 03 A6 */	mtlr r0
/* 8018A0B4 00153674  38 21 00 60 */	addi r1, r1, 0x60
/* 8018A0B8 00153678  4E 80 00 20 */	blr 

.global func_8018A0BC
func_8018A0BC:
/* 8018A0BC 0015367C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A0C0 00153680  7C 08 02 A6 */	mflr r0
/* 8018A0C4 00153684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A0C8 00153688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A0CC 0015368C  7C 7F 1B 78 */	mr r31, r3
/* 8018A0D0 00153690  48 2B E9 75 */	bl func_80448A44
/* 8018A0D4 00153694  2C 1F 00 00 */	cmpwi r31, 0
/* 8018A0D8 00153698  7F E4 FB 78 */	mr r4, r31
/* 8018A0DC 0015369C  41 82 00 08 */	beq .L_8018A0E4
/* 8018A0E0 001536A0  38 9F 00 70 */	addi r4, r31, 0x70
.L_8018A0E4:
/* 8018A0E4 001536A4  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 8018A0E8 001536A8  48 30 BE 69 */	bl func_80495F50
/* 8018A0EC 001536AC  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A0F0 001536B0  48 0A 27 6D */	bl func_8022C85C
/* 8018A0F4 001536B4  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 8018A0F8 001536B8  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A0FC 001536BC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018A100 001536C0  7D 89 03 A6 */	mtctr r12
/* 8018A104 001536C4  4E 80 04 21 */	bctrl 
/* 8018A108 001536C8  38 7F 00 78 */	addi r3, r31, 0x78
/* 8018A10C 001536CC  48 2D 56 6D */	bl func_8045F778
/* 8018A110 001536D0  38 00 00 00 */	li r0, 0
/* 8018A114 001536D4  90 0D AA 58 */	stw r0, lbl_80666BD8@sda21(r13)
/* 8018A118 001536D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A11C 001536DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A120 001536E0  7C 08 03 A6 */	mtlr r0
/* 8018A124 001536E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A128 001536E8  4E 80 00 20 */	blr 

.global func_8018A12C
func_8018A12C:
/* 8018A12C 001536EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A130 001536F0  7C 08 02 A6 */	mflr r0
/* 8018A134 001536F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A138 001536F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A13C 001536FC  7C 7F 1B 78 */	mr r31, r3
/* 8018A140 00153700  4B EB 63 A9 */	bl func_800404E8
/* 8018A144 00153704  4B EB 85 AD */	bl func_800426F0
/* 8018A148 00153708  2C 03 00 00 */	cmpwi r3, 0
/* 8018A14C 0015370C  40 82 00 A0 */	bne .L_8018A1EC
/* 8018A150 00153710  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8018A154 00153714  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8018A158 00153718  41 82 00 08 */	beq .L_8018A160
/* 8018A15C 0015371C  48 00 00 90 */	b .L_8018A1EC
.L_8018A160:
/* 8018A160 00153720  4B FB 1C F1 */	bl func_8013BE50
/* 8018A164 00153724  2C 03 00 00 */	cmpwi r3, 0
/* 8018A168 00153728  41 82 00 84 */	beq .L_8018A1EC
/* 8018A16C 0015372C  48 00 20 15 */	bl func_8018C180
/* 8018A170 00153730  2C 03 00 00 */	cmpwi r3, 0
/* 8018A174 00153734  40 82 00 78 */	bne .L_8018A1EC
/* 8018A178 00153738  48 00 12 21 */	bl func_8018B398
/* 8018A17C 0015373C  2C 03 00 00 */	cmpwi r3, 0
/* 8018A180 00153740  41 82 00 08 */	beq .L_8018A188
/* 8018A184 00153744  48 00 00 68 */	b .L_8018A1EC
.L_8018A188:
/* 8018A188 00153748  88 1F 00 C8 */	lbz r0, 0xc8(r31)
/* 8018A18C 0015374C  2C 00 00 00 */	cmpwi r0, 0
/* 8018A190 00153750  41 82 00 20 */	beq .L_8018A1B0
/* 8018A194 00153754  2C 00 00 01 */	cmpwi r0, 1
/* 8018A198 00153758  41 82 00 24 */	beq .L_8018A1BC
/* 8018A19C 0015375C  2C 00 00 02 */	cmpwi r0, 2
/* 8018A1A0 00153760  41 82 00 28 */	beq .L_8018A1C8
/* 8018A1A4 00153764  2C 00 00 03 */	cmpwi r0, 3
/* 8018A1A8 00153768  41 82 00 2C */	beq .L_8018A1D4
/* 8018A1AC 0015376C  48 00 00 30 */	b .L_8018A1DC
.L_8018A1B0:
/* 8018A1B0 00153770  7F E3 FB 78 */	mr r3, r31
/* 8018A1B4 00153774  48 00 00 4D */	bl func_8018A200
/* 8018A1B8 00153778  48 00 00 24 */	b .L_8018A1DC
.L_8018A1BC:
/* 8018A1BC 0015377C  7F E3 FB 78 */	mr r3, r31
/* 8018A1C0 00153780  48 00 00 89 */	bl func_8018A248
/* 8018A1C4 00153784  48 00 00 18 */	b .L_8018A1DC
.L_8018A1C8:
/* 8018A1C8 00153788  7F E3 FB 78 */	mr r3, r31
/* 8018A1CC 0015378C  48 00 00 F5 */	bl func_8018A2C0
/* 8018A1D0 00153790  48 00 00 0C */	b .L_8018A1DC
.L_8018A1D4:
/* 8018A1D4 00153794  7F E3 FB 78 */	mr r3, r31
/* 8018A1D8 00153798  48 00 02 C9 */	bl func_8018A4A0
.L_8018A1DC:
/* 8018A1DC 0015379C  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A1E0 001537A0  48 0A 25 E1 */	bl func_8022C7C0
/* 8018A1E4 001537A4  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A1E8 001537A8  48 04 7E 45 */	bl func_801D202C
.L_8018A1EC:
/* 8018A1EC 001537AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A1F0 001537B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A1F4 001537B4  7C 08 03 A6 */	mtlr r0
/* 8018A1F8 001537B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A1FC 001537BC  4E 80 00 20 */	blr 

.global func_8018A200
func_8018A200:
/* 8018A200 001537C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A204 001537C4  7C 08 02 A6 */	mflr r0
/* 8018A208 001537C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A20C 001537CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A210 001537D0  7C 7F 1B 78 */	mr r31, r3
/* 8018A214 001537D4  38 63 00 88 */	addi r3, r3, 0x88
/* 8018A218 001537D8  48 0A 26 B9 */	bl func_8022C8D0
/* 8018A21C 001537DC  2C 03 00 00 */	cmpwi r3, 0
/* 8018A220 001537E0  41 82 00 14 */	beq .L_8018A234
/* 8018A224 001537E4  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A228 001537E8  48 0A 26 B9 */	bl func_8022C8E0
/* 8018A22C 001537EC  38 00 00 01 */	li r0, 1
/* 8018A230 001537F0  98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_8018A234:
/* 8018A234 001537F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A238 001537F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A23C 001537FC  7C 08 03 A6 */	mtlr r0
/* 8018A240 00153800  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A244 00153804  4E 80 00 20 */	blr 

.global func_8018A248
func_8018A248:
/* 8018A248 00153808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A24C 0015380C  7C 08 02 A6 */	mflr r0
/* 8018A250 00153810  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A254 00153814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018A258 00153818  7C 7F 1B 78 */	mr r31, r3
/* 8018A25C 0015381C  38 63 00 88 */	addi r3, r3, 0x88
/* 8018A260 00153820  48 0A 26 79 */	bl func_8022C8D8
/* 8018A264 00153824  2C 03 00 00 */	cmpwi r3, 0
/* 8018A268 00153828  41 82 00 44 */	beq .L_8018A2AC
/* 8018A26C 0015382C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A270 00153830  38 80 00 01 */	li r4, 1
/* 8018A274 00153834  48 04 7E F9 */	bl func_801D216C
/* 8018A278 00153838  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8018A27C 0015383C  38 61 00 08 */	addi r3, r1, 8
/* 8018A280 00153840  38 9F 00 88 */	addi r4, r31, 0x88
/* 8018A284 00153844  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8018A288 00153848  48 0A 26 A9 */	bl func_8022C930
/* 8018A28C 0015384C  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 8018A290 00153850  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A294 00153854  38 81 00 08 */	addi r4, r1, 8
/* 8018A298 00153858  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8018A29C 0015385C  7D 89 03 A6 */	mtctr r12
/* 8018A2A0 00153860  4E 80 04 21 */	bctrl 
/* 8018A2A4 00153864  38 00 00 02 */	li r0, 2
/* 8018A2A8 00153868  98 1F 00 C8 */	stb r0, 0xc8(r31)
.L_8018A2AC:
/* 8018A2AC 0015386C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A2B0 00153870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018A2B4 00153874  7C 08 03 A6 */	mtlr r0
/* 8018A2B8 00153878  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A2BC 0015387C  4E 80 00 20 */	blr 

.global func_8018A2C0
func_8018A2C0:
/* 8018A2C0 00153880  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8018A2C4 00153884  7C 08 02 A6 */	mflr r0
/* 8018A2C8 00153888  90 01 00 34 */	stw r0, 0x34(r1)
/* 8018A2CC 0015388C  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 8018A2D0 00153890  7C 7F 1B 78 */	mr r31, r3
/* 8018A2D4 00153894  4B EF CF 65 */	bl func_80087238
/* 8018A2D8 00153898  7C 7E 1B 78 */	mr r30, r3
/* 8018A2DC 0015389C  38 60 FF FF */	li r3, -1
/* 8018A2E0 001538A0  4B EF CC BD */	bl func_80086F9C
/* 8018A2E4 001538A4  2C 03 00 00 */	cmpwi r3, 0
/* 8018A2E8 001538A8  41 82 00 34 */	beq .L_8018A31C
/* 8018A2EC 001538AC  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 8018A2F0 001538B0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8018A2F4 001538B4  70 A4 80 04 */	andi. r4, r5, 0x8004
/* 8018A2F8 001538B8  54 A3 03 DE */	rlwinm r3, r5, 0, 0xf, 0xf
/* 8018A2FC 001538BC  50 A3 07 38 */	rlwimi r3, r5, 0, 0x1c, 0x1c
/* 8018A300 001538C0  54 05 5F FE */	rlwinm r5, r0, 0xb, 0x1f, 0x1f
/* 8018A304 001538C4  54 06 57 FE */	rlwinm r6, r0, 0xa, 0x1f, 0x1f
/* 8018A308 001538C8  30 04 FF FF */	addic r0, r4, -1
/* 8018A30C 001538CC  7C 80 21 10 */	subfe r4, r0, r4
/* 8018A310 001538D0  30 03 FF FF */	addic r0, r3, -1
/* 8018A314 001538D4  7C 00 19 10 */	subfe r0, r0, r3
/* 8018A318 001538D8  48 00 00 30 */	b .L_8018A348
.L_8018A31C:
/* 8018A31C 001538DC  80 BE 01 04 */	lwz r5, 0x104(r30)
/* 8018A320 001538E0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8018A324 001538E4  70 A4 80 04 */	andi. r4, r5, 0x8004
/* 8018A328 001538E8  54 A3 03 DE */	rlwinm r3, r5, 0, 0xf, 0xf
/* 8018A32C 001538EC  50 A3 07 38 */	rlwimi r3, r5, 0, 0x1c, 0x1c
/* 8018A330 001538F0  54 05 E7 FE */	rlwinm r5, r0, 0x1c, 0x1f, 0x1f
/* 8018A334 001538F4  54 06 DF FE */	rlwinm r6, r0, 0x1b, 0x1f, 0x1f
/* 8018A338 001538F8  30 04 FF FF */	addic r0, r4, -1
/* 8018A33C 001538FC  7C 80 21 10 */	subfe r4, r0, r4
/* 8018A340 00153900  30 03 FF FF */	addic r0, r3, -1
/* 8018A344 00153904  7C 00 19 10 */	subfe r0, r0, r3
.L_8018A348:
/* 8018A348 00153908  2C 04 00 00 */	cmpwi r4, 0
/* 8018A34C 0015390C  41 82 00 54 */	beq .L_8018A3A0
/* 8018A350 00153910  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8018A354 00153914  34 03 FF FF */	addic. r0, r3, -1
/* 8018A358 00153918  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 8018A35C 0015391C  40 80 00 0C */	bge .L_8018A368
/* 8018A360 00153920  38 00 00 02 */	li r0, 2
/* 8018A364 00153924  90 1F 00 CC */	stw r0, 0xcc(r31)
.L_8018A368:
/* 8018A368 00153928  38 60 00 01 */	li r3, 1
/* 8018A36C 0015392C  4B FA DD 0D */	bl func_80138078
/* 8018A370 00153930  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8018A374 00153934  38 61 00 14 */	addi r3, r1, 0x14
/* 8018A378 00153938  38 9F 00 88 */	addi r4, r31, 0x88
/* 8018A37C 0015393C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8018A380 00153940  48 0A 25 B1 */	bl func_8022C930
/* 8018A384 00153944  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 8018A388 00153948  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A38C 0015394C  38 81 00 14 */	addi r4, r1, 0x14
/* 8018A390 00153950  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8018A394 00153954  7D 89 03 A6 */	mtctr r12
/* 8018A398 00153958  4E 80 04 21 */	bctrl 
/* 8018A39C 0015395C  48 00 00 F0 */	b .L_8018A48C
.L_8018A3A0:
/* 8018A3A0 00153960  2C 00 00 00 */	cmpwi r0, 0
/* 8018A3A4 00153964  41 82 00 58 */	beq .L_8018A3FC
/* 8018A3A8 00153968  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 8018A3AC 0015396C  38 03 00 01 */	addi r0, r3, 1
/* 8018A3B0 00153970  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 8018A3B4 00153974  2C 00 00 02 */	cmpwi r0, 2
/* 8018A3B8 00153978  40 81 00 0C */	ble .L_8018A3C4
/* 8018A3BC 0015397C  38 00 00 00 */	li r0, 0
/* 8018A3C0 00153980  90 1F 00 CC */	stw r0, 0xcc(r31)
.L_8018A3C4:
/* 8018A3C4 00153984  38 60 00 01 */	li r3, 1
/* 8018A3C8 00153988  4B FA DC B1 */	bl func_80138078
/* 8018A3CC 0015398C  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8018A3D0 00153990  38 61 00 08 */	addi r3, r1, 8
/* 8018A3D4 00153994  38 9F 00 88 */	addi r4, r31, 0x88
/* 8018A3D8 00153998  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8018A3DC 0015399C  48 0A 25 55 */	bl func_8022C930
/* 8018A3E0 001539A0  81 9F 00 B0 */	lwz r12, 0xb0(r31)
/* 8018A3E4 001539A4  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A3E8 001539A8  38 81 00 08 */	addi r4, r1, 8
/* 8018A3EC 001539AC  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8018A3F0 001539B0  7D 89 03 A6 */	mtctr r12
/* 8018A3F4 001539B4  4E 80 04 21 */	bctrl 
/* 8018A3F8 001539B8  48 00 00 94 */	b .L_8018A48C
.L_8018A3FC:
/* 8018A3FC 001539BC  2C 05 00 00 */	cmpwi r5, 0
/* 8018A400 001539C0  41 82 00 68 */	beq .L_8018A468
/* 8018A404 001539C4  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8018A408 001539C8  2C 00 00 00 */	cmpwi r0, 0
/* 8018A40C 001539CC  41 82 00 18 */	beq .L_8018A424
/* 8018A410 001539D0  2C 00 00 01 */	cmpwi r0, 1
/* 8018A414 001539D4  41 82 00 24 */	beq .L_8018A438
/* 8018A418 001539D8  2C 00 00 02 */	cmpwi r0, 2
/* 8018A41C 001539DC  41 82 00 2C */	beq .L_8018A448
/* 8018A420 001539E0  48 00 00 6C */	b .L_8018A48C
.L_8018A424:
/* 8018A424 001539E4  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 8018A428 001539E8  4B FA 9B FD */	bl func_80134024
/* 8018A42C 001539EC  38 60 00 03 */	li r3, 3
/* 8018A430 001539F0  4B FA DC 49 */	bl func_80138078
/* 8018A434 001539F4  48 00 00 58 */	b .L_8018A48C
.L_8018A438:
/* 8018A438 001539F8  4B FA 9C C9 */	bl func_80134100
/* 8018A43C 001539FC  38 60 00 03 */	li r3, 3
/* 8018A440 00153A00  4B FA DC 39 */	bl func_80138078
/* 8018A444 00153A04  48 00 00 48 */	b .L_8018A48C
.L_8018A448:
/* 8018A448 00153A08  38 00 00 03 */	li r0, 3
/* 8018A44C 00153A0C  98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 8018A450 00153A10  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A454 00153A14  48 0A 24 B5 */	bl func_8022C908
/* 8018A458 00153A18  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A45C 00153A1C  38 80 00 00 */	li r4, 0
/* 8018A460 00153A20  48 04 7D 0D */	bl func_801D216C
/* 8018A464 00153A24  48 00 00 28 */	b .L_8018A48C
.L_8018A468:
/* 8018A468 00153A28  2C 06 00 00 */	cmpwi r6, 0
/* 8018A46C 00153A2C  41 82 00 20 */	beq .L_8018A48C
/* 8018A470 00153A30  38 00 00 03 */	li r0, 3
/* 8018A474 00153A34  98 1F 00 C8 */	stb r0, 0xc8(r31)
/* 8018A478 00153A38  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A47C 00153A3C  48 0A 24 8D */	bl func_8022C908
/* 8018A480 00153A40  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A484 00153A44  38 80 00 00 */	li r4, 0
/* 8018A488 00153A48  48 04 7C E5 */	bl func_801D216C
.L_8018A48C:
/* 8018A48C 00153A4C  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 8018A490 00153A50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8018A494 00153A54  7C 08 03 A6 */	mtlr r0
/* 8018A498 00153A58  38 21 00 30 */	addi r1, r1, 0x30
/* 8018A49C 00153A5C  4E 80 00 20 */	blr 

.global func_8018A4A0
func_8018A4A0:
/* 8018A4A0 00153A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018A4A4 00153A64  7C 08 02 A6 */	mflr r0
/* 8018A4A8 00153A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018A4AC 00153A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018A4B0 00153A70  7C 7F 1B 78 */	mr r31, r3
/* 8018A4B4 00153A74  38 63 00 88 */	addi r3, r3, 0x88
/* 8018A4B8 00153A78  48 0A 24 21 */	bl func_8022C8D8
/* 8018A4BC 00153A7C  2C 03 00 00 */	cmpwi r3, 0
/* 8018A4C0 00153A80  41 82 00 14 */	beq .L_8018A4D4
/* 8018A4C4 00153A84  38 60 00 04 */	li r3, 4
/* 8018A4C8 00153A88  38 00 00 01 */	li r0, 1
/* 8018A4CC 00153A8C  98 7F 00 C8 */	stb r3, 0xc8(r31)
/* 8018A4D0 00153A90  98 1F 00 64 */	stb r0, 0x64(r31)
.L_8018A4D4:
/* 8018A4D4 00153A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018A4D8 00153A98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018A4DC 00153A9C  7C 08 03 A6 */	mtlr r0
/* 8018A4E0 00153AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8018A4E4 00153AA4  4E 80 00 20 */	blr

.global func_8018A4E8
func_8018A4E8:
/* 8018A4E8 00153AA8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8018A4EC 00153AAC  7C 08 02 A6 */	mflr r0
/* 8018A4F0 00153AB0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8018A4F4 00153AB4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8018A4F8 00153AB8  7C 7F 1B 78 */	mr r31, r3
/* 8018A4FC 00153ABC  4B EB 5F ED */	bl func_800404E8
/* 8018A500 00153AC0  4B EB 81 F1 */	bl func_800426F0
/* 8018A504 00153AC4  2C 03 00 00 */	cmpwi r3, 0
/* 8018A508 00153AC8  40 82 00 70 */	bne .L_8018A578
/* 8018A50C 00153ACC  80 0D A5 A8 */	lwz r0, lbl_80666728@sda21(r13)
/* 8018A510 00153AD0  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8018A514 00153AD4  41 82 00 08 */	beq .L_8018A51C
/* 8018A518 00153AD8  48 00 00 60 */	b .L_8018A578
.L_8018A51C:
/* 8018A51C 00153ADC  4B FB 19 35 */	bl func_8013BE50
/* 8018A520 00153AE0  2C 03 00 00 */	cmpwi r3, 0
/* 8018A524 00153AE4  41 82 00 54 */	beq .L_8018A578
/* 8018A528 00153AE8  38 60 00 00 */	li r3, 0
/* 8018A52C 00153AEC  38 80 00 00 */	li r4, 0
/* 8018A530 00153AF0  38 A0 00 00 */	li r5, 0
/* 8018A534 00153AF4  48 19 3D 0D */	bl GXSetZMode
/* 8018A538 00153AF8  38 61 00 08 */	addi r3, r1, 8
/* 8018A53C 00153AFC  48 27 E1 2D */	bl __ct__Q34nw4r3lyt8DrawInfoFv
/* 8018A540 00153B00  38 61 00 08 */	addi r3, r1, 8
/* 8018A544 00153B04  4B FA CD 0D */	bl func_80137250
/* 8018A548 00153B08  38 7F 00 88 */	addi r3, r31, 0x88
/* 8018A54C 00153B0C  38 81 00 08 */	addi r4, r1, 8
/* 8018A550 00153B10  48 0A 22 E1 */	bl func_8022C830
/* 8018A554 00153B14  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 8018A558 00153B18  2C 00 00 00 */	cmpwi r0, 0
/* 8018A55C 00153B1C  41 80 00 10 */	blt .L_8018A56C
/* 8018A560 00153B20  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 8018A564 00153B24  38 81 00 08 */	addi r4, r1, 8
/* 8018A568 00153B28  48 04 7B 49 */	bl func_801D20B0
.L_8018A56C:
/* 8018A56C 00153B2C  38 61 00 08 */	addi r3, r1, 8
/* 8018A570 00153B30  38 80 FF FF */	li r4, -1
/* 8018A574 00153B34  48 27 E1 69 */	bl __dt__Q34nw4r3lyt8DrawInfoFv
.L_8018A578:
/* 8018A578 00153B38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8018A57C 00153B3C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8018A580 00153B40  7C 08 03 A6 */	mtlr r0
/* 8018A584 00153B44  38 21 00 70 */	addi r1, r1, 0x70
/* 8018A588 00153B48  4E 80 00 20 */	blr 

.global func_8018A58C
func_8018A58C:
/* 8018A58C 00153B4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A590 00153B50  7C 08 02 A6 */	mflr r0
/* 8018A594 00153B54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A598 00153B58  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8018A59C 00153B5C  7C 7D 1B 78 */	mr r29, r3
/* 8018A5A0 00153B60  7C 9E 23 78 */	mr r30, r4
/* 8018A5A4 00153B64  7C BF 2B 78 */	mr r31, r5
/* 8018A5A8 00153B68  80 0D AA 58 */	lwz r0, lbl_80666BD8@sda21(r13)
/* 8018A5AC 00153B6C  2C 00 00 00 */	cmpwi r0, 0
/* 8018A5B0 00153B70  41 82 00 0C */	beq .L_8018A5BC
/* 8018A5B4 00153B74  38 60 00 00 */	li r3, 0
/* 8018A5B8 00153B78  48 00 00 3C */	b .L_8018A5F4
.L_8018A5BC:
/* 8018A5BC 00153B7C  48 2A CF F9 */	bl func_804375B4
/* 8018A5C0 00153B80  7C 64 1B 78 */	mr r4, r3
/* 8018A5C4 00153B84  38 60 00 D4 */	li r3, 0xd4
/* 8018A5C8 00153B88  48 2A A4 95 */	bl func_80434A5C
/* 8018A5CC 00153B8C  2C 03 00 00 */	cmpwi r3, 0
/* 8018A5D0 00153B90  41 82 00 10 */	beq .L_8018A5E0
/* 8018A5D4 00153B94  7F C4 F3 78 */	mr r4, r30
/* 8018A5D8 00153B98  7F E5 FB 78 */	mr r5, r31
/* 8018A5DC 00153B9C  4B FF F8 0D */	bl func_80189DE8
.L_8018A5E0:
/* 8018A5E0 00153BA0  90 6D AA 58 */	stw r3, lbl_80666BD8@sda21(r13)
/* 8018A5E4 00153BA4  7F A4 EB 78 */	mr r4, r29
/* 8018A5E8 00153BA8  38 A0 00 00 */	li r5, 0
/* 8018A5EC 00153BAC  48 2B A6 89 */	bl func_80444C74
/* 8018A5F0 00153BB0  80 6D AA 58 */	lwz r3, lbl_80666BD8@sda21(r13)
.L_8018A5F4:
/* 8018A5F4 00153BB4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8018A5F8 00153BB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A5FC 00153BBC  7C 08 03 A6 */	mtlr r0
/* 8018A600 00153BC0  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A604 00153BC4  4E 80 00 20 */	blr 

.global func_8018A608
func_8018A608:
/* 8018A608 00153BC8  80 6D AA 58 */	lwz r3, lbl_80666BD8@sda21(r13)
/* 8018A60C 00153BCC  4E 80 00 20 */	blr 

.global func_8018A610
func_8018A610:
/* 8018A610 00153BD0  38 63 FF 94 */	addi r3, r3, -108
/* 8018A614 00153BD4  4B FF F8 C4 */	b func_80189ED8

.global func_8018A618
func_8018A618:
/* 8018A618 00153BD8  38 63 FF 90 */	addi r3, r3, -112
/* 8018A61C 00153BDC  4B FF FE CC */	b func_8018A4E8

.global func_8018A620
func_8018A620:
/* 8018A620 00153BE0  38 63 FF 90 */	addi r3, r3, -112
/* 8018A624 00153BE4  4B FF F8 B4 */	b func_80189ED8

.section extab, "wa"  # 0x800066E0 - 0x80021020

.global lbl_8000EC4C
lbl_8000EC4C:
	.4byte 0x20080000
	.4byte 0x000000B8
	.4byte 0x00000038
	.4byte 0x000000C0
	.4byte 0x0000002C
	.4byte 0x000000CC
	.4byte 0x00000020
	.4byte 0
	.4byte 0x0780001C
	.4byte 0x00000088
	.4byte func_8022C71C
	.4byte 0x0780001C
	.4byte 0x00000078
	.4byte func_8045F580
	.4byte 0x0680001C
	.4byte 0x00000070
	.4byte func_8004031C
	.4byte 0x0680001C
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent
	.4byte 0x8680001C
	.4byte 0
	.4byte func_8012235C

.global lbl_8000ECA8
lbl_8000ECA8:
	.4byte 0x10080000
	.4byte 0x00000038
	.4byte 0x00000020
	.4byte 0x00000044
	.4byte 0x0000002C
	.4byte 0x00000050
	.4byte 0x00000044
	.4byte 0
	.4byte 0x8780001E
	.4byte 0x000000B0
	.4byte func_801D2A38
	.4byte 0x0780001E
	.4byte 0x000000B0
	.4byte func_801D2A38
	.4byte 0x8780001E
	.4byte 0x00000088
	.4byte func_8022C71C
	.4byte 0x0780001E
	.4byte 0x000000B0
	.4byte func_801D2A38
	.4byte 0x0780001E
	.4byte 0x00000088
	.4byte func_8022C71C
	.4byte 0x0780001E
	.4byte 0x00000078
	.4byte func_8045F580
	.4byte 0x0680001E
	.4byte 0x00000070
	.4byte func_8004031C
	.4byte 0x8680001E
	.4byte 0x0000006C
	.4byte __dt__IWorkEvent

.global lbl_8000ED28
lbl_8000ED28:
	.4byte 0x08080000
	.4byte 0x00000048
	.4byte 0x00410010
	.4byte 0
	.4byte 0x82000008
	.4byte func_8045F8C8

.global lbl_8000ED40
lbl_8000ED40:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000ED48
lbl_8000ED48:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000ED50
lbl_8000ED50:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000ED58
lbl_8000ED58:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000ED60
lbl_8000ED60:
	.4byte 0x10080000
	.4byte 0

.global lbl_8000ED68
lbl_8000ED68:
	.4byte 0x08080000
	.4byte 0

.global lbl_8000ED70
lbl_8000ED70:
	.4byte 0x08080000
	.4byte 0x00000060
	.4byte 0x00090010
	.4byte 0
	.4byte 0x82000008
	.4byte __dt__Q34nw4r3lyt8DrawInfoFv

.global lbl_8000ED88
lbl_8000ED88:
	.4byte 0x18080000
	.4byte 0



.section extabindex_, "wa"  # 0x80021020 - 0x80039220

.4byte func_80189DE8
	.4byte 0x000000F0
	.4byte lbl_8000EC4C
	.4byte func_80189ED8
	.4byte 0x00000078
	.4byte lbl_8000ECA8
	.4byte func_80189F50
	.4byte 0x0000016C
	.4byte lbl_8000ED28
	.4byte func_8018A0BC
	.4byte 0x00000070
	.4byte lbl_8000ED40
	.4byte func_8018A12C
	.4byte 0x000000D4
	.4byte lbl_8000ED48
	.4byte func_8018A200
	.4byte 0x00000048
	.4byte lbl_8000ED50
	.4byte func_8018A248
	.4byte 0x00000078
	.4byte lbl_8000ED58
	.4byte func_8018A2C0
	.4byte 0x000001E0
	.4byte lbl_8000ED60
	.4byte func_8018A4A0
	.4byte 0x00000048
	.4byte lbl_8000ED68
	.4byte func_8018A4E8
	.4byte 0x000000A4
	.4byte lbl_8000ED70
	.4byte func_8018A58C
	.4byte 0x0000007C
	.4byte lbl_8000ED88