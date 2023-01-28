.include "macros.inc"
.file "PowerPC_EABI_Support/MSL_C/PPC_EABI/uart_console_io_gcn.o"

# 0x802C7110 - 0x802C71E8
.text
.balign 4

.fn __write_console, global
/* 802C7110 002906D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C7114 002906D4  7C 08 02 A6 */	mflr r0
/* 802C7118 002906D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C711C 002906DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C7120 002906E0  7C DF 33 78 */	mr r31, r6
/* 802C7124 002906E4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C7128 002906E8  7C BE 2B 78 */	mr r30, r5
/* 802C712C 002906EC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 802C7130 002906F0  7C 9D 23 78 */	mr r29, r4
/* 802C7134 002906F4  93 81 00 10 */	stw r28, 0x10(r1)
/* 802C7138 002906F8  7C 7C 1B 78 */	mr r28, r3
/* 802C713C 002906FC  48 08 A8 E5 */	bl OSGetConsoleType
/* 802C7140 00290700  54 60 00 85 */	rlwinm. r0, r3, 0, 2, 2
/* 802C7144 00290704  40 82 00 64 */	bne .L_802C71A8
/* 802C7148 00290708  80 0D B3 B8 */	lwz r0, lbl_80667538@sda21(r13)
/* 802C714C 0029070C  38 60 00 00 */	li r3, 0x0
/* 802C7150 00290710  2C 00 00 00 */	cmpwi r0, 0x0
/* 802C7154 00290714  40 82 00 20 */	bne .L_802C7174
/* 802C7158 00290718  3C 60 00 01 */	lis r3, 0x1
/* 802C715C 0029071C  38 63 E1 00 */	addi r3, r3, -0x1f00
/* 802C7160 00290720  48 04 CD 11 */	bl InitializeUART
/* 802C7164 00290724  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C7168 00290728  40 82 00 0C */	bne .L_802C7174
/* 802C716C 0029072C  38 00 00 01 */	li r0, 0x1
/* 802C7170 00290730  90 0D B3 B8 */	stw r0, lbl_80667538@sda21(r13)
.L_802C7174:
/* 802C7174 00290734  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C7178 00290738  41 82 00 0C */	beq .L_802C7184
/* 802C717C 0029073C  38 60 00 01 */	li r3, 0x1
/* 802C7180 00290740  48 00 00 40 */	b .L_802C71C0
.L_802C7184:
/* 802C7184 00290744  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 802C7188 00290748  7F A3 EB 78 */	mr r3, r29
/* 802C718C 0029074C  48 04 CD 35 */	bl WriteUARTN
/* 802C7190 00290750  2C 03 00 00 */	cmpwi r3, 0x0
/* 802C7194 00290754  41 82 00 14 */	beq .L_802C71A8
/* 802C7198 00290758  38 00 00 00 */	li r0, 0x0
/* 802C719C 0029075C  90 1E 00 00 */	stw r0, 0x0(r30)
/* 802C71A0 00290760  38 60 00 01 */	li r3, 0x1
/* 802C71A4 00290764  48 00 00 1C */	b .L_802C71C0
.L_802C71A8:
/* 802C71A8 00290768  7F 83 E3 78 */	mr r3, r28
/* 802C71AC 0029076C  7F A4 EB 78 */	mr r4, r29
/* 802C71B0 00290770  7F C5 F3 78 */	mr r5, r30
/* 802C71B4 00290774  7F E6 FB 78 */	mr r6, r31
/* 802C71B8 00290778  48 00 7A C5 */	bl __TRK_write_console
/* 802C71BC 0029077C  38 60 00 00 */	li r3, 0x0
.L_802C71C0:
/* 802C71C0 00290780  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C71C4 00290784  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C71C8 00290788  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C71CC 0029078C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802C71D0 00290790  83 81 00 10 */	lwz r28, 0x10(r1)
/* 802C71D4 00290794  7C 08 03 A6 */	mtlr r0
/* 802C71D8 00290798  38 21 00 20 */	addi r1, r1, 0x20
/* 802C71DC 0029079C  4E 80 00 20 */	blr
.endfn __write_console

.fn __close_console, global
/* 802C71E0 002907A0  38 60 00 00 */	li r3, 0x0
/* 802C71E4 002907A4  4E 80 00 20 */	blr
.endfn __close_console

# 0x80667534 - 0x80667540
.section .sbss, "wa", @nobits
.balign 4
	.skip 0x4
.sym lbl_80667538, local
	.skip 0x8
