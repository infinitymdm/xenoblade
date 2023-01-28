.include "macros.inc"
.file "nw4r/snd/snd_VoiceManager.o"

# 0x80428C58 - 0x804293D0
.text
.balign 4

# nw4r::snd::detail::VoiceManager::GetInstance()
.fn GetInstance__Q44nw4r3snd6detail12VoiceManagerFv, global
/* 80428C58 003F2218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428C5C 003F221C  7C 08 02 A6 */	mflr r0
/* 80428C60 003F2220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428C64 003F2224  88 0D BC 90 */	lbz r0, lbl_80667E10@sda21(r13)
/* 80428C68 003F2228  7C 00 07 75 */	extsb. r0, r0
/* 80428C6C 003F222C  40 82 00 60 */	bne .L_80428CCC
/* 80428C70 003F2230  3C C0 80 65 */	lis r6, lbl_8065706C@ha
/* 80428C74 003F2234  38 00 00 00 */	li r0, 0x0
/* 80428C78 003F2238  38 66 70 6C */	addi r3, r6, lbl_8065706C@l
/* 80428C7C 003F223C  3C 80 80 43 */	lis r4, __dt__Q44nw4r3snd6detail12VoiceManagerFv@ha
/* 80428C80 003F2240  90 03 00 08 */	stw r0, 0x8(r3)
/* 80428C84 003F2244  39 03 00 08 */	addi r8, r3, 0x8
/* 80428C88 003F2248  38 E3 00 14 */	addi r7, r3, 0x14
/* 80428C8C 003F224C  3C A0 80 65 */	lis r5, lbl_80657060@ha
/* 80428C90 003F2250  90 03 00 0C */	stw r0, 0xc(r3)
/* 80428C94 003F2254  38 84 8C E4 */	addi r4, r4, __dt__Q44nw4r3snd6detail12VoiceManagerFv@l
/* 80428C98 003F2258  38 A5 70 60 */	addi r5, r5, lbl_80657060@l
/* 80428C9C 003F225C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80428CA0 003F2260  90 03 00 18 */	stw r0, 0x18(r3)
/* 80428CA4 003F2264  98 06 70 6C */	stb r0, lbl_8065706C@l(r6)
/* 80428CA8 003F2268  90 03 00 04 */	stw r0, 0x4(r3)
/* 80428CAC 003F226C  91 03 00 08 */	stw r8, 0x8(r3)
/* 80428CB0 003F2270  91 03 00 0C */	stw r8, 0xc(r3)
/* 80428CB4 003F2274  90 03 00 10 */	stw r0, 0x10(r3)
/* 80428CB8 003F2278  90 E3 00 14 */	stw r7, 0x14(r3)
/* 80428CBC 003F227C  90 E3 00 18 */	stw r7, 0x18(r3)
/* 80428CC0 003F2280  4B E9 09 DD */	bl __register_global_object
/* 80428CC4 003F2284  38 00 00 01 */	li r0, 0x1
/* 80428CC8 003F2288  98 0D BC 90 */	stb r0, lbl_80667E10@sda21(r13)
.L_80428CCC:
/* 80428CCC 003F228C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428CD0 003F2290  3C 60 80 65 */	lis r3, lbl_8065706C@ha
/* 80428CD4 003F2294  38 63 70 6C */	addi r3, r3, lbl_8065706C@l
/* 80428CD8 003F2298  7C 08 03 A6 */	mtlr r0
/* 80428CDC 003F229C  38 21 00 10 */	addi r1, r1, 0x10
/* 80428CE0 003F22A0  4E 80 00 20 */	blr
.endfn GetInstance__Q44nw4r3snd6detail12VoiceManagerFv

# nw4r::snd::detail::VoiceManager::~VoiceManager()
.fn __dt__Q44nw4r3snd6detail12VoiceManagerFv, global
/* 80428CE4 003F22A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80428CE8 003F22A8  7C 08 02 A6 */	mflr r0
/* 80428CEC 003F22AC  2C 03 00 00 */	cmpwi r3, 0x0
/* 80428CF0 003F22B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80428CF4 003F22B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80428CF8 003F22B8  7C 9F 23 78 */	mr r31, r4
/* 80428CFC 003F22BC  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80428D00 003F22C0  7C 7E 1B 78 */	mr r30, r3
/* 80428D04 003F22C4  41 82 00 34 */	beq .L_80428D38
/* 80428D08 003F22C8  34 63 00 10 */	addic. r3, r3, 0x10
/* 80428D0C 003F22CC  41 82 00 0C */	beq .L_80428D18
/* 80428D10 003F22D0  38 80 00 00 */	li r4, 0x0
/* 80428D14 003F22D4  48 00 26 FD */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
.L_80428D18:
/* 80428D18 003F22D8  34 7E 00 04 */	addic. r3, r30, 0x4
/* 80428D1C 003F22DC  41 82 00 0C */	beq .L_80428D28
/* 80428D20 003F22E0  38 80 00 00 */	li r4, 0x0
/* 80428D24 003F22E4  48 00 26 ED */	bl __dt__Q44nw4r2ut6detail12LinkListImplFv
.L_80428D28:
/* 80428D28 003F22E8  2C 1F 00 00 */	cmpwi r31, 0x0
/* 80428D2C 003F22EC  40 81 00 0C */	ble .L_80428D38
/* 80428D30 003F22F0  7F C3 F3 78 */	mr r3, r30
/* 80428D34 003F22F4  48 00 BE F9 */	bl __dl__FPv
.L_80428D38:
/* 80428D38 003F22F8  7F C3 F3 78 */	mr r3, r30
/* 80428D3C 003F22FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80428D40 003F2300  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 80428D44 003F2304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80428D48 003F2308  7C 08 03 A6 */	mtlr r0
/* 80428D4C 003F230C  38 21 00 10 */	addi r1, r1, 0x10
/* 80428D50 003F2310  4E 80 00 20 */	blr
.endfn __dt__Q44nw4r3snd6detail12VoiceManagerFv

