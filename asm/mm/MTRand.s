.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900




.fn getInstanceMTRand__Q22mm3mtlFv, global
/* 8043539C 003FE95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804353A0 003FE960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804353A4 003FE964  88 0D BC E0 */	lbz r0, lbl_80667E60@sda21(r13)
/* 804353A8 003FE968  7C 00 07 75 */	extsb. r0, r0
/* 804353AC 003FE96C  40 82 02 14 */	bne .L_804355C0
/* 804353B0 003FE970  3C C0 80 66 */	lis r6, twister@ha
/* 804353B4 003FE974  3C A0 01 2C */	lis r5, 0x012BD6AA@ha
/* 804353B8 003FE978  38 05 D6 AA */	addi r0, r5, 0x012BD6AA@l
/* 804353BC 003FE97C  3C 80 6C 08 */	lis r4, 0x6C078965@ha
/* 804353C0 003FE980  38 66 93 E0 */	addi r3, r6, twister@l
/* 804353C4 003FE984  90 06 93 E0 */	stw r0, twister@l(r6)
/* 804353C8 003FE988  38 04 89 65 */	addi r0, r4, 0x6C078965@l
/* 804353CC 003FE98C  38 A0 00 4D */	li r5, 0x4d
/* 804353D0 003FE990  38 63 00 04 */	addi r3, r3, 4
/* 804353D4 003FE994  38 80 00 01 */	li r4, 1
/* 804353D8 003FE998  7C A9 03 A6 */	mtctr r5
.L_804353DC:
/* 804353DC 003FE99C  80 C3 FF FC */	lwz r6, -4(r3)
/* 804353E0 003FE9A0  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 804353E4 003FE9A4  7C C5 2A 78 */	xor r5, r6, r5
/* 804353E8 003FE9A8  7C A5 01 D6 */	mullw r5, r5, r0
/* 804353EC 003FE9AC  7C C4 2A 14 */	add r6, r4, r5
/* 804353F0 003FE9B0  90 C3 00 00 */	stw r6, 0(r3)
/* 804353F4 003FE9B4  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 804353F8 003FE9B8  7C C5 2A 78 */	xor r5, r6, r5
/* 804353FC 003FE9BC  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435400 003FE9C0  7C A4 2A 14 */	add r5, r4, r5
/* 80435404 003FE9C4  38 C5 00 01 */	addi r6, r5, 1
/* 80435408 003FE9C8  90 C3 00 04 */	stw r6, 4(r3)
/* 8043540C 003FE9CC  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435410 003FE9D0  7C C5 2A 78 */	xor r5, r6, r5
/* 80435414 003FE9D4  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435418 003FE9D8  7C A4 2A 14 */	add r5, r4, r5
/* 8043541C 003FE9DC  38 C5 00 02 */	addi r6, r5, 2
/* 80435420 003FE9E0  90 C3 00 08 */	stw r6, 8(r3)
/* 80435424 003FE9E4  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435428 003FE9E8  7C C5 2A 78 */	xor r5, r6, r5
/* 8043542C 003FE9EC  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435430 003FE9F0  7C A4 2A 14 */	add r5, r4, r5
/* 80435434 003FE9F4  38 C5 00 03 */	addi r6, r5, 3
/* 80435438 003FE9F8  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8043543C 003FE9FC  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435440 003FEA00  7C C5 2A 78 */	xor r5, r6, r5
/* 80435444 003FEA04  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435448 003FEA08  7C A4 2A 14 */	add r5, r4, r5
/* 8043544C 003FEA0C  38 C5 00 04 */	addi r6, r5, 4
/* 80435450 003FEA10  90 C3 00 10 */	stw r6, 0x10(r3)
/* 80435454 003FEA14  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435458 003FEA18  7C C5 2A 78 */	xor r5, r6, r5
/* 8043545C 003FEA1C  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435460 003FEA20  7C A4 2A 14 */	add r5, r4, r5
/* 80435464 003FEA24  38 C5 00 05 */	addi r6, r5, 5
/* 80435468 003FEA28  90 C3 00 14 */	stw r6, 0x14(r3)
/* 8043546C 003FEA2C  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435470 003FEA30  7C C5 2A 78 */	xor r5, r6, r5
/* 80435474 003FEA34  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435478 003FEA38  7C A4 2A 14 */	add r5, r4, r5
/* 8043547C 003FEA3C  38 C5 00 06 */	addi r6, r5, 6
/* 80435480 003FEA40  90 C3 00 18 */	stw r6, 0x18(r3)
/* 80435484 003FEA44  54 C5 17 BE */	srwi r5, r6, 0x1e
/* 80435488 003FEA48  7C C5 2A 78 */	xor r5, r6, r5
/* 8043548C 003FEA4C  7C A5 01 D6 */	mullw r5, r5, r0
/* 80435490 003FEA50  7C A4 2A 14 */	add r5, r4, r5
/* 80435494 003FEA54  38 84 00 08 */	addi r4, r4, 8
/* 80435498 003FEA58  38 A5 00 07 */	addi r5, r5, 7
/* 8043549C 003FEA5C  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 804354A0 003FEA60  38 63 00 20 */	addi r3, r3, 0x20
/* 804354A4 003FEA64  42 00 FF 38 */	bdnz .L_804353DC
/* 804354A8 003FEA68  38 04 FF FF */	addi r0, r4, -1
/* 804354AC 003FEA6C  3C 60 80 66 */	lis r3, twister@ha
/* 804354B0 003FEA70  54 00 10 3A */	slwi r0, r0, 2
/* 804354B4 003FEA74  39 64 00 01 */	addi r11, r4, 1
/* 804354B8 003FEA78  38 63 93 E0 */	addi r3, r3, twister@l
/* 804354BC 003FEA7C  39 44 00 02 */	addi r10, r4, 2
/* 804354C0 003FEA80  7D 03 00 2E */	lwzx r8, r3, r0
/* 804354C4 003FEA84  3C A0 6C 08 */	lis r5, 0x6C078965@ha
/* 804354C8 003FEA88  39 24 00 03 */	addi r9, r4, 3
/* 804354CC 003FEA8C  38 C0 00 01 */	li r6, 1
/* 804354D0 003FEA90  55 07 17 BE */	srwi r7, r8, 0x1e
/* 804354D4 003FEA94  38 05 89 65 */	addi r0, r5, 0x6C078965@l
/* 804354D8 003FEA98  7D 05 3A 78 */	xor r5, r8, r7
/* 804354DC 003FEA9C  39 04 00 04 */	addi r8, r4, 4
/* 804354E0 003FEAA0  7D 85 01 D6 */	mullw r12, r5, r0
/* 804354E4 003FEAA4  54 9F 10 3A */	slwi r31, r4, 2
/* 804354E8 003FEAA8  38 E4 00 05 */	addi r7, r4, 5
/* 804354EC 003FEAAC  98 CD BC E0 */	stb r6, lbl_80667E60@sda21(r13)
/* 804354F0 003FEAB0  7C A3 FA 14 */	add r5, r3, r31
/* 804354F4 003FEAB4  55 6B 10 3A */	slwi r11, r11, 2
/* 804354F8 003FEAB8  7F E4 62 14 */	add r31, r4, r12
/* 804354FC 003FEABC  93 E5 00 00 */	stw r31, 0(r5)
/* 80435500 003FEAC0  57 EC 17 BE */	srwi r12, r31, 0x1e
/* 80435504 003FEAC4  55 4A 10 3A */	slwi r10, r10, 2
/* 80435508 003FEAC8  7F EC 62 78 */	xor r12, r31, r12
/* 8043550C 003FEACC  55 29 10 3A */	slwi r9, r9, 2
/* 80435510 003FEAD0  7D 8C 01 D6 */	mullw r12, r12, r0
/* 80435514 003FEAD4  55 08 10 3A */	slwi r8, r8, 2
/* 80435518 003FEAD8  54 E7 10 3A */	slwi r7, r7, 2
/* 8043551C 003FEADC  7D 84 62 14 */	add r12, r4, r12
/* 80435520 003FEAE0  39 8C 00 01 */	addi r12, r12, 1
/* 80435524 003FEAE4  91 85 00 04 */	stw r12, 4(r5)
/* 80435528 003FEAE8  7D 83 58 2E */	lwzx r12, r3, r11
/* 8043552C 003FEAEC  55 8B 17 BE */	srwi r11, r12, 0x1e
/* 80435530 003FEAF0  7D 8B 5A 78 */	xor r11, r12, r11
/* 80435534 003FEAF4  7D 6B 01 D6 */	mullw r11, r11, r0
/* 80435538 003FEAF8  7D 64 5A 14 */	add r11, r4, r11
/* 8043553C 003FEAFC  39 6B 00 02 */	addi r11, r11, 2
/* 80435540 003FEB00  91 65 00 08 */	stw r11, 8(r5)
/* 80435544 003FEB04  7D 63 50 2E */	lwzx r11, r3, r10
/* 80435548 003FEB08  55 6A 17 BE */	srwi r10, r11, 0x1e
/* 8043554C 003FEB0C  7D 6A 52 78 */	xor r10, r11, r10
/* 80435550 003FEB10  7D 4A 01 D6 */	mullw r10, r10, r0
/* 80435554 003FEB14  7D 44 52 14 */	add r10, r4, r10
/* 80435558 003FEB18  39 4A 00 03 */	addi r10, r10, 3
/* 8043555C 003FEB1C  91 45 00 0C */	stw r10, 0xc(r5)
/* 80435560 003FEB20  7D 43 48 2E */	lwzx r10, r3, r9
/* 80435564 003FEB24  55 49 17 BE */	srwi r9, r10, 0x1e
/* 80435568 003FEB28  7D 49 4A 78 */	xor r9, r10, r9
/* 8043556C 003FEB2C  7D 29 01 D6 */	mullw r9, r9, r0
/* 80435570 003FEB30  7D 24 4A 14 */	add r9, r4, r9
/* 80435574 003FEB34  39 29 00 04 */	addi r9, r9, 4
/* 80435578 003FEB38  91 25 00 10 */	stw r9, 0x10(r5)
/* 8043557C 003FEB3C  7D 23 40 2E */	lwzx r9, r3, r8
/* 80435580 003FEB40  55 28 17 BE */	srwi r8, r9, 0x1e
/* 80435584 003FEB44  7D 28 42 78 */	xor r8, r9, r8
/* 80435588 003FEB48  7D 08 01 D6 */	mullw r8, r8, r0
/* 8043558C 003FEB4C  7D 04 42 14 */	add r8, r4, r8
/* 80435590 003FEB50  39 08 00 05 */	addi r8, r8, 5
/* 80435594 003FEB54  91 05 00 14 */	stw r8, 0x14(r5)
/* 80435598 003FEB58  7D 03 38 2E */	lwzx r8, r3, r7
/* 8043559C 003FEB5C  55 07 17 BE */	srwi r7, r8, 0x1e
/* 804355A0 003FEB60  7D 07 3A 78 */	xor r7, r8, r7
/* 804355A4 003FEB64  7C 07 01 D6 */	mullw r0, r7, r0
/* 804355A8 003FEB68  7C 84 02 14 */	add r4, r4, r0
/* 804355AC 003FEB6C  38 04 00 06 */	addi r0, r4, 6
/* 804355B0 003FEB70  90 05 00 18 */	stw r0, 0x18(r5)
/* 804355B4 003FEB74  90 C3 09 C0 */	stw r6, 0x9c0(r3)
/* 804355B8 003FEB78  90 C3 09 C4 */	stw r6, 0x9c4(r3)
/* 804355BC 003FEB7C  90 63 09 C8 */	stw r3, 0x9c8(r3)
.L_804355C0:
/* 804355C0 003FEB80  3C 60 80 66 */	lis r3, twister@ha
/* 804355C4 003FEB84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804355C8 003FEB88  38 63 93 E0 */	addi r3, r3, twister@l
/* 804355CC 003FEB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 804355D0 003FEB90  4E 80 00 20 */	blr 
.endfn getInstanceMTRand__Q22mm3mtlFv

