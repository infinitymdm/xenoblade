.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/MSL_Common_Embedded/Math/e_sqrt.o"

# 0x802CB21C - 0x802CB464
.text
.balign 4

.fn __ieee754_sqrt, global
/* 802CB21C 002947DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CB220 002947E0  D8 21 00 08 */	stfd f1, 0x8(r1)
/* 802CB224 002947E4  80 C1 00 08 */	lwz r6, 0x8(r1)
/* 802CB228 002947E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802CB22C 002947EC  54 C3 00 56 */	rlwinm r3, r6, 0, 1, 11
/* 802CB230 002947F0  3C 63 80 10 */	addis r3, r3, 0x8010
/* 802CB234 002947F4  28 03 00 00 */	cmplwi r3, 0x0
/* 802CB238 002947F8  40 82 00 18 */	bne .L_802CB250
/* 802CB23C 002947FC  FC 01 00 72 */	fmul f0, f1, f1
/* 802CB240 00294800  38 00 00 21 */	li r0, 0x21
/* 802CB244 00294804  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802CB248 00294808  FC 21 00 2A */	fadd f1, f1, f0
/* 802CB24C 0029480C  48 00 02 10 */	b .L_802CB45C
.L_802CB250:
/* 802CB250 00294810  2C 86 00 00 */	cmpwi cr1, r6, 0x0
/* 802CB254 00294814  41 85 00 2C */	bgt cr1, .L_802CB280
/* 802CB258 00294818  54 C3 00 7E */	clrlwi r3, r6, 1
/* 802CB25C 0029481C  7C 03 1B 79 */	or. r3, r0, r3
/* 802CB260 00294820  40 82 00 08 */	bne .L_802CB268
/* 802CB264 00294824  48 00 01 F8 */	b .L_802CB45C
.L_802CB268:
/* 802CB268 00294828  40 84 00 18 */	bge cr1, .L_802CB280
/* 802CB26C 0029482C  3C 60 80 66 */	lis r3, __float_nan@ha
/* 802CB270 00294830  38 00 00 21 */	li r0, 0x21
/* 802CB274 00294834  90 0D B3 B0 */	stw r0, errno@sda21(r13)
/* 802CB278 00294838  C0 23 58 88 */	lfs f1, __float_nan@l(r3)
/* 802CB27C 0029483C  48 00 01 E0 */	b .L_802CB45C
.L_802CB280:
/* 802CB280 00294840  7C C3 A6 71 */	srawi. r3, r6, 20
/* 802CB284 00294844  40 82 00 50 */	bne .L_802CB2D4
/* 802CB288 00294848  48 00 00 14 */	b .L_802CB29C
.L_802CB28C:
/* 802CB28C 0029484C  54 04 AA FE */	srwi r4, r0, 11
/* 802CB290 00294850  54 00 A8 14 */	slwi r0, r0, 21
/* 802CB294 00294854  7C C6 23 78 */	or r6, r6, r4
/* 802CB298 00294858  38 63 FF EB */	addi r3, r3, -0x15
.L_802CB29C:
/* 802CB29C 0029485C  2C 06 00 00 */	cmpwi r6, 0x0
/* 802CB2A0 00294860  41 82 FF EC */	beq .L_802CB28C
/* 802CB2A4 00294864  38 E0 00 00 */	li r7, 0x0
/* 802CB2A8 00294868  48 00 00 0C */	b .L_802CB2B4
.L_802CB2AC:
/* 802CB2AC 0029486C  54 C6 08 3C */	slwi r6, r6, 1
/* 802CB2B0 00294870  38 E7 00 01 */	addi r7, r7, 0x1
.L_802CB2B4:
/* 802CB2B4 00294874  54 C4 02 D7 */	rlwinm. r4, r6, 0, 11, 11
/* 802CB2B8 00294878  41 82 FF F4 */	beq .L_802CB2AC
/* 802CB2BC 0029487C  20 87 00 20 */	subfic r4, r7, 0x20
/* 802CB2C0 00294880  38 A7 FF FF */	addi r5, r7, -0x1
/* 802CB2C4 00294884  7C 04 24 30 */	srw r4, r0, r4
/* 802CB2C8 00294888  7C 00 38 30 */	slw r0, r0, r7
/* 802CB2CC 0029488C  7C 65 18 50 */	subf r3, r5, r3
/* 802CB2D0 00294890  7C C6 23 78 */	or r6, r6, r4
.L_802CB2D4:
/* 802CB2D4 00294894  38 83 FC 01 */	addi r4, r3, -0x3ff
/* 802CB2D8 00294898  54 C5 03 3E */	clrlwi r5, r6, 12
/* 802CB2DC 0029489C  54 84 07 FF */	clrlwi. r4, r4, 31
/* 802CB2E0 002948A0  64 A6 00 10 */	oris r6, r5, 0x10
/* 802CB2E4 002948A4  41 82 00 14 */	beq .L_802CB2F8
/* 802CB2E8 002948A8  54 05 0F FE */	srwi r5, r0, 31
/* 802CB2EC 002948AC  7C 86 32 14 */	add r4, r6, r6
/* 802CB2F0 002948B0  7C C5 22 14 */	add r6, r5, r4
/* 802CB2F4 002948B4  7C 00 02 14 */	add r0, r0, r0
.L_802CB2F8:
/* 802CB2F8 002948B8  54 05 0F FE */	srwi r5, r0, 31
/* 802CB2FC 002948BC  7C 86 32 14 */	add r4, r6, r6
/* 802CB300 002948C0  7C C5 22 14 */	add r6, r5, r4
/* 802CB304 002948C4  7C 00 02 14 */	add r0, r0, r0
/* 802CB308 002948C8  39 20 00 00 */	li r9, 0x0
/* 802CB30C 002948CC  39 60 00 00 */	li r11, 0x0
/* 802CB310 002948D0  39 40 00 00 */	li r10, 0x0
/* 802CB314 002948D4  39 80 00 00 */	li r12, 0x0
/* 802CB318 002948D8  3C E0 00 20 */	lis r7, 0x20
/* 802CB31C 002948DC  48 00 00 30 */	b .L_802CB34C
.L_802CB320:
/* 802CB320 002948E0  7C 8B 3A 14 */	add r4, r11, r7
/* 802CB324 002948E4  7C 04 30 00 */	cmpw r4, r6
/* 802CB328 002948E8  41 81 00 10 */	bgt .L_802CB338
/* 802CB32C 002948EC  7D 64 3A 14 */	add r11, r4, r7
/* 802CB330 002948F0  7C C4 30 50 */	subf r6, r4, r6
/* 802CB334 002948F4  7D 8C 3A 14 */	add r12, r12, r7
.L_802CB338:
/* 802CB338 002948F8  54 05 0F FE */	srwi r5, r0, 31
/* 802CB33C 002948FC  7C 86 32 14 */	add r4, r6, r6
/* 802CB340 00294900  7C C5 22 14 */	add r6, r5, r4
/* 802CB344 00294904  7C 00 02 14 */	add r0, r0, r0
/* 802CB348 00294908  54 E7 F8 7E */	srwi r7, r7, 1
.L_802CB34C:
/* 802CB34C 0029490C  2C 07 00 00 */	cmpwi r7, 0x0
/* 802CB350 00294910  40 82 FF D0 */	bne .L_802CB320
/* 802CB354 00294914  3C E0 80 00 */	lis r7, 0x8000
/* 802CB358 00294918  48 00 00 6C */	b .L_802CB3C4
.L_802CB35C:
/* 802CB35C 0029491C  7C 0B 30 00 */	cmpw r11, r6
/* 802CB360 00294920  7D 65 5B 78 */	mr r5, r11
/* 802CB364 00294924  7D 09 3A 14 */	add r8, r9, r7
/* 802CB368 00294928  41 80 00 10 */	blt .L_802CB378
/* 802CB36C 0029492C  40 82 00 44 */	bne .L_802CB3B0
/* 802CB370 00294930  7C 08 00 40 */	cmplw r8, r0
/* 802CB374 00294934  41 81 00 3C */	bgt .L_802CB3B0
.L_802CB378:
/* 802CB378 00294938  55 04 00 00 */	clrrwi r4, r8, 31
/* 802CB37C 0029493C  7D 28 3A 14 */	add r9, r8, r7
/* 802CB380 00294940  3C 84 80 00 */	addis r4, r4, 0x8000
/* 802CB384 00294944  28 04 00 00 */	cmplwi r4, 0x0
/* 802CB388 00294948  40 82 00 10 */	bne .L_802CB398
/* 802CB38C 0029494C  55 24 00 01 */	clrrwi. r4, r9, 31
/* 802CB390 00294950  40 82 00 08 */	bne .L_802CB398
/* 802CB394 00294954  39 6B 00 01 */	addi r11, r11, 0x1
.L_802CB398:
/* 802CB398 00294958  7C 00 40 40 */	cmplw r0, r8
/* 802CB39C 0029495C  7C C5 30 50 */	subf r6, r5, r6
/* 802CB3A0 00294960  40 80 00 08 */	bge .L_802CB3A8
/* 802CB3A4 00294964  38 C6 FF FF */	addi r6, r6, -0x1
.L_802CB3A8:
/* 802CB3A8 00294968  7C 08 00 50 */	subf r0, r8, r0
/* 802CB3AC 0029496C  7D 4A 3A 14 */	add r10, r10, r7
.L_802CB3B0:
/* 802CB3B0 00294970  54 05 0F FE */	srwi r5, r0, 31
/* 802CB3B4 00294974  7C 86 32 14 */	add r4, r6, r6
/* 802CB3B8 00294978  7C C5 22 14 */	add r6, r5, r4
/* 802CB3BC 0029497C  7C 00 02 14 */	add r0, r0, r0
/* 802CB3C0 00294980  54 E7 F8 7E */	srwi r7, r7, 1
.L_802CB3C4:
/* 802CB3C4 00294984  2C 07 00 00 */	cmpwi r7, 0x0
/* 802CB3C8 00294988  40 82 FF 94 */	bne .L_802CB35C
/* 802CB3CC 0029498C  7C C0 03 79 */	or. r0, r6, r0
/* 802CB3D0 00294990  41 82 00 58 */	beq .L_802CB428
/* 802CB3D4 00294994  C8 02 BA 28 */	lfd f0, "@87"@sda21(r2)
/* 802CB3D8 00294998  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802CB3DC 0029499C  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 802CB3E0 002949A0  4C 41 13 82 */	cror eq, gt, eq
/* 802CB3E4 002949A4  40 82 00 44 */	bne .L_802CB428
/* 802CB3E8 002949A8  3C 0A 00 01 */	addis r0, r10, 0x1
/* 802CB3EC 002949AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802CB3F0 002949B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 802CB3F4 002949B4  40 82 00 10 */	bne .L_802CB404
/* 802CB3F8 002949B8  39 40 00 00 */	li r10, 0x0
/* 802CB3FC 002949BC  39 8C 00 01 */	addi r12, r12, 0x1
/* 802CB400 002949C0  48 00 00 28 */	b .L_802CB428
.L_802CB404:
/* 802CB404 002949C4  FC 00 00 40 */	fcmpo cr0, f0, f0
/* 802CB408 002949C8  40 81 00 18 */	ble .L_802CB420
/* 802CB40C 002949CC  28 00 FF FE */	cmplwi r0, 0xfffe
/* 802CB410 002949D0  40 82 00 08 */	bne .L_802CB418
/* 802CB414 002949D4  39 8C 00 01 */	addi r12, r12, 0x1
.L_802CB418:
/* 802CB418 002949D8  39 4A 00 02 */	addi r10, r10, 0x2
/* 802CB41C 002949DC  48 00 00 0C */	b .L_802CB428
.L_802CB420:
/* 802CB420 002949E0  55 40 07 FE */	clrlwi r0, r10, 31
/* 802CB424 002949E4  7D 4A 02 14 */	add r10, r10, r0
.L_802CB428:
/* 802CB428 002949E8  55 80 07 FE */	clrlwi r0, r12, 31
/* 802CB42C 002949EC  7D 84 0E 70 */	srawi r4, r12, 1
/* 802CB430 002949F0  2C 00 00 01 */	cmpwi r0, 0x1
/* 802CB434 002949F4  55 45 F8 7E */	srwi r5, r10, 1
/* 802CB438 002949F8  3C 84 3F E0 */	addis r4, r4, 0x3fe0
/* 802CB43C 002949FC  40 82 00 08 */	bne .L_802CB444
/* 802CB440 00294A00  64 A5 80 00 */	oris r5, r5, 0x8000
.L_802CB444:
/* 802CB444 00294A04  38 03 FC 01 */	addi r0, r3, -0x3ff
/* 802CB448 00294A08  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802CB44C 00294A0C  54 00 98 16 */	extlwi r0, r0, 12, 19
/* 802CB450 00294A10  7C 84 02 14 */	add r4, r4, r0
/* 802CB454 00294A14  90 81 00 10 */	stw r4, 0x10(r1)
/* 802CB458 00294A18  C8 21 00 10 */	lfd f1, 0x10(r1)
.L_802CB45C:
/* 802CB45C 00294A1C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CB460 00294A20  4E 80 00 20 */	blr
.endfn __ieee754_sqrt

# 0x8066BDA8 - 0x8066BDB0
.section .sdata2, "a"
.balign 8

.obj "@87", local
	.4byte 0x3FF00000
	.4byte 0x00000000
.endobj "@87"
