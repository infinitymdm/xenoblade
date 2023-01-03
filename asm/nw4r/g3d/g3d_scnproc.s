.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.global Construct__Q34nw4r3g3d7ScnProcFP12MEMAllocatorPUlPFPQ34nw4r3g3d7ScnProcb_vbbUl
Construct__Q34nw4r3g3d7ScnProcFP12MEMAllocatorPUlPFPQ34nw4r3g3d7ScnProcb_vbbUl:
/* 803FCE38 003C63F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803FCE3C 003C63FC  7C 08 02 A6 */	mflr r0
/* 803FCE40 003C6400  90 01 00 34 */	stw r0, 0x34(r1)
/* 803FCE44 003C6404  39 61 00 30 */	addi r11, r1, 0x30
/* 803FCE48 003C6408  4B EB D3 05 */	bl _savegpr_25
/* 803FCE4C 003C640C  38 08 00 03 */	addi r0, r8, 3
/* 803FCE50 003C6410  2C 04 00 00 */	cmpwi r4, 0
/* 803FCE54 003C6414  54 1F 00 3A */	rlwinm r31, r0, 0, 0, 0x1d
/* 803FCE58 003C6418  7C 79 1B 78 */	mr r25, r3
/* 803FCE5C 003C641C  38 1F 00 F7 */	addi r0, r31, 0xf7
/* 803FCE60 003C6420  7C BA 2B 78 */	mr r26, r5
/* 803FCE64 003C6424  7C DB 33 78 */	mr r27, r6
/* 803FCE68 003C6428  7C FC 3B 78 */	mr r28, r7
/* 803FCE6C 003C642C  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 803FCE70 003C6430  3B C0 00 00 */	li r30, 0
/* 803FCE74 003C6434  41 82 00 08 */	beq .L_803FCE7C
/* 803FCE78 003C6438  90 04 00 00 */	stw r0, 0(r4)
.L_803FCE7C:
/* 803FCE7C 003C643C  2C 03 00 00 */	cmpwi r3, 0
/* 803FCE80 003C6440  41 82 00 A0 */	beq .L_803FCF20
/* 803FCE84 003C6444  7F 23 CB 78 */	mr r3, r25
/* 803FCE88 003C6448  7C 04 03 78 */	mr r4, r0
/* 803FCE8C 003C644C  4B F4 CC 05 */	bl MEMAllocFromAllocator
/* 803FCE90 003C6450  2C 03 00 00 */	cmpwi r3, 0
/* 803FCE94 003C6454  7C 7D 1B 78 */	mr r29, r3
/* 803FCE98 003C6458  41 82 00 88 */	beq .L_803FCF20
/* 803FCE9C 003C645C  2C 1F 00 00 */	cmpwi r31, 0
/* 803FCEA0 003C6460  41 82 00 0C */	beq .L_803FCEAC
/* 803FCEA4 003C6464  3B E3 00 F4 */	addi r31, r3, 0xf4
/* 803FCEA8 003C6468  48 00 00 08 */	b .L_803FCEB0
.L_803FCEAC:
/* 803FCEAC 003C646C  3B E0 00 00 */	li r31, 0
.L_803FCEB0:
/* 803FCEB0 003C6470  2C 03 00 00 */	cmpwi r3, 0
/* 803FCEB4 003C6474  7F BE EB 78 */	mr r30, r29
/* 803FCEB8 003C6478  41 82 00 68 */	beq .L_803FCF20
/* 803FCEBC 003C647C  7F A3 EB 78 */	mr r3, r29
/* 803FCEC0 003C6480  7F 24 CB 78 */	mr r4, r25
/* 803FCEC4 003C6484  4B FF 76 05 */	bl __ct__Q34nw4r3g3d6ScnObjFP12MEMAllocator
/* 803FCEC8 003C6488  C0 02 C1 70 */	lfs f0, lbl_8066C4F0@sda21(r2)
/* 803FCECC 003C648C  3C 60 80 57 */	lis r3, lbl_8056D150@ha
/* 803FCED0 003C6490  38 63 D1 50 */	addi r3, r3, lbl_8056D150@l
/* 803FCED4 003C6494  38 00 00 00 */	li r0, 0
/* 803FCED8 003C6498  D0 1D 00 DC */	stfs f0, 0xdc(r29)
/* 803FCEDC 003C649C  2C 1B 00 00 */	cmpwi r27, 0
/* 803FCEE0 003C64A0  D0 1D 00 E0 */	stfs f0, 0xe0(r29)
/* 803FCEE4 003C64A4  D0 1D 00 E4 */	stfs f0, 0xe4(r29)
/* 803FCEE8 003C64A8  90 7D 00 00 */	stw r3, 0(r29)
/* 803FCEEC 003C64AC  90 1D 00 E8 */	stw r0, 0xe8(r29)
/* 803FCEF0 003C64B0  93 5D 00 EC */	stw r26, 0xec(r29)
/* 803FCEF4 003C64B4  93 FD 00 F0 */	stw r31, 0xf0(r29)
/* 803FCEF8 003C64B8  41 82 00 10 */	beq .L_803FCF08
/* 803FCEFC 003C64BC  80 1D 00 E8 */	lwz r0, 0xe8(r29)
/* 803FCF00 003C64C0  60 00 00 01 */	ori r0, r0, 1
/* 803FCF04 003C64C4  90 1D 00 E8 */	stw r0, 0xe8(r29)
.L_803FCF08:
/* 803FCF08 003C64C8  2C 1C 00 00 */	cmpwi r28, 0
/* 803FCF0C 003C64CC  41 82 00 10 */	beq .L_803FCF1C
/* 803FCF10 003C64D0  80 1D 00 E8 */	lwz r0, 0xe8(r29)
/* 803FCF14 003C64D4  60 00 00 02 */	ori r0, r0, 2
/* 803FCF18 003C64D8  90 1D 00 E8 */	stw r0, 0xe8(r29)
.L_803FCF1C:
/* 803FCF1C 003C64DC  7F BE EB 78 */	mr r30, r29
.L_803FCF20:
/* 803FCF20 003C64E0  39 61 00 30 */	addi r11, r1, 0x30
/* 803FCF24 003C64E4  7F C3 F3 78 */	mr r3, r30
/* 803FCF28 003C64E8  4B EB D2 71 */	bl _restgpr_25
/* 803FCF2C 003C64EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803FCF30 003C64F0  7C 08 03 A6 */	mtlr r0
/* 803FCF34 003C64F4  38 21 00 30 */	addi r1, r1, 0x30
/* 803FCF38 003C64F8  4E 80 00 20 */	blr 