.fn mtInit__Q32mm3mtl6MTRandFUl, global
/* 804355D4 003FEB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804355D8 003FEB98  2C 04 00 00 */	cmpwi r4, 0
/* 804355DC 003FEB9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804355E0 003FEBA0  40 82 00 0C */	bne .L_804355EC
/* 804355E4 003FEBA4  3C 80 01 2C */	lis r4, 0x012BD6AA@ha
/* 804355E8 003FEBA8  38 84 D6 AA */	addi r4, r4, 0x012BD6AA@l
.L_804355EC:
/* 804355EC 003FEBAC  3C A0 6C 08 */	lis r5, 0x6C078965@ha
/* 804355F0 003FEBB0  38 C0 00 4D */	li r6, 0x4d
/* 804355F4 003FEBB4  90 83 00 00 */	stw r4, 0(r3)
/* 804355F8 003FEBB8  38 05 89 65 */	addi r0, r5, 0x6C078965@l
/* 804355FC 003FEBBC  38 83 00 04 */	addi r4, r3, 4
/* 80435600 003FEBC0  38 A0 00 01 */	li r5, 1
/* 80435604 003FEBC4  7C C9 03 A6 */	mtctr r6
.L_80435608:
/* 80435608 003FEBC8  80 E4 FF FC */	lwz r7, -4(r4)
/* 8043560C 003FEBCC  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435610 003FEBD0  7C E6 32 78 */	xor r6, r7, r6
/* 80435614 003FEBD4  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435618 003FEBD8  7C E5 32 14 */	add r7, r5, r6
/* 8043561C 003FEBDC  90 E4 00 00 */	stw r7, 0(r4)
/* 80435620 003FEBE0  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435624 003FEBE4  7C E6 32 78 */	xor r6, r7, r6
/* 80435628 003FEBE8  7C C6 01 D6 */	mullw r6, r6, r0
/* 8043562C 003FEBEC  7C C5 32 14 */	add r6, r5, r6
/* 80435630 003FEBF0  38 E6 00 01 */	addi r7, r6, 1
/* 80435634 003FEBF4  90 E4 00 04 */	stw r7, 4(r4)
/* 80435638 003FEBF8  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 8043563C 003FEBFC  7C E6 32 78 */	xor r6, r7, r6
/* 80435640 003FEC00  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435644 003FEC04  7C C5 32 14 */	add r6, r5, r6
/* 80435648 003FEC08  38 E6 00 02 */	addi r7, r6, 2
/* 8043564C 003FEC0C  90 E4 00 08 */	stw r7, 8(r4)
/* 80435650 003FEC10  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435654 003FEC14  7C E6 32 78 */	xor r6, r7, r6
/* 80435658 003FEC18  7C C6 01 D6 */	mullw r6, r6, r0
/* 8043565C 003FEC1C  7C C5 32 14 */	add r6, r5, r6
/* 80435660 003FEC20  38 E6 00 03 */	addi r7, r6, 3
/* 80435664 003FEC24  90 E4 00 0C */	stw r7, 0xc(r4)
/* 80435668 003FEC28  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 8043566C 003FEC2C  7C E6 32 78 */	xor r6, r7, r6
/* 80435670 003FEC30  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435674 003FEC34  7C C5 32 14 */	add r6, r5, r6
/* 80435678 003FEC38  38 E6 00 04 */	addi r7, r6, 4
/* 8043567C 003FEC3C  90 E4 00 10 */	stw r7, 0x10(r4)
/* 80435680 003FEC40  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435684 003FEC44  7C E6 32 78 */	xor r6, r7, r6
/* 80435688 003FEC48  7C C6 01 D6 */	mullw r6, r6, r0
/* 8043568C 003FEC4C  7C C5 32 14 */	add r6, r5, r6
/* 80435690 003FEC50  38 E6 00 05 */	addi r7, r6, 5
/* 80435694 003FEC54  90 E4 00 14 */	stw r7, 0x14(r4)
/* 80435698 003FEC58  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 8043569C 003FEC5C  7C E6 32 78 */	xor r6, r7, r6
/* 804356A0 003FEC60  7C C6 01 D6 */	mullw r6, r6, r0
/* 804356A4 003FEC64  7C C5 32 14 */	add r6, r5, r6
/* 804356A8 003FEC68  38 E6 00 06 */	addi r7, r6, 6
/* 804356AC 003FEC6C  90 E4 00 18 */	stw r7, 0x18(r4)
/* 804356B0 003FEC70  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 804356B4 003FEC74  7C E6 32 78 */	xor r6, r7, r6
/* 804356B8 003FEC78  7C C6 01 D6 */	mullw r6, r6, r0
/* 804356BC 003FEC7C  7C C5 32 14 */	add r6, r5, r6
/* 804356C0 003FEC80  38 A5 00 08 */	addi r5, r5, 8
/* 804356C4 003FEC84  38 C6 00 07 */	addi r6, r6, 7
/* 804356C8 003FEC88  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 804356CC 003FEC8C  38 84 00 20 */	addi r4, r4, 0x20
/* 804356D0 003FEC90  42 00 FF 38 */	bdnz .L_80435608
/* 804356D4 003FEC94  38 05 FF FF */	addi r0, r5, -1
/* 804356D8 003FEC98  3C 80 6C 08 */	lis r4, 0x6C078965@ha
/* 804356DC 003FEC9C  54 00 10 3A */	slwi r0, r0, 2
/* 804356E0 003FECA0  54 AB 10 3A */	slwi r11, r5, 2
/* 804356E4 003FECA4  7C C3 00 2E */	lwzx r6, r3, r0
/* 804356E8 003FECA8  39 45 00 01 */	addi r10, r5, 1
/* 804356EC 003FECAC  39 25 00 02 */	addi r9, r5, 2
/* 804356F0 003FECB0  39 05 00 03 */	addi r8, r5, 3
/* 804356F4 003FECB4  54 C0 17 BE */	srwi r0, r6, 0x1e
/* 804356F8 003FECB8  38 E5 00 04 */	addi r7, r5, 4
/* 804356FC 003FECBC  7C C6 02 78 */	xor r6, r6, r0
/* 80435700 003FECC0  38 04 89 65 */	addi r0, r4, 0x6C078965@l
/* 80435704 003FECC4  7C 83 5A 14 */	add r4, r3, r11
/* 80435708 003FECC8  7D 86 01 D6 */	mullw r12, r6, r0
/* 8043570C 003FECCC  55 4B 10 3A */	slwi r11, r10, 2
/* 80435710 003FECD0  55 2A 10 3A */	slwi r10, r9, 2
/* 80435714 003FECD4  55 09 10 3A */	slwi r9, r8, 2
/* 80435718 003FECD8  54 E8 10 3A */	slwi r8, r7, 2
/* 8043571C 003FECDC  38 C5 00 05 */	addi r6, r5, 5
/* 80435720 003FECE0  7F E5 62 14 */	add r31, r5, r12
/* 80435724 003FECE4  54 C7 10 3A */	slwi r7, r6, 2
/* 80435728 003FECE8  57 EC 17 BE */	srwi r12, r31, 0x1e
/* 8043572C 003FECEC  93 E4 00 00 */	stw r31, 0(r4)
/* 80435730 003FECF0  7F EC 62 78 */	xor r12, r31, r12
/* 80435734 003FECF4  38 C0 00 01 */	li r6, 1
/* 80435738 003FECF8  7D 8C 01 D6 */	mullw r12, r12, r0
/* 8043573C 003FECFC  7D 85 62 14 */	add r12, r5, r12
/* 80435740 003FED00  39 8C 00 01 */	addi r12, r12, 1
/* 80435744 003FED04  91 84 00 04 */	stw r12, 4(r4)
/* 80435748 003FED08  7D 83 58 2E */	lwzx r12, r3, r11
/* 8043574C 003FED0C  55 8B 17 BE */	srwi r11, r12, 0x1e
/* 80435750 003FED10  7D 8B 5A 78 */	xor r11, r12, r11
/* 80435754 003FED14  7D 6B 01 D6 */	mullw r11, r11, r0
/* 80435758 003FED18  7D 65 5A 14 */	add r11, r5, r11
/* 8043575C 003FED1C  39 6B 00 02 */	addi r11, r11, 2
/* 80435760 003FED20  91 64 00 08 */	stw r11, 8(r4)
/* 80435764 003FED24  7D 63 50 2E */	lwzx r11, r3, r10
/* 80435768 003FED28  55 6A 17 BE */	srwi r10, r11, 0x1e
/* 8043576C 003FED2C  7D 6A 52 78 */	xor r10, r11, r10
/* 80435770 003FED30  7D 4A 01 D6 */	mullw r10, r10, r0
/* 80435774 003FED34  7D 45 52 14 */	add r10, r5, r10
/* 80435778 003FED38  39 4A 00 03 */	addi r10, r10, 3
/* 8043577C 003FED3C  91 44 00 0C */	stw r10, 0xc(r4)
/* 80435780 003FED40  7D 43 48 2E */	lwzx r10, r3, r9
/* 80435784 003FED44  55 49 17 BE */	srwi r9, r10, 0x1e
/* 80435788 003FED48  7D 49 4A 78 */	xor r9, r10, r9
/* 8043578C 003FED4C  7D 29 01 D6 */	mullw r9, r9, r0
/* 80435790 003FED50  7D 25 4A 14 */	add r9, r5, r9
/* 80435794 003FED54  39 29 00 04 */	addi r9, r9, 4
/* 80435798 003FED58  91 24 00 10 */	stw r9, 0x10(r4)
/* 8043579C 003FED5C  7D 23 40 2E */	lwzx r9, r3, r8
/* 804357A0 003FED60  55 28 17 BE */	srwi r8, r9, 0x1e
/* 804357A4 003FED64  7D 28 42 78 */	xor r8, r9, r8
/* 804357A8 003FED68  7D 08 01 D6 */	mullw r8, r8, r0
/* 804357AC 003FED6C  7D 05 42 14 */	add r8, r5, r8
/* 804357B0 003FED70  39 08 00 05 */	addi r8, r8, 5
/* 804357B4 003FED74  91 04 00 14 */	stw r8, 0x14(r4)
/* 804357B8 003FED78  7D 03 38 2E */	lwzx r8, r3, r7
/* 804357BC 003FED7C  55 07 17 BE */	srwi r7, r8, 0x1e
/* 804357C0 003FED80  7D 07 3A 78 */	xor r7, r8, r7
/* 804357C4 003FED84  7C 07 01 D6 */	mullw r0, r7, r0
/* 804357C8 003FED88  7C A5 02 14 */	add r5, r5, r0
/* 804357CC 003FED8C  38 05 00 06 */	addi r0, r5, 6
/* 804357D0 003FED90  90 04 00 18 */	stw r0, 0x18(r4)
/* 804357D4 003FED94  90 C3 09 C0 */	stw r6, 0x9c0(r3)
/* 804357D8 003FED98  90 C3 09 C4 */	stw r6, 0x9c4(r3)
/* 804357DC 003FED9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804357E0 003FEDA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804357E4 003FEDA4  4E 80 00 20 */	blr 
.endfn mtInit__Q32mm3mtl6MTRandFUl

