.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __ct__CBattery, global
/* 802B91E8 002827A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B91EC 002827AC  7C 08 02 A6 */	mflr r0
/* 802B91F0 002827B0  3C A0 80 54 */	lis r5, __vt__CBattery@ha
/* 802B91F4 002827B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B91F8 002827B8  38 A5 EF A8 */	addi r5, r5, __vt__CBattery@l
/* 802B91FC 002827BC  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B9200 002827C0  7C 7E 1B 78 */	mr r30, r3
/* 802B9204 002827C4  7C 9F 23 78 */	mr r31, r4
/* 802B9208 002827C8  90 A3 00 00 */	stw r5, 0(r3)
/* 802B920C 002827CC  38 63 00 04 */	addi r3, r3, 4
/* 802B9210 002827D0  48 1A 63 55 */	bl __ct__UnkClass_8045F564
/* 802B9214 002827D4  38 80 00 00 */	li r4, 0
/* 802B9218 002827D8  38 00 00 01 */	li r0, 1
/* 802B921C 002827DC  90 9E 00 14 */	stw r4, 0x14(r30)
/* 802B9220 002827E0  7F C3 F3 78 */	mr r3, r30
/* 802B9224 002827E4  90 9E 00 18 */	stw r4, 0x18(r30)
/* 802B9228 002827E8  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 802B922C 002827EC  98 9E 00 20 */	stb r4, 0x20(r30)
/* 802B9230 002827F0  98 1E 00 21 */	stb r0, 0x21(r30)
/* 802B9234 002827F4  98 9E 00 22 */	stb r4, 0x22(r30)
/* 802B9238 002827F8  9B FE 00 24 */	stb r31, 0x24(r30)
/* 802B923C 002827FC  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B9240 00282800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9244 00282804  7C 08 03 A6 */	mtlr r0
/* 802B9248 00282808  38 21 00 10 */	addi r1, r1, 0x10
/* 802B924C 0028280C  4E 80 00 20 */	blr 
.endfn __ct__CBattery

.fn __dt__CBattery, global
/* 802B9250 00282810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9254 00282814  7C 08 02 A6 */	mflr r0
/* 802B9258 00282818  2C 03 00 00 */	cmpwi r3, 0
/* 802B925C 0028281C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9260 00282820  BF C1 00 08 */	stmw r30, 8(r1)
/* 802B9264 00282824  7C 7E 1B 78 */	mr r30, r3
/* 802B9268 00282828  7C 9F 23 78 */	mr r31, r4
/* 802B926C 0028282C  41 82 00 20 */	beq .L_802B928C
/* 802B9270 00282830  38 80 FF FF */	li r4, -1
/* 802B9274 00282834  38 63 00 04 */	addi r3, r3, 4
/* 802B9278 00282838  48 1A 63 09 */	bl __dt__UnkClass_8045F564
/* 802B927C 0028283C  2C 1F 00 00 */	cmpwi r31, 0
/* 802B9280 00282840  40 81 00 0C */	ble .L_802B928C
/* 802B9284 00282844  7F C3 F3 78 */	mr r3, r30
/* 802B9288 00282848  48 17 B9 A5 */	bl __dl__FPv
.L_802B928C:
/* 802B928C 0028284C  7F C3 F3 78 */	mr r3, r30
/* 802B9290 00282850  BB C1 00 08 */	lmw r30, 8(r1)
/* 802B9294 00282854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B9298 00282858  7C 08 03 A6 */	mtlr r0
/* 802B929C 0028285C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B92A0 00282860  4E 80 00 20 */	blr 
.endfn __dt__CBattery

.fn func_802B92A4, global
/* 802B92A4 00282864  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B92A8 00282868  7C 08 02 A6 */	mflr r0
/* 802B92AC 0028286C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B92B0 00282870  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B92B4 00282874  7C 7F 1B 78 */	mr r31, r3
/* 802B92B8 00282878  48 17 E2 FD */	bl getHeapIndex
/* 802B92BC 0028287C  3C 80 80 51 */	lis r4, CBattery_strpool@ha
/* 802B92C0 00282880  7F E5 FB 78 */	mr r5, r31
/* 802B92C4 00282884  38 84 CD C8 */	addi r4, r4, CBattery_strpool@l
/* 802B92C8 00282888  38 C0 00 00 */	li r6, 0
/* 802B92CC 0028288C  38 E0 00 00 */	li r7, 0
/* 802B92D0 00282890  48 19 54 C5 */	bl CDeviceFile_openFile1
/* 802B92D4 00282894  90 7F 00 14 */	stw r3, 0x14(r31)
/* 802B92D8 00282898  38 80 00 03 */	li r4, 3
/* 802B92DC 0028289C  48 19 5E 79 */	bl func_8044F154
/* 802B92E0 002828A0  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 802B92E4 002828A4  48 19 61 31 */	bl func_8044F414
/* 802B92E8 002828A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B92EC 002828AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B92F0 002828B0  7C 08 03 A6 */	mtlr r0
/* 802B92F4 002828B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802B92F8 002828B8  4E 80 00 20 */	blr 
.endfn func_802B92A4

