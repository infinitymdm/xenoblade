.include "macros.inc"

.section .text, "ax"  # 0x80039220 - 0x804F5900

.fn __dt__CScnItemId, global
/* 80482094 0044B654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80482098 0044B658  7C 08 02 A6 */	mflr r0
/* 8048209C 0044B65C  2C 03 00 00 */	cmpwi r3, 0
/* 804820A0 0044B660  90 01 00 14 */	stw r0, 0x14(r1)
/* 804820A4 0044B664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804820A8 0044B668  7C 9F 23 78 */	mr r31, r4
/* 804820AC 0044B66C  93 C1 00 08 */	stw r30, 8(r1)
/* 804820B0 0044B670  7C 7E 1B 78 */	mr r30, r3
/* 804820B4 0044B674  41 82 00 28 */	beq .L_804820DC
/* 804820B8 0044B678  3C 80 80 57 */	lis r4, __vt__CScnItemId@ha
/* 804820BC 0044B67C  38 84 15 20 */	addi r4, r4, __vt__CScnItemId@l
/* 804820C0 0044B680  90 83 00 00 */	stw r4, 0(r3)
/* 804820C4 0044B684  48 03 A9 29 */	bl func_804BC9EC
/* 804820C8 0044B688  48 03 AB 55 */	bl func_804BCC1C
/* 804820CC 0044B68C  2C 1F 00 00 */	cmpwi r31, 0
/* 804820D0 0044B690  40 81 00 0C */	ble .L_804820DC
/* 804820D4 0044B694  7F C3 F3 78 */	mr r3, r30
/* 804820D8 0044B698  4B FB 2B 55 */	bl __dl__FPv
.L_804820DC:
/* 804820DC 0044B69C  7F C3 F3 78 */	mr r3, r30
/* 804820E0 0044B6A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804820E4 0044B6A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804820E8 0044B6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804820EC 0044B6AC  7C 08 03 A6 */	mtlr r0
/* 804820F0 0044B6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804820F4 0044B6B4  4E 80 00 20 */	blr
.endfn __dt__CScnItemId

