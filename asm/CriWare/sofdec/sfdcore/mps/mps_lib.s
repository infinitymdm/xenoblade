.include "macros.inc"
.file "CriWare/sofdec/sfdcore/mps/mps_lib.o"

# 0x803BCCEC - 0x803BD2A8
.text
.balign 4

.fn MPS_Init, global
/* 803BCCEC 003862AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BCCF0 003862B0  7C 08 02 A6 */	mflr r0
/* 803BCCF4 003862B4  3C A0 01 02 */	lis r5, 0x102
/* 803BCCF8 003862B8  3C C0 80 52 */	lis r6, MPSLIB_version_str@ha
/* 803BCCFC 003862BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BCD00 003862C0  38 05 03 04 */	addi r0, r5, 0x304
/* 803BCD04 003862C4  3C A0 80 61 */	lis r5, cri_mps_verstr_ptr@ha
/* 803BCD08 003862C8  38 C6 FE 88 */	addi r6, r6, MPSLIB_version_str@l
/* 803BCD0C 003862CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BCD10 003862D0  7C 7F 1B 78 */	mr r31, r3
/* 803BCD14 003862D4  90 01 00 08 */	stw r0, 0x8(r1)
/* 803BCD18 003862D8  88 01 00 08 */	lbz r0, 0x8(r1)
/* 803BCD1C 003862DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803BCD20 003862E0  28 00 00 01 */	cmplwi r0, 0x1
/* 803BCD24 003862E4  90 C5 A2 90 */	stw r6, cri_mps_verstr_ptr@l(r5)
/* 803BCD28 003862E8  41 82 00 14 */	beq .L_803BCD3C
.L_803BCD2C:
/* 803BCD2C 003862EC  39 80 FF FF */	li r12, -0x1
/* 803BCD30 003862F0  7D 89 03 A6 */	mtctr r12
/* 803BCD34 003862F4  4E 80 04 21 */	bctrl
/* 803BCD38 003862F8  4B FF FF F4 */	b .L_803BCD2C
.L_803BCD3C:
/* 803BCD3C 003862FC  38 1F FF FF */	addi r0, r31, -0x1
/* 803BCD40 00386300  3F C0 80 61 */	lis r30, MPSLIB_libwork@ha
/* 803BCD44 00386304  54 03 40 2E */	slwi r3, r0, 8
/* 803BCD48 00386308  90 9E A2 94 */	stw r4, MPSLIB_libwork@l(r30)
/* 803BCD4C 0038630C  38 03 01 10 */	addi r0, r3, 0x110
/* 803BCD50 00386310  7C 83 23 78 */	mr r3, r4
/* 803BCD54 00386314  38 80 00 00 */	li r4, 0x0
/* 803BCD58 00386318  54 05 F0 BE */	srwi r5, r0, 2
/* 803BCD5C 0038631C  48 01 77 75 */	bl UTY_MemsetDword
/* 803BCD60 00386320  80 7E A2 94 */	lwz r3, MPSLIB_libwork@l(r30)
/* 803BCD64 00386324  38 00 00 00 */	li r0, 0x0
/* 803BCD68 00386328  2C 9F 00 00 */	cmpwi cr1, r31, 0x0
/* 803BCD6C 0038632C  38 A0 00 00 */	li r5, 0x0
/* 803BCD70 00386330  90 03 00 00 */	stw r0, 0x0(r3)
/* 803BCD74 00386334  90 03 00 04 */	stw r0, 0x4(r3)
/* 803BCD78 00386338  90 03 00 08 */	stw r0, 0x8(r3)
/* 803BCD7C 0038633C  80 7E A2 94 */	lwz r3, MPSLIB_libwork@l(r30)
/* 803BCD80 00386340  93 E3 00 0C */	stw r31, 0xc(r3)
/* 803BCD84 00386344  80 7E A2 94 */	lwz r3, MPSLIB_libwork@l(r30)
/* 803BCD88 00386348  38 83 00 10 */	addi r4, r3, 0x10
/* 803BCD8C 0038634C  40 85 00 AC */	ble cr1, .L_803BCE38
/* 803BCD90 00386350  2C 1F 00 08 */	cmpwi r31, 0x8
/* 803BCD94 00386354  38 DF FF F8 */	addi r6, r31, -0x8
/* 803BCD98 00386358  40 81 00 70 */	ble .L_803BCE08
/* 803BCD9C 0038635C  38 E0 00 00 */	li r7, 0x0
/* 803BCDA0 00386360  41 84 00 18 */	blt cr1, .L_803BCDB8
/* 803BCDA4 00386364  3C 60 80 00 */	lis r3, 0x8000
/* 803BCDA8 00386368  38 03 FF FE */	addi r0, r3, -0x2
/* 803BCDAC 0038636C  7C 1F 00 00 */	cmpw r31, r0
/* 803BCDB0 00386370  41 81 00 08 */	bgt .L_803BCDB8
/* 803BCDB4 00386374  38 E0 00 01 */	li r7, 0x1
.L_803BCDB8:
/* 803BCDB8 00386378  2C 07 00 00 */	cmpwi r7, 0x0
/* 803BCDBC 0038637C  41 82 00 4C */	beq .L_803BCE08
/* 803BCDC0 00386380  38 06 00 07 */	addi r0, r6, 0x7
/* 803BCDC4 00386384  7C 87 23 78 */	mr r7, r4
/* 803BCDC8 00386388  54 00 E8 FE */	srwi r0, r0, 3
/* 803BCDCC 0038638C  38 60 00 01 */	li r3, 0x1
/* 803BCDD0 00386390  7C 09 03 A6 */	mtctr r0
/* 803BCDD4 00386394  2C 06 00 00 */	cmpwi r6, 0x0
/* 803BCDD8 00386398  40 81 00 30 */	ble .L_803BCE08
.L_803BCDDC:
/* 803BCDDC 0038639C  90 67 00 00 */	stw r3, 0x0(r7)
/* 803BCDE0 003863A0  38 A5 00 08 */	addi r5, r5, 0x8
/* 803BCDE4 003863A4  90 67 01 00 */	stw r3, 0x100(r7)
/* 803BCDE8 003863A8  90 67 02 00 */	stw r3, 0x200(r7)
/* 803BCDEC 003863AC  90 67 03 00 */	stw r3, 0x300(r7)
/* 803BCDF0 003863B0  90 67 04 00 */	stw r3, 0x400(r7)
/* 803BCDF4 003863B4  90 67 05 00 */	stw r3, 0x500(r7)
/* 803BCDF8 003863B8  90 67 06 00 */	stw r3, 0x600(r7)
/* 803BCDFC 003863BC  90 67 07 00 */	stw r3, 0x700(r7)
/* 803BCE00 003863C0  38 E7 08 00 */	addi r7, r7, 0x800
/* 803BCE04 003863C4  42 00 FF D8 */	bdnz .L_803BCDDC
.L_803BCE08:
/* 803BCE08 003863C8  54 A3 40 2E */	slwi r3, r5, 8
/* 803BCE0C 003863CC  7C 05 F8 50 */	subf r0, r5, r31
/* 803BCE10 003863D0  7C 84 1A 14 */	add r4, r4, r3
/* 803BCE14 003863D4  38 60 00 01 */	li r3, 0x1
/* 803BCE18 003863D8  7C 09 03 A6 */	mtctr r0
/* 803BCE1C 003863DC  7C 05 F8 00 */	cmpw r5, r31
/* 803BCE20 003863E0  40 80 00 18 */	bge .L_803BCE38
.L_803BCE24:
/* 803BCE24 003863E4  90 64 00 00 */	stw r3, 0x0(r4)
/* 803BCE28 003863E8  38 84 01 00 */	addi r4, r4, 0x100
/* 803BCE2C 003863EC  42 00 FF F8 */	bdnz .L_803BCE24
/* 803BCE30 003863F0  48 00 00 08 */	b .L_803BCE38
/* 803BCE34 003863F4  48 00 00 10 */	b .L_803BCE44
.L_803BCE38:
/* 803BCE38 003863F8  4B FF E8 F9 */	bl MPSDEC_Init
/* 803BCE3C 003863FC  4B FF FC 45 */	bl MPSGET_Init
/* 803BCE40 00386400  38 60 00 00 */	li r3, 0x0
.L_803BCE44:
/* 803BCE44 00386404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCE48 00386408  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BCE4C 0038640C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803BCE50 00386410  7C 08 03 A6 */	mtlr r0
/* 803BCE54 00386414  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCE58 00386418  4E 80 00 20 */	blr
.endfn MPS_Init

