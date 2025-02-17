.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CDeviceBase, global
/* 80447900 00410EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447904 00410EC4  7C 08 02 A6 */	mflr r0
/* 80447908 00410EC8  2C 03 00 00 */	cmpwi r3, 0
/* 8044790C 00410ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447910 00410ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447914 00410ED4  7C 9F 23 78 */	mr r31, r4
/* 80447918 00410ED8  93 C1 00 08 */	stw r30, 8(r1)
/* 8044791C 00410EDC  7C 7E 1B 78 */	mr r30, r3
/* 80447920 00410EE0  41 82 00 1C */	beq .L_8044793C
/* 80447924 00410EE4  38 80 00 00 */	li r4, 0
/* 80447928 00410EE8  4B FF 01 A1 */	bl __dt__CWorkThread
/* 8044792C 00410EEC  2C 1F 00 00 */	cmpwi r31, 0
/* 80447930 00410EF0  40 81 00 0C */	ble .L_8044793C
/* 80447934 00410EF4  7F C3 F3 78 */	mr r3, r30
/* 80447938 00410EF8  4B FE D2 F5 */	bl __dl__FPv
.L_8044793C:
/* 8044793C 00410EFC  7F C3 F3 78 */	mr r3, r30
/* 80447940 00410F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447944 00410F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80447948 00410F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8044794C 00410F0C  7C 08 03 A6 */	mtlr r0
/* 80447950 00410F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80447954 00410F14  4E 80 00 20 */	blr 
.endfn __dt__CDeviceBase

.fn __dt__CDeviceRemotePad, global
/* 80447958 00410F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8044795C 00410F1C  7C 08 02 A6 */	mflr r0
/* 80447960 00410F20  2C 03 00 00 */	cmpwi r3, 0
/* 80447964 00410F24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447968 00410F28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8044796C 00410F2C  7C 9F 23 78 */	mr r31, r4
/* 80447970 00410F30  93 C1 00 08 */	stw r30, 8(r1)
/* 80447974 00410F34  7C 7E 1B 78 */	mr r30, r3
/* 80447978 00410F38  41 82 00 28 */	beq .L_804479A0
/* 8044797C 00410F3C  38 00 00 00 */	li r0, 0
/* 80447980 00410F40  90 0D BD 98 */	stw r0, lbl_80667F18@sda21(r13)
/* 80447984 00410F44  41 82 00 0C */	beq .L_80447990
/* 80447988 00410F48  38 80 00 00 */	li r4, 0
/* 8044798C 00410F4C  4B FF 01 3D */	bl __dt__CWorkThread
.L_80447990:
/* 80447990 00410F50  2C 1F 00 00 */	cmpwi r31, 0
/* 80447994 00410F54  40 81 00 0C */	ble .L_804479A0
/* 80447998 00410F58  7F C3 F3 78 */	mr r3, r30
/* 8044799C 00410F5C  4B FE D2 91 */	bl __dl__FPv
.L_804479A0:
/* 804479A0 00410F60  7F C3 F3 78 */	mr r3, r30
/* 804479A4 00410F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804479A8 00410F68  83 C1 00 08 */	lwz r30, 8(r1)
/* 804479AC 00410F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804479B0 00410F70  7C 08 03 A6 */	mtlr r0
/* 804479B4 00410F74  38 21 00 10 */	addi r1, r1, 0x10
/* 804479B8 00410F78  4E 80 00 20 */	blr 
.endfn __dt__CDeviceRemotePad

.fn func_804479BC, global
/* 804479BC 00410F7C  80 6D BD 98 */	lwz r3, lbl_80667F18@sda21(r13)
/* 804479C0 00410F80  4E 80 00 20 */	blr 
.endfn func_804479BC

.fn func_804479C4, global
/* 804479C4 00410F84  80 8D BD 98 */	lwz r4, lbl_80667F18@sda21(r13)
/* 804479C8 00410F88  54 60 10 3A */	slwi r0, r3, 2
/* 804479CC 00410F8C  7C 64 02 14 */	add r3, r4, r0
/* 804479D0 00410F90  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 804479D4 00410F94  88 63 00 ED */	lbz r3, 0xed(r3)
/* 804479D8 00410F98  4E 80 00 20 */	blr 
.endfn func_804479C4