.fn nextMt__Q32mm3mtl6MTRandFv, global
/* 804357E8 003FEDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804357EC 003FEDAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804357F0 003FEDB0  80 03 09 C4 */	lwz r0, 0x9c4(r3)
/* 804357F4 003FEDB4  2C 00 00 00 */	cmpwi r0, 0
/* 804357F8 003FEDB8  40 82 01 F8 */	bne .L_804359F0
/* 804357FC 003FEDBC  3C 80 6C 08 */	lis r4, 0x6C078965@ha
/* 80435800 003FEDC0  38 C0 00 4D */	li r6, 0x4d
/* 80435804 003FEDC4  38 00 15 71 */	li r0, 0x1571
/* 80435808 003FEDC8  90 03 00 00 */	stw r0, 0(r3)
/* 8043580C 003FEDCC  38 04 89 65 */	addi r0, r4, 0x6C078965@l
/* 80435810 003FEDD0  38 A3 00 04 */	addi r5, r3, 4
/* 80435814 003FEDD4  38 80 00 01 */	li r4, 1
/* 80435818 003FEDD8  7C C9 03 A6 */	mtctr r6
.L_8043581C:
/* 8043581C 003FEDDC  80 E5 FF FC */	lwz r7, -4(r5)
/* 80435820 003FEDE0  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435824 003FEDE4  7C E6 32 78 */	xor r6, r7, r6
/* 80435828 003FEDE8  7C C6 01 D6 */	mullw r6, r6, r0
/* 8043582C 003FEDEC  7C E4 32 14 */	add r7, r4, r6
/* 80435830 003FEDF0  90 E5 00 00 */	stw r7, 0(r5)
/* 80435834 003FEDF4  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435838 003FEDF8  7C E6 32 78 */	xor r6, r7, r6
/* 8043583C 003FEDFC  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435840 003FEE00  7C C4 32 14 */	add r6, r4, r6
/* 80435844 003FEE04  38 E6 00 01 */	addi r7, r6, 1
/* 80435848 003FEE08  90 E5 00 04 */	stw r7, 4(r5)
/* 8043584C 003FEE0C  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435850 003FEE10  7C E6 32 78 */	xor r6, r7, r6
/* 80435854 003FEE14  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435858 003FEE18  7C C4 32 14 */	add r6, r4, r6
/* 8043585C 003FEE1C  38 E6 00 02 */	addi r7, r6, 2
/* 80435860 003FEE20  90 E5 00 08 */	stw r7, 8(r5)
/* 80435864 003FEE24  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435868 003FEE28  7C E6 32 78 */	xor r6, r7, r6
/* 8043586C 003FEE2C  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435870 003FEE30  7C C4 32 14 */	add r6, r4, r6
/* 80435874 003FEE34  38 E6 00 03 */	addi r7, r6, 3
/* 80435878 003FEE38  90 E5 00 0C */	stw r7, 0xc(r5)
/* 8043587C 003FEE3C  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435880 003FEE40  7C E6 32 78 */	xor r6, r7, r6
/* 80435884 003FEE44  7C C6 01 D6 */	mullw r6, r6, r0
/* 80435888 003FEE48  7C C4 32 14 */	add r6, r4, r6
/* 8043588C 003FEE4C  38 E6 00 04 */	addi r7, r6, 4
/* 80435890 003FEE50  90 E5 00 10 */	stw r7, 0x10(r5)
/* 80435894 003FEE54  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 80435898 003FEE58  7C E6 32 78 */	xor r6, r7, r6
/* 8043589C 003FEE5C  7C C6 01 D6 */	mullw r6, r6, r0
/* 804358A0 003FEE60  7C C4 32 14 */	add r6, r4, r6
/* 804358A4 003FEE64  38 E6 00 05 */	addi r7, r6, 5
/* 804358A8 003FEE68  90 E5 00 14 */	stw r7, 0x14(r5)
/* 804358AC 003FEE6C  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 804358B0 003FEE70  7C E6 32 78 */	xor r6, r7, r6
/* 804358B4 003FEE74  7C C6 01 D6 */	mullw r6, r6, r0
/* 804358B8 003FEE78  7C C4 32 14 */	add r6, r4, r6
/* 804358BC 003FEE7C  38 E6 00 06 */	addi r7, r6, 6
/* 804358C0 003FEE80  90 E5 00 18 */	stw r7, 0x18(r5)
/* 804358C4 003FEE84  54 E6 17 BE */	srwi r6, r7, 0x1e
/* 804358C8 003FEE88  7C E6 32 78 */	xor r6, r7, r6
/* 804358CC 003FEE8C  7C C6 01 D6 */	mullw r6, r6, r0
/* 804358D0 003FEE90  7C C4 32 14 */	add r6, r4, r6
/* 804358D4 003FEE94  38 84 00 08 */	addi r4, r4, 8
/* 804358D8 003FEE98  38 C6 00 07 */	addi r6, r6, 7
/* 804358DC 003FEE9C  90 C5 00 1C */	stw r6, 0x1c(r5)
/* 804358E0 003FEEA0  38 A5 00 20 */	addi r5, r5, 0x20
/* 804358E4 003FEEA4  42 00 FF 38 */	bdnz .L_8043581C
/* 804358E8 003FEEA8  38 04 FF FF */	addi r0, r4, -1
/* 804358EC 003FEEAC  3C A0 6C 08 */	lis r5, 0x6C078965@ha
/* 804358F0 003FEEB0  54 00 10 3A */	slwi r0, r0, 2
/* 804358F4 003FEEB4  54 8B 10 3A */	slwi r11, r4, 2
/* 804358F8 003FEEB8  7C C3 00 2E */	lwzx r6, r3, r0
/* 804358FC 003FEEBC  39 44 00 01 */	addi r10, r4, 1
/* 80435900 003FEEC0  39 24 00 02 */	addi r9, r4, 2
/* 80435904 003FEEC4  39 04 00 03 */	addi r8, r4, 3
/* 80435908 003FEEC8  54 C0 17 BE */	srwi r0, r6, 0x1e
/* 8043590C 003FEECC  38 E4 00 04 */	addi r7, r4, 4
/* 80435910 003FEED0  7C C6 02 78 */	xor r6, r6, r0
/* 80435914 003FEED4  38 05 89 65 */	addi r0, r5, 0x6C078965@l
/* 80435918 003FEED8  7C A3 5A 14 */	add r5, r3, r11
/* 8043591C 003FEEDC  7D 86 01 D6 */	mullw r12, r6, r0
/* 80435920 003FEEE0  55 4B 10 3A */	slwi r11, r10, 2
/* 80435924 003FEEE4  55 2A 10 3A */	slwi r10, r9, 2
/* 80435928 003FEEE8  55 09 10 3A */	slwi r9, r8, 2
/* 8043592C 003FEEEC  54 E8 10 3A */	slwi r8, r7, 2
/* 80435930 003FEEF0  38 C4 00 05 */	addi r6, r4, 5
/* 80435934 003FEEF4  7F E4 62 14 */	add r31, r4, r12
/* 80435938 003FEEF8  54 C7 10 3A */	slwi r7, r6, 2
/* 8043593C 003FEEFC  57 EC 17 BE */	srwi r12, r31, 0x1e
/* 80435940 003FEF00  93 E5 00 00 */	stw r31, 0(r5)
/* 80435944 003FEF04  7F EC 62 78 */	xor r12, r31, r12
/* 80435948 003FEF08  38 C0 00 01 */	li r6, 1
/* 8043594C 003FEF0C  7D 8C 01 D6 */	mullw r12, r12, r0
/* 80435950 003FEF10  7D 84 62 14 */	add r12, r4, r12
/* 80435954 003FEF14  39 8C 00 01 */	addi r12, r12, 1
/* 80435958 003FEF18  91 85 00 04 */	stw r12, 4(r5)
/* 8043595C 003FEF1C  7D 83 58 2E */	lwzx r12, r3, r11
/* 80435960 003FEF20  55 8B 17 BE */	srwi r11, r12, 0x1e
/* 80435964 003FEF24  7D 8B 5A 78 */	xor r11, r12, r11
/* 80435968 003FEF28  7D 6B 01 D6 */	mullw r11, r11, r0
/* 8043596C 003FEF2C  7D 64 5A 14 */	add r11, r4, r11
/* 80435970 003FEF30  39 6B 00 02 */	addi r11, r11, 2
/* 80435974 003FEF34  91 65 00 08 */	stw r11, 8(r5)
/* 80435978 003FEF38  7D 63 50 2E */	lwzx r11, r3, r10
/* 8043597C 003FEF3C  55 6A 17 BE */	srwi r10, r11, 0x1e
/* 80435980 003FEF40  7D 6A 52 78 */	xor r10, r11, r10
/* 80435984 003FEF44  7D 4A 01 D6 */	mullw r10, r10, r0
/* 80435988 003FEF48  7D 44 52 14 */	add r10, r4, r10
/* 8043598C 003FEF4C  39 4A 00 03 */	addi r10, r10, 3
/* 80435990 003FEF50  91 45 00 0C */	stw r10, 0xc(r5)
/* 80435994 003FEF54  7D 43 48 2E */	lwzx r10, r3, r9
/* 80435998 003FEF58  55 49 17 BE */	srwi r9, r10, 0x1e
/* 8043599C 003FEF5C  7D 49 4A 78 */	xor r9, r10, r9
/* 804359A0 003FEF60  7D 29 01 D6 */	mullw r9, r9, r0
/* 804359A4 003FEF64  7D 24 4A 14 */	add r9, r4, r9
/* 804359A8 003FEF68  39 29 00 04 */	addi r9, r9, 4
/* 804359AC 003FEF6C  91 25 00 10 */	stw r9, 0x10(r5)
/* 804359B0 003FEF70  7D 23 40 2E */	lwzx r9, r3, r8
/* 804359B4 003FEF74  55 28 17 BE */	srwi r8, r9, 0x1e
/* 804359B8 003FEF78  7D 28 42 78 */	xor r8, r9, r8
/* 804359BC 003FEF7C  7D 08 01 D6 */	mullw r8, r8, r0
/* 804359C0 003FEF80  7D 04 42 14 */	add r8, r4, r8
/* 804359C4 003FEF84  39 08 00 05 */	addi r8, r8, 5
/* 804359C8 003FEF88  91 05 00 14 */	stw r8, 0x14(r5)
/* 804359CC 003FEF8C  7D 03 38 2E */	lwzx r8, r3, r7
/* 804359D0 003FEF90  55 07 17 BE */	srwi r7, r8, 0x1e
/* 804359D4 003FEF94  7D 07 3A 78 */	xor r7, r8, r7
/* 804359D8 003FEF98  7C 07 01 D6 */	mullw r0, r7, r0
/* 804359DC 003FEF9C  7C 84 02 14 */	add r4, r4, r0
/* 804359E0 003FEFA0  38 04 00 06 */	addi r0, r4, 6
/* 804359E4 003FEFA4  90 05 00 18 */	stw r0, 0x18(r5)
/* 804359E8 003FEFA8  90 C3 09 C0 */	stw r6, 0x9c0(r3)
/* 804359EC 003FEFAC  90 C3 09 C4 */	stw r6, 0x9c4(r3)
.L_804359F0:
/* 804359F0 003FEFB0  38 00 02 70 */	li r0, 0x270
/* 804359F4 003FEFB4  3C A0 99 09 */	lis r5, 0x9908B0DF@ha
/* 804359F8 003FEFB8  90 03 09 C0 */	stw r0, 0x9c0(r3)
/* 804359FC 003FEFBC  7C 64 1B 78 */	mr r4, r3
/* 80435A00 003FEFC0  38 A5 B0 DF */	addi r5, r5, 0x9908B0DF@l
/* 80435A04 003FEFC4  39 20 00 E4 */	li r9, 0xe4
/* 80435A08 003FEFC8  90 63 09 C8 */	stw r3, 0x9c8(r3)
/* 80435A0C 003FEFCC  48 00 00 38 */	b .L_80435A44
.L_80435A10:
/* 80435A10 003FEFD0  80 E4 00 04 */	lwz r7, 4(r4)
/* 80435A14 003FEFD4  80 C4 00 00 */	lwz r6, 0(r4)
/* 80435A18 003FEFD8  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 80435A1C 003FEFDC  54 E8 00 7E */	clrlwi r8, r7, 1
/* 80435A20 003FEFE0  50 C8 00 00 */	rlwimi r8, r6, 0, 0, 0
/* 80435A24 003FEFE4  80 E4 06 34 */	lwz r7, 0x634(r4)
/* 80435A28 003FEFE8  7C 00 00 D0 */	neg r0, r0
/* 80435A2C 003FEFEC  7C A6 00 38 */	and r6, r5, r0
/* 80435A30 003FEFF0  55 00 F8 7E */	srwi r0, r8, 1
/* 80435A34 003FEFF4  7C C0 02 78 */	xor r0, r6, r0
/* 80435A38 003FEFF8  7C E0 02 78 */	xor r0, r7, r0
/* 80435A3C 003FEFFC  90 04 00 00 */	stw r0, 0(r4)
/* 80435A40 003FF000  38 84 00 04 */	addi r4, r4, 4
.L_80435A44:
/* 80435A44 003FF004  35 29 FF FF */	addic. r9, r9, -1
/* 80435A48 003FF008  40 82 FF C8 */	bne .L_80435A10
/* 80435A4C 003FF00C  3C A0 99 09 */	lis r5, 0x9908B0DF@ha
/* 80435A50 003FF010  39 20 01 8D */	li r9, 0x18d
/* 80435A54 003FF014  38 A5 B0 DF */	addi r5, r5, 0x9908B0DF@l
/* 80435A58 003FF018  48 00 00 38 */	b .L_80435A90
.L_80435A5C:
/* 80435A5C 003FF01C  80 E4 00 04 */	lwz r7, 4(r4)
/* 80435A60 003FF020  80 C4 00 00 */	lwz r6, 0(r4)
/* 80435A64 003FF024  54 E0 07 FE */	clrlwi r0, r7, 0x1f
/* 80435A68 003FF028  54 E8 00 7E */	clrlwi r8, r7, 1
/* 80435A6C 003FF02C  50 C8 00 00 */	rlwimi r8, r6, 0, 0, 0
/* 80435A70 003FF030  80 E4 FC 74 */	lwz r7, -0x38c(r4)
/* 80435A74 003FF034  7C 00 00 D0 */	neg r0, r0
/* 80435A78 003FF038  7C A6 00 38 */	and r6, r5, r0
/* 80435A7C 003FF03C  55 00 F8 7E */	srwi r0, r8, 1
/* 80435A80 003FF040  7C C0 02 78 */	xor r0, r6, r0
/* 80435A84 003FF044  7C E0 02 78 */	xor r0, r7, r0
/* 80435A88 003FF048  90 04 00 00 */	stw r0, 0(r4)
/* 80435A8C 003FF04C  38 84 00 04 */	addi r4, r4, 4
.L_80435A90:
/* 80435A90 003FF050  35 29 FF FF */	addic. r9, r9, -1
/* 80435A94 003FF054  40 82 FF C8 */	bne .L_80435A5C
/* 80435A98 003FF058  80 C3 00 00 */	lwz r6, 0(r3)
/* 80435A9C 003FF05C  3C 60 99 09 */	lis r3, 0x9908B0DF@ha
/* 80435AA0 003FF060  80 A4 00 00 */	lwz r5, 0(r4)
/* 80435AA4 003FF064  38 03 B0 DF */	addi r0, r3, 0x9908B0DF@l
/* 80435AA8 003FF068  54 C3 07 FE */	clrlwi r3, r6, 0x1f
/* 80435AAC 003FF06C  54 C6 00 7E */	clrlwi r6, r6, 1
/* 80435AB0 003FF070  50 A6 00 00 */	rlwimi r6, r5, 0, 0, 0
/* 80435AB4 003FF074  80 A4 FC 74 */	lwz r5, -0x38c(r4)
/* 80435AB8 003FF078  7C 63 00 D0 */	neg r3, r3
/* 80435ABC 003FF07C  7C 03 18 38 */	and r3, r0, r3
/* 80435AC0 003FF080  54 C0 F8 7E */	srwi r0, r6, 1
/* 80435AC4 003FF084  7C 60 02 78 */	xor r0, r3, r0
/* 80435AC8 003FF088  7C A0 02 78 */	xor r0, r5, r0
/* 80435ACC 003FF08C  90 04 00 00 */	stw r0, 0(r4)
/* 80435AD0 003FF090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435AD4 003FF094  38 21 00 10 */	addi r1, r1, 0x10
/* 80435AD8 003FF098  4E 80 00 20 */	blr 
.endfn nextMt__Q32mm3mtl6MTRandFv

