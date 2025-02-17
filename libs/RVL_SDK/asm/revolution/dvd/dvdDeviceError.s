.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.balign 16, 0
.fn lowCallback, local
/* 80310370 002D9930  90 6D B7 10 */	stw r3, lowIntType@sda21(r13)
/* 80310374 002D9934  38 00 00 01 */	li r0, 1
/* 80310378 002D9938  90 0D 98 20 */	stw r0, lowDone@sda21(r13)
/* 8031037C 002D993C  4E 80 00 20 */	blr 
.endfn lowCallback

.balign 16, 0
.fn __DVDCheckDevice, global
/* 80310380 002D9940  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80310384 002D9944  7C 08 02 A6 */	mflr r0
/* 80310388 002D9948  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031038C 002D994C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80310390 002D9950  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80310394 002D9954  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80310398 002D9958  3F A0 46 0A */	lis r29, 0x460a
/* 8031039C 002D995C  48 04 90 E5 */	bl OSGetPhysicalMem2Size
/* 803103A0 002D9960  3C 03 F8 00 */	addis r0, r3, 0xf800
/* 803103A4 002D9964  28 00 00 00 */	cmplwi r0, 0
/* 803103A8 002D9968  40 82 00 0C */	bne .L_803103B4
/* 803103AC 002D996C  38 60 00 01 */	li r3, 1
/* 803103B0 002D9970  48 00 02 30 */	b .L_803105E0
.L_803103B4:
/* 803103B4 002D9974  38 61 00 10 */	addi r3, r1, 0x10
/* 803103B8 002D9978  48 04 15 F9 */	bl __OSGetIOSRev
/* 803103BC 002D997C  88 01 00 11 */	lbz r0, 0x11(r1)
/* 803103C0 002D9980  28 00 00 1E */	cmplwi r0, 0x1e
/* 803103C4 002D9984  41 80 00 0C */	blt .L_803103D0
/* 803103C8 002D9988  28 00 00 FE */	cmplwi r0, 0xfe
/* 803103CC 002D998C  41 80 00 0C */	blt .L_803103D8
.L_803103D0:
/* 803103D0 002D9990  38 60 00 01 */	li r3, 1
/* 803103D4 002D9994  48 00 02 0C */	b .L_803105E0
.L_803103D8:
/* 803103D8 002D9998  3C 60 80 00 */	lis r3, 0x8000319C@ha
/* 803103DC 002D999C  88 03 31 9C */	lbz r0, 0x8000319C@l(r3)
/* 803103E0 002D99A0  28 00 00 81 */	cmplwi r0, 0x81
/* 803103E4 002D99A4  40 82 00 08 */	bne .L_803103EC
/* 803103E8 002D99A8  3F A0 7E D4 */	lis r29, 0x7ed4
.L_803103EC:
/* 803103EC 002D99AC  38 00 00 00 */	li r0, 0
/* 803103F0 002D99B0  3C 60 80 5D */	lis r3, CheckBuffer@ha
/* 803103F4 002D99B4  3C C0 80 31 */	lis r6, lowCallback@ha
/* 803103F8 002D99B8  90 0D 98 20 */	stw r0, lowDone@sda21(r13)
/* 803103FC 002D99BC  7F A5 EB 78 */	mr r5, r29
/* 80310400 002D99C0  38 63 CC 40 */	addi r3, r3, CheckBuffer@l
/* 80310404 002D99C4  38 C6 03 70 */	addi r6, r6, lowCallback@l
/* 80310408 002D99C8  38 80 00 20 */	li r4, 0x20
/* 8031040C 002D99CC  48 00 12 C5 */	bl DVDLowUnencryptedRead
.L_80310410:
/* 80310410 002D99D0  80 0D 98 20 */	lwz r0, lowDone@sda21(r13)
/* 80310414 002D99D4  2C 00 00 00 */	cmpwi r0, 0
/* 80310418 002D99D8  41 82 FF F8 */	beq .L_80310410
/* 8031041C 002D99DC  80 0D B7 10 */	lwz r0, lowIntType@sda21(r13)
/* 80310420 002D99E0  2C 00 00 02 */	cmpwi r0, 2
/* 80310424 002D99E4  41 82 00 14 */	beq .L_80310438
/* 80310428 002D99E8  40 80 01 B0 */	bge .L_803105D8
/* 8031042C 002D99EC  2C 00 00 01 */	cmpwi r0, 1
/* 80310430 002D99F0  40 80 01 30 */	bge .L_80310560
/* 80310434 002D99F4  48 00 01 A4 */	b .L_803105D8
.L_80310438:
/* 80310438 002D99F8  38 00 00 00 */	li r0, 0
/* 8031043C 002D99FC  3C 60 80 31 */	lis r3, lowCallback@ha
/* 80310440 002D9A00  90 0D 98 20 */	stw r0, lowDone@sda21(r13)
/* 80310444 002D9A04  38 63 03 70 */	addi r3, r3, lowCallback@l
/* 80310448 002D9A08  48 00 17 39 */	bl DVDLowRequestError
/* 8031044C 002D9A0C  60 00 00 00 */	nop 
.L_80310450:
/* 80310450 002D9A10  80 0D 98 20 */	lwz r0, lowDone@sda21(r13)
/* 80310454 002D9A14  2C 00 00 00 */	cmpwi r0, 0
/* 80310458 002D9A18  41 82 FF F8 */	beq .L_80310450
/* 8031045C 002D9A1C  48 00 26 A5 */	bl DVDLowGetImmBufferReg
/* 80310460 002D9A20  80 0D B7 10 */	lwz r0, lowIntType@sda21(r13)
/* 80310464 002D9A24  2C 00 00 01 */	cmpwi r0, 1
/* 80310468 002D9A28  41 82 00 08 */	beq .L_80310470
/* 8031046C 002D9A2C  48 00 01 6C */	b .L_803105D8
.L_80310470:
/* 80310470 002D9A30  48 00 26 91 */	bl DVDLowGetImmBufferReg
/* 80310474 002D9A34  54 60 00 0F */	rlwinm. r0, r3, 0, 0, 7
/* 80310478 002D9A38  40 82 01 58 */	bne .L_803105D0
/* 8031047C 002D9A3C  48 00 26 85 */	bl DVDLowGetImmBufferReg
/* 80310480 002D9A40  3C 80 00 05 */	lis r4, 0x00052100@ha
/* 80310484 002D9A44  54 63 02 3E */	clrlwi r3, r3, 8
/* 80310488 002D9A48  38 04 21 00 */	addi r0, r4, 0x00052100@l
/* 8031048C 002D9A4C  7C 03 00 00 */	cmpw r3, r0
/* 80310490 002D9A50  41 82 00 08 */	beq .L_80310498
/* 80310494 002D9A54  48 00 00 CC */	b .L_80310560
.L_80310498:
/* 80310498 002D9A58  38 00 00 00 */	li r0, 0
/* 8031049C 002D9A5C  3C 60 80 5D */	lis r3, CheckBuffer@ha
/* 803104A0 002D9A60  3C C0 80 31 */	lis r6, lowCallback@ha
/* 803104A4 002D9A64  90 0D 98 20 */	stw r0, lowDone@sda21(r13)
/* 803104A8 002D9A68  38 63 CC 40 */	addi r3, r3, CheckBuffer@l
/* 803104AC 002D9A6C  3C 80 00 04 */	lis r4, 4
/* 803104B0 002D9A70  38 C6 03 70 */	addi r6, r6, lowCallback@l
/* 803104B4 002D9A74  38 A0 00 00 */	li r5, 0
/* 803104B8 002D9A78  48 00 1B 69 */	bl DVDLowReportKey
/* 803104BC 002D9A7C  60 00 00 00 */	nop 
.L_803104C0:
/* 803104C0 002D9A80  80 0D 98 20 */	lwz r0, lowDone@sda21(r13)
/* 803104C4 002D9A84  2C 00 00 00 */	cmpwi r0, 0
/* 803104C8 002D9A88  41 82 FF F8 */	beq .L_803104C0
/* 803104CC 002D9A8C  80 0D B7 10 */	lwz r0, lowIntType@sda21(r13)
/* 803104D0 002D9A90  2C 00 00 02 */	cmpwi r0, 2
/* 803104D4 002D9A94  41 82 00 14 */	beq .L_803104E8
/* 803104D8 002D9A98  40 80 01 00 */	bge .L_803105D8
/* 803104DC 002D9A9C  2C 00 00 01 */	cmpwi r0, 1
/* 803104E0 002D9AA0  40 80 00 80 */	bge .L_80310560
/* 803104E4 002D9AA4  48 00 00 F4 */	b .L_803105D8
.L_803104E8:
/* 803104E8 002D9AA8  38 00 00 00 */	li r0, 0
/* 803104EC 002D9AAC  3C 60 80 31 */	lis r3, lowCallback@ha
/* 803104F0 002D9AB0  90 0D 98 20 */	stw r0, lowDone@sda21(r13)
/* 803104F4 002D9AB4  38 63 03 70 */	addi r3, r3, lowCallback@l
/* 803104F8 002D9AB8  48 00 16 89 */	bl DVDLowRequestError
/* 803104FC 002D9ABC  60 00 00 00 */	nop 
.L_80310500:
/* 80310500 002D9AC0  80 0D 98 20 */	lwz r0, lowDone@sda21(r13)
/* 80310504 002D9AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80310508 002D9AC8  41 82 FF F8 */	beq .L_80310500
/* 8031050C 002D9ACC  48 00 25 F5 */	bl DVDLowGetImmBufferReg
/* 80310510 002D9AD0  80 0D B7 10 */	lwz r0, lowIntType@sda21(r13)
/* 80310514 002D9AD4  2C 00 00 01 */	cmpwi r0, 1
/* 80310518 002D9AD8  41 82 00 08 */	beq .L_80310520
/* 8031051C 002D9ADC  48 00 00 BC */	b .L_803105D8
.L_80310520:
/* 80310520 002D9AE0  48 00 25 E1 */	bl DVDLowGetImmBufferReg
/* 80310524 002D9AE4  54 60 00 0F */	rlwinm. r0, r3, 0, 0, 7
/* 80310528 002D9AE8  40 82 00 A8 */	bne .L_803105D0
/* 8031052C 002D9AEC  48 00 25 D5 */	bl DVDLowGetImmBufferReg
/* 80310530 002D9AF0  3C 80 00 05 */	lis r4, 0x00053100@ha
/* 80310534 002D9AF4  54 63 02 3E */	clrlwi r3, r3, 8
/* 80310538 002D9AF8  38 04 31 00 */	addi r0, r4, 0x00053100@l
/* 8031053C 002D9AFC  7C 03 00 00 */	cmpw r3, r0
/* 80310540 002D9B00  41 82 00 18 */	beq .L_80310558
/* 80310544 002D9B04  40 80 00 1C */	bge .L_80310560
/* 80310548 002D9B08  38 04 20 00 */	addi r0, r4, 0x2000
/* 8031054C 002D9B0C  7C 03 00 00 */	cmpw r3, r0
/* 80310550 002D9B10  41 82 00 08 */	beq .L_80310558
/* 80310554 002D9B14  48 00 00 0C */	b .L_80310560
.L_80310558:
/* 80310558 002D9B18  38 60 00 01 */	li r3, 1
/* 8031055C 002D9B1C  48 00 00 84 */	b .L_803105E0
.L_80310560:
/* 80310560 002D9B20  83 C2 BC 10 */	lwz r30, lbl_8066BF90@sda21(r2)
/* 80310564 002D9B24  3B E0 00 00 */	li r31, 0
/* 80310568 002D9B28  48 05 0A A9 */	bl SCGetLanguage
/* 8031056C 002D9B2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80310570 002D9B30  40 82 00 10 */	bne .L_80310580
/* 80310574 002D9B34  38 60 00 01 */	li r3, 1
/* 80310578 002D9B38  48 04 74 99 */	bl OSSetFontEncode
/* 8031057C 002D9B3C  48 00 00 0C */	b .L_80310588
.L_80310580:
/* 80310580 002D9B40  38 60 00 00 */	li r3, 0
/* 80310584 002D9B44  48 04 74 8D */	bl OSSetFontEncode
.L_80310588:
/* 80310588 002D9B48  3F A0 80 51 */	lis r29, __DVDDeviceErrorMessage@ha
/* 8031058C 002D9B4C  3B BD E3 E0 */	addi r29, r29, __DVDDeviceErrorMessage@l
/* 80310590 002D9B50  48 05 0A 81 */	bl SCGetLanguage
/* 80310594 002D9B54  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80310598 002D9B58  28 00 00 06 */	cmplwi r0, 6
/* 8031059C 002D9B5C  40 81 00 0C */	ble .L_803105A8
/* 803105A0 002D9B60  80 BD 00 04 */	lwz r5, 4(r29)
/* 803105A4 002D9B64  48 00 00 10 */	b .L_803105B4
.L_803105A8:
/* 803105A8 002D9B68  48 05 0A 69 */	bl SCGetLanguage
/* 803105AC 002D9B6C  54 60 15 BA */	rlwinm r0, r3, 2, 0x16, 0x1d
/* 803105B0 002D9B70  7C BD 00 2E */	lwzx r5, r29, r0
.L_803105B4:
/* 803105B4 002D9B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803105B8 002D9B78  38 81 00 0C */	addi r4, r1, 0xc
/* 803105BC 002D9B7C  38 61 00 08 */	addi r3, r1, 8
/* 803105C0 002D9B80  93 C1 00 08 */	stw r30, 8(r1)
/* 803105C4 002D9B84  48 04 69 7D */	bl OSFatal
/* 803105C8 002D9B88  38 60 00 00 */	li r3, 0
/* 803105CC 002D9B8C  48 00 00 14 */	b .L_803105E0
.L_803105D0:
/* 803105D0 002D9B90  38 60 00 00 */	li r3, 0
/* 803105D4 002D9B94  48 00 00 0C */	b .L_803105E0
.L_803105D8:
/* 803105D8 002D9B98  4B FF FC 29 */	bl __DVDShowFatalMessage
/* 803105DC 002D9B9C  38 60 00 00 */	li r3, 0
.L_803105E0:
/* 803105E0 002D9BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803105E4 002D9BA4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803105E8 002D9BA8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803105EC 002D9BAC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803105F0 002D9BB0  7C 08 03 A6 */	mtlr r0
/* 803105F4 002D9BB4  38 21 00 30 */	addi r1, r1, 0x30
/* 803105F8 002D9BB8  4E 80 00 20 */	blr 
.endfn __DVDCheckDevice

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj __DVDDeviceErrorMessage, global
	.4byte lbl_8054A528
	.4byte lbl_8054A564
	.4byte lbl_8054A59C
	.4byte lbl_8054A5DC
	.4byte lbl_8054A618
	.4byte lbl_8054A654
	.4byte lbl_8054A690
	.4byte 0