.global G3dProc__Q34nw4r3g3d7ScnProcFUlUlPv
G3dProc__Q34nw4r3g3d7ScnProcFUlUlPv:
/* 803FCF3C 003C64FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FCF40 003C6500  7C 08 02 A6 */	mflr r0
/* 803FCF44 003C6504  28 04 00 09 */	cmplwi r4, 9
/* 803FCF48 003C6508  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FCF4C 003C650C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FCF50 003C6510  7C 7F 1B 78 */	mr r31, r3
/* 803FCF54 003C6514  40 80 00 24 */	bge .L_803FCF78
/* 803FCF58 003C6518  38 E4 FF FF */	addi r7, r4, -1
/* 803FCF5C 003C651C  39 00 00 01 */	li r8, 1
/* 803FCF60 003C6520  80 03 00 CC */	lwz r0, 0xcc(r3)
/* 803FCF64 003C6524  7D 07 38 30 */	slw r7, r8, r7
/* 803FCF68 003C6528  7C E0 00 39 */	and. r0, r7, r0
/* 803FCF6C 003C652C  41 82 00 0C */	beq .L_803FCF78
/* 803FCF70 003C6530  38 00 00 01 */	li r0, 1
/* 803FCF74 003C6534  48 00 00 08 */	b .L_803FCF7C
.L_803FCF78:
/* 803FCF78 003C6538  38 00 00 00 */	li r0, 0
.L_803FCF7C:
/* 803FCF7C 003C653C  2C 00 00 00 */	cmpwi r0, 0
/* 803FCF80 003C6540  40 82 00 B0 */	bne .L_803FD030
/* 803FCF84 003C6544  2C 04 00 06 */	cmpwi r4, 6
/* 803FCF88 003C6548  41 82 00 48 */	beq .L_803FCFD0
/* 803FCF8C 003C654C  40 80 00 10 */	bge .L_803FCF9C
/* 803FCF90 003C6550  2C 04 00 05 */	cmpwi r4, 5
/* 803FCF94 003C6554  40 80 00 14 */	bge .L_803FCFA8
/* 803FCF98 003C6558  48 00 00 90 */	b .L_803FD028
.L_803FCF9C:
/* 803FCF9C 003C655C  2C 04 00 08 */	cmpwi r4, 8
/* 803FCFA0 003C6560  40 80 00 88 */	bge .L_803FD028
/* 803FCFA4 003C6564  48 00 00 58 */	b .L_803FCFFC
.L_803FCFA8:
/* 803FCFA8 003C6568  81 86 00 00 */	lwz r12, 0(r6)
/* 803FCFAC 003C656C  7C C3 33 78 */	mr r3, r6
/* 803FCFB0 003C6570  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 803FCFB4 003C6574  7F E4 FB 78 */	mr r4, r31
/* 803FCFB8 003C6578  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 803FCFBC 003C657C  54 06 FF FE */	rlwinm r6, r0, 0x1f, 0x1f, 0x1f
/* 803FCFC0 003C6580  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 803FCFC4 003C6584  7D 89 03 A6 */	mtctr r12
/* 803FCFC8 003C6588  4E 80 04 21 */	bctrl 
/* 803FCFCC 003C658C  48 00 00 64 */	b .L_803FD030
.L_803FCFD0:
/* 803FCFD0 003C6590  80 03 00 EC */	lwz r0, 0xec(r3)
/* 803FCFD4 003C6594  2C 00 00 00 */	cmpwi r0, 0
/* 803FCFD8 003C6598  41 82 00 58 */	beq .L_803FD030
/* 803FCFDC 003C659C  38 60 07 FF */	li r3, 0x7ff
/* 803FCFE0 003C65A0  4B FE DF 09 */	bl Invalidate__Q34nw4r3g3d8G3DStateFUl
/* 803FCFE4 003C65A4  81 9F 00 EC */	lwz r12, 0xec(r31)
/* 803FCFE8 003C65A8  7F E3 FB 78 */	mr r3, r31
/* 803FCFEC 003C65AC  38 80 00 01 */	li r4, 1
/* 803FCFF0 003C65B0  7D 89 03 A6 */	mtctr r12
/* 803FCFF4 003C65B4  4E 80 04 21 */	bctrl 
/* 803FCFF8 003C65B8  48 00 00 38 */	b .L_803FD030
.L_803FCFFC:
/* 803FCFFC 003C65BC  80 03 00 EC */	lwz r0, 0xec(r3)
/* 803FD000 003C65C0  2C 00 00 00 */	cmpwi r0, 0
/* 803FD004 003C65C4  41 82 00 2C */	beq .L_803FD030
/* 803FD008 003C65C8  38 60 07 FF */	li r3, 0x7ff
/* 803FD00C 003C65CC  4B FE DE DD */	bl Invalidate__Q34nw4r3g3d8G3DStateFUl
/* 803FD010 003C65D0  81 9F 00 EC */	lwz r12, 0xec(r31)
/* 803FD014 003C65D4  7F E3 FB 78 */	mr r3, r31
/* 803FD018 003C65D8  38 80 00 00 */	li r4, 0
/* 803FD01C 003C65DC  7D 89 03 A6 */	mtctr r12
/* 803FD020 003C65E0  4E 80 04 21 */	bctrl 
/* 803FD024 003C65E4  48 00 00 0C */	b .L_803FD030
.L_803FD028:
/* 803FD028 003C65E8  7F E3 FB 78 */	mr r3, r31
/* 803FD02C 003C65EC  4B FF 7C 5D */	bl DefG3dProcScnLeaf__Q34nw4r3g3d7ScnLeafFUlUlPv
.L_803FD030:
/* 803FD030 003C65F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD034 003C65F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FD038 003C65F8  7C 08 03 A6 */	mtlr r0
/* 803FD03C 003C65FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD040 003C6600  4E 80 00 20 */	blr 