.fn MPS_Finish, global
/* 803BCE5C 0038641C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803BCE60 00386420  7C 08 02 A6 */	mflr r0
/* 803BCE64 00386424  90 01 00 34 */	stw r0, 0x34(r1)
/* 803BCE68 00386428  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803BCE6C 0038642C  3F 80 80 61 */	lis r28, MPSLIB_libwork@ha
/* 803BCE70 00386430  3B 40 00 00 */	li r26, 0x0
/* 803BCE74 00386434  3F C0 FF 02 */	lis r30, 0xff02
/* 803BCE78 00386438  3F A0 80 61 */	lis r29, mpslib_hn_last@ha
/* 803BCE7C 0038643C  3B E0 00 01 */	li r31, 0x1
/* 803BCE80 00386440  80 7C A2 94 */	lwz r3, MPSLIB_libwork@l(r28)
/* 803BCE84 00386444  83 23 00 0C */	lwz r25, 0xc(r3)
/* 803BCE88 00386448  3B 63 00 10 */	addi r27, r3, 0x10
/* 803BCE8C 0038644C  48 00 00 70 */	b .L_803BCEFC
.L_803BCE90:
/* 803BCE90 00386450  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 803BCE94 00386454  2C 80 00 01 */	cmpwi cr1, r0, 0x1
/* 803BCE98 00386458  41 86 00 5C */	beq cr1, .L_803BCEF4
/* 803BCE9C 0038645C  2C 1B 00 00 */	cmpwi r27, 0x0
/* 803BCEA0 00386460  40 82 00 0C */	bne .L_803BCEAC
/* 803BCEA4 00386464  38 00 FF FF */	li r0, -0x1
/* 803BCEA8 00386468  48 00 00 18 */	b .L_803BCEC0
.L_803BCEAC:
/* 803BCEAC 0038646C  40 86 00 0C */	bne cr1, .L_803BCEB8
/* 803BCEB0 00386470  38 00 FF FF */	li r0, -0x1
/* 803BCEB4 00386474  48 00 00 0C */	b .L_803BCEC0
.L_803BCEB8:
/* 803BCEB8 00386478  93 7D A2 98 */	stw r27, mpslib_hn_last@l(r29)
/* 803BCEBC 0038647C  38 00 00 00 */	li r0, 0x0
.L_803BCEC0:
/* 803BCEC0 00386480  2C 00 00 00 */	cmpwi r0, 0x0
/* 803BCEC4 00386484  41 82 00 2C */	beq .L_803BCEF0
/* 803BCEC8 00386488  80 7C A2 94 */	lwz r3, MPSLIB_libwork@l(r28)
/* 803BCECC 0038648C  38 9E 01 03 */	addi r4, r30, 0x103
/* 803BCED0 00386490  90 83 00 08 */	stw r4, 0x8(r3)
/* 803BCED4 00386494  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803BCED8 00386498  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803BCEDC 0038649C  41 82 00 18 */	beq .L_803BCEF4
/* 803BCEE0 003864A0  80 63 00 04 */	lwz r3, 0x4(r3)
/* 803BCEE4 003864A4  7D 89 03 A6 */	mtctr r12
/* 803BCEE8 003864A8  4E 80 04 21 */	bctrl
/* 803BCEEC 003864AC  48 00 00 08 */	b .L_803BCEF4
.L_803BCEF0:
/* 803BCEF0 003864B0  93 FB 00 00 */	stw r31, 0x0(r27)
.L_803BCEF4:
/* 803BCEF4 003864B4  3B 7B 01 00 */	addi r27, r27, 0x100
/* 803BCEF8 003864B8  3B 5A 00 01 */	addi r26, r26, 0x1
.L_803BCEFC:
/* 803BCEFC 003864BC  7C 1A C8 00 */	cmpw r26, r25
/* 803BCF00 003864C0  41 80 FF 90 */	blt .L_803BCE90
/* 803BCF04 003864C4  4B FF E8 31 */	bl MPSDEC_Finish
/* 803BCF08 003864C8  4B FF FB 7D */	bl MPSGET_Finish
/* 803BCF0C 003864CC  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 803BCF10 003864D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803BCF14 003864D4  7C 08 03 A6 */	mtlr r0
/* 803BCF18 003864D8  38 21 00 30 */	addi r1, r1, 0x30
/* 803BCF1C 003864DC  4E 80 00 20 */	blr
.endfn MPS_Finish