.fn func_802B92FC, global
/* 802B92FC 002828BC  88 03 00 22 */	lbz r0, 0x22(r3)
/* 802B9300 002828C0  2C 00 00 00 */	cmpwi r0, 0
/* 802B9304 002828C4  4D 82 00 20 */	beqlr 
/* 802B9308 002828C8  88 03 00 20 */	lbz r0, 0x20(r3)
/* 802B930C 002828CC  2C 00 00 00 */	cmpwi r0, 0
/* 802B9310 002828D0  40 82 00 08 */	bne .L_802B9318
/* 802B9314 002828D4  4E 80 00 20 */	blr
.L_802B9318:
/* 802B9318 002828D8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802B931C 002828DC  38 80 00 00 */	li r4, 0
/* 802B9320 002828E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802B9324 002828E4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802B9328 002828E8  7D 89 03 A6 */	mtctr r12
/* 802B932C 002828EC  4E 80 04 20 */	bctr 
/* 802B9330 002828F0  4E 80 00 20 */	blr 
.endfn func_802B92FC

.fn func_802B9334, global
/* 802B9334 002828F4  88 03 00 22 */	lbz r0, 0x22(r3)
/* 802B9338 002828F8  2C 00 00 00 */	cmpwi r0, 0
/* 802B933C 002828FC  4D 82 00 20 */	beqlr 
/* 802B9340 00282900  88 03 00 20 */	lbz r0, 0x20(r3)
/* 802B9344 00282904  2C 00 00 00 */	cmpwi r0, 0
/* 802B9348 00282908  40 82 00 08 */	bne .L_802B9350
/* 802B934C 0028290C  4E 80 00 20 */	blr
.L_802B9350:
/* 802B9350 00282910  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802B9354 00282914  38 A0 00 00 */	li r5, 0
/* 802B9358 00282918  38 C0 00 01 */	li r6, 1
/* 802B935C 0028291C  4B E7 DC DC */	b func_80137038
/* 802B9360 00282920  4E 80 00 20 */	blr 
.endfn func_802B9334

.fn func_802B9364, global
/* 802B9364 00282924  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B9368 00282928  7C 08 02 A6 */	mflr r0
/* 802B936C 0028292C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B9370 00282930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802B9374 00282934  7C 7F 1B 78 */	mr r31, r3
/* 802B9378 00282938  48 18 F6 CD */	bl func_80448A44
/* 802B937C 0028293C  38 7F 00 14 */	addi r3, r31, 0x14
/* 802B9380 00282940  4B E7 FD 61 */	bl func_801390E0
/* 802B9384 00282944  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 802B9388 00282948  38 00 00 00 */	li r0, 0
/* 802B938C 0028294C  98 1F 00 20 */	stb r0, 0x20(r31)
/* 802B9390 00282950  2C 03 00 00 */	cmpwi r3, 0
/* 802B9394 00282954  41 82 00 24 */	beq .L_802B93B8
/* 802B9398 00282958  41 82 00 18 */	beq .L_802B93B0
/* 802B939C 0028295C  81 83 00 00 */	lwz r12, 0(r3)
/* 802B93A0 00282960  38 80 00 01 */	li r4, 1
/* 802B93A4 00282964  81 8C 00 08 */	lwz r12, 8(r12)
/* 802B93A8 00282968  7D 89 03 A6 */	mtctr r12
/* 802B93AC 0028296C  4E 80 04 21 */	bctrl 
.L_802B93B0:
/* 802B93B0 00282970  38 00 00 00 */	li r0, 0
/* 802B93B4 00282974  90 1F 00 1C */	stw r0, 0x1c(r31)
.L_802B93B8:
/* 802B93B8 00282978  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 802B93BC 0028297C  4B E7 FD 69 */	bl func_80139124
/* 802B93C0 00282980  38 00 00 00 */	li r0, 0
/* 802B93C4 00282984  90 1F 00 18 */	stw r0, 0x18(r31)
/* 802B93C8 00282988  38 7F 00 04 */	addi r3, r31, 4
/* 802B93CC 0028298C  48 1A 63 AD */	bl func_8045F778
/* 802B93D0 00282990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B93D4 00282994  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802B93D8 00282998  7C 08 03 A6 */	mtlr r0
/* 802B93DC 0028299C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B93E0 002829A0  4E 80 00 20 */	blr 
.endfn func_802B9364