# nw4r::snd::detail::VoiceManager::GetRequiredMemSize(int)
.fn GetRequiredMemSize__Q44nw4r3snd6detail12VoiceManagerFi, global
/* 80428D54 003F2314  1C 64 01 24 */	mulli r3, r4, 0x124
/* 80428D58 003F2318  4E 80 00 20 */	blr
.endfn GetRequiredMemSize__Q44nw4r3snd6detail12VoiceManagerFi

# nw4r::snd::detail::VoiceManager::Setup(void*, unsigned long)
.fn Setup__Q44nw4r3snd6detail12VoiceManagerFPvUl, global
/* 80428D5C 003F231C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80428D60 003F2320  7C 08 02 A6 */	mflr r0
/* 80428D64 003F2324  90 01 00 34 */	stw r0, 0x34(r1)
/* 80428D68 003F2328  39 61 00 30 */	addi r11, r1, 0x30
/* 80428D6C 003F232C  4B E9 13 E9 */	bl _savegpr_27
/* 80428D70 003F2330  88 03 00 00 */	lbz r0, 0x0(r3)
/* 80428D74 003F2334  7C 7B 1B 78 */	mr r27, r3
/* 80428D78 003F2338  2C 00 00 00 */	cmpwi r0, 0x0
/* 80428D7C 003F233C  40 82 00 78 */	bne .L_80428DF4
/* 80428D80 003F2340  3C C0 C0 E0 */	lis r6, 0xc0e0
/* 80428D84 003F2344  7C 9D 23 78 */	mr r29, r4
/* 80428D88 003F2348  38 06 70 39 */	addi r0, r6, 0x7039
/* 80428D8C 003F234C  3B 80 00 00 */	li r28, 0x0
/* 80428D90 003F2350  7C 80 28 16 */	mulhwu r4, r0, r5
/* 80428D94 003F2354  7C 04 28 50 */	subf r0, r4, r5
/* 80428D98 003F2358  54 00 F8 7E */	srwi r0, r0, 1
/* 80428D9C 003F235C  7C 00 22 14 */	add r0, r0, r4
/* 80428DA0 003F2360  54 1E C2 3F */	srwi. r30, r0, 8
/* 80428DA4 003F2364  41 82 00 48 */	beq .L_80428DEC
/* 80428DA8 003F2368  3B E3 00 14 */	addi r31, r3, 0x14
/* 80428DAC 003F236C  48 00 00 38 */	b .L_80428DE4
.L_80428DB0:
/* 80428DB0 003F2370  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80428DB4 003F2374  7F A5 EB 78 */	mr r5, r29
/* 80428DB8 003F2378  41 82 00 10 */	beq .L_80428DC8
/* 80428DBC 003F237C  7F A3 EB 78 */	mr r3, r29
/* 80428DC0 003F2380  4B FF D3 8D */	bl __ct__Q44nw4r3snd6detail5VoiceFv
/* 80428DC4 003F2384  7C 65 1B 78 */	mr r5, r3
.L_80428DC8:
/* 80428DC8 003F2388  93 E1 00 08 */	stw r31, 0x8(r1)
/* 80428DCC 003F238C  38 7B 00 10 */	addi r3, r27, 0x10
/* 80428DD0 003F2390  38 81 00 08 */	addi r4, r1, 0x8
/* 80428DD4 003F2394  38 A5 01 1C */	addi r5, r5, 0x11c
/* 80428DD8 003F2398  48 00 27 49 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80428DDC 003F239C  3B BD 01 24 */	addi r29, r29, 0x124
/* 80428DE0 003F23A0  3B 9C 00 01 */	addi r28, r28, 0x1
.L_80428DE4:
/* 80428DE4 003F23A4  7C 1C F0 40 */	cmplw r28, r30
/* 80428DE8 003F23A8  41 80 FF C8 */	blt .L_80428DB0
.L_80428DEC:
/* 80428DEC 003F23AC  38 00 00 01 */	li r0, 0x1
/* 80428DF0 003F23B0  98 1B 00 00 */	stb r0, 0x0(r27)
.L_80428DF4:
/* 80428DF4 003F23B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80428DF8 003F23B8  4B E9 13 A9 */	bl _restgpr_27
/* 80428DFC 003F23BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80428E00 003F23C0  7C 08 03 A6 */	mtlr r0
/* 80428E04 003F23C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80428E08 003F23C8  4E 80 00 20 */	blr
.endfn Setup__Q44nw4r3snd6detail12VoiceManagerFPvUl