.fn func_804479DC, global
/* 804479DC 00410F9C  80 8D BD 98 */	lwz r4, lbl_80667F18@sda21(r13)
/* 804479E0 00410FA0  54 60 10 3A */	slwi r0, r3, 2
/* 804479E4 00410FA4  7C 64 02 14 */	add r3, r4, r0
/* 804479E8 00410FA8  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 804479EC 00410FAC  80 63 00 00 */	lwz r3, 0(r3)
/* 804479F0 00410FB0  4E 80 00 20 */	blr 
.endfn func_804479DC

.fn func_804479F4, global
/* 804479F4 00410FB4  80 8D BD 98 */	lwz r4, lbl_80667F18@sda21(r13)
/* 804479F8 00410FB8  54 60 10 3A */	slwi r0, r3, 2
/* 804479FC 00410FBC  7C 64 02 14 */	add r3, r4, r0
/* 80447A00 00410FC0  80 63 01 CC */	lwz r3, 0x1cc(r3)
/* 80447A04 00410FC4  80 63 00 04 */	lwz r3, 4(r3)
/* 80447A08 00410FC8  4E 80 00 20 */	blr 
.endfn func_804479F4

.fn func_80447A0C, global
/* 80447A0C 00410FCC  4B FF FB 80 */	b func_8044758C
.endfn func_80447A0C

.fn func_80447A10, global
/* 80447A10 00410FD0  38 03 FF FC */	addi r0, r3, -4
/* 80447A14 00410FD4  38 80 00 04 */	li r4, 4
/* 80447A18 00410FD8  7C 64 23 38 */	orc r4, r3, r4
/* 80447A1C 00410FDC  54 00 F8 7E */	srwi r0, r0, 1
/* 80447A20 00410FE0  7C 00 20 50 */	subf r0, r0, r4
/* 80447A24 00410FE4  54 64 07 BE */	clrlwi r4, r3, 0x1e
/* 80447A28 00410FE8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80447A2C 00410FEC  4B FF FA EC */	b func_80447518
.endfn func_80447A10

.fn func_80447A30, global
/* 80447A30 00410FF0  4B FF ED 3C */	b func_8044676C
.endfn func_80447A30

.fn CDeviceRemotePad_wkUpdate, global
/* 80447A34 00410FF4  81 83 01 C8 */	lwz r12, 0x1c8(r3)
/* 80447A38 00410FF8  7D 89 03 A6 */	mtctr r12
/* 80447A3C 00410FFC  4E 80 04 20 */	bctr 
.endfn CDeviceRemotePad_wkUpdate