.fn rand__Q32mm3mtl6MTRandFv, global
/* 80435ADC 003FF09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80435AE0 003FF0A0  7C 08 02 A6 */	mflr r0
/* 80435AE4 003FF0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80435AE8 003FF0A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80435AEC 003FF0AC  7C 7F 1B 78 */	mr r31, r3
/* 80435AF0 003FF0B0  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 80435AF4 003FF0B4  34 04 FF FF */	addic. r0, r4, -1
/* 80435AF8 003FF0B8  90 03 09 C0 */	stw r0, 0x9c0(r3)
/* 80435AFC 003FF0BC  41 81 00 08 */	bgt .L_80435B04
/* 80435B00 003FF0C0  4B FF FC E9 */	bl nextMt__Q32mm3mtl6MTRandFv
.L_80435B04:
/* 80435B04 003FF0C4  80 9F 09 C8 */	lwz r4, 0x9c8(r31)
/* 80435B08 003FF0C8  3C 60 9D 2C */	lis r3, 0x9D2C5680@ha
/* 80435B0C 003FF0CC  38 03 56 80 */	addi r0, r3, 0x9D2C5680@l
/* 80435B10 003FF0D0  38 64 00 04 */	addi r3, r4, 4
/* 80435B14 003FF0D4  90 7F 09 C8 */	stw r3, 0x9c8(r31)
/* 80435B18 003FF0D8  80 84 00 00 */	lwz r4, 0(r4)
/* 80435B1C 003FF0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80435B20 003FF0E0  54 83 AA FE */	srwi r3, r4, 0xb
/* 80435B24 003FF0E4  7C 84 1A 78 */	xor r4, r4, r3
/* 80435B28 003FF0E8  54 83 38 30 */	slwi r3, r4, 7
/* 80435B2C 003FF0EC  7C 60 00 38 */	and r0, r3, r0
/* 80435B30 003FF0F0  7C 84 02 78 */	xor r4, r4, r0
/* 80435B34 003FF0F4  54 80 78 20 */	slwi r0, r4, 0xf
/* 80435B38 003FF0F8  74 00 EF C6 */	andis. r0, r0, 0xefc6
/* 80435B3C 003FF0FC  7C 84 02 78 */	xor r4, r4, r0
/* 80435B40 003FF100  54 80 74 BE */	srwi r0, r4, 0x12
/* 80435B44 003FF104  7C 84 02 78 */	xor r4, r4, r0
/* 80435B48 003FF108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80435B4C 003FF10C  54 83 F8 7E */	srwi r3, r4, 1
/* 80435B50 003FF110  7C 08 03 A6 */	mtlr r0
/* 80435B54 003FF114  38 21 00 10 */	addi r1, r1, 0x10
/* 80435B58 003FF118  4E 80 00 20 */	blr 
.endfn rand__Q32mm3mtl6MTRandFv