.fn __ct__804820F8, global
/* 804820F8 0044B6B8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804820FC 0044B6BC  7C 08 02 A6 */	mflr r0
/* 80482100 0044B6C0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80482104 0044B6C4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80482108 0044B6C8  7C BF 2B 78 */	mr r31, r5
/* 8048210C 0044B6CC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80482110 0044B6D0  93 A1 00 54 */	stw r29, 0x54(r1)
/* 80482114 0044B6D4  7C 9D 23 78 */	mr r29, r4
/* 80482118 0044B6D8  38 80 00 05 */	li r4, 5
/* 8048211C 0044B6DC  93 81 00 50 */	stw r28, 0x50(r1)
/* 80482120 0044B6E0  7C 7C 1B 78 */	mr r28, r3
/* 80482124 0044B6E4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80482128 0044B6E8  48 00 A4 91 */	bl func_8048C5B8
/* 8048212C 0044B6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80482130 0044B6F0  40 82 00 0C */	bne .L_8048213C
/* 80482134 0044B6F4  38 60 00 00 */	li r3, 0
/* 80482138 0044B6F8  48 00 01 30 */	b .L_80482268
.L_8048213C:
/* 8048213C 0044B6FC  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80482140 0044B700  38 80 00 05 */	li r4, 5
/* 80482144 0044B704  48 00 A5 55 */	bl func_8048C698
/* 80482148 0044B708  80 A3 00 04 */	lwz r5, 4(r3)
/* 8048214C 0044B70C  38 80 00 00 */	li r4, 0
/* 80482150 0044B710  80 65 00 00 */	lwz r3, 0(r5)
/* 80482154 0044B714  48 00 00 0C */	b .L_80482160
.L_80482158:
/* 80482158 0044B718  80 63 00 00 */	lwz r3, 0(r3)
/* 8048215C 0044B71C  38 84 00 01 */	addi r4, r4, 1
.L_80482160:
/* 80482160 0044B720  7C 03 28 40 */	cmplw r3, r5
/* 80482164 0044B724  40 82 FF F4 */	bne .L_80482158
/* 80482168 0044B728  2C 04 00 00 */	cmpwi r4, 0
/* 8048216C 0044B72C  41 82 00 0C */	beq .L_80482178
/* 80482170 0044B730  38 60 00 00 */	li r3, 0
/* 80482174 0044B734  48 00 00 F4 */	b .L_80482268
.L_80482178:
/* 80482178 0044B738  2C 1F 00 00 */	cmpwi r31, 0
/* 8048217C 0044B73C  41 82 00 78 */	beq .L_804821F4
/* 80482180 0044B740  7F 83 E3 78 */	mr r3, r28
/* 80482184 0044B744  48 01 3E 95 */	bl func_80496018
/* 80482188 0044B748  7C 64 1B 78 */	mr r4, r3
/* 8048218C 0044B74C  38 60 00 54 */	li r3, 0x54
/* 80482190 0044B750  4B FB 28 CD */	bl heap_malloc
/* 80482194 0044B754  2C 03 00 00 */	cmpwi r3, 0
/* 80482198 0044B758  7C 7E 1B 78 */	mr r30, r3
/* 8048219C 0044B75C  41 82 00 B8 */	beq .L_80482254
/* 804821A0 0044B760  7F E4 FB 78 */	mr r4, r31
/* 804821A4 0044B764  38 61 00 08 */	addi r3, r1, 8
/* 804821A8 0044B768  4B FB 2E D1 */	bl func_80435078__2mmFPQ22mm9UnkStructPCc
/* 804821AC 0044B76C  93 9E 00 04 */	stw r28, 4(r30)
/* 804821B0 0044B770  38 00 00 05 */	li r0, 5
/* 804821B4 0044B774  3C 80 80 57 */	lis r4, __vt__CScnItemId@ha
/* 804821B8 0044B778  3B E1 00 08 */	addi r31, r1, 8
/* 804821BC 0044B77C  B0 1E 00 08 */	sth r0, 8(r30)
/* 804821C0 0044B780  38 84 15 20 */	addi r4, r4, __vt__CScnItemId@l
/* 804821C4 0044B784  7F E3 FB 78 */	mr r3, r31
/* 804821C8 0044B788  90 9E 00 00 */	stw r4, 0(r30)
/* 804821CC 0044B78C  4B E3 73 ED */	bl strlen
/* 804821D0 0044B790  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 804821D4 0044B794  7F E4 FB 78 */	mr r4, r31
/* 804821D8 0044B798  38 7E 00 0C */	addi r3, r30, 0xc
/* 804821DC 0044B79C  4B E4 04 DD */	bl strcpy
/* 804821E0 0044B7A0  93 BE 00 50 */	stw r29, 0x50(r30)
/* 804821E4 0044B7A4  48 03 A8 09 */	bl func_804BC9EC
/* 804821E8 0044B7A8  7F A4 EB 78 */	mr r4, r29
/* 804821EC 0044B7AC  48 03 A8 09 */	bl func_804BC9F4
/* 804821F0 0044B7B0  48 00 00 64 */	b .L_80482254
.L_804821F4:
/* 804821F4 0044B7B4  7F 83 E3 78 */	mr r3, r28
/* 804821F8 0044B7B8  48 01 3E 21 */	bl func_80496018
/* 804821FC 0044B7BC  7C 64 1B 78 */	mr r4, r3
/* 80482200 0044B7C0  38 60 00 54 */	li r3, 0x54
/* 80482204 0044B7C4  4B FB 28 59 */	bl heap_malloc
/* 80482208 0044B7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8048220C 0044B7CC  7C 7E 1B 78 */	mr r30, r3
/* 80482210 0044B7D0  41 82 00 44 */	beq .L_80482254
/* 80482214 0044B7D4  93 83 00 04 */	stw r28, 4(r3)
/* 80482218 0044B7D8  38 00 00 05 */	li r0, 5
/* 8048221C 0044B7DC  3C 80 80 57 */	lis r4, __vt__CScnItemId@ha
/* 80482220 0044B7E0  B0 03 00 08 */	sth r0, 8(r3)
/* 80482224 0044B7E4  38 84 15 20 */	addi r4, r4, __vt__CScnItemId@l
/* 80482228 0044B7E8  90 83 00 00 */	stw r4, 0(r3)
/* 8048222C 0044B7EC  38 60 00 00 */	li r3, 0
/* 80482230 0044B7F0  4B E3 73 89 */	bl strlen
/* 80482234 0044B7F4  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 80482238 0044B7F8  38 7E 00 0C */	addi r3, r30, 0xc
/* 8048223C 0044B7FC  38 80 00 00 */	li r4, 0
/* 80482240 0044B800  4B E4 04 79 */	bl strcpy
/* 80482244 0044B804  93 BE 00 50 */	stw r29, 0x50(r30)
/* 80482248 0044B808  48 03 A7 A5 */	bl func_804BC9EC
/* 8048224C 0044B80C  7F A4 EB 78 */	mr r4, r29
/* 80482250 0044B810  48 03 A7 A5 */	bl func_804BC9F4
.L_80482254:
/* 80482254 0044B814  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 80482258 0044B818  7F C4 F3 78 */	mr r4, r30
/* 8048225C 0044B81C  7F A5 EB 78 */	mr r5, r29
/* 80482260 0044B820  48 00 A3 D1 */	bl func_8048C630
/* 80482264 0044B824  7F C3 F3 78 */	mr r3, r30
.L_80482268:
/* 80482268 0044B828  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8048226C 0044B82C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80482270 0044B830  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80482274 0044B834  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 80482278 0044B838  83 81 00 50 */	lwz r28, 0x50(r1)
/* 8048227C 0044B83C  7C 08 03 A6 */	mtlr r0
/* 80482280 0044B840  38 21 00 60 */	addi r1, r1, 0x60
/* 80482284 0044B844  4E 80 00 20 */	blr 
.endfn __ct__804820F8