.fn CDeviceRemotePad_WorkThreadEvent4, global
/* 80447A40 00411000  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80447A44 00411004  7C 08 02 A6 */	mflr r0
/* 80447A48 00411008  90 01 00 24 */	stw r0, 0x24(r1)
/* 80447A4C 0041100C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80447A50 00411010  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80447A54 00411014  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80447A58 00411018  93 81 00 10 */	stw r28, 0x10(r1)
/* 80447A5C 0041101C  7C 7C 1B 78 */	mr r28, r3
/* 80447A60 00411020  48 00 57 E9 */	bl func_8044D248
/* 80447A64 00411024  2C 03 00 00 */	cmpwi r3, 0
/* 80447A68 00411028  41 82 00 58 */	beq .L_80447AC0
/* 80447A6C 0041102C  4B FE C9 35 */	bl Heap_getRegionIndex2
/* 80447A70 00411030  4B FF ED 85 */	bl func_804467F4
/* 80447A74 00411034  90 7C 01 C8 */	stw r3, 0x1c8(r28)
/* 80447A78 00411038  7F 9E E3 78 */	mr r30, r28
/* 80447A7C 0041103C  3B A0 00 00 */	li r29, 0
/* 80447A80 00411040  3B E0 00 04 */	li r31, 4
.L_80447A84:
/* 80447A84 00411044  38 1D FF FC */	addi r0, r29, -4
/* 80447A88 00411048  7F A3 FB 38 */	orc r3, r29, r31
/* 80447A8C 0041104C  54 00 F8 7E */	srwi r0, r0, 1
/* 80447A90 00411050  57 A4 07 BE */	clrlwi r4, r29, 0x1e
/* 80447A94 00411054  7C 00 18 50 */	subf r0, r0, r3
/* 80447A98 00411058  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80447A9C 0041105C  4B FF FA 7D */	bl func_80447518
/* 80447AA0 00411060  3B BD 00 01 */	addi r29, r29, 1
/* 80447AA4 00411064  90 7E 01 CC */	stw r3, 0x1cc(r30)
/* 80447AA8 00411068  28 1D 00 08 */	cmplwi r29, 8
/* 80447AAC 0041106C  3B DE 00 04 */	addi r30, r30, 4
/* 80447AB0 00411070  41 80 FF D4 */	blt .L_80447A84
/* 80447AB4 00411074  7F 83 E3 78 */	mr r3, r28
/* 80447AB8 00411078  4B FF 0F 41 */	bl CWorkThread_WorkThreadEvent4
/* 80447ABC 0041107C  48 00 00 08 */	b .L_80447AC4
.L_80447AC0:
/* 80447AC0 00411080  38 60 00 00 */	li r3, 0
.L_80447AC4:
/* 80447AC4 00411084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80447AC8 00411088  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80447ACC 0041108C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80447AD0 00411090  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80447AD4 00411094  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80447AD8 00411098  7C 08 03 A6 */	mtlr r0
/* 80447ADC 0041109C  38 21 00 20 */	addi r1, r1, 0x20
/* 80447AE0 004110A0  4E 80 00 20 */	blr 
.endfn CDeviceRemotePad_WorkThreadEvent4

.fn CDeviceRemotePad_WorkThreadEvent5, global
/* 80447AE4 004110A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80447AE8 004110A8  7C 08 02 A6 */	mflr r0
/* 80447AEC 004110AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80447AF0 004110B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80447AF4 004110B4  7C 7F 1B 78 */	mr r31, r3
/* 80447AF8 004110B8  80 83 00 60 */	lwz r4, 0x60(r3)
/* 80447AFC 004110BC  80 04 00 00 */	lwz r0, 0(r4)
/* 80447B00 004110C0  7C 00 20 40 */	cmplw r0, r4
/* 80447B04 004110C4  40 82 00 34 */	bne .L_80447B38
/* 80447B08 004110C8  4B FF C9 CD */	bl func_804444D4
/* 80447B0C 004110CC  2C 03 00 00 */	cmpwi r3, 0
/* 80447B10 004110D0  40 82 00 28 */	bne .L_80447B38
/* 80447B14 004110D4  48 01 18 DD */	bl func_804593F0
/* 80447B18 004110D8  2C 03 00 00 */	cmpwi r3, 0
/* 80447B1C 004110DC  40 82 00 1C */	bne .L_80447B38
/* 80447B20 004110E0  4B FF EE B1 */	bl func_804469D0
/* 80447B24 004110E4  38 00 00 00 */	li r0, 0
/* 80447B28 004110E8  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 80447B2C 004110EC  7F E3 FB 78 */	mr r3, r31
/* 80447B30 004110F0  4B FF 0E F5 */	bl CWorkThread_WorkThreadEvent5
/* 80447B34 004110F4  48 00 00 08 */	b .L_80447B3C
.L_80447B38:
/* 80447B38 004110F8  38 60 00 00 */	li r3, 0
.L_80447B3C:
/* 80447B3C 004110FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80447B40 00411100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80447B44 00411104  7C 08 03 A6 */	mtlr r0
/* 80447B48 00411108  38 21 00 10 */	addi r1, r1, 0x10
/* 80447B4C 0041110C  4E 80 00 20 */	blr 
.endfn CDeviceRemotePad_WorkThreadEvent5

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

