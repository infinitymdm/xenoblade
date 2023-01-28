.include "macros.inc"
.file "nw4r/snd/snd_WsdFile.o"

# 0x80429F70 - 0x8042A32C
.text
.balign 4

# nw4r::snd::detail::WsdFileReader::WsdFileReader(const void*)
.fn __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv, global
/* 80429F70 003F3530  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 80429F74 003F3534  38 C0 00 00 */	li r6, 0x0
/* 80429F78 003F3538  90 C3 00 00 */	stw r6, 0x0(r3)
/* 80429F7C 003F353C  3C 05 AD A9 */	addis r0, r5, 0xada9
/* 80429F80 003F3540  28 00 53 44 */	cmplwi r0, 0x5344
/* 80429F84 003F3544  90 C3 00 04 */	stw r6, 0x4(r3)
/* 80429F88 003F3548  90 C3 00 08 */	stw r6, 0x8(r3)
/* 80429F8C 003F354C  41 82 00 0C */	beq .L_80429F98
/* 80429F90 003F3550  38 00 00 00 */	li r0, 0x0
/* 80429F94 003F3554  48 00 00 30 */	b .L_80429FC4
.L_80429F98:
/* 80429F98 003F3558  A0 C4 00 06 */	lhz r6, 0x6(r4)
/* 80429F9C 003F355C  28 06 01 00 */	cmplwi r6, 0x100
/* 80429FA0 003F3560  40 80 00 0C */	bge .L_80429FAC
/* 80429FA4 003F3564  38 00 00 00 */	li r0, 0x0
/* 80429FA8 003F3568  48 00 00 1C */	b .L_80429FC4
.L_80429FAC:
/* 80429FAC 003F356C  20 06 01 03 */	subfic r0, r6, 0x103
/* 80429FB0 003F3570  38 A0 01 03 */	li r5, 0x103
/* 80429FB4 003F3574  7C A5 33 38 */	orc r5, r5, r6
/* 80429FB8 003F3578  54 00 F8 7E */	srwi r0, r0, 1
/* 80429FBC 003F357C  7C 00 28 50 */	subf r0, r0, r5
/* 80429FC0 003F3580  54 00 0F FE */	srwi r0, r0, 31
.L_80429FC4:
/* 80429FC4 003F3584  2C 00 00 00 */	cmpwi r0, 0x0
/* 80429FC8 003F3588  4D 82 00 20 */	beqlr
/* 80429FCC 003F358C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80429FD0 003F3590  90 83 00 00 */	stw r4, 0x0(r3)
/* 80429FD4 003F3594  2C 00 00 00 */	cmpwi r0, 0x0
/* 80429FD8 003F3598  41 82 00 0C */	beq .L_80429FE4
/* 80429FDC 003F359C  7C 00 22 14 */	add r0, r0, r4
/* 80429FE0 003F35A0  90 03 00 04 */	stw r0, 0x4(r3)
.L_80429FE4:
/* 80429FE4 003F35A4  80 83 00 00 */	lwz r4, 0x0(r3)
/* 80429FE8 003F35A8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80429FEC 003F35AC  2C 00 00 00 */	cmpwi r0, 0x0
/* 80429FF0 003F35B0  4D 82 00 20 */	beqlr
/* 80429FF4 003F35B4  7C 00 22 14 */	add r0, r0, r4
/* 80429FF8 003F35B8  90 03 00 08 */	stw r0, 0x8(r3)
/* 80429FFC 003F35BC  4E 80 00 20 */	blr
.endfn __ct__Q44nw4r3snd6detail13WsdFileReaderFPCv