# nw4r::snd::detail::VoiceManager::Shutdown()
.fn Shutdown__Q44nw4r3snd6detail12VoiceManagerFv, global
/* 80428E0C 003F23CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80428E10 003F23D0  7C 08 02 A6 */	mflr r0
/* 80428E14 003F23D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80428E18 003F23D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80428E1C 003F23DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80428E20 003F23E0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80428E24 003F23E4  7C 7D 1B 78 */	mr r29, r3
/* 80428E28 003F23E8  88 03 00 00 */	lbz r0, 0x0(r3)
/* 80428E2C 003F23EC  2C 00 00 00 */	cmpwi r0, 0x0
/* 80428E30 003F23F0  41 82 00 A0 */	beq .L_80428ED0
/* 80428E34 003F23F4  4B F2 FB 7D */	bl OSDisableInterrupts
/* 80428E38 003F23F8  7C 7F 1B 78 */	mr r31, r3
/* 80428E3C 003F23FC  48 00 00 3C */	b .L_80428E78
.L_80428E40:
/* 80428E40 003F2400  80 7D 00 08 */	lwz r3, 0x8(r29)
/* 80428E44 003F2404  3B C3 FE E4 */	addi r30, r3, -0x11c
/* 80428E48 003F2408  7F C3 F3 78 */	mr r3, r30
/* 80428E4C 003F240C  4B FF E2 3D */	bl Stop__Q44nw4r3snd6detail5VoiceFv
/* 80428E50 003F2410  81 9E 00 94 */	lwz r12, 0x94(r30)
/* 80428E54 003F2414  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80428E58 003F2418  41 82 00 18 */	beq .L_80428E70
/* 80428E5C 003F241C  7F C3 F3 78 */	mr r3, r30
/* 80428E60 003F2420  80 BE 00 98 */	lwz r5, 0x98(r30)
/* 80428E64 003F2424  38 80 00 01 */	li r4, 0x1
/* 80428E68 003F2428  7D 89 03 A6 */	mtctr r12
/* 80428E6C 003F242C  4E 80 04 21 */	bctrl
.L_80428E70:
/* 80428E70 003F2430  7F C3 F3 78 */	mr r3, r30
/* 80428E74 003F2434  4B FF DE B1 */	bl Free__Q44nw4r3snd6detail5VoiceFv
.L_80428E78:
/* 80428E78 003F2438  80 1D 00 04 */	lwz r0, 0x4(r29)
/* 80428E7C 003F243C  2C 00 00 00 */	cmpwi r0, 0x0
/* 80428E80 003F2440  40 82 FF C0 */	bne .L_80428E40
/* 80428E84 003F2444  7F E3 FB 78 */	mr r3, r31
/* 80428E88 003F2448  4B F2 FB 69 */	bl OSRestoreInterrupts
/* 80428E8C 003F244C  48 00 00 30 */	b .L_80428EBC
.L_80428E90:
/* 80428E90 003F2450  83 DD 00 14 */	lwz r30, 0x14(r29)
/* 80428E94 003F2454  38 7D 00 10 */	addi r3, r29, 0x10
/* 80428E98 003F2458  38 81 00 08 */	addi r4, r1, 0x8
/* 80428E9C 003F245C  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80428EA0 003F2460  48 00 25 F5 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8Iterator
/* 80428EA4 003F2464  81 9E FE EC */	lwz r12, -0x114(r30)
/* 80428EA8 003F2468  38 7E FE E4 */	addi r3, r30, -0x11c
/* 80428EAC 003F246C  38 80 FF FF */	li r4, -0x1
/* 80428EB0 003F2470  81 8C 00 08 */	lwz r12, 0x8(r12)
/* 80428EB4 003F2474  7D 89 03 A6 */	mtctr r12
/* 80428EB8 003F2478  4E 80 04 21 */	bctrl
.L_80428EBC:
/* 80428EBC 003F247C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80428EC0 003F2480  2C 00 00 00 */	cmpwi r0, 0x0
/* 80428EC4 003F2484  40 82 FF CC */	bne .L_80428E90
/* 80428EC8 003F2488  38 00 00 00 */	li r0, 0x0
/* 80428ECC 003F248C  98 1D 00 00 */	stb r0, 0x0(r29)
.L_80428ED0:
/* 80428ED0 003F2490  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80428ED4 003F2494  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80428ED8 003F2498  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80428EDC 003F249C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80428EE0 003F24A0  7C 08 03 A6 */	mtlr r0
/* 80428EE4 003F24A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80428EE8 003F24A8  4E 80 00 20 */	blr
.endfn Shutdown__Q44nw4r3snd6detail12VoiceManagerFv