.fn MPSLIB_SetErr, global
/* 803BCF20 003864E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCF24 003864E4  7C 08 02 A6 */	mflr r0
/* 803BCF28 003864E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCF2C 003864EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCF30 003864F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BCF34 003864F4  7C 9F 23 78 */	mr r31, r4
/* 803BCF38 003864F8  40 82 00 34 */	bne .L_803BCF6C
/* 803BCF3C 003864FC  3C 60 80 61 */	lis r3, MPSLIB_libwork@ha
/* 803BCF40 00386500  2C 04 00 00 */	cmpwi r4, 0x0
/* 803BCF44 00386504  80 63 A2 94 */	lwz r3, MPSLIB_libwork@l(r3)
/* 803BCF48 00386508  90 83 00 08 */	stw r4, 0x8(r3)
/* 803BCF4C 0038650C  41 82 00 44 */	beq .L_803BCF90
/* 803BCF50 00386510  81 83 00 00 */	lwz r12, 0x0(r3)
/* 803BCF54 00386514  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803BCF58 00386518  41 82 00 38 */	beq .L_803BCF90
/* 803BCF5C 0038651C  80 63 00 04 */	lwz r3, 0x4(r3)
/* 803BCF60 00386520  7D 89 03 A6 */	mtctr r12
/* 803BCF64 00386524  4E 80 04 21 */	bctrl
/* 803BCF68 00386528  48 00 00 28 */	b .L_803BCF90
.L_803BCF6C:
/* 803BCF6C 0038652C  2C 04 00 00 */	cmpwi r4, 0x0
/* 803BCF70 00386530  90 83 00 0C */	stw r4, 0xc(r3)
/* 803BCF74 00386534  41 82 00 1C */	beq .L_803BCF90
/* 803BCF78 00386538  81 83 00 04 */	lwz r12, 0x4(r3)
/* 803BCF7C 0038653C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803BCF80 00386540  41 82 00 10 */	beq .L_803BCF90
/* 803BCF84 00386544  80 63 00 08 */	lwz r3, 0x8(r3)
/* 803BCF88 00386548  7D 89 03 A6 */	mtctr r12
/* 803BCF8C 0038654C  4E 80 04 21 */	bctrl
.L_803BCF90:
/* 803BCF90 00386550  7F E3 FB 78 */	mr r3, r31
/* 803BCF94 00386554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BCF98 00386558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCF9C 0038655C  7C 08 03 A6 */	mtlr r0
/* 803BCFA0 00386560  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCFA4 00386564  4E 80 00 20 */	blr
.endfn MPSLIB_SetErr

