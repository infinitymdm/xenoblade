.include "macros.inc"
.file "nw4r/g3d/g3d_workmem.o"

# 0x803EE69C - 0x803EE6DC
.text
.balign 4

# nw4r::g3d::detail::workmem::GetScaleTemporary()
.fn GetScaleTemporary__Q44nw4r3g3d6detail7workmemFv, global
/* 803EE69C 003B7C5C  3C 60 80 62 */	lis r3, lbl_80622D00@ha
/* 803EE6A0 003B7C60  38 63 2D 00 */	addi r3, r3, lbl_80622D00@l
/* 803EE6A4 003B7C64  4E 80 00 20 */	blr
.endfn GetScaleTemporary__Q44nw4r3g3d6detail7workmemFv

# nw4r::g3d::detail::workmem::GetMtxIDTemporary()
.fn GetMtxIDTemporary__Q44nw4r3g3d6detail7workmemFv, global
/* 803EE6A8 003B7C68  3C 60 80 62 */	lis r3, lbl_80622D00@ha
/* 803EE6AC 003B7C6C  38 63 2D 00 */	addi r3, r3, lbl_80622D00@l
/* 803EE6B0 003B7C70  38 63 60 00 */	addi r3, r3, 0x6000
/* 803EE6B4 003B7C74  4E 80 00 20 */	blr
.endfn GetMtxIDTemporary__Q44nw4r3g3d6detail7workmemFv

# nw4r::g3d::detail::workmem::GetMdlZTemporary()
.fn GetMdlZTemporary__Q44nw4r3g3d6detail7workmemFv, global
/* 803EE6B8 003B7C78  3C 60 80 62 */	lis r3, lbl_80622D00@ha
/* 803EE6BC 003B7C7C  38 63 2D 00 */	addi r3, r3, lbl_80622D00@l
/* 803EE6C0 003B7C80  4E 80 00 20 */	blr
.endfn GetMdlZTemporary__Q44nw4r3g3d6detail7workmemFv

# nw4r::g3d::detail::workmem::GetSkinningMtxTemporary()
.fn GetSkinningMtxTemporary__Q44nw4r3g3d6detail7workmemFv, global
/* 803EE6C4 003B7C84  3C 60 80 62 */	lis r3, lbl_80622D00@ha
/* 803EE6C8 003B7C88  38 63 2D 00 */	addi r3, r3, lbl_80622D00@l
/* 803EE6CC 003B7C8C  4E 80 00 20 */	blr
.endfn GetSkinningMtxTemporary__Q44nw4r3g3d6detail7workmemFv

# nw4r::g3d::detail::workmem::GetBillboardMtxTemporary()
.fn GetBillboardMtxTemporary__Q44nw4r3g3d6detail7workmemFv, global
/* 803EE6D0 003B7C90  3C 60 80 62 */	lis r3, lbl_80622D00@ha
/* 803EE6D4 003B7C94  38 63 2D 00 */	addi r3, r3, lbl_80622D00@l
/* 803EE6D8 003B7C98  4E 80 00 20 */	blr
.endfn GetBillboardMtxTemporary__Q44nw4r3g3d6detail7workmemFv

# 0x80622D00 - 0x8063AD00
.section .bss, "wa", @nobits
.balign 8
.sym lbl_80622D00, local
	.skip 0x18000