# nw4r::snd::detail::VoiceManager::AllocVoice(int, int, int, void (*)(nw4r::snd::detail::Voice*, nw4r::snd::detail::Voice::VoiceCallbackStatus, void*), void*)
.fn AllocVoice__Q44nw4r3snd6detail12VoiceManagerFiiiPFPQ44nw4r3snd6detail5VoiceQ54nw4r3snd6detail5Voice19VoiceCallbackStatusPv_vPv, global
/* 80428EEC 003F24AC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80428EF0 003F24B0  7C 08 02 A6 */	mflr r0
/* 80428EF4 003F24B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80428EF8 003F24B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80428EFC 003F24BC  4B E9 12 49 */	bl _savegpr_23
/* 80428F00 003F24C0  7C 7F 1B 78 */	mr r31, r3
/* 80428F04 003F24C4  7C 97 23 78 */	mr r23, r4
/* 80428F08 003F24C8  7C B8 2B 78 */	mr r24, r5
/* 80428F0C 003F24CC  7C D9 33 78 */	mr r25, r6
/* 80428F10 003F24D0  7C FA 3B 78 */	mr r26, r7
/* 80428F14 003F24D4  7D 1B 43 78 */	mr r27, r8
/* 80428F18 003F24D8  4B F2 FA 99 */	bl OSDisableInterrupts
/* 80428F1C 003F24DC  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 80428F20 003F24E0  7C 7E 1B 78 */	mr r30, r3
/* 80428F24 003F24E4  2C 00 00 00 */	cmpwi r0, 0x0
/* 80428F28 003F24E8  40 82 00 7C */	bne .L_80428FA4
/* 80428F2C 003F24EC  3B A0 00 00 */	li r29, 0x0
/* 80428F30 003F24F0  40 82 00 5C */	bne .L_80428F8C
/* 80428F34 003F24F4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 80428F38 003F24F8  80 03 FF 8C */	lwz r0, -0x74(r3)
/* 80428F3C 003F24FC  3B 83 FE E4 */	addi r28, r3, -0x11c
/* 80428F40 003F2500  7C 00 C8 00 */	cmpw r0, r25
/* 80428F44 003F2504  40 81 00 0C */	ble .L_80428F50
/* 80428F48 003F2508  3B A0 00 00 */	li r29, 0x0
/* 80428F4C 003F250C  48 00 00 40 */	b .L_80428F8C
.L_80428F50:
/* 80428F50 003F2510  80 9C 00 8C */	lwz r4, 0x8c(r28)
/* 80428F54 003F2514  7F 83 E3 78 */	mr r3, r28
/* 80428F58 003F2518  80 1C 00 90 */	lwz r0, 0x90(r28)
/* 80428F5C 003F251C  7F A4 01 D6 */	mullw r29, r4, r0
/* 80428F60 003F2520  4B FF E1 29 */	bl Stop__Q44nw4r3snd6detail5VoiceFv
/* 80428F64 003F2524  7F 83 E3 78 */	mr r3, r28
/* 80428F68 003F2528  4B FF DD BD */	bl Free__Q44nw4r3snd6detail5VoiceFv
/* 80428F6C 003F252C  81 9C 00 94 */	lwz r12, 0x94(r28)
/* 80428F70 003F2530  2C 0C 00 00 */	cmpwi r12, 0x0
/* 80428F74 003F2534  41 82 00 18 */	beq .L_80428F8C
/* 80428F78 003F2538  7F 83 E3 78 */	mr r3, r28
/* 80428F7C 003F253C  80 BC 00 98 */	lwz r5, 0x98(r28)
/* 80428F80 003F2540  38 80 00 02 */	li r4, 0x2
/* 80428F84 003F2544  7D 89 03 A6 */	mtctr r12
/* 80428F88 003F2548  4E 80 04 21 */	bctrl
.L_80428F8C:
/* 80428F8C 003F254C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 80428F90 003F2550  40 82 00 14 */	bne .L_80428FA4
/* 80428F94 003F2554  7F C3 F3 78 */	mr r3, r30
/* 80428F98 003F2558  4B F2 FA 59 */	bl OSRestoreInterrupts
/* 80428F9C 003F255C  38 60 00 00 */	li r3, 0x0
/* 80428FA0 003F2560  48 00 00 F0 */	b .L_80429090
.L_80428FA4:
/* 80428FA4 003F2564  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 80428FA8 003F2568  7E E4 BB 78 */	mr r4, r23
/* 80428FAC 003F256C  7F 05 C3 78 */	mr r5, r24
/* 80428FB0 003F2570  7F 26 CB 78 */	mr r6, r25
/* 80428FB4 003F2574  3B 83 FE E4 */	addi r28, r3, -0x11c
/* 80428FB8 003F2578  7F 47 D3 78 */	mr r7, r26
/* 80428FBC 003F257C  7F 83 E3 78 */	mr r3, r28
/* 80428FC0 003F2580  7F 68 DB 78 */	mr r8, r27
/* 80428FC4 003F2584  4B FF DB 25 */	bl Acquire__Q44nw4r3snd6detail5VoiceFiiiPFPQ44nw4r3snd6detail5VoiceQ54nw4r3snd6detail5Voice19VoiceCallbackStatusPv_vPv
/* 80428FC8 003F2588  2C 03 00 00 */	cmpwi r3, 0x0
/* 80428FCC 003F258C  40 82 00 14 */	bne .L_80428FE0
/* 80428FD0 003F2590  7F C3 F3 78 */	mr r3, r30
/* 80428FD4 003F2594  4B F2 FA 1D */	bl OSRestoreInterrupts
/* 80428FD8 003F2598  38 60 00 00 */	li r3, 0x0
/* 80428FDC 003F259C  48 00 00 B4 */	b .L_80429090
.L_80428FE0:
/* 80428FE0 003F25A0  57 20 06 3E */	clrlwi r0, r25, 24
/* 80428FE4 003F25A4  90 1C 00 A8 */	stw r0, 0xa8(r28)
/* 80428FE8 003F25A8  4B F2 F9 C9 */	bl OSDisableInterrupts
/* 80428FEC 003F25AC  3B 7C 01 1C */	addi r27, r28, 0x11c
/* 80428FF0 003F25B0  7C 7D 1B 78 */	mr r29, r3
/* 80428FF4 003F25B4  7F 64 DB 78 */	mr r4, r27
/* 80428FF8 003F25B8  38 7F 00 10 */	addi r3, r31, 0x10
/* 80428FFC 003F25BC  48 00 25 51 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80429000 003F25C0  80 BF 00 08 */	lwz r5, 0x8(r31)
/* 80429004 003F25C4  38 7F 00 08 */	addi r3, r31, 0x8
/* 80429008 003F25C8  48 00 00 1C */	b .L_80429024
.L_8042900C:
/* 8042900C 003F25CC  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 80429010 003F25D0  80 1C 00 A8 */	lwz r0, 0xa8(r28)
/* 80429014 003F25D4  80 86 FF 8C */	lwz r4, -0x74(r6)
/* 80429018 003F25D8  7C 04 00 00 */	cmpw r4, r0
/* 8042901C 003F25DC  40 81 00 10 */	ble .L_8042902C
/* 80429020 003F25E0  7C C3 33 78 */	mr r3, r6
.L_80429024:
/* 80429024 003F25E4  7C 03 28 40 */	cmplw r3, r5
/* 80429028 003F25E8  40 82 FF E4 */	bne .L_8042900C
.L_8042902C:
/* 8042902C 003F25EC  90 61 00 08 */	stw r3, 0x8(r1)
/* 80429030 003F25F0  7F 65 DB 78 */	mr r5, r27
/* 80429034 003F25F4  38 7F 00 04 */	addi r3, r31, 0x4
/* 80429038 003F25F8  38 81 00 08 */	addi r4, r1, 0x8
/* 8042903C 003F25FC  48 00 24 E5 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80429040 003F2600  7F A3 EB 78 */	mr r3, r29
/* 80429044 003F2604  4B F2 F9 AD */	bl OSRestoreInterrupts
/* 80429048 003F2608  3B BF 00 08 */	addi r29, r31, 0x8
/* 8042904C 003F260C  48 00 00 24 */	b .L_80429070
.L_80429050:
/* 80429050 003F2610  80 1B FF 8C */	lwz r0, -0x74(r27)
/* 80429054 003F2614  38 7B FE E4 */	addi r3, r27, -0x11c
/* 80429058 003F2618  2C 00 00 01 */	cmpwi r0, 0x1
/* 8042905C 003F261C  40 81 00 1C */	ble .L_80429078
/* 80429060 003F2620  2C 00 00 FF */	cmpwi r0, 0xff
/* 80429064 003F2624  41 82 00 08 */	beq .L_8042906C
/* 80429068 003F2628  4B FF E6 3D */	bl UpdateVoicesPriority__Q44nw4r3snd6detail5VoiceFv
.L_8042906C:
/* 8042906C 003F262C  83 7B 00 00 */	lwz r27, 0x0(r27)
.L_80429070:
/* 80429070 003F2630  7C 1B E8 40 */	cmplw r27, r29
/* 80429074 003F2634  40 82 FF DC */	bne .L_80429050
.L_80429078:
/* 80429078 003F2638  4B FE BF BD */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 8042907C 003F263C  7F 84 E3 78 */	mr r4, r28
/* 80429080 003F2640  4B FE C0 99 */	bl RegisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 80429084 003F2644  7F C3 F3 78 */	mr r3, r30
/* 80429088 003F2648  4B F2 F9 69 */	bl OSRestoreInterrupts
/* 8042908C 003F264C  7F 83 E3 78 */	mr r3, r28
.L_80429090:
/* 80429090 003F2650  39 61 00 40 */	addi r11, r1, 0x40
/* 80429094 003F2654  4B E9 10 FD */	bl _restgpr_23
/* 80429098 003F2658  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8042909C 003F265C  7C 08 03 A6 */	mtlr r0
/* 804290A0 003F2660  38 21 00 40 */	addi r1, r1, 0x40
/* 804290A4 003F2664  4E 80 00 20 */	blr
.endfn AllocVoice__Q44nw4r3snd6detail12VoiceManagerFiiiPFPQ44nw4r3snd6detail5VoiceQ54nw4r3snd6detail5Voice19VoiceCallbackStatusPv_vPv