.fn MPS_GetErrInf, global
/* 803BCFA8 00386568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCFAC 0038656C  7C 08 02 A6 */	mflr r0
/* 803BCFB0 00386570  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BCFB4 00386574  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCFB8 00386578  40 82 00 18 */	bne .L_803BCFD0
/* 803BCFBC 0038657C  3C 60 80 61 */	lis r3, MPSLIB_libwork@ha
/* 803BCFC0 00386580  80 63 A2 94 */	lwz r3, MPSLIB_libwork@l(r3)
/* 803BCFC4 00386584  90 83 00 00 */	stw r4, 0x0(r3)
/* 803BCFC8 00386588  90 A3 00 04 */	stw r5, 0x4(r3)
/* 803BCFCC 0038658C  48 00 00 78 */	b .L_803BD044
.L_803BCFD0:
/* 803BCFD0 00386590  40 82 00 0C */	bne .L_803BCFDC
/* 803BCFD4 00386594  38 00 FF FF */	li r0, -0x1
/* 803BCFD8 00386598  48 00 00 24 */	b .L_803BCFFC
.L_803BCFDC:
/* 803BCFDC 0038659C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803BCFE0 003865A0  2C 00 00 01 */	cmpwi r0, 0x1
/* 803BCFE4 003865A4  40 82 00 0C */	bne .L_803BCFF0
/* 803BCFE8 003865A8  38 00 FF FF */	li r0, -0x1
/* 803BCFEC 003865AC  48 00 00 10 */	b .L_803BCFFC
.L_803BCFF0:
/* 803BCFF0 003865B0  3C C0 80 61 */	lis r6, mpslib_hn_last@ha
/* 803BCFF4 003865B4  38 00 00 00 */	li r0, 0x0
/* 803BCFF8 003865B8  90 66 A2 98 */	stw r3, mpslib_hn_last@l(r6)
.L_803BCFFC:
/* 803BCFFC 003865BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 803BD000 003865C0  41 82 00 3C */	beq .L_803BD03C
/* 803BD004 003865C4  3C 80 80 61 */	lis r4, MPSLIB_libwork@ha
/* 803BD008 003865C8  3C 60 FF 02 */	lis r3, 0xff02
/* 803BD00C 003865CC  80 A4 A2 94 */	lwz r5, MPSLIB_libwork@l(r4)
/* 803BD010 003865D0  38 83 01 01 */	addi r4, r3, 0x101
/* 803BD014 003865D4  90 85 00 08 */	stw r4, 0x8(r5)
/* 803BD018 003865D8  81 85 00 00 */	lwz r12, 0x0(r5)
/* 803BD01C 003865DC  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803BD020 003865E0  41 82 00 10 */	beq .L_803BD030
/* 803BD024 003865E4  80 65 00 04 */	lwz r3, 0x4(r5)
/* 803BD028 003865E8  7D 89 03 A6 */	mtctr r12
/* 803BD02C 003865EC  4E 80 04 21 */	bctrl
.L_803BD030:
/* 803BD030 003865F0  3C 60 FF 02 */	lis r3, 0xff02
/* 803BD034 003865F4  38 63 01 01 */	addi r3, r3, 0x101
/* 803BD038 003865F8  48 00 00 10 */	b .L_803BD048
.L_803BD03C:
/* 803BD03C 003865FC  90 83 00 04 */	stw r4, 0x4(r3)
/* 803BD040 00386600  90 A3 00 08 */	stw r5, 0x8(r3)
.L_803BD044:
/* 803BD044 00386604  38 60 00 00 */	li r3, 0x0
.L_803BD048:
/* 803BD048 00386608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD04C 0038660C  7C 08 03 A6 */	mtlr r0
/* 803BD050 00386610  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD054 00386614  4E 80 00 20 */	blr
.endfn MPS_GetErrInf