# nw4r::snd::detail::WsdFileReader::ReadWaveSoundInfo(nw4r::snd::detail::WaveSoundInfo*, int) const
.fn ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi, global
/* 8042A000 003F35C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A004 003F35C4  7C 08 02 A6 */	mflr r0
/* 8042A008 003F35C8  80 C3 00 04 */	lwz r6, 0x4(r3)
/* 8042A00C 003F35CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A010 003F35D0  54 A0 18 38 */	slwi r0, r5, 3
/* 8042A014 003F35D4  38 A6 00 08 */	addi r5, r6, 0x8
/* 8042A018 003F35D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A01C 003F35DC  7C 9F 23 78 */	mr r31, r4
/* 8042A020 003F35E0  7C 86 02 14 */	add r4, r6, r0
/* 8042A024 003F35E4  93 C1 00 08 */	stw r30, 0x8(r1)
/* 8042A028 003F35E8  7C 7E 1B 78 */	mr r30, r3
/* 8042A02C 003F35EC  88 64 00 0C */	lbz r3, 0xc(r4)
/* 8042A030 003F35F0  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8042A034 003F35F4  4B FF F7 F5 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8042A038 003F35F8  7C 64 1B 78 */	mr r4, r3
/* 8042A03C 003F35FC  80 BE 00 04 */	lwz r5, 0x4(r30)
/* 8042A040 003F3600  88 63 00 00 */	lbz r3, 0x0(r3)
/* 8042A044 003F3604  80 84 00 04 */	lwz r4, 0x4(r4)
/* 8042A048 003F3608  38 A5 00 08 */	addi r5, r5, 0x8
/* 8042A04C 003F360C  4B FF F7 DD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8042A050 003F3610  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 8042A054 003F3614  A0 04 00 06 */	lhz r0, 0x6(r4)
/* 8042A058 003F3618  28 00 01 02 */	cmplwi r0, 0x102
/* 8042A05C 003F361C  41 80 00 40 */	blt .L_8042A09C
/* 8042A060 003F3620  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8042A064 003F3624  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 8042A068 003F3628  88 03 00 04 */	lbz r0, 0x4(r3)
/* 8042A06C 003F362C  98 1F 00 04 */	stb r0, 0x4(r31)
/* 8042A070 003F3630  88 03 00 05 */	lbz r0, 0x5(r3)
/* 8042A074 003F3634  98 1F 00 05 */	stb r0, 0x5(r31)
/* 8042A078 003F3638  88 03 00 06 */	lbz r0, 0x6(r3)
/* 8042A07C 003F363C  98 1F 00 06 */	stb r0, 0x6(r31)
/* 8042A080 003F3640  88 03 00 07 */	lbz r0, 0x7(r3)
/* 8042A084 003F3644  98 1F 00 07 */	stb r0, 0x7(r31)
/* 8042A088 003F3648  88 03 00 08 */	lbz r0, 0x8(r3)
/* 8042A08C 003F364C  98 1F 00 08 */	stb r0, 0x8(r31)
/* 8042A090 003F3650  88 03 00 09 */	lbz r0, 0x9(r3)
/* 8042A094 003F3654  98 1F 00 09 */	stb r0, 0x9(r31)
/* 8042A098 003F3658  48 00 00 6C */	b .L_8042A104
.L_8042A09C:
/* 8042A09C 003F365C  28 00 01 01 */	cmplwi r0, 0x101
/* 8042A0A0 003F3660  41 80 00 38 */	blt .L_8042A0D8
/* 8042A0A4 003F3664  C0 03 00 00 */	lfs f0, 0x0(r3)
/* 8042A0A8 003F3668  38 80 00 00 */	li r4, 0x0
/* 8042A0AC 003F366C  38 00 00 7F */	li r0, 0x7f
/* 8042A0B0 003F3670  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 8042A0B4 003F3674  88 A3 00 04 */	lbz r5, 0x4(r3)
/* 8042A0B8 003F3678  98 BF 00 04 */	stb r5, 0x4(r31)
/* 8042A0BC 003F367C  88 63 00 05 */	lbz r3, 0x5(r3)
/* 8042A0C0 003F3680  98 7F 00 05 */	stb r3, 0x5(r31)
/* 8042A0C4 003F3684  98 9F 00 06 */	stb r4, 0x6(r31)
/* 8042A0C8 003F3688  98 9F 00 07 */	stb r4, 0x7(r31)
/* 8042A0CC 003F368C  98 9F 00 08 */	stb r4, 0x8(r31)
/* 8042A0D0 003F3690  98 1F 00 09 */	stb r0, 0x9(r31)
/* 8042A0D4 003F3694  48 00 00 30 */	b .L_8042A104
.L_8042A0D8:
/* 8042A0D8 003F3698  C0 02 C5 80 */	lfs f0, lbl_8066C900@sda21(r2)
/* 8042A0DC 003F369C  38 60 00 00 */	li r3, 0x0
/* 8042A0E0 003F36A0  38 80 00 40 */	li r4, 0x40
/* 8042A0E4 003F36A4  38 00 00 7F */	li r0, 0x7f
/* 8042A0E8 003F36A8  D0 1F 00 00 */	stfs f0, 0x0(r31)
/* 8042A0EC 003F36AC  98 9F 00 04 */	stb r4, 0x4(r31)
/* 8042A0F0 003F36B0  98 7F 00 05 */	stb r3, 0x5(r31)
/* 8042A0F4 003F36B4  98 7F 00 06 */	stb r3, 0x6(r31)
/* 8042A0F8 003F36B8  98 7F 00 07 */	stb r3, 0x7(r31)
/* 8042A0FC 003F36BC  98 7F 00 08 */	stb r3, 0x8(r31)
/* 8042A100 003F36C0  98 1F 00 09 */	stb r0, 0x9(r31)
.L_8042A104:
/* 8042A104 003F36C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A108 003F36C8  38 60 00 01 */	li r3, 0x1
/* 8042A10C 003F36CC  83 C1 00 08 */	lwz r30, 0x8(r1)
/* 8042A110 003F36D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A114 003F36D4  7C 08 03 A6 */	mtlr r0
/* 8042A118 003F36D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A11C 003F36DC  4E 80 00 20 */	blr
.endfn ReadWaveSoundInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail13WaveSoundInfoi

# nw4r::snd::detail::WsdFileReader::ReadWaveSoundNoteInfo(nw4r::snd::detail::WaveSoundNoteInfo*, int, int) const
.fn ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii, global
/* 8042A120 003F36E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042A124 003F36E4  7C 08 02 A6 */	mflr r0
/* 8042A128 003F36E8  80 E3 00 04 */	lwz r7, 0x4(r3)
/* 8042A12C 003F36EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042A130 003F36F0  54 A0 18 38 */	slwi r0, r5, 3
/* 8042A134 003F36F4  38 A7 00 08 */	addi r5, r7, 0x8
/* 8042A138 003F36F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8042A13C 003F36FC  7C 9F 23 78 */	mr r31, r4
/* 8042A140 003F3700  7C 87 02 14 */	add r4, r7, r0
/* 8042A144 003F3704  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8042A148 003F3708  7C DE 33 78 */	mr r30, r6
/* 8042A14C 003F370C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8042A150 003F3710  7C 7D 1B 78 */	mr r29, r3
/* 8042A154 003F3714  88 64 00 0C */	lbz r3, 0xc(r4)
/* 8042A158 003F3718  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8042A15C 003F371C  4B FF F6 CD */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8042A160 003F3720  7C 64 1B 78 */	mr r4, r3
/* 8042A164 003F3724  80 BD 00 04 */	lwz r5, 0x4(r29)
/* 8042A168 003F3728  88 63 00 10 */	lbz r3, 0x10(r3)
/* 8042A16C 003F372C  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8042A170 003F3730  38 A5 00 08 */	addi r5, r5, 0x8
/* 8042A174 003F3734  4B FF F6 B5 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8042A178 003F3738  57 C0 18 38 */	slwi r0, r30, 3
/* 8042A17C 003F373C  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 8042A180 003F3740  7C C3 02 14 */	add r6, r3, r0
/* 8042A184 003F3744  38 A4 00 08 */	addi r5, r4, 0x8
/* 8042A188 003F3748  88 66 00 04 */	lbz r3, 0x4(r6)
/* 8042A18C 003F374C  80 86 00 08 */	lwz r4, 0x8(r6)
/* 8042A190 003F3750  4B FF F6 99 */	bl GetDataRefAddressImpl__Q44nw4r3snd6detail4UtilFQ54nw4r3snd6detail4Util7RefTypeUlPCv
/* 8042A194 003F3754  80 03 00 00 */	lwz r0, 0x0(r3)
/* 8042A198 003F3758  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 8042A19C 003F375C  90 1F 00 00 */	stw r0, 0x0(r31)
/* 8042A1A0 003F3760  88 03 00 04 */	lbz r0, 0x4(r3)
/* 8042A1A4 003F3764  98 1F 00 04 */	stb r0, 0x4(r31)
/* 8042A1A8 003F3768  88 03 00 08 */	lbz r0, 0x8(r3)
/* 8042A1AC 003F376C  98 1F 00 05 */	stb r0, 0x5(r31)
/* 8042A1B0 003F3770  88 03 00 05 */	lbz r0, 0x5(r3)
/* 8042A1B4 003F3774  98 1F 00 06 */	stb r0, 0x6(r31)
/* 8042A1B8 003F3778  88 03 00 06 */	lbz r0, 0x6(r3)
/* 8042A1BC 003F377C  98 1F 00 07 */	stb r0, 0x7(r31)
/* 8042A1C0 003F3780  88 03 00 07 */	lbz r0, 0x7(r3)
/* 8042A1C4 003F3784  98 1F 00 08 */	stb r0, 0x8(r31)
/* 8042A1C8 003F3788  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8042A1CC 003F378C  98 1F 00 09 */	stb r0, 0x9(r31)
/* 8042A1D0 003F3790  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8042A1D4 003F3794  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8042A1D8 003F3798  A0 04 00 06 */	lhz r0, 0x6(r4)
/* 8042A1DC 003F379C  28 00 01 01 */	cmplwi r0, 0x101
/* 8042A1E0 003F37A0  41 80 00 20 */	blt .L_8042A200
/* 8042A1E4 003F37A4  88 03 00 0E */	lbz r0, 0xe(r3)
/* 8042A1E8 003F37A8  98 1F 00 0A */	stb r0, 0xa(r31)
/* 8042A1EC 003F37AC  88 03 00 0F */	lbz r0, 0xf(r3)
/* 8042A1F0 003F37B0  98 1F 00 0B */	stb r0, 0xb(r31)
/* 8042A1F4 003F37B4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8042A1F8 003F37B8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8042A1FC 003F37BC  48 00 00 1C */	b .L_8042A218
.L_8042A200:
/* 8042A200 003F37C0  C0 02 C5 80 */	lfs f0, lbl_8066C900@sda21(r2)
/* 8042A204 003F37C4  38 60 00 40 */	li r3, 0x40
/* 8042A208 003F37C8  38 00 00 00 */	li r0, 0x0
/* 8042A20C 003F37CC  98 7F 00 0A */	stb r3, 0xa(r31)
/* 8042A210 003F37D0  98 1F 00 0B */	stb r0, 0xb(r31)
/* 8042A214 003F37D4  D0 1F 00 10 */	stfs f0, 0x10(r31)
.L_8042A218:
/* 8042A218 003F37D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8042A21C 003F37DC  38 60 00 01 */	li r3, 0x1
/* 8042A220 003F37E0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8042A224 003F37E4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8042A228 003F37E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042A22C 003F37EC  7C 08 03 A6 */	mtlr r0
/* 8042A230 003F37F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8042A234 003F37F4  4E 80 00 20 */	blr
.endfn ReadWaveSoundNoteInfo__Q44nw4r3snd6detail13WsdFileReaderCFPQ44nw4r3snd6detail17WaveSoundNoteInfoii

# nw4r::snd::detail::WsdFileReader::ReadWaveInfo(int, nw4r::snd::detail::WaveInfo*, const void*) const
.fn ReadWaveInfo__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveInfoPCv, global
/* 8042A238 003F37F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042A23C 003F37FC  7C 08 02 A6 */	mflr r0
/* 8042A240 003F3800  80 E3 00 08 */	lwz r7, 0x8(r3)
/* 8042A244 003F3804  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042A248 003F3808  2C 07 00 00 */	cmpwi r7, 0x0
/* 8042A24C 003F380C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8042A250 003F3810  7C DF 33 78 */	mr r31, r6
/* 8042A254 003F3814  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8042A258 003F3818  7C BE 2B 78 */	mr r30, r5
/* 8042A25C 003F381C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8042A260 003F3820  7C 9D 23 78 */	mr r29, r4
/* 8042A264 003F3824  40 82 00 4C */	bne .L_8042A2B0
/* 8042A268 003F3828  7F E4 FB 78 */	mr r4, r31
/* 8042A26C 003F382C  38 61 00 10 */	addi r3, r1, 0x10
/* 8042A270 003F3830  4B FF F5 DD */	bl __ct__Q44nw4r3snd6detail17WaveArchiveReaderFPCv
/* 8042A274 003F3834  7F A4 EB 78 */	mr r4, r29
/* 8042A278 003F3838  38 61 00 10 */	addi r3, r1, 0x10
/* 8042A27C 003F383C  4B FF F6 45 */	bl GetWaveFile__Q44nw4r3snd6detail17WaveArchiveReaderCFi
/* 8042A280 003F3840  2C 03 00 00 */	cmpwi r3, 0x0
/* 8042A284 003F3844  40 82 00 0C */	bne .L_8042A290
/* 8042A288 003F3848  38 60 00 00 */	li r3, 0x0
/* 8042A28C 003F384C  48 00 00 84 */	b .L_8042A310
.L_8042A290:
/* 8042A290 003F3850  7C 64 1B 78 */	mr r4, r3
/* 8042A294 003F3854  38 61 00 0C */	addi r3, r1, 0xc
/* 8042A298 003F3858  4B FF F6 B1 */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile10FileHeader
/* 8042A29C 003F385C  7F C4 F3 78 */	mr r4, r30
/* 8042A2A0 003F3860  38 61 00 0C */	addi r3, r1, 0xc
/* 8042A2A4 003F3864  38 A0 00 00 */	li r5, 0x0
/* 8042A2A8 003F3868  4B FF F6 C9 */	bl ReadWaveInfo__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveInfoPCv
/* 8042A2AC 003F386C  48 00 00 64 */	b .L_8042A310
.L_8042A2B0:
/* 8042A2B0 003F3870  80 63 00 00 */	lwz r3, 0x0(r3)
/* 8042A2B4 003F3874  A0 03 00 06 */	lhz r0, 0x6(r3)
/* 8042A2B8 003F3878  28 00 01 01 */	cmplwi r0, 0x101
/* 8042A2BC 003F387C  41 80 00 2C */	blt .L_8042A2E8
/* 8042A2C0 003F3880  80 07 00 08 */	lwz r0, 0x8(r7)
/* 8042A2C4 003F3884  7C 04 00 40 */	cmplw r4, r0
/* 8042A2C8 003F3888  41 80 00 0C */	blt .L_8042A2D4
/* 8042A2CC 003F388C  38 60 00 00 */	li r3, 0x0
/* 8042A2D0 003F3890  48 00 00 40 */	b .L_8042A310
.L_8042A2D4:
/* 8042A2D4 003F3894  54 80 10 3A */	slwi r0, r4, 2
/* 8042A2D8 003F3898  7C 67 02 14 */	add r3, r7, r0
/* 8042A2DC 003F389C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8042A2E0 003F38A0  7C 80 3A 14 */	add r4, r0, r7
/* 8042A2E4 003F38A4  48 00 00 14 */	b .L_8042A2F8
.L_8042A2E8:
/* 8042A2E8 003F38A8  54 80 10 3A */	slwi r0, r4, 2
/* 8042A2EC 003F38AC  7C 67 02 14 */	add r3, r7, r0
/* 8042A2F0 003F38B0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 8042A2F4 003F38B4  7C 80 3A 14 */	add r4, r0, r7
.L_8042A2F8:
/* 8042A2F8 003F38B8  38 61 00 08 */	addi r3, r1, 0x8
/* 8042A2FC 003F38BC  4B FF F6 6D */	bl __ct__Q44nw4r3snd6detail14WaveFileReaderFPCQ54nw4r3snd6detail8WaveFile8WaveInfo
/* 8042A300 003F38C0  7F C4 F3 78 */	mr r4, r30
/* 8042A304 003F38C4  7F E5 FB 78 */	mr r5, r31
/* 8042A308 003F38C8  38 61 00 08 */	addi r3, r1, 0x8
/* 8042A30C 003F38CC  4B FF F6 65 */	bl ReadWaveInfo__Q44nw4r3snd6detail14WaveFileReaderCFPQ44nw4r3snd6detail8WaveInfoPCv
.L_8042A310:
/* 8042A310 003F38D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042A314 003F38D4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8042A318 003F38D8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8042A31C 003F38DC  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8042A320 003F38E0  7C 08 03 A6 */	mtlr r0
/* 8042A324 003F38E4  38 21 00 30 */	addi r1, r1, 0x30
/* 8042A328 003F38E8  4E 80 00 20 */	blr
.endfn ReadWaveInfo__Q44nw4r3snd6detail13WsdFileReaderCFiPQ44nw4r3snd6detail8WaveInfoPCv

# 0x8066C900 - 0x8066C908
.section .sdata2, "a"
.balign 8
.sym lbl_8066C900, local
	.4byte 0x3F800000
	.4byte 0x00000000