.fn func_802B93E4, global
/* 802B93E4 002829A4  98 83 00 24 */	stb r4, 0x24(r3)
/* 802B93E8 002829A8  48 00 00 04 */	b func_802B93EC
.endfn func_802B93E4

.fn func_802B93EC, global
/* 802B93EC 002829AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802B93F0 002829B0  7C 08 02 A6 */	mflr r0
/* 802B93F4 002829B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 802B93F8 002829B8  BF 81 00 20 */	stmw r28, 0x20(r1)
/* 802B93FC 002829BC  7C 7C 1B 78 */	mr r28, r3
/* 802B9400 002829C0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802B9404 002829C4  2C 00 00 00 */	cmpwi r0, 0
/* 802B9408 002829C8  41 82 00 94 */	beq .L_802B949C
/* 802B940C 002829CC  88 03 00 24 */	lbz r0, 0x24(r3)
/* 802B9410 002829D0  28 00 00 04 */	cmplwi r0, 4
/* 802B9414 002829D4  40 81 00 0C */	ble .L_802B9420
/* 802B9418 002829D8  38 00 00 04 */	li r0, 4
/* 802B941C 002829DC  98 03 00 24 */	stb r0, 0x24(r3)
.L_802B9420:
/* 802B9420 002829E0  3F C0 80 51 */	lis r30, CBattery_strpool@ha
/* 802B9424 002829E4  3B A0 00 01 */	li r29, 1
/* 802B9428 002829E8  3B DE CD C8 */	addi r30, r30, CBattery_strpool@l
/* 802B942C 002829EC  3B E0 FF FF */	li r31, -1
.L_802B9430:
/* 802B9430 002829F0  38 61 00 08 */	addi r3, r1, 8
/* 802B9434 002829F4  38 9E 00 12 */	addi r4, r30, 0x12
/* 802B9438 002829F8  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802B943C 002829FC  4C C6 31 82 */	crclr 6
/* 802B9440 00282A00  48 00 7B F9 */	bl sprintf
/* 802B9444 00282A04  80 7C 00 1C */	lwz r3, 0x1c(r28)
/* 802B9448 00282A08  38 81 00 08 */	addi r4, r1, 8
/* 802B944C 00282A0C  38 A0 00 01 */	li r5, 1
/* 802B9450 00282A10  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802B9454 00282A14  81 83 00 00 */	lwz r12, 0(r3)
/* 802B9458 00282A18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802B945C 00282A1C  7D 89 03 A6 */	mtctr r12
/* 802B9460 00282A20  4E 80 04 21 */	bctrl 
/* 802B9464 00282A24  2C 03 00 00 */	cmpwi r3, 0
/* 802B9468 00282A28  41 82 00 28 */	beq .L_802B9490
/* 802B946C 00282A2C  88 9C 00 24 */	lbz r4, 0x24(r28)
/* 802B9470 00282A30  57 A5 06 3E */	clrlwi r5, r29, 0x18
/* 802B9474 00282A34  88 03 00 BB */	lbz r0, 0xbb(r3)
/* 802B9478 00282A38  7C 85 20 10 */	subfc r4, r5, r4
/* 802B947C 00282A3C  7C BF 01 90 */	subfze r5, r31
/* 802B9480 00282A40  54 04 06 3C */	rlwinm r4, r0, 0, 0x18, 0x1e
/* 802B9484 00282A44  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802B9488 00282A48  7C 80 03 78 */	or r0, r4, r0
/* 802B948C 00282A4C  98 03 00 BB */	stb r0, 0xbb(r3)
.L_802B9490:
/* 802B9490 00282A50  3B BD 00 01 */	addi r29, r29, 1
/* 802B9494 00282A54  28 1D 00 04 */	cmplwi r29, 4
/* 802B9498 00282A58  40 81 FF 98 */	ble .L_802B9430
.L_802B949C:
/* 802B949C 00282A5C  BB 81 00 20 */	lmw r28, 0x20(r1)
/* 802B94A0 00282A60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802B94A4 00282A64  7C 08 03 A6 */	mtlr r0
/* 802B94A8 00282A68  38 21 00 30 */	addi r1, r1, 0x30
/* 802B94AC 00282A6C  4E 80 00 20 */	blr 
.endfn func_802B93EC