.global IsDerivedFrom__Q34nw4r3g3d7ScnProcCFQ44nw4r3g3d6G3dObj7TypeObj
IsDerivedFrom__Q34nw4r3g3d7ScnProcCFQ44nw4r3g3d6G3dObj7TypeObj:
/* 803FD044 003C6604  3C 60 80 52 */	lis r3, lbl_80521100@ha
/* 803FD048 003C6608  80 04 00 00 */	lwz r0, 0(r4)
/* 803FD04C 003C660C  38 63 11 00 */	addi r3, r3, lbl_80521100@l
/* 803FD050 003C6610  7C 00 18 40 */	cmplw r0, r3
/* 803FD054 003C6614  40 82 00 0C */	bne .L_803FD060
/* 803FD058 003C6618  38 60 00 01 */	li r3, 1
/* 803FD05C 003C661C  4E 80 00 20 */	blr
.L_803FD060:
/* 803FD060 003C6620  3C 60 80 52 */	lis r3, lbl_80521090@ha
/* 803FD064 003C6624  80 04 00 00 */	lwz r0, 0(r4)
/* 803FD068 003C6628  38 63 10 90 */	addi r3, r3, lbl_80521090@l
/* 803FD06C 003C662C  7C 00 18 40 */	cmplw r0, r3
/* 803FD070 003C6630  40 82 00 0C */	bne .L_803FD07C
/* 803FD074 003C6634  38 60 00 01 */	li r3, 1
/* 803FD078 003C6638  4E 80 00 20 */	blr
.L_803FD07C:
/* 803FD07C 003C663C  3C 60 80 52 */	lis r3, lbl_80521080@ha
/* 803FD080 003C6640  38 63 10 80 */	addi r3, r3, lbl_80521080@l
/* 803FD084 003C6644  7C 00 18 40 */	cmplw r0, r3
/* 803FD088 003C6648  40 82 00 0C */	bne .L_803FD094
/* 803FD08C 003C664C  38 60 00 01 */	li r3, 1
/* 803FD090 003C6650  4E 80 00 20 */	blr
.L_803FD094:
/* 803FD094 003C6654  3C 60 80 52 */	lis r3, lbl_80520F58@ha
/* 803FD098 003C6658  38 63 0F 58 */	addi r3, r3, lbl_80520F58@l
/* 803FD09C 003C665C  7C 00 18 50 */	subf r0, r0, r3
/* 803FD0A0 003C6660  7C 00 00 34 */	cntlzw r0, r0
/* 803FD0A4 003C6664  54 03 D9 7E */	srwi r3, r0, 5
/* 803FD0A8 003C6668  4E 80 00 20 */	blr 