.fn MPSLIB_CheckHn, global
/* 803BD058 00386618  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BD05C 0038661C  40 82 00 0C */	bne .L_803BD068
/* 803BD060 00386620  38 60 FF FF */	li r3, -0x1
/* 803BD064 00386624  4E 80 00 20 */	blr
.L_803BD068:
/* 803BD068 00386628  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803BD06C 0038662C  2C 00 00 01 */	cmpwi r0, 0x1
/* 803BD070 00386630  40 82 00 0C */	bne .L_803BD07C
/* 803BD074 00386634  38 60 FF FF */	li r3, -0x1
/* 803BD078 00386638  4E 80 00 20 */	blr
.L_803BD07C:
/* 803BD07C 0038663C  3C 80 80 61 */	lis r4, mpslib_hn_last@ha
/* 803BD080 00386640  90 64 A2 98 */	stw r3, mpslib_hn_last@l(r4)
/* 803BD084 00386644  38 60 00 00 */	li r3, 0x0
/* 803BD088 00386648  4E 80 00 20 */	blr
.endfn MPSLIB_CheckHn

.fn MPS_Create, global
/* 803BD08C 0038664C  3C 60 80 61 */	lis r3, MPSLIB_libwork@ha
/* 803BD090 00386650  80 63 A2 94 */	lwz r3, MPSLIB_libwork@l(r3)
/* 803BD094 00386654  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803BD098 00386658  38 63 00 10 */	addi r3, r3, 0x10
/* 803BD09C 0038665C  7C 09 03 A6 */	mtctr r0
/* 803BD0A0 00386660  2C 00 00 00 */	cmpwi r0, 0x0
/* 803BD0A4 00386664  40 81 00 1C */	ble .L_803BD0C0
.L_803BD0A8:
/* 803BD0A8 00386668  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803BD0AC 0038666C  2C 00 00 01 */	cmpwi r0, 0x1
/* 803BD0B0 00386670  40 82 00 08 */	bne .L_803BD0B8
/* 803BD0B4 00386674  48 00 00 10 */	b .L_803BD0C4
.L_803BD0B8:
/* 803BD0B8 00386678  38 63 01 00 */	addi r3, r3, 0x100
/* 803BD0BC 0038667C  42 00 FF EC */	bdnz .L_803BD0A8
.L_803BD0C0:
/* 803BD0C0 00386680  38 60 00 00 */	li r3, 0x0
.L_803BD0C4:
/* 803BD0C4 00386684  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BD0C8 00386688  40 82 00 0C */	bne .L_803BD0D4
/* 803BD0CC 0038668C  38 60 00 00 */	li r3, 0x0
/* 803BD0D0 00386690  4E 80 00 20 */	blr
.L_803BD0D4:
/* 803BD0D4 00386694  48 00 00 08 */	b mpslib_InitHn
/* 803BD0D8 00386698  4E 80 00 20 */	blr
.endfn MPS_Create