.fn randFloat__Q32mm3mtl6MTRandFv, global
/* 80435B5C 003FF11C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80435B60 003FF120  7C 08 02 A6 */	mflr r0
/* 80435B64 003FF124  90 01 00 24 */	stw r0, 0x24(r1)
/* 80435B68 003FF128  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80435B6C 003FF12C  7C 7F 1B 78 */	mr r31, r3
/* 80435B70 003FF130  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 80435B74 003FF134  34 04 FF FF */	addic. r0, r4, -1
/* 80435B78 003FF138  90 03 09 C0 */	stw r0, 0x9c0(r3)
/* 80435B7C 003FF13C  41 81 00 08 */	bgt .L_80435B84
/* 80435B80 003FF140  4B FF FC 69 */	bl nextMt__Q32mm3mtl6MTRandFv
.L_80435B84:
/* 80435B84 003FF144  80 BF 09 C8 */	lwz r5, 0x9c8(r31)
/* 80435B88 003FF148  3C 00 43 30 */	lis r0, 0x4330
/* 80435B8C 003FF14C  3C 60 9D 2C */	lis r3, 0x9D2C5680@ha
/* 80435B90 003FF150  90 01 00 08 */	stw r0, 8(r1)
/* 80435B94 003FF154  38 85 00 04 */	addi r4, r5, 4
/* 80435B98 003FF158  C8 42 C6 58 */	lfd f2, double_8066C9D8@sda21(r2)
/* 80435B9C 003FF15C  90 9F 09 C8 */	stw r4, 0x9c8(r31)
/* 80435BA0 003FF160  38 03 56 80 */	addi r0, r3, 0x9D2C5680@l
/* 80435BA4 003FF164  C0 02 C6 50 */	lfs f0, float_8066C9D0@sda21(r2)
/* 80435BA8 003FF168  80 85 00 00 */	lwz r4, 0(r5)
/* 80435BAC 003FF16C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80435BB0 003FF170  54 83 AA FE */	srwi r3, r4, 0xb
/* 80435BB4 003FF174  7C 84 1A 78 */	xor r4, r4, r3
/* 80435BB8 003FF178  54 83 38 30 */	slwi r3, r4, 7
/* 80435BBC 003FF17C  7C 60 00 38 */	and r0, r3, r0
/* 80435BC0 003FF180  7C 84 02 78 */	xor r4, r4, r0
/* 80435BC4 003FF184  54 80 78 20 */	slwi r0, r4, 0xf
/* 80435BC8 003FF188  74 00 EF C6 */	andis. r0, r0, 0xefc6
/* 80435BCC 003FF18C  7C 84 02 78 */	xor r4, r4, r0
/* 80435BD0 003FF190  54 80 74 BE */	srwi r0, r4, 0x12
/* 80435BD4 003FF194  7C 84 02 78 */	xor r4, r4, r0
/* 80435BD8 003FF198  90 81 00 0C */	stw r4, 0xc(r1)
/* 80435BDC 003FF19C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80435BE0 003FF1A0  C8 21 00 08 */	lfd f1, 8(r1)
/* 80435BE4 003FF1A4  EC 21 10 28 */	fsubs f1, f1, f2
/* 80435BE8 003FF1A8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80435BEC 003FF1AC  7C 08 03 A6 */	mtlr r0
/* 80435BF0 003FF1B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80435BF4 003FF1B4  4E 80 00 20 */	blr 
.endfn randFloat__Q32mm3mtl6MTRandFv