.endobj __DVDDeviceErrorMessage

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

#"\n\n\nエラーコード００１。\n不明なデバイスが見つかりました。"
.obj lbl_8054A528, global
	.4byte 0x0A0A0A83
	.4byte 0x47838981
	.4byte 0x5B835281
	.4byte 0x5B836882
	.4byte 0x4F824F82
	.4byte 0x5081420A
	.4byte 0x957396BE
	.4byte 0x82C88366
	.4byte 0x836F8343
	.4byte 0x835882AA
	.4byte 0x8CA982C2
	.4byte 0x82A982E8
	.4byte 0x82DC82B5
	.4byte 0x82BD8142
	.4byte 0
.endobj lbl_8054A528

.obj lbl_8054A564, global
	.asciz "\n\n\nError #001,\nunauthorized device has been detected."
	.balign 4
.endobj lbl_8054A564

.obj lbl_8054A59C, global
	#"\n\n\nFehler #001:\nEs wurde eine unzulässige Komponente\nentdeckt."
	.4byte 0x0A0A0A46
	.4byte 0x65686C65
	.4byte 0x72202330
	.4byte 0x30313A0A
	.4byte 0x45732077
	.4byte 0x75726465
	.4byte 0x2065696E
	.4byte 0x6520756E
	.4byte 0x7A756CE4
	.asciz "ssige Komponente\nentdeckt."
	.balign 4