.fn func_80482288, global
/* 80482288 0044B848  4E 80 00 20 */	blr 
.endfn func_80482288

.fn func_8048228C, global
/* 8048228C 0044B84C  4E 80 00 20 */	blr 
.endfn func_8048228C

.fn func_80482290, global
/* 80482290 0044B850  38 63 00 0C */	addi r3, r3, 0xc
/* 80482294 0044B854  4E 80 00 20 */	blr 
.endfn func_80482290

.fn func_80482298, global
/* 80482298 0044B858  80 63 00 50 */	lwz r3, 0x50(r3)
/* 8048229C 0044B85C  4E 80 00 20 */	blr 
.endfn func_80482298


.section .rodata, "a"  # 0x804F5B20 - 0x805281E0

.balign 8

.obj CScnItemId_typestr, global
	.asciz "CScnItemId"
	.balign 4
	.4byte 0
.endobj CScnItemId_typestr

.section .data, "wa"  # 0x805281E0 - 0x80573C60

.balign 8

.obj __vt__CScnItemId, global
	.4byte __RTTI__CScnItemId
	.4byte 0
	.4byte __dt__CScnItemId
	.4byte func_8048228C
	.4byte func_80482048
	.4byte func_80482288
	.4byte func_80482290
	.4byte func_80482298
.endobj __vt__CScnItemId

.obj CScnItemId_hierarchy, global
	.4byte __RTTI__CScnItem
	.4byte 0
	.4byte 0
	.4byte 0
.endobj CScnItemId_hierarchy


.section .sdata, "wa"  # 0x80664180 - 0x80666600

.balign 8

.obj __RTTI__CScnItemId, global
	.4byte CScnItemId_typestr
	.4byte CScnItemId_hierarchy
.endobj __RTTI__CScnItemId

.section extab, "a" # 0x800066E0 - 0x80021020

.balign 4

.obj "@etb_8001E238", local
.hidden "@etb_8001E238"
	.4byte 0x10080000
	.4byte 0x00000034
	.4byte 0x00010010
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__80482054
.endobj "@etb_8001E238"

.obj "@etb_8001E254", local
.hidden "@etb_8001E254"
	.4byte 0x20080000
	.4byte 0x000000F0
	.4byte 0x00020018
	.4byte 0x00000154
	.4byte 0x00020024
	.4byte 0x00000000
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__80482054
	.4byte 0x8680001E
	.4byte 0x00000000
	.4byte __dt__80482054
.endobj "@etb_8001E254"

.section extabindex, "a" # 0x80021020 - 0x80039220

.balign 4

.obj "@eti_800361D0", local
.hidden "@eti_800361D0"
	.4byte __dt__CScnItemId
	.4byte 0x00000064
	.4byte "@etb_8001E238"
.endobj "@eti_800361D0"

.obj "@eti_800361DC", local
.hidden "@eti_800361DC"
	.4byte __ct__804820F8
	.4byte 0x00000190
	.4byte "@etb_8001E254"
.endobj "@eti_800361DC"