.global GetTypeName__Q34nw4r3g3d7ScnProcCFv
GetTypeName__Q34nw4r3g3d7ScnProcCFv:
/* 803FD0AC 003C666C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD0B0 003C6670  7C 08 02 A6 */	mflr r0
/* 803FD0B4 003C6674  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD0B8 003C6678  81 83 00 00 */	lwz r12, 0(r3)
/* 803FD0BC 003C667C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 803FD0C0 003C6680  7D 89 03 A6 */	mtctr r12
/* 803FD0C4 003C6684  4E 80 04 21 */	bctrl 
/* 803FD0C8 003C6688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD0CC 003C668C  38 63 00 04 */	addi r3, r3, 4
/* 803FD0D0 003C6690  7C 08 03 A6 */	mtlr r0
/* 803FD0D4 003C6694  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD0D8 003C6698  4E 80 00 20 */	blr 

.global GetTypeObj__Q34nw4r3g3d7ScnProcCFv
GetTypeObj__Q34nw4r3g3d7ScnProcCFv:
/* 803FD0DC 003C669C  3C 60 80 52 */	lis r3, lbl_80521100@ha
/* 803FD0E0 003C66A0  38 63 11 00 */	addi r3, r3, lbl_80521100@l
/* 803FD0E4 003C66A4  4E 80 00 20 */	blr 