.endobj lbl_8054A59C

.obj lbl_8054A5DC, global
	#.asciz "\n\n\nErreur 001:\nun dispositif non autorisé a été détecté."
	.4byte 0x0A0A0A45
	.4byte 0x72726575
	.4byte 0x72203030
	.4byte 0x313A0A75
	.4byte 0x6E206469
	.4byte 0x73706F73
	.4byte 0x69746966
	.4byte 0x206E6F6E
	.4byte 0x20617574
	.4byte 0x6F726973
	.4byte 0xE9206120
	.4byte 0xE974E920
	.4byte 0x64E97465
	.4byte 0x6374E92E
	.4byte 0
.endobj lbl_8054A5DC

.obj lbl_8054A618, global
	.asciz "\n\n\nError 001:\nSe ha detectado un dispositivo no\nautorizado."
	
.endobj lbl_8054A618

.obj lbl_8054A654, global
	.asciz "\n\n\nErrore #001:\nrilevato un dispositivo non autorizzato."
	.balign 4
.endobj lbl_8054A654

.obj lbl_8054A690, global
	.asciz "\n\n\nFout #001:\nongeoorloofd onderdeel gevonden."
	.balign 4
.endobj lbl_8054A690

.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj lowDone, local
	.4byte 0x00000001
	.4byte 0
.endobj lowDone

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.balign 8

.obj lbl_8066BF90, global
	.4byte 0xFFFFFF00
	.4byte 0
.endobj lbl_8066BF90

.section .bss, "wa"  # 0x80573C80 - 0x8066417B

.obj CheckBuffer, local
	.skip 0x20
.endobj CheckBuffer

.section .sbss, "wa"  # 0x80666600 - 0x8066836F

.balign 8

.obj lowIntType, local
	.skip 0x4
.endobj lowIntType

.skip 0x4