.fn func_802B94B0, global
/* 802B94B0 00282A70  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 802B94B4 00282A74  2C 00 00 00 */	cmpwi r0, 0
/* 802B94B8 00282A78  4D 82 00 20 */	beqlr 
/* 802B94BC 00282A7C  38 00 00 01 */	li r0, 1
/* 802B94C0 00282A80  98 03 00 22 */	stb r0, 0x22(r3)
/* 802B94C4 00282A84  98 03 00 20 */	stb r0, 0x20(r3)
/* 802B94C8 00282A88  4B FF FF 24 */	b func_802B93EC
/* 802B94CC 00282A8C  4E 80 00 20 */	blr 
.endfn func_802B94B0

.fn CBattery_OnFileEvent, global
/* 802B94D0 00282A90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B94D4 00282A94  7C 08 02 A6 */	mflr r0
/* 802B94D8 00282A98  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B94DC 00282A9C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 802B94E0 00282AA0  7C 7C 1B 78 */	mr r28, r3
/* 802B94E4 00282AA4  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 802B94E8 00282AA8  80 04 00 04 */	lwz r0, 4(r4)
/* 802B94EC 00282AAC  7C 05 00 40 */	cmplw r5, r0
/* 802B94F0 00282AB0  40 82 00 B0 */	bne .L_802B95A0
/* 802B94F4 00282AB4  80 04 00 00 */	lwz r0, 0(r4)
/* 802B94F8 00282AB8  2C 00 00 01 */	cmpwi r0, 1
/* 802B94FC 00282ABC  41 82 00 10 */	beq .L_802B950C
/* 802B9500 00282AC0  4B FF FE 65 */	bl func_802B9364
/* 802B9504 00282AC4  38 60 00 01 */	li r3, 1
/* 802B9508 00282AC8  48 00 00 9C */	b .L_802B95A4
.L_802B950C:
/* 802B950C 00282ACC  48 17 E0 A9 */	bl getHeapIndex
/* 802B9510 00282AD0  3F C0 80 51 */	lis r30, CBattery_strpool@ha
/* 802B9514 00282AD4  7C 64 1B 78 */	mr r4, r3
/* 802B9518 00282AD8  3B DE CD C8 */	addi r30, r30, CBattery_strpool@l
/* 802B951C 00282ADC  38 7C 00 04 */	addi r3, r28, 4
/* 802B9520 00282AE0  38 DE 00 1B */	addi r6, r30, 0x1b
/* 802B9524 00282AE4  38 A0 0C 00 */	li r5, 0xc00
/* 802B9528 00282AE8  38 E0 00 00 */	li r7, 0
/* 802B952C 00282AEC  48 1A 61 55 */	bl func_8045F680
/* 802B9530 00282AF0  38 61 00 08 */	addi r3, r1, 8
/* 802B9534 00282AF4  38 9C 00 04 */	addi r4, r28, 4
/* 802B9538 00282AF8  48 1A 63 21 */	bl func_8045F858
/* 802B953C 00282AFC  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 802B9540 00282B00  3B E0 00 00 */	li r31, 0
/* 802B9544 00282B04  38 60 00 00 */	li r3, 0
/* 802B9548 00282B08  83 A4 00 04 */	lwz r29, 4(r4)
/* 802B954C 00282B0C  93 E4 00 04 */	stw r31, 4(r4)
/* 802B9550 00282B10  48 17 B4 FD */	bl func_80434A4C
/* 802B9554 00282B14  48 1A 5C 61 */	bl CLibLayout_getArcResourceAccessorInstance
/* 802B9558 00282B18  90 7C 00 18 */	stw r3, 0x18(r28)
/* 802B955C 00282B1C  7F A4 EB 78 */	mr r4, r29
/* 802B9560 00282B20  38 BE 00 24 */	addi r5, r30, 0x24
/* 802B9564 00282B24  48 15 09 A5 */	bl Attach__Q34nw4r3lyt19ArcResourceAccessorFPvPCc
/* 802B9568 00282B28  80 9C 00 18 */	lwz r4, 0x18(r28)
/* 802B956C 00282B2C  38 7C 00 1C */	addi r3, r28, 0x1c
/* 802B9570 00282B30  38 BE 00 28 */	addi r5, r30, 0x28
/* 802B9574 00282B34  4B E7 D9 11 */	bl func_80136E84
/* 802B9578 00282B38  7F 83 E3 78 */	mr r3, r28
/* 802B957C 00282B3C  4B FF FF 35 */	bl func_802B94B0
/* 802B9580 00282B40  93 FC 00 14 */	stw r31, 0x14(r28)
/* 802B9584 00282B44  38 7C 00 04 */	addi r3, r28, 4
/* 802B9588 00282B48  48 1A 62 89 */	bl func_8045F810
/* 802B958C 00282B4C  38 61 00 08 */	addi r3, r1, 8
/* 802B9590 00282B50  38 80 FF FF */	li r4, -1
/* 802B9594 00282B54  48 1A 63 35 */	bl __dt__8045F8C8
/* 802B9598 00282B58  38 60 00 01 */	li r3, 1
/* 802B959C 00282B5C  48 00 00 08 */	b .L_802B95A4
.L_802B95A0:
/* 802B95A0 00282B60  38 60 00 00 */	li r3, 0
.L_802B95A4:
/* 802B95A4 00282B64  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 802B95A8 00282B68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B95AC 00282B6C  7C 08 03 A6 */	mtlr r0
/* 802B95B0 00282B70  38 21 00 20 */	addi r1, r1, 0x20
/* 802B95B4 00282B74  4E 80 00 20 */	blr
.endfn CBattery_OnFileEvent

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CBattery_typestr, global
	.asciz "CBattery"
	.balign 4
	.4byte 0