.fn mpslib_InitHn, global
/* 803BD0DC 0038669C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD0E0 003866A0  7C 08 02 A6 */	mflr r0
/* 803BD0E4 003866A4  38 80 00 00 */	li r4, 0x0
/* 803BD0E8 003866A8  38 A0 00 40 */	li r5, 0x40
/* 803BD0EC 003866AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD0F0 003866B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BD0F4 003866B4  7C 7F 1B 78 */	mr r31, r3
/* 803BD0F8 003866B8  48 01 73 D9 */	bl UTY_MemsetDword
/* 803BD0FC 003866BC  3C 80 80 3C */	lis r4, MPSDEC_DecHdMpeg1@ha
/* 803BD100 003866C0  38 00 FF FF */	li r0, -0x1
/* 803BD104 003866C4  38 A0 00 00 */	li r5, 0x0
/* 803BD108 003866C8  38 C0 00 02 */	li r6, 0x2
/* 803BD10C 003866CC  38 84 B8 B8 */	addi r4, r4, MPSDEC_DecHdMpeg1@l
/* 803BD110 003866D0  90 DF 00 00 */	stw r6, 0x0(r31)
/* 803BD114 003866D4  7F E3 FB 78 */	mr r3, r31
/* 803BD118 003866D8  90 BF 00 04 */	stw r5, 0x4(r31)
/* 803BD11C 003866DC  90 BF 00 08 */	stw r5, 0x8(r31)
/* 803BD120 003866E0  90 BF 00 0C */	stw r5, 0xc(r31)
/* 803BD124 003866E4  90 DF 00 10 */	stw r6, 0x10(r31)
/* 803BD128 003866E8  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 803BD12C 003866EC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 803BD130 003866F0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 803BD134 003866F4  90 1F 00 24 */	stw r0, 0x24(r31)
/* 803BD138 003866F8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 803BD13C 003866FC  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 803BD140 00386700  90 1F 00 30 */	stw r0, 0x30(r31)
/* 803BD144 00386704  90 1F 00 34 */	stw r0, 0x34(r31)
/* 803BD148 00386708  90 1F 00 38 */	stw r0, 0x38(r31)
/* 803BD14C 0038670C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 803BD150 00386710  90 1F 00 40 */	stw r0, 0x40(r31)
/* 803BD154 00386714  90 1F 00 44 */	stw r0, 0x44(r31)
/* 803BD158 00386718  90 1F 00 48 */	stw r0, 0x48(r31)
/* 803BD15C 0038671C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 803BD160 00386720  90 1F 00 50 */	stw r0, 0x50(r31)
/* 803BD164 00386724  90 1F 00 54 */	stw r0, 0x54(r31)
/* 803BD168 00386728  90 1F 00 58 */	stw r0, 0x58(r31)
/* 803BD16C 0038672C  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 803BD170 00386730  90 1F 00 60 */	stw r0, 0x60(r31)
/* 803BD174 00386734  90 1F 00 64 */	stw r0, 0x64(r31)
/* 803BD178 00386738  90 1F 00 68 */	stw r0, 0x68(r31)
/* 803BD17C 0038673C  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 803BD180 00386740  90 1F 00 70 */	stw r0, 0x70(r31)
/* 803BD184 00386744  90 1F 00 74 */	stw r0, 0x74(r31)
/* 803BD188 00386748  90 1F 00 78 */	stw r0, 0x78(r31)
/* 803BD18C 0038674C  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 803BD190 00386750  90 1F 00 80 */	stw r0, 0x80(r31)
/* 803BD194 00386754  90 1F 00 84 */	stw r0, 0x84(r31)
/* 803BD198 00386758  90 1F 00 88 */	stw r0, 0x88(r31)
/* 803BD19C 0038675C  90 1F 00 8C */	stw r0, 0x8c(r31)
/* 803BD1A0 00386760  90 1F 00 90 */	stw r0, 0x90(r31)
/* 803BD1A4 00386764  90 1F 00 94 */	stw r0, 0x94(r31)
/* 803BD1A8 00386768  90 1F 00 98 */	stw r0, 0x98(r31)
/* 803BD1AC 0038676C  90 1F 00 9C */	stw r0, 0x9c(r31)
/* 803BD1B0 00386770  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 803BD1B4 00386774  90 1F 00 A4 */	stw r0, 0xa4(r31)
/* 803BD1B8 00386778  90 1F 00 AC */	stw r0, 0xac(r31)
/* 803BD1BC 0038677C  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 803BD1C0 00386780  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 803BD1C4 00386784  90 1F 00 B0 */	stw r0, 0xb0(r31)
/* 803BD1C8 00386788  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 803BD1CC 0038678C  90 1F 00 BC */	stw r0, 0xbc(r31)
/* 803BD1D0 00386790  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 803BD1D4 00386794  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 803BD1D8 00386798  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 803BD1DC 0038679C  90 1F 00 CC */	stw r0, 0xcc(r31)
/* 803BD1E0 003867A0  90 BF 00 D0 */	stw r5, 0xd0(r31)
/* 803BD1E4 003867A4  90 9F 00 D4 */	stw r4, 0xd4(r31)
/* 803BD1E8 003867A8  90 BF 00 D8 */	stw r5, 0xd8(r31)
/* 803BD1EC 003867AC  90 BF 00 DC */	stw r5, 0xdc(r31)
/* 803BD1F0 003867B0  90 BF 00 E0 */	stw r5, 0xe0(r31)
/* 803BD1F4 003867B4  90 BF 00 E4 */	stw r5, 0xe4(r31)
/* 803BD1F8 003867B8  90 BF 00 E8 */	stw r5, 0xe8(r31)
/* 803BD1FC 003867BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BD200 003867C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD204 003867C4  7C 08 03 A6 */	mtlr r0
/* 803BD208 003867C8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD20C 003867CC  4E 80 00 20 */	blr
.endfn mpslib_InitHn