.fn randFloat1__Q32mm3mtl6MTRandFv, global
/* 80435BF8 003FF1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80435BFC 003FF1BC  7C 08 02 A6 */	mflr r0
/* 80435C00 003FF1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80435C04 003FF1C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80435C08 003FF1C8  7C 7F 1B 78 */	mr r31, r3
/* 80435C0C 003FF1CC  80 83 09 C0 */	lwz r4, 0x9c0(r3)
/* 80435C10 003FF1D0  34 04 FF FF */	addic. r0, r4, -1
/* 80435C14 003FF1D4  90 03 09 C0 */	stw r0, 0x9c0(r3)
/* 80435C18 003FF1D8  41 81 00 08 */	bgt .L_80435C20
/* 80435C1C 003FF1DC  4B FF FB CD */	bl nextMt__Q32mm3mtl6MTRandFv
.L_80435C20:
/* 80435C20 003FF1E0  80 BF 09 C8 */	lwz r5, 0x9c8(r31)
/* 80435C24 003FF1E4  3C 00 43 30 */	lis r0, 0x4330
/* 80435C28 003FF1E8  3C 60 9D 2C */	lis r3, 0x9D2C5680@ha
/* 80435C2C 003FF1EC  90 01 00 08 */	stw r0, 8(r1)
/* 80435C30 003FF1F0  38 85 00 04 */	addi r4, r5, 4
/* 80435C34 003FF1F4  C8 62 C6 58 */	lfd f3, double_8066C9D8@sda21(r2)
/* 80435C38 003FF1F8  90 9F 09 C8 */	stw r4, 0x9c8(r31)
/* 80435C3C 003FF1FC  38 03 56 80 */	addi r0, r3, 0x9D2C5680@l
/* 80435C40 003FF200  C0 22 C6 60 */	lfs f1, float_8066C9E0@sda21(r2)
/* 80435C44 003FF204  80 85 00 00 */	lwz r4, 0(r5)
/* 80435C48 003FF208  C0 02 C6 50 */	lfs f0, float_8066C9D0@sda21(r2)
/* 80435C4C 003FF20C  54 83 AA FE */	srwi r3, r4, 0xb
/* 80435C50 003FF210  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80435C54 003FF214  7C 84 1A 78 */	xor r4, r4, r3
/* 80435C58 003FF218  54 83 38 30 */	slwi r3, r4, 7
/* 80435C5C 003FF21C  7C 60 00 38 */	and r0, r3, r0
/* 80435C60 003FF220  7C 84 02 78 */	xor r4, r4, r0
/* 80435C64 003FF224  54 80 78 20 */	slwi r0, r4, 0xf
/* 80435C68 003FF228  74 00 EF C6 */	andis. r0, r0, 0xefc6
/* 80435C6C 003FF22C  7C 84 02 78 */	xor r4, r4, r0
/* 80435C70 003FF230  54 80 74 BE */	srwi r0, r4, 0x12
/* 80435C74 003FF234  7C 84 02 78 */	xor r4, r4, r0
/* 80435C78 003FF238  90 81 00 0C */	stw r4, 0xc(r1)
/* 80435C7C 003FF23C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80435C80 003FF240  C8 41 00 08 */	lfd f2, 8(r1)
/* 80435C84 003FF244  EC 42 18 28 */	fsubs f2, f2, f3
/* 80435C88 003FF248  EC 21 10 2A */	fadds f1, f1, f2
/* 80435C8C 003FF24C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80435C90 003FF250  7C 08 03 A6 */	mtlr r0
/* 80435C94 003FF254  38 21 00 20 */	addi r1, r1, 0x20
/* 80435C98 003FF258  4E 80 00 20 */	blr 
.endfn randFloat1__Q32mm3mtl6MTRandFv