.global __dt__Q34nw4r3g3d7ScnProcFv
__dt__Q34nw4r3g3d7ScnProcFv:
/* 803FD0E8 003C66A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD0EC 003C66AC  7C 08 02 A6 */	mflr r0
/* 803FD0F0 003C66B0  2C 03 00 00 */	cmpwi r3, 0
/* 803FD0F4 003C66B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD0F8 003C66B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FD0FC 003C66BC  7C 7F 1B 78 */	mr r31, r3
/* 803FD100 003C66C0  41 82 00 10 */	beq .L_803FD110
/* 803FD104 003C66C4  41 82 00 0C */	beq .L_803FD110
/* 803FD108 003C66C8  38 80 00 00 */	li r4, 0
/* 803FD10C 003C66CC  4B FF 74 A9 */	bl __dt__Q34nw4r3g3d6ScnObjFv
.L_803FD110:
/* 803FD110 003C66D0  7F E3 FB 78 */	mr r3, r31
/* 803FD114 003C66D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FD118 003C66D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD11C 003C66DC  7C 08 03 A6 */	mtlr r0
/* 803FD120 003C66E0  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD124 003C66E4  4E 80 00 20 */	blr 

.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.global lbl_80521100
lbl_80521100:
	# ROM: 0x51D200
	.4byte 0x00000008
	.asciz "ScnProc"
	.4byte 0
	
.section .data, "wa"  # 0x805281E0 - 0x80573C60

.global lbl_8056D150
lbl_8056D150:
	# ROM: 0x569250
	.4byte 0
	.4byte 0
	.4byte IsDerivedFrom__Q34nw4r3g3d7ScnProcCFQ44nw4r3g3d6G3dObj7TypeObj
	.4byte G3dProc__Q34nw4r3g3d7ScnProcFUlUlPv
	.4byte __dt__Q34nw4r3g3d7ScnProcFv
	.4byte GetTypeObj__Q34nw4r3g3d7ScnProcCFv
	.4byte GetTypeName__Q34nw4r3g3d7ScnProcCFv
	.4byte ForEach__Q34nw4r3g3d7ScnLeafFPFPQ34nw4r3g3d6ScnObjPv_Q44nw4r3g3d6ScnObj13ForEachResultPvb
	.4byte SetScnObjOption__Q34nw4r3g3d7ScnLeafFUlUl
	.4byte GetScnObjOption__Q34nw4r3g3d7ScnLeafCFUlPUl
	.4byte GetValueForSortOpa__Q34nw4r3g3d6ScnObjCFv
	.4byte GetValueForSortXlu__Q34nw4r3g3d6ScnObjCFv
	.4byte CalcWorldMtx__Q34nw4r3g3d7ScnLeafFPCQ34nw4r4math5MTX34PUl
	.4byte 0

.section .sdata2, "a"  # 0x80668380 - 0x8066DCE0

.global lbl_8066C4F0
lbl_8066C4F0:
	# ROM: 0x576350
	.float 1.0
	.4byte 0