.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global __ct__Q34nw4r3g3d3FogFPQ34nw4r3g3d7FogData
__ct__Q34nw4r3g3d3FogFPQ34nw4r3g3d7FogData:
/* 803FD128 003C66E8  90 83 00 00 */	stw r4, 0(r3)
/* 803FD12C 003C66EC  4E 80 00 20 */	blr 

.global func_803FD130
func_803FD130:
/* 803FD130 003C66F0  80 63 00 00 */	lwz r3, 0(r3)
/* 803FD134 003C66F4  2C 03 00 00 */	cmpwi r3, 0
/* 803FD138 003C66F8  4D 82 00 20 */	beqlr 
/* 803FD13C 003C66FC  38 00 00 00 */	li r0, 0
/* 803FD140 003C6700  C0 02 C1 78 */	lfs f0, lbl_8066C4F8@sda21(r2)
/* 803FD144 003C6704  90 03 00 00 */	stw r0, 0(r3)
/* 803FD148 003C6708  D0 03 00 04 */	stfs f0, 4(r3)
/* 803FD14C 003C670C  D0 03 00 08 */	stfs f0, 8(r3)
/* 803FD150 003C6710  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 803FD154 003C6714  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 803FD158 003C6718  98 03 00 17 */	stb r0, 0x17(r3)
/* 803FD15C 003C671C  98 03 00 16 */	stb r0, 0x16(r3)
/* 803FD160 003C6720  98 03 00 15 */	stb r0, 0x15(r3)
/* 803FD164 003C6724  98 03 00 14 */	stb r0, 0x14(r3)
/* 803FD168 003C6728  98 03 00 18 */	stb r0, 0x18(r3)
/* 803FD16C 003C672C  98 03 00 19 */	stb r0, 0x19(r3)
/* 803FD170 003C6730  B0 03 00 1A */	sth r0, 0x1a(r3)
/* 803FD174 003C6734  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 803FD178 003C6738  B0 03 00 1E */	sth r0, 0x1e(r3)
/* 803FD17C 003C673C  B0 03 00 20 */	sth r0, 0x20(r3)
/* 803FD180 003C6740  B0 03 00 22 */	sth r0, 0x22(r3)
/* 803FD184 003C6744  B0 03 00 24 */	sth r0, 0x24(r3)
/* 803FD188 003C6748  B0 03 00 26 */	sth r0, 0x26(r3)
/* 803FD18C 003C674C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 803FD190 003C6750  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 803FD194 003C6754  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 803FD198 003C6758  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 803FD19C 003C675C  4E 80 00 20 */	blr 

.global func_803FD1A0
func_803FD1A0:
/* 803FD1A0 003C6760  2C 04 00 00 */	cmpwi r4, 0
/* 803FD1A4 003C6764  41 82 00 48 */	beq lbl_803FD1EC
/* 803FD1A8 003C6768  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FD1AC 003C676C  2C 05 00 00 */	cmpwi r5, 0
/* 803FD1B0 003C6770  41 82 00 3C */	beq lbl_803FD1EC
/* 803FD1B4 003C6774  C8 05 00 00 */	lfd f0, 0(r5)
/* 803FD1B8 003C6778  7C 83 23 78 */	mr r3, r4
/* 803FD1BC 003C677C  D8 04 00 00 */	stfd f0, 0(r4)
/* 803FD1C0 003C6780  C8 05 00 08 */	lfd f0, 8(r5)
/* 803FD1C4 003C6784  D8 04 00 08 */	stfd f0, 8(r4)
/* 803FD1C8 003C6788  C8 05 00 10 */	lfd f0, 0x10(r5)
/* 803FD1CC 003C678C  D8 04 00 10 */	stfd f0, 0x10(r4)
/* 803FD1D0 003C6790  C8 05 00 18 */	lfd f0, 0x18(r5)
/* 803FD1D4 003C6794  D8 04 00 18 */	stfd f0, 0x18(r4)
/* 803FD1D8 003C6798  C8 05 00 20 */	lfd f0, 0x20(r5)
/* 803FD1DC 003C679C  D8 04 00 20 */	stfd f0, 0x20(r4)
/* 803FD1E0 003C67A0  C8 05 00 28 */	lfd f0, 0x28(r5)
/* 803FD1E4 003C67A4  D8 04 00 28 */	stfd f0, 0x28(r4)
/* 803FD1E8 003C67A8  4E 80 00 20 */	blr
lbl_803FD1EC:
/* 803FD1EC 003C67AC  38 60 00 00 */	li r3, 0
/* 803FD1F0 003C67B0  4E 80 00 20 */	blr 

.global func_803FD1F4
func_803FD1F4:
/* 803FD1F4 003C67B4  80 63 00 00 */	lwz r3, 0(r3)
/* 803FD1F8 003C67B8  2C 03 00 00 */	cmpwi r3, 0
/* 803FD1FC 003C67BC  4D 82 00 20 */	beqlr 
/* 803FD200 003C67C0  2C 04 00 00 */	cmpwi r4, 0
/* 803FD204 003C67C4  41 82 00 0C */	beq lbl_803FD210
/* 803FD208 003C67C8  80 03 00 00 */	lwz r0, 0(r3)
/* 803FD20C 003C67CC  90 04 00 00 */	stw r0, 0(r4)
lbl_803FD210:
/* 803FD210 003C67D0  2C 05 00 00 */	cmpwi r5, 0
/* 803FD214 003C67D4  41 82 00 0C */	beq lbl_803FD220
/* 803FD218 003C67D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 803FD21C 003C67DC  D0 05 00 00 */	stfs f0, 0(r5)
lbl_803FD220:
/* 803FD220 003C67E0  2C 06 00 00 */	cmpwi r6, 0
/* 803FD224 003C67E4  41 82 00 0C */	beq lbl_803FD230
/* 803FD228 003C67E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 803FD22C 003C67EC  D0 06 00 00 */	stfs f0, 0(r6)
lbl_803FD230:
/* 803FD230 003C67F0  2C 07 00 00 */	cmpwi r7, 0
/* 803FD234 003C67F4  41 82 00 0C */	beq lbl_803FD240
/* 803FD238 003C67F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 803FD23C 003C67FC  D0 07 00 00 */	stfs f0, 0(r7)
lbl_803FD240:
/* 803FD240 003C6800  2C 08 00 00 */	cmpwi r8, 0
/* 803FD244 003C6804  41 82 00 0C */	beq lbl_803FD250
/* 803FD248 003C6808  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 803FD24C 003C680C  D0 08 00 00 */	stfs f0, 0(r8)
lbl_803FD250:
/* 803FD250 003C6810  2C 09 00 00 */	cmpwi r9, 0
/* 803FD254 003C6814  4D 82 00 20 */	beqlr 
/* 803FD258 003C6818  88 03 00 14 */	lbz r0, 0x14(r3)
/* 803FD25C 003C681C  98 09 00 00 */	stb r0, 0(r9)
/* 803FD260 003C6820  88 03 00 15 */	lbz r0, 0x15(r3)
/* 803FD264 003C6824  98 09 00 01 */	stb r0, 1(r9)
/* 803FD268 003C6828  88 03 00 16 */	lbz r0, 0x16(r3)
/* 803FD26C 003C682C  98 09 00 02 */	stb r0, 2(r9)
/* 803FD270 003C6830  88 03 00 17 */	lbz r0, 0x17(r3)
/* 803FD274 003C6834  98 09 00 03 */	stb r0, 3(r9)
/* 803FD278 003C6838  4E 80 00 20 */	blr 

.global SetFogRangeAdjParam__Q34nw4r3g3d3FogFUsUsRCQ34nw4r4math5MTX44
SetFogRangeAdjParam__Q34nw4r3g3d3FogFUsUsRCQ34nw4r4math5MTX44:
/* 803FD27C 003C683C  80 63 00 00 */	lwz r3, 0(r3)
/* 803FD280 003C6840  2C 03 00 00 */	cmpwi r3, 0
/* 803FD284 003C6844  4D 82 00 20 */	beqlr 
/* 803FD288 003C6848  B0 A3 00 1A */	sth r5, 0x1a(r3)
/* 803FD28C 003C684C  7C C5 33 78 */	mr r5, r6
/* 803FD290 003C6850  38 63 00 1C */	addi r3, r3, 0x1c
/* 803FD294 003C6854  4B F2 0C 8C */	b GXInitFogAdjTable
/* 803FD298 003C6858  4E 80 00 20 */	blr 

.global func_803FD29C
func_803FD29C:
/* 803FD29C 003C685C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FD2A0 003C6860  7C 08 02 A6 */	mflr r0
/* 803FD2A4 003C6864  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FD2A8 003C6868  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803FD2AC 003C686C  83 E3 00 00 */	lwz r31, 0(r3)
/* 803FD2B0 003C6870  2C 1F 00 00 */	cmpwi r31, 0
/* 803FD2B4 003C6874  41 82 00 5C */	beq lbl_803FD310
/* 803FD2B8 003C6878  80 1F 00 00 */	lwz r0, 0(r31)
/* 803FD2BC 003C687C  2C 00 00 00 */	cmpwi r0, 0
/* 803FD2C0 003C6880  41 82 00 14 */	beq lbl_803FD2D4
/* 803FD2C4 003C6884  88 7F 00 18 */	lbz r3, 0x18(r31)
/* 803FD2C8 003C6888  38 BF 00 1C */	addi r5, r31, 0x1c
/* 803FD2CC 003C688C  A0 9F 00 1A */	lhz r4, 0x1a(r31)
/* 803FD2D0 003C6890  4B F2 0D B1 */	bl GXSetFogRangeAdj
lbl_803FD2D4:
/* 803FD2D4 003C6894  88 1F 00 14 */	lbz r0, 0x14(r31)
/* 803FD2D8 003C6898  38 81 00 08 */	addi r4, r1, 8
/* 803FD2DC 003C689C  98 01 00 08 */	stb r0, 8(r1)
/* 803FD2E0 003C68A0  88 1F 00 15 */	lbz r0, 0x15(r31)
/* 803FD2E4 003C68A4  98 01 00 09 */	stb r0, 9(r1)
/* 803FD2E8 003C68A8  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 803FD2EC 003C68AC  98 01 00 0A */	stb r0, 0xa(r1)
/* 803FD2F0 003C68B0  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 803FD2F4 003C68B4  98 01 00 0B */	stb r0, 0xb(r1)
/* 803FD2F8 003C68B8  80 7F 00 00 */	lwz r3, 0(r31)
/* 803FD2FC 003C68BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 803FD300 003C68C0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 803FD304 003C68C4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 803FD308 003C68C8  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 803FD30C 003C68CC  4B F2 09 E5 */	bl GXSetFog
lbl_803FD310:
/* 803FD310 003C68D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FD314 003C68D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803FD318 003C68D8  7C 08 03 A6 */	mtlr r0
/* 803FD31C 003C68DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803FD320 003C68E0  4E 80 00 20 */	blr 