# nw4r::snd::detail::VoiceManager::FreeVoice(nw4r::snd::detail::Voice*)
.fn FreeVoice__Q44nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6detail5Voice, global
/* 804290A8 003F2668  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804290AC 003F266C  7C 08 02 A6 */	mflr r0
/* 804290B0 003F2670  90 01 00 24 */	stw r0, 0x24(r1)
/* 804290B4 003F2674  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804290B8 003F2678  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804290BC 003F267C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 804290C0 003F2680  7C 9D 23 78 */	mr r29, r4
/* 804290C4 003F2684  93 81 00 10 */	stw r28, 0x10(r1)
/* 804290C8 003F2688  7C 7C 1B 78 */	mr r28, r3
/* 804290CC 003F268C  4B F2 F8 E5 */	bl OSDisableInterrupts
/* 804290D0 003F2690  7C 7F 1B 78 */	mr r31, r3
/* 804290D4 003F2694  4B FE BF 61 */	bl GetInstance__Q44nw4r3snd6detail22DisposeCallbackManagerFv
/* 804290D8 003F2698  7F A4 EB 78 */	mr r4, r29
/* 804290DC 003F269C  4B FE C0 6D */	bl UnregisterDisposeCallback__Q44nw4r3snd6detail22DisposeCallbackManagerFPQ44nw4r3snd6detail15DisposeCallback
/* 804290E0 003F26A0  4B F2 F8 D1 */	bl OSDisableInterrupts
/* 804290E4 003F26A4  3B BD 01 1C */	addi r29, r29, 0x11c
/* 804290E8 003F26A8  7C 7E 1B 78 */	mr r30, r3
/* 804290EC 003F26AC  7F A4 EB 78 */	mr r4, r29
/* 804290F0 003F26B0  38 7C 00 04 */	addi r3, r28, 0x4
/* 804290F4 003F26B4  48 00 24 59 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 804290F8 003F26B8  38 1C 00 14 */	addi r0, r28, 0x14
/* 804290FC 003F26BC  7F A5 EB 78 */	mr r5, r29
/* 80429100 003F26C0  90 01 00 08 */	stw r0, 0x8(r1)
/* 80429104 003F26C4  38 7C 00 10 */	addi r3, r28, 0x10
/* 80429108 003F26C8  38 81 00 08 */	addi r4, r1, 0x8
/* 8042910C 003F26CC  48 00 24 15 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80429110 003F26D0  7F C3 F3 78 */	mr r3, r30
/* 80429114 003F26D4  4B F2 F8 DD */	bl OSRestoreInterrupts
/* 80429118 003F26D8  7F E3 FB 78 */	mr r3, r31
/* 8042911C 003F26DC  4B F2 F8 D5 */	bl OSRestoreInterrupts
/* 80429120 003F26E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429124 003F26E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80429128 003F26E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042912C 003F26EC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80429130 003F26F0  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80429134 003F26F4  7C 08 03 A6 */	mtlr r0
/* 80429138 003F26F8  38 21 00 20 */	addi r1, r1, 0x20
/* 8042913C 003F26FC  4E 80 00 20 */	blr
.endfn FreeVoice__Q44nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6detail5Voice