.endobj CBattery_typestr


.obj CBattery_strpool, global
	.asciz "/menu/Battery.arc" #0x0
	.asciz "pic_%02d" #0x12
	.asciz "CBattery" #0x1b
	.asciz "arc" #0x24
	.asciz "mf00_btry.brlyt" #0x28
.endobj CBattery_strpool

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CBattery, global
	.4byte __RTTI__CBattery
	.4byte 0
	.4byte __dt__CBattery
	.4byte IWorkEvent_WorkEvent1
	.4byte CBattery_OnFileEvent
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
.endobj __vt__CBattery

.obj CBattery_hierarchy, global
	.4byte __RTTI__IWorkEvent
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CBattery_hierarchy

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CBattery, global
	.4byte CBattery_typestr
	.4byte CBattery_hierarchy
.endobj __RTTI__CBattery

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001BE94", local
.hidden "@etb_8001BE94"
	.4byte 0x10080000
	.4byte 0x0000002C
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__IWorkEvent
.endobj "@etb_8001BE94"

.obj "@etb_8001BEB0", local
.hidden "@etb_8001BEB0"
	.4byte 0x10080000
	.4byte 0x00000000
.endobj "@etb_8001BEB0"

.obj "@etb_8001BEB8", local
.hidden "@etb_8001BEB8"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BEB8"

.obj "@etb_8001BEC0", local
.hidden "@etb_8001BEC0"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001BEC0"

.obj "@etb_8001BEC8", local
.hidden "@etb_8001BEC8"
	.4byte 0x20080000
	.4byte 0x00000000
.endobj "@etb_8001BEC8"

.obj "@etb_8001BED0", local
.hidden "@etb_8001BED0"
	.4byte 0x20080000
	.4byte 0x00000084
	.4byte 0x000E0010
	.4byte 0x00000000
	.4byte 0x82000008
	.4byte __dt__8045F8C8
.endobj "@etb_8001BED0"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033A34", local
.hidden "@eti_80033A34"
	.4byte __ct__CBattery
	.4byte 0x00000068
	.4byte "@etb_8001BE94"
.endobj "@eti_80033A34"

.obj "@eti_80033A40", local
.hidden "@eti_80033A40"
	.4byte __dt__CBattery
	.4byte 0x00000054
	.4byte "@etb_8001BEB0"
.endobj "@eti_80033A40"

.obj "@eti_80033A4C", local
.hidden "@eti_80033A4C"
	.4byte func_802B92A4
	.4byte 0x00000058
	.4byte "@etb_8001BEB8"
.endobj "@eti_80033A4C"

.obj "@eti_80033A58", local
.hidden "@eti_80033A58"
	.4byte func_802B9364
	.4byte 0x00000080
	.4byte "@etb_8001BEC0"
.endobj "@eti_80033A58"

.obj "@eti_80033A64", local
.hidden "@eti_80033A64"
	.4byte func_802B93EC
	.4byte 0x000000C4
	.4byte "@etb_8001BEC8"
.endobj "@eti_80033A64"

.obj "@eti_80033A70", local
.hidden "@eti_80033A70"
	.4byte CBattery_OnFileEvent
	.4byte 0x000000E8
	.4byte "@etb_8001BED0"
.endobj "@eti_80033A70"