.fn PointInRect__Q22mm3mtlFP4RectP4Rect, global
/* 80435C9C 003FF25C  A8 A3 00 00 */	lha r5, 0(r3)
/* 80435CA0 003FF260  A8 C4 00 00 */	lha r6, 0(r4)
/* 80435CA4 003FF264  7C 06 28 00 */	cmpw r6, r5
/* 80435CA8 003FF268  40 80 00 0C */	bge .L_80435CB4
/* 80435CAC 003FF26C  38 60 00 00 */	li r3, 0
/* 80435CB0 003FF270  4E 80 00 20 */	blr
.L_80435CB4:
/* 80435CB4 003FF274  A8 03 00 04 */	lha r0, 4(r3)
/* 80435CB8 003FF278  7C 05 02 14 */	add r0, r5, r0
/* 80435CBC 003FF27C  7C 00 07 34 */	extsh r0, r0
/* 80435CC0 003FF280  7C 06 00 00 */	cmpw r6, r0
/* 80435CC4 003FF284  41 80 00 0C */	blt .L_80435CD0
/* 80435CC8 003FF288  38 60 00 00 */	li r3, 0
/* 80435CCC 003FF28C  4E 80 00 20 */	blr
.L_80435CD0:
/* 80435CD0 003FF290  A8 A3 00 02 */	lha r5, 2(r3)
/* 80435CD4 003FF294  A8 C4 00 02 */	lha r6, 2(r4)
/* 80435CD8 003FF298  7C 06 28 00 */	cmpw r6, r5
/* 80435CDC 003FF29C  40 80 00 0C */	bge .L_80435CE8
/* 80435CE0 003FF2A0  38 60 00 00 */	li r3, 0
/* 80435CE4 003FF2A4  4E 80 00 20 */	blr
.L_80435CE8:
/* 80435CE8 003FF2A8  A8 03 00 06 */	lha r0, 6(r3)
/* 80435CEC 003FF2AC  7C 05 02 14 */	add r0, r5, r0
/* 80435CF0 003FF2B0  7C 04 07 34 */	extsh r4, r0
/* 80435CF4 003FF2B4  7C 80 32 78 */	xor r0, r4, r6
/* 80435CF8 003FF2B8  7C 03 0E 70 */	srawi r3, r0, 1
/* 80435CFC 003FF2BC  7C 00 20 38 */	and r0, r0, r4
/* 80435D00 003FF2C0  7C 00 18 50 */	subf r0, r0, r3
/* 80435D04 003FF2C4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 80435D08 003FF2C8  4E 80 00 20 */	blr
.endfn PointInRect__Q22mm3mtlFP4RectP4Rect