# nw4r::snd::detail::VoiceManager::UpdateAllVoices()
.fn UpdateAllVoices__Q44nw4r3snd6detail12VoiceManagerFv, global
/* 80429140 003F2700  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80429144 003F2704  7C 08 02 A6 */	mflr r0
/* 80429148 003F2708  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042914C 003F270C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80429150 003F2710  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80429154 003F2714  3B C3 00 08 */	addi r30, r3, 0x8
/* 80429158 003F2718  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042915C 003F271C  7C 7D 1B 78 */	mr r29, r3
/* 80429160 003F2720  83 E3 00 08 */	lwz r31, 0x8(r3)
/* 80429164 003F2724  48 00 00 14 */	b .L_80429178
.L_80429168:
/* 80429168 003F2728  7F E3 FB 78 */	mr r3, r31
/* 8042916C 003F272C  83 FF 00 00 */	lwz r31, 0x0(r31)
/* 80429170 003F2730  38 63 FE E4 */	addi r3, r3, -0x11c
/* 80429174 003F2734  4B FF D3 91 */	bl StopFinished__Q44nw4r3snd6detail5VoiceFv
.L_80429178:
/* 80429178 003F2738  7C 1F F0 40 */	cmplw r31, r30
/* 8042917C 003F273C  40 82 FF EC */	bne .L_80429168
/* 80429180 003F2740  83 DD 00 08 */	lwz r30, 0x8(r29)
/* 80429184 003F2744  3B FD 00 08 */	addi r31, r29, 0x8
/* 80429188 003F2748  48 00 00 14 */	b .L_8042919C
.L_8042918C:
/* 8042918C 003F274C  7F C3 F3 78 */	mr r3, r30
/* 80429190 003F2750  83 DE 00 00 */	lwz r30, 0x0(r30)
/* 80429194 003F2754  38 63 FE E4 */	addi r3, r3, -0x11c
/* 80429198 003F2758  4B FF D4 09 */	bl Calc__Q44nw4r3snd6detail5VoiceFv
.L_8042919C:
/* 8042919C 003F275C  7C 1E F8 40 */	cmplw r30, r31
/* 804291A0 003F2760  40 82 FF EC */	bne .L_8042918C
/* 804291A4 003F2764  4B F2 F8 0D */	bl OSDisableInterrupts
/* 804291A8 003F2768  87 FD 00 08 */	lwzu r31, 0x8(r29)
/* 804291AC 003F276C  7C 7E 1B 78 */	mr r30, r3
/* 804291B0 003F2770  48 00 00 14 */	b .L_804291C4
.L_804291B4:
/* 804291B4 003F2774  7F E3 FB 78 */	mr r3, r31
/* 804291B8 003F2778  83 FF 00 00 */	lwz r31, 0x0(r31)
/* 804291BC 003F277C  38 63 FE E4 */	addi r3, r3, -0x11c
/* 804291C0 003F2780  4B FF D6 69 */	bl Update__Q44nw4r3snd6detail5VoiceFv
.L_804291C4:
/* 804291C4 003F2784  7C 1F E8 40 */	cmplw r31, r29
/* 804291C8 003F2788  40 82 FF EC */	bne .L_804291B4
/* 804291CC 003F278C  7F C3 F3 78 */	mr r3, r30
/* 804291D0 003F2790  4B F2 F8 21 */	bl OSRestoreInterrupts
/* 804291D4 003F2794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804291D8 003F2798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804291DC 003F279C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804291E0 003F27A0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 804291E4 003F27A4  7C 08 03 A6 */	mtlr r0
/* 804291E8 003F27A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804291EC 003F27AC  4E 80 00 20 */	blr
.endfn UpdateAllVoices__Q44nw4r3snd6detail12VoiceManagerFv