.fn MPS_Destroy, global
/* 803BD210 003867D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD214 003867D4  7C 08 02 A6 */	mflr r0
/* 803BD218 003867D8  2C 03 00 00 */	cmpwi r3, 0x0
/* 803BD21C 003867DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD220 003867E0  40 82 00 0C */	bne .L_803BD22C
/* 803BD224 003867E4  38 00 FF FF */	li r0, -0x1
/* 803BD228 003867E8  48 00 00 24 */	b .L_803BD24C
.L_803BD22C:
/* 803BD22C 003867EC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 803BD230 003867F0  2C 00 00 01 */	cmpwi r0, 0x1
/* 803BD234 003867F4  40 82 00 0C */	bne .L_803BD240
/* 803BD238 003867F8  38 00 FF FF */	li r0, -0x1
/* 803BD23C 003867FC  48 00 00 10 */	b .L_803BD24C
.L_803BD240:
/* 803BD240 00386800  3C 80 80 61 */	lis r4, mpslib_hn_last@ha
/* 803BD244 00386804  38 00 00 00 */	li r0, 0x0
/* 803BD248 00386808  90 64 A2 98 */	stw r3, mpslib_hn_last@l(r4)
.L_803BD24C:
/* 803BD24C 0038680C  2C 00 00 00 */	cmpwi r0, 0x0
/* 803BD250 00386810  41 82 00 3C */	beq .L_803BD28C
/* 803BD254 00386814  3C 80 80 61 */	lis r4, MPSLIB_libwork@ha
/* 803BD258 00386818  3C 60 FF 02 */	lis r3, 0xff02
/* 803BD25C 0038681C  80 A4 A2 94 */	lwz r5, MPSLIB_libwork@l(r4)
/* 803BD260 00386820  38 83 01 03 */	addi r4, r3, 0x103
/* 803BD264 00386824  90 85 00 08 */	stw r4, 0x8(r5)
/* 803BD268 00386828  81 85 00 00 */	lwz r12, 0x0(r5)
/* 803BD26C 0038682C  2C 0C 00 00 */	cmpwi r12, 0x0
/* 803BD270 00386830  41 82 00 10 */	beq .L_803BD280
/* 803BD274 00386834  80 65 00 04 */	lwz r3, 0x4(r5)
/* 803BD278 00386838  7D 89 03 A6 */	mtctr r12
/* 803BD27C 0038683C  4E 80 04 21 */	bctrl
.L_803BD280:
/* 803BD280 00386840  3C 60 FF 02 */	lis r3, 0xff02
/* 803BD284 00386844  38 63 01 03 */	addi r3, r3, 0x103
/* 803BD288 00386848  48 00 00 10 */	b .L_803BD298
.L_803BD28C:
/* 803BD28C 0038684C  38 00 00 01 */	li r0, 0x1
/* 803BD290 00386850  90 03 00 00 */	stw r0, 0x0(r3)
/* 803BD294 00386854  38 60 00 00 */	li r3, 0x0
.L_803BD298:
/* 803BD298 00386858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD29C 0038685C  7C 08 03 A6 */	mtlr r0
/* 803BD2A0 00386860  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD2A4 00386864  4E 80 00 20 */	blr
.endfn MPS_Destroy

# 0x8051FE88 - 0x8051FEE0
.rodata
.balign 8

.obj MPSLIB_version_str, global
	.4byte 0x0A435249
	.4byte 0x204D5053
	.4byte 0x2F574949
	.4byte 0x20566572
	.4byte 0x2E322E30
	.4byte 0x36342042
	.4byte 0x75696C64
	.4byte 0x3A4E6F76
	.4byte 0x20313320
	.4byte 0x32303038
	.4byte 0x2031383A
	.4byte 0x32313A32
	.4byte 0x390A0041
	.4byte 0x7070656E
	.4byte 0x643A204D
	.4byte 0x57343139
	.4byte 0x39205749
	.4byte 0x4933304A
	.4byte 0x756C3230
	.4byte 0x30385061
	.4byte 0x74636830
	.4byte 0x320A0000

# 0x8060A290 - 0x8060A2A0
.section .bss, "wa", @nobits
.balign 8

.obj cri_mps_verstr_ptr, global
	.skip 0x4

.obj MPSLIB_libwork, global
	.skip 0x4

.obj mpslib_hn_last, global
	.skip 0x8