.fn __sinit_MTRand_cpp, global
/* 80435D0C 003FF2CC  38 6D BC E8 */	addi r3, r13, lbl_80667E68@sda21
/* 80435D10 003FF2D0  38 00 00 00 */	li r0, 0
/* 80435D14 003FF2D4  B0 0D BC E8 */	sth r0, lbl_80667E68@sda21(r13)
/* 80435D18 003FF2D8  B0 03 00 02 */	sth r0, 2(r3)
/* 80435D1C 003FF2DC  B0 03 00 04 */	sth r0, 4(r3)
/* 80435D20 003FF2E0  B0 03 00 06 */	sth r0, 6(r3)
/* 80435D24 003FF2E4  4E 80 00 20 */	blr 
.endfn __sinit_MTRand_cpp



.section .ctors, "wa"  # 0x804F5900 - 0x804F5B00

.balign 4

.4byte __sinit_MTRand_cpp


.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0



.global float_8066C9D0
float_8066C9D0:
	.4byte 0x2F800000
	.4byte 0


#unsigned int to float constant
.global double_8066C9D8
double_8066C9D8:
	.8byte 0x4330000000000000 #unsigned int to float constant

.global float_8066C9E0
float_8066C9E0:
	.float 0.5
	.4byte 0

.section .bss, "wa"  # 0x80573C80 - 0x8066417B



twister:
	.skip 0x9D0

.section .sbss, "wa"  # 0x80666600 - 0x8066836F



.global lbl_80667E60
lbl_80667E60:
	.skip 0x8
.global lbl_80667E68
lbl_80667E68:
	.skip 0x8

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001C040", local
.hidden "@etb_8001C040"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C040"

.obj "@etb_8001C048", local
.hidden "@etb_8001C048"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C048"

.obj "@etb_8001C050", local
.hidden "@etb_8001C050"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C050"

.obj "@etb_8001C058", local
.hidden "@etb_8001C058"
	.4byte 0x08080000
	.4byte 0x00000000
.endobj "@etb_8001C058"

.obj "@etb_8001C060", local
.hidden "@etb_8001C060"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001C060"

.obj "@etb_8001C068", local
.hidden "@etb_8001C068"
	.4byte 0x080A0000
	.4byte 0x00000000
.endobj "@etb_8001C068"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_80033C2C", local
.hidden "@eti_80033C2C"
	.4byte getInstanceMTRand__Q22mm3mtlFv
	.4byte 0x00000238
	.4byte "@etb_8001C040"
.endobj "@eti_80033C2C"

.obj "@eti_80033C38", local
.hidden "@eti_80033C38"
	.4byte mtInit__Q32mm3mtl6MTRandFUl
	.4byte 0x00000214
	.4byte "@etb_8001C048"
.endobj "@eti_80033C38"

.obj "@eti_80033C44", local
.hidden "@eti_80033C44"
	.4byte nextMt__Q32mm3mtl6MTRandFv
	.4byte 0x000002F4
	.4byte "@etb_8001C050"
.endobj "@eti_80033C44"

.obj "@eti_80033C50", local
.hidden "@eti_80033C50"
	.4byte rand__Q32mm3mtl6MTRandFv
	.4byte 0x00000080
	.4byte "@etb_8001C058"
.endobj "@eti_80033C50"

.obj "@eti_80033C5C", local
.hidden "@eti_80033C5C"
	.4byte randFloat__Q32mm3mtl6MTRandFv
	.4byte 0x0000009C
	.4byte "@etb_8001C060"
.endobj "@eti_80033C5C"

.obj "@eti_80033C68", local
.hidden "@eti_80033C68"
	.4byte randFloat1__Q32mm3mtl6MTRandFv
	.4byte 0x000000A4
	.4byte "@etb_8001C068"
.endobj "@eti_80033C68"