# nw4r::snd::detail::VoiceManager::NotifyVoiceUpdate()
.fn NotifyVoiceUpdate__Q44nw4r3snd6detail12VoiceManagerFv, global
/* 804291F0 003F27B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804291F4 003F27B4  7C 08 02 A6 */	mflr r0
/* 804291F8 003F27B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804291FC 003F27BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80429200 003F27C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80429204 003F27C4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80429208 003F27C8  7C 7D 1B 78 */	mr r29, r3
/* 8042920C 003F27CC  4B F2 F7 A5 */	bl OSDisableInterrupts
/* 80429210 003F27D0  87 DD 00 08 */	lwzu r30, 0x8(r29)
/* 80429214 003F27D4  7C 7F 1B 78 */	mr r31, r3
/* 80429218 003F27D8  48 00 00 14 */	b .L_8042922C
.L_8042921C:
/* 8042921C 003F27DC  7F C3 F3 78 */	mr r3, r30
/* 80429220 003F27E0  83 DE 00 00 */	lwz r30, 0x0(r30)
/* 80429224 003F27E4  38 63 FE E4 */	addi r3, r3, -0x11c
/* 80429228 003F27E8  4B FF E9 E9 */	bl ResetDelta__Q44nw4r3snd6detail5VoiceFv
.L_8042922C:
/* 8042922C 003F27EC  7C 1E E8 40 */	cmplw r30, r29
/* 80429230 003F27F0  40 82 FF EC */	bne .L_8042921C
/* 80429234 003F27F4  7F E3 FB 78 */	mr r3, r31
/* 80429238 003F27F8  4B F2 F7 B9 */	bl OSRestoreInterrupts
/* 8042923C 003F27FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80429240 003F2800  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80429244 003F2804  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80429248 003F2808  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042924C 003F280C  7C 08 03 A6 */	mtlr r0
/* 80429250 003F2810  38 21 00 20 */	addi r1, r1, 0x20
/* 80429254 003F2814  4E 80 00 20 */	blr
.endfn NotifyVoiceUpdate__Q44nw4r3snd6detail12VoiceManagerFv

# nw4r::snd::detail::VoiceManager::ChangeVoicePriority(nw4r::snd::detail::Voice*)
.fn ChangeVoicePriority__Q44nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6detail5Voice, global
/* 80429258 003F2818  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042925C 003F281C  7C 08 02 A6 */	mflr r0
/* 80429260 003F2820  90 01 00 34 */	stw r0, 0x34(r1)
/* 80429264 003F2824  39 61 00 30 */	addi r11, r1, 0x30
/* 80429268 003F2828  4B E9 0E ED */	bl _savegpr_27
/* 8042926C 003F282C  7C 7B 1B 78 */	mr r27, r3
/* 80429270 003F2830  7C 9C 23 78 */	mr r28, r4
/* 80429274 003F2834  4B F2 F7 3D */	bl OSDisableInterrupts
/* 80429278 003F2838  7C 7F 1B 78 */	mr r31, r3
/* 8042927C 003F283C  4B F2 F7 35 */	bl OSDisableInterrupts
/* 80429280 003F2840  3B BC 01 1C */	addi r29, r28, 0x11c
/* 80429284 003F2844  7C 7E 1B 78 */	mr r30, r3
/* 80429288 003F2848  7F A4 EB 78 */	mr r4, r29
/* 8042928C 003F284C  38 7B 00 04 */	addi r3, r27, 0x4
/* 80429290 003F2850  48 00 22 BD */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 80429294 003F2854  38 1B 00 14 */	addi r0, r27, 0x14
/* 80429298 003F2858  7F A5 EB 78 */	mr r5, r29
/* 8042929C 003F285C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804292A0 003F2860  38 7B 00 10 */	addi r3, r27, 0x10
/* 804292A4 003F2864  38 81 00 0C */	addi r4, r1, 0xc
/* 804292A8 003F2868  48 00 22 79 */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 804292AC 003F286C  7F C3 F3 78 */	mr r3, r30
/* 804292B0 003F2870  4B F2 F7 41 */	bl OSRestoreInterrupts
/* 804292B4 003F2874  4B F2 F6 FD */	bl OSDisableInterrupts
/* 804292B8 003F2878  7C 7E 1B 78 */	mr r30, r3
/* 804292BC 003F287C  7F A4 EB 78 */	mr r4, r29
/* 804292C0 003F2880  38 7B 00 10 */	addi r3, r27, 0x10
/* 804292C4 003F2884  48 00 22 89 */	bl Erase__Q44nw4r2ut6detail12LinkListImplFPQ34nw4r2ut12LinkListNode
/* 804292C8 003F2888  80 BB 00 08 */	lwz r5, 0x8(r27)
/* 804292CC 003F288C  38 7B 00 08 */	addi r3, r27, 0x8
/* 804292D0 003F2890  48 00 00 1C */	b .L_804292EC
.L_804292D4:
/* 804292D4 003F2894  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 804292D8 003F2898  80 1C 00 A8 */	lwz r0, 0xa8(r28)
/* 804292DC 003F289C  80 86 FF 8C */	lwz r4, -0x74(r6)
/* 804292E0 003F28A0  7C 04 00 00 */	cmpw r4, r0
/* 804292E4 003F28A4  40 81 00 10 */	ble .L_804292F4
/* 804292E8 003F28A8  7C C3 33 78 */	mr r3, r6
.L_804292EC:
/* 804292EC 003F28AC  7C 03 28 40 */	cmplw r3, r5
/* 804292F0 003F28B0  40 82 FF E4 */	bne .L_804292D4
.L_804292F4:
/* 804292F4 003F28B4  90 61 00 08 */	stw r3, 0x8(r1)
/* 804292F8 003F28B8  7F A5 EB 78 */	mr r5, r29
/* 804292FC 003F28BC  38 7B 00 04 */	addi r3, r27, 0x4
/* 80429300 003F28C0  38 81 00 08 */	addi r4, r1, 0x8
/* 80429304 003F28C4  48 00 22 1D */	bl Insert__Q44nw4r2ut6detail12LinkListImplFQ54nw4r2ut6detail12LinkListImpl8IteratorPQ34nw4r2ut12LinkListNode
/* 80429308 003F28C8  7F C3 F3 78 */	mr r3, r30
/* 8042930C 003F28CC  4B F2 F6 E5 */	bl OSRestoreInterrupts
/* 80429310 003F28D0  3B DB 00 08 */	addi r30, r27, 0x8
/* 80429314 003F28D4  48 00 00 24 */	b .L_80429338
.L_80429318:
/* 80429318 003F28D8  80 1D FF 8C */	lwz r0, -0x74(r29)
/* 8042931C 003F28DC  38 7D FE E4 */	addi r3, r29, -0x11c
/* 80429320 003F28E0  2C 00 00 01 */	cmpwi r0, 0x1
/* 80429324 003F28E4  40 81 00 1C */	ble .L_80429340
/* 80429328 003F28E8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8042932C 003F28EC  41 82 00 08 */	beq .L_80429334
/* 80429330 003F28F0  4B FF E3 75 */	bl UpdateVoicesPriority__Q44nw4r3snd6detail5VoiceFv
.L_80429334:
/* 80429334 003F28F4  83 BD 00 00 */	lwz r29, 0x0(r29)
.L_80429338:
/* 80429338 003F28F8  7C 1D F0 40 */	cmplw r29, r30
/* 8042933C 003F28FC  40 82 FF DC */	bne .L_80429318
.L_80429340:
/* 80429340 003F2900  7F E3 FB 78 */	mr r3, r31
/* 80429344 003F2904  4B F2 F6 AD */	bl OSRestoreInterrupts
/* 80429348 003F2908  39 61 00 30 */	addi r11, r1, 0x30
/* 8042934C 003F290C  4B E9 0E 55 */	bl _restgpr_27
/* 80429350 003F2910  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80429354 003F2914  7C 08 03 A6 */	mtlr r0
/* 80429358 003F2918  38 21 00 30 */	addi r1, r1, 0x30
/* 8042935C 003F291C  4E 80 00 20 */	blr
.endfn ChangeVoicePriority__Q44nw4r3snd6detail12VoiceManagerFPQ44nw4r3snd6detail5Voice