#.balign 8

.obj CDeviceBase_typestr, global
	.asciz "CDeviceBase"
.endobj CDeviceBase_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CDeviceBase, global
	.4byte __RTTI__CDeviceBase
	.4byte 0
	.4byte __dt__CDeviceBase
	.4byte IWorkEvent_WorkEvent1
	.4byte IWorkEvent_OnFileEvent
	.4byte IWorkEvent_WorkEvent3
	.4byte IWorkEvent_WorkEvent4
	.4byte IWorkEvent_WorkEvent5
	.4byte IWorkEvent_WorkEvent6
	.4byte IWorkEvent_WorkEvent7
	.4byte IWorkEvent_WorkEvent8
	.4byte IWorkEvent_WorkEvent9
	.4byte IWorkEvent_WorkEvent10
	.4byte IWorkEvent_WorkEvent11
	.4byte IWorkEvent_WorkEvent12
	.4byte IWorkEvent_WorkEvent13
	.4byte IWorkEvent_WorkEvent14
	.4byte IWorkEvent_WorkEvent15
	.4byte IWorkEvent_WorkEvent16
	.4byte IWorkEvent_WorkEvent17
	.4byte IWorkEvent_WorkEvent18
	.4byte IWorkEvent_WorkEvent19
	.4byte IWorkEvent_WorkEvent20
	.4byte IWorkEvent_WorkEvent21
	.4byte IWorkEvent_WorkEvent22
	.4byte IWorkEvent_WorkEvent23
	.4byte IWorkEvent_WorkEvent24
	.4byte IWorkEvent_WorkEvent25
	.4byte IWorkEvent_WorkEvent26
	.4byte IWorkEvent_WorkEvent27
	.4byte IWorkEvent_WorkEvent28
	.4byte IWorkEvent_WorkEvent29
	.4byte IWorkEvent_WorkEvent30
	.4byte IWorkEvent_WorkEvent31
	.4byte CWorkThread_wkUpdate
	.4byte CWorkThread_WorkThreadEvent2
	.4byte CWorkThread_WorkThreadEvent3
	.4byte CWorkThread_WorkThreadEvent4
	.4byte CWorkThread_WorkThreadEvent5
	.4byte CWorkThread_WorkThreadEvent6
.endobj __vt__CDeviceBase

.obj CDeviceBase_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte __RTTI__CWorkThread
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CDeviceBase_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CDeviceBase, global
	.4byte CDeviceBase_typestr
	.4byte CDeviceBase_hierarchy
.endobj __RTTI__CDeviceBase


.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lbl_80667F18, global
	.skip 0x8
.endobj lbl_80667F18

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001CA1C", local
.hidden "@etb_8001CA1C"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CA1C"

.obj "@etb_8001CA24", local
.hidden "@etb_8001CA24"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001CA24"

.obj "@etb_8001CA2C", local
.hidden "@etb_8001CA2C"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001CA2C"

.obj "@etb_8001CA34", local
.hidden "@etb_8001CA34"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001CA34"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80034640", local
.hidden "@eti_80034640"
	.4byte __dt__CDeviceBase
	.4byte 0x00000058
	.4byte "@etb_8001CA1C"
.endobj "@eti_80034640"

.obj "@eti_8003464C", local
.hidden "@eti_8003464C"
	.4byte __dt__CDeviceRemotePad
	.4byte 0x00000064
	.4byte "@etb_8001CA24"
.endobj "@eti_8003464C"

.obj "@eti_80034658", local
.hidden "@eti_80034658"
	.4byte CDeviceRemotePad_WorkThreadEvent4
	.4byte 0x000000A4
	.4byte "@etb_8001CA2C"
.endobj "@eti_80034658"

.obj "@eti_80034664", local
.hidden "@eti_80034664"
	.4byte CDeviceRemotePad_WorkThreadEvent5
	.4byte 0x0000006C
	.4byte "@etb_8001CA34"
.endobj "@eti_80034664"