# nw4r::snd::detail::VoiceManager::UpdateAllVoicesSync(unsigned long)
.fn UpdateAllVoicesSync__Q44nw4r3snd6detail12VoiceManagerFUl, global
/* 80429360 003F2920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429364 003F2924  7C 08 02 A6 */	mflr r0
/* 80429368 003F2928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042936C 003F292C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429370 003F2930  7C 9F 23 78 */	mr r31, r4
/* 80429374 003F2934  93 C1 00 08 */	stw r30, 0x8(r1)
/* 80429378 003F2938  7C 7E 1B 78 */	mr r30, r3
/* 8042937C 003F293C  4B F2 F6 35 */	bl OSDisableInterrupts
/* 80429380 003F2940  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 80429384 003F2944  38 1E 00 08 */	addi r0, r30, 0x8
/* 80429388 003F2948  48 00 00 24 */	b .L_804293AC
.L_8042938C:
/* 8042938C 003F294C  7C 86 23 78 */	mr r6, r4
/* 80429390 003F2950  80 84 00 00 */	lwz r4, 0x0(r4)
/* 80429394 003F2954  88 A6 FF 80 */	lbz r5, -0x80(r6)
/* 80429398 003F2958  2C 05 00 00 */	cmpwi r5, 0x0
/* 8042939C 003F295C  41 82 00 10 */	beq .L_804293AC
/* 804293A0 003F2960  A0 A6 FF 86 */	lhz r5, -0x7a(r6)
/* 804293A4 003F2964  7C A5 FB 78 */	or r5, r5, r31
/* 804293A8 003F2968  B0 A6 FF 86 */	sth r5, -0x7a(r6)
.L_804293AC:
/* 804293AC 003F296C  7C 04 00 40 */	cmplw r4, r0
/* 804293B0 003F2970  40 82 FF DC */	bne .L_8042938C
/* 804293B4 003F2974  4B F2 F6 3D */	bl OSRestoreInterrupts
/* 804293B8 003F2978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804293BC 003F297C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804293C0 003F2980  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 804293C4 003F2984  7C 08 03 A6 */	mtlr r0
/* 804293C8 003F2988  38 21 00 10 */	addi r1, r1, 0x10
/* 804293CC 003F298C  4E 80 00 20 */	blr
.endfn UpdateAllVoicesSync__Q44nw4r3snd6detail12VoiceManagerFUl

# 0x80657060 - 0x80657088
.section .bss, "wa", @nobits
.balign 8
.sym lbl_80657060, local
	.skip 0xC
.sym lbl_8065706C, local
	.skip 0x1C

# 0x80667E10 - 0x80667E18
.section .sbss, "wa", @nobits
.balign 8
.sym lbl_80667E10, local
	.skip 0x8
