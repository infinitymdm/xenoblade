#include "revolution/ax/DSPCode.h"

u16 axDspSlave[4096] = {
0x0000, 0x0000, 0x029F, 0x0F3A, 0x029F, 0x0F46, 0x029F, 0x0F4B, 0x029F, 0x0F5A, 0x029F, 0x0F5F, 0x029F, 0x0F8B, 0x029F, 0x0F90,
0x1302, 0x1303, 0x1204, 0x1305, 0x1306, 0x8E00, 0x8C00, 0x8B00, 0x0092, 0x00FF, 0x009E, 0x8000, 0x00FE, 0x0CE5, 0x009E, 0x8000,
0x00FE, 0x0CE6, 0x00FE, 0x0CE7, 0x00FE, 0x0CE8, 0x8100, 0x00FE, 0x0CE9, 0x8900, 0x16FC, 0xDCD1, 0x16FD, 0x0000, 0x16FB, 0x0001,
0x26FC, 0x02A0, 0x8000, 0x029C, 0x0030, 0x029F, 0x004C, 0x1302, 0x1303, 0x1204, 0x1305, 0x1306, 0x8E00, 0x8C00, 0x8B00, 0x0092,
0x00FF, 0x16FC, 0xDCD1, 0x16FD, 0x0001, 0x16FB, 0x0001, 0x26FC, 0x02A0, 0x8000, 0x029C, 0x0047, 0x8E00, 0x8100, 0x8900, 0x009F,
0xBABE, 0x26FE, 0x02C0, 0x8000, 0x029C, 0x0051, 0x8200, 0x0294, 0x0051, 0x23FF, 0x8100, 0x26FE, 0x02C0, 0x8000, 0x029C, 0x005B,
0x27FF, 0x0240, 0x7FFF, 0x2ECE, 0x2FCF, 0x16CD, 0x0C00, 0x8100, 0x2EC9, 0x1FFB, 0x2FCB, 0x02BF, 0x0084, 0x0080, 0x0C00, 0x8E00,
0x8100, 0x8970, 0xB100, 0x0291, 0x0080, 0x0A0E, 0xC100, 0x0292, 0x0080, 0x009F, 0x0D02, 0x4C00, 0x1C7E, 0x0213, 0x1C7E, 0x176F,
0x16FC, 0xBAAD, 0x2EFD, 0x0021, 0x26C9, 0x02A0, 0x0004, 0x029C, 0x0084, 0x02DF, 0x8100, 0x8970, 0x8E78, 0x2ECE, 0x2FCF, 0x16CD,
0x0D08, 0x16C9, 0x0000, 0x16CB, 0x0078, 0x0081, 0x0D08, 0x0082, 0x0000, 0x009B, 0x005F, 0x009A, 0x00C0, 0x8100, 0x8900, 0x8F00,
0x02BF, 0x0084, 0x193E, 0x193C, 0xB179, 0x0294, 0x00AB, 0x005A, 0x1B5E, 0x029F, 0x00B3, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x00B2,
0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x00C0, 0x193E, 0x193C, 0xB179, 0x0294, 0x00BE, 0x005A, 0x1B5E, 0x029F, 0x00C6, 0x9900, 0x1B5E,
0x1B5C, 0x007B, 0x00C5, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0180, 0x193E, 0x193C, 0xB179, 0x0294, 0x00D1, 0x005A, 0x1B5E, 0x029F,
0x00D9, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x00D8, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0400, 0x193E, 0x193C, 0xB179, 0x0294, 0x00E4,
0x005A, 0x1B5E, 0x029F, 0x00EC, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x00EB, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x04C0, 0x193E, 0x193C,
0xB179, 0x0294, 0x00F7, 0x005A, 0x1B5E, 0x029F, 0x00FF, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x00FE, 0x4C00, 0x1B5E, 0x1B5C, 0x0082,
0x0580, 0x193E, 0x193C, 0xB179, 0x0294, 0x010A, 0x005A, 0x1B5E, 0x029F, 0x0112, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x0111, 0x4C00,
0x1B5E, 0x1B5C, 0x0082, 0x0640, 0x193E, 0x193C, 0xB179, 0x0294, 0x011D, 0x005A, 0x1B5E, 0x029F, 0x0125, 0x9900, 0x1B5E, 0x1B5C,
0x007B, 0x0124, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0700, 0x193E, 0x193C, 0xB179, 0x0294, 0x0130, 0x005A, 0x1B5E, 0x029F, 0x0138,
0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x0137, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x07C0, 0x193E, 0x193C, 0xB179, 0x0294, 0x0143, 0x005A,
0x1B5E, 0x029F, 0x014B, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x014A, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0880, 0x193E, 0x193C, 0xB179,
0x0294, 0x0156, 0x005A, 0x1B5E, 0x029F, 0x015E, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x015D, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0940,
0x193E, 0x193C, 0xB179, 0x0294, 0x0169, 0x005A, 0x1B5E, 0x029F, 0x0171, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x0170, 0x4C00, 0x1B5E,
0x1B5C, 0x0082, 0x0A00, 0x193E, 0x193C, 0xB179, 0x0294, 0x017C, 0x005A, 0x1B5E, 0x029F, 0x0184, 0x9900, 0x1B5E, 0x1B5C, 0x007B,
0x0183, 0x4C00, 0x1B5E, 0x1B5C, 0x009B, 0x0011, 0x009A, 0x0024, 0x0082, 0x0240, 0x193E, 0x193C, 0xB179, 0x0294, 0x0193, 0x005A,
0x1B5E, 0x029F, 0x019B, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x019A, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0AC0, 0x193E, 0x193C, 0xB179,
0x0294, 0x01A6, 0x005A, 0x1B5E, 0x029F, 0x01AE, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x01AD, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0264,
0x193E, 0x193C, 0xB179, 0x0294, 0x01B9, 0x005A, 0x1B5E, 0x029F, 0x01C1, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x01C0, 0x4C00, 0x1B5E,
0x1B5C, 0x0082, 0x0AE4, 0x193E, 0x193C, 0xB179, 0x0294, 0x01CC, 0x005A, 0x1B5E, 0x029F, 0x01D4, 0x9900, 0x1B5E, 0x1B5C, 0x007B,
0x01D3, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0288, 0x193E, 0x193C, 0xB179, 0x0294, 0x01DF, 0x005A, 0x1B5E, 0x029F, 0x01E7, 0x9900,
0x1B5E, 0x1B5C, 0x007B, 0x01E6, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0B08, 0x193E, 0x193C, 0xB179, 0x0294, 0x01F2, 0x005A, 0x1B5E,
0x029F, 0x01FA, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x01F9, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x02AC, 0x193E, 0x193C, 0xB179, 0x0294,
0x0205, 0x005A, 0x1B5E, 0x029F, 0x020D, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x020C, 0x4C00, 0x1B5E, 0x1B5C, 0x0082, 0x0B2C, 0x193E,
0x193C, 0xB179, 0x0294, 0x0218, 0x005A, 0x1B5E, 0x029F, 0x0220, 0x9900, 0x1B5E, 0x1B5C, 0x007B, 0x021F, 0x4C00, 0x1B5E, 0x1B5C,
0x029F, 0x006F, 0x8100, 0x8970, 0x8E60, 0x2ECE, 0x2CCF, 0x16CD, 0x0D08, 0x16C9, 0x0000, 0x16CB, 0x0180, 0x1CC0, 0x0080, 0x0000,
0x0083, 0x00C0, 0x0081, 0x0D08, 0x0084, 0xFFFF, 0x1CE4, 0x02BF, 0x0084, 0x8F00, 0x80F1, 0x80C9, 0x6800, 0x4A00, 0x191B, 0x6994,
0x4B23, 0x115F, 0x0249, 0x80F1, 0x80C9, 0x6838, 0x4A28, 0x191B, 0x6994, 0x4B23, 0x1B1F, 0x1B1D, 0x1C06, 0x029F, 0x006F, 0x8100,
0x8970, 0x8E60, 0x2ECE, 0x2CCF, 0x16CD, 0x0D08, 0x16C9, 0x0000, 0x16CB, 0x0180, 0x1CC0, 0x0080, 0x0000, 0x0083, 0x00C0, 0x0081,
0x0D08, 0x0084, 0xFFFF, 0x1CE4, 0x02BF, 0x0084, 0x8F00, 0x80F1, 0x80C9, 0x6800, 0x4A00, 0x191B, 0x6994, 0x7D00, 0x4B23, 0x115F,
0x0278, 0x80F1, 0x80C9, 0x6838, 0x4A28, 0x191B, 0x6994, 0x7D00, 0x4B23, 0x1B1F, 0x1B1D, 0x1C06, 0x029F, 0x006F, 0x8100, 0x8970,
0x8E60, 0x00E0, 0x0CD2, 0x2ECE, 0x2CCF, 0x16CD, 0x02D0, 0x16C9, 0x0000, 0x16CB, 0x0140, 0x02BF, 0x0084, 0x8100, 0x8900, 0x00DE,
0x02D4, 0x009F, 0x0DB5, 0x4C00, 0x1C7E, 0x0213, 0x00FE, 0x0CDF, 0x00DE, 0x02D5, 0x009F, 0x0DB8, 0x4C00, 0x1C7E, 0x0213, 0x00FE,
0x0CE0, 0x009A, 0x001F, 0x00DE, 0x02D7, 0x009F, 0x0D11, 0x3400, 0x4C00, 0x1C7E, 0x0213, 0x00FE, 0x0CD3, 0x00DE, 0x02D6, 0x009F,
0x0D31, 0x3400, 0x4C00, 0x1C7E, 0x0213, 0x00FE, 0x0CD4, 0x00DE, 0x02D6, 0x009F, 0x0D51, 0x14FB, 0x3400, 0x4C00, 0x1C7E, 0x0213,
0x00FE, 0x0CD5, 0x00DE, 0x02D6, 0x009F, 0x0D71, 0x14F6, 0x4C00, 0x1C7E, 0x0213, 0x00FE, 0x0CD6, 0x8100, 0x00DE, 0x033C, 0x009A,
0x0003, 0x009B, 0x0DB1, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313, 0x00FF, 0x0CD7, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313,
0x00FF, 0x0CD8, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313, 0x00FF, 0x0CD9, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313,
0x00FF, 0x0CDA, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313, 0x00FF, 0x0CDB, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313,
0x00FF, 0x0CDC, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313, 0x00FF, 0x0CDD, 0x147E, 0x1FFE, 0x3500, 0x4700, 0x1C7F, 0x0313,
0x00FF, 0x0CDE, 0x8100, 0x00DE, 0x02F2, 0xB100, 0x0295, 0x0339, 0x8900, 0x00DF, 0x02F5, 0x0300, 0x0C40, 0x00FF, 0x0CE2, 0x00DF,
0x02F6, 0x0300, 0x0C40, 0x00FF, 0x0CE3, 0x009F, 0x0C60, 0x00FF, 0x0CE1, 0x00DE, 0x02F3, 0x2ECE, 0x00DE, 0x02F4, 0x2ECF, 0x16CD,
0x0C40, 0x16C9, 0x0000, 0x16CB, 0x0040, 0x02BF, 0x0084, 0x029F, 0x0341, 0x009F, 0x0C60, 0x00FF, 0x0CE2, 0x00FF, 0x0CE3, 0x00FF,
0x0CE1, 0x8C00, 0x8B00, 0x8100, 0x00DE, 0x02D8, 0x0601, 0x0294, 0x046A, 0x00C3, 0x0CDF, 0x177F, 0x8A00, 0x8100, 0x8900, 0x00DE,
0x0306, 0x00DF, 0x0305, 0x1F1F, 0x4D00, 0x1481, 0x8D1E, 0x1FD8, 0x0098, 0x8000, 0x0080, 0x0D08, 0xA830, 0x112F, 0x0360, 0xAC38,
0xAD30, 0xAC38, 0x00FE, 0x0305, 0x8F00, 0x0080, 0x0D08, 0x00C1, 0x0CE1, 0x1C61, 0x193A, 0x1919, 0xB051, 0x1919, 0x115E, 0x0371,
0xB651, 0x8090, 0xB600, 0x6E33, 0x1B7E, 0x00DE, 0x032D, 0xB100, 0x0295, 0x0381, 0x00C0, 0x0CE1, 0x1C20, 0x0083, 0x032E, 0x02BF,
0x06A9, 0x00DE, 0x0331, 0xB100, 0x0295, 0x038D, 0x0080, 0x0332, 0x00C1, 0x0CE1, 0x1C41, 0x02BF, 0x06C1, 0x0080, 0x02F9, 0x8100,
0x100C, 0x1B1E, 0x0080, 0x034D, 0x1008, 0x1B1E, 0x00C3, 0x0CD3, 0x177F, 0x00C3, 0x0CD4, 0x177F, 0x00C3, 0x0CD5, 0x177F, 0x00C3,
0x0CD6, 0x177F, 0x00DE, 0x033B, 0xB100, 0x0295, 0x0447, 0x00DE, 0x035A, 0xB100, 0x0295, 0x03C4, 0x0A02, 0xC100, 0x0294, 0x03BA,
0x0080, 0x035B, 0x00C1, 0x0CE1, 0x0082, 0x0D0C, 0x02BF, 0x06C1, 0x029F, 0x03CC, 0x0080, 0x0D0C, 0x00C1, 0x0CE1, 0x0083, 0x035B,
0x02BF, 0x06A9, 0x029F, 0x03CC, 0x0080, 0x0D0C, 0x00C1, 0x0CE1, 0x1160, 0x03CB, 0x193F, 0x1B1F, 0x0082, 0x0355, 0x8C00, 0x8100,
0x195C, 0x009B, 0x0005, 0x0099, 0x5555, 0x0080, 0x0D08, 0x1104, 0x03DA, 0x195F, 0x1B1F, 0x0081, 0x0CC0, 0x0084, 0x0D08, 0x0087,
0x1000, 0x1112, 0x03F2, 0x4A00, 0x1C1E, 0x0010, 0x8900, 0x1FBC, 0x1577, 0x1512, 0x1C7F, 0x001F, 0x80C3, 0x90C3, 0x97C3, 0x95C3,
0x9500, 0x4F00, 0x1B3F, 0x0004, 0x0006, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x1ADC, 0x8D00, 0x0081,
0x033D, 0x0082, 0x0240, 0x00C3, 0x0CD7, 0x177F, 0x00F8, 0x034D, 0x0081, 0x033F, 0x0082, 0x0AC0, 0x00C3, 0x0CD8, 0x177F, 0x00F8,
0x0351, 0x0081, 0x0341, 0x0082, 0x0264, 0x00C3, 0x0CD9, 0x177F, 0x00F8, 0x034E, 0x0081, 0x0343, 0x0082, 0x0AE4, 0x00C3, 0x0CDA,
0x177F, 0x00F8, 0x0352, 0x0081, 0x0345, 0x0082, 0x0288, 0x00C3, 0x0CDB, 0x177F, 0x00F8, 0x034F, 0x0081, 0x0347, 0x0082, 0x0B08,
0x00C3, 0x0CDC, 0x177F, 0x00F8, 0x0353, 0x0081, 0x0349, 0x0082, 0x02AC, 0x00C3, 0x0CDD, 0x177F, 0x00F8, 0x0350, 0x0081, 0x034B,
0x0082, 0x0B2C, 0x00C3, 0x0CDE, 0x177F, 0x00F8, 0x0354, 0x00DE, 0x02F2, 0xB100, 0x0295, 0x046A, 0x00DE, 0x02F5, 0x00DF, 0x02F7,
0x8200, 0x0293, 0x0456, 0x7800, 0x029F, 0x0459, 0x0295, 0x0459, 0x7400, 0x00FE, 0x02F5, 0x00DE, 0x02F6, 0x00DF, 0x02F8, 0x8200,
0x0293, 0x0465, 0x7800, 0x029F, 0x0468, 0x0295, 0x0468, 0x7400, 0x00FE, 0x02F6, 0x8E00, 0x8100, 0x00DE, 0x02F2, 0xB100, 0x0295,
0x047F, 0x00DE, 0x02F3, 0x00DC, 0x02F4, 0x2ECE, 0x2CCF, 0x16CD, 0x0CA0, 0x16C9, 0x0001, 0x16CB, 0x0040, 0x02BF, 0x0084, 0x8100,
0x8900, 0x00DE, 0x02D2, 0x00DF, 0x02D3, 0x2ECE, 0x2FCF, 0x16CD, 0x02D0, 0x16C9, 0x0001, 0x16CB, 0x0140, 0x02BF, 0x0084, 0x8100,
0x00DE, 0x02D0, 0x00DC, 0x02D1, 0xB100, 0x0294, 0x0283, 0x00C0, 0x0CD2, 0x029F, 0x006F, 0x8E00, 0x00C4, 0x0CE6, 0x1905, 0x00E5,
0x0CE6, 0x0086, 0x0400, 0x8100, 0x8970, 0x191C, 0x2ECE, 0x2CCF, 0x1FC6, 0x2ECD, 0x16C9, 0x0001, 0x16CB, 0x0480, 0x02BF, 0x0084,
0x02BF, 0x04E6, 0x029F, 0x006F, 0x8E00, 0x00C4, 0x0CE7, 0x1905, 0x00E5, 0x0CE7, 0x0086, 0x0640, 0x8100, 0x8970, 0x191C, 0x2ECE,
0x2CCF, 0x1FC6, 0x2ECD, 0x16C9, 0x0001, 0x16CB, 0x0480, 0x02BF, 0x0084, 0x02BF, 0x04E6, 0x029F, 0x006F, 0x8E00, 0x00C4, 0x0CE8,
0x1905, 0x00E5, 0x0CE8, 0x0086, 0x0880, 0x8100, 0x8970, 0x191C, 0x2ECE, 0x2CCF, 0x1FC6, 0x2ECD, 0x16C9, 0x0001, 0x16CB, 0x0480,
0x02BF, 0x0084, 0x02BF, 0x04E6, 0x029F, 0x006F, 0x8B00, 0x8100, 0x1FC4, 0x1FE5, 0x5D00, 0x009A, 0x02AB, 0x009B, 0x02AA, 0x0081,
0x0D08, 0xD000, 0xD400, 0x111F, 0x04F7, 0xDC31, 0xD431, 0xD431, 0xDC31, 0x4E31, 0x1B25, 0x8E00, 0x191F, 0x191D, 0x2FCE, 0x2DCF,
0x8900, 0x1FA6, 0x2DCD, 0x16C9, 0x0000, 0x16CB, 0x0480, 0x02BF, 0x0084, 0x00E0, 0x0CD2, 0x8F00, 0x8D00, 0x8A00, 0x0080, 0x0D08,
0x0081, 0x0000, 0x1C41, 0x1C66, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E00, 0x4800, 0x112F, 0x052A, 0x80F1, 0x80C0, 0xA000,
0xAF00, 0x9941, 0x4F32, 0x4922, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E3A, 0x482A, 0x80F1, 0x80C0, 0xA000, 0xAF00, 0x9941,
0x4F32, 0x4922, 0x1B5F, 0x1B5D, 0x0080, 0x0D08, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E00, 0x4800, 0x112F, 0x054C, 0x80F1,
0x80C0, 0xA000, 0xAF00, 0x9941, 0x4F32, 0x4922, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E3A, 0x482A, 0x80F1, 0x80C0, 0xA000,
0xAF00, 0x9941, 0x4F32, 0x4922, 0x1B5F, 0x1B5D, 0x0080, 0x0D08, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E00, 0x4800, 0x112F,
0x056E, 0x80F1, 0x80C0, 0xA000, 0xAF00, 0x9941, 0x4F32, 0x4922, 0x80F1, 0x80C0, 0xA000, 0xAE00, 0x9141, 0x4E3A, 0x482A, 0x80F1,
0x80C0, 0xA000, 0xAF00, 0x9941, 0x4F32, 0x4922, 0x1B5F, 0x1B5D, 0x00C0, 0x0CD2, 0x02DF, 0x8D00, 0x8F00, 0x8A00, 0x8900, 0x8168,
0x0098, 0x0000, 0x0099, 0x0001, 0x0081, 0x0000, 0x193E, 0x193C, 0x1160, 0x0593, 0xA100, 0x8271, 0x0277, 0x1F19, 0x193C, 0xA100,
0x8271, 0x0277, 0x1F19, 0x193C, 0x1FD8, 0xB100, 0x0294, 0x05BE, 0x00DE, 0x0CE4, 0xB100, 0x0294, 0x05A2, 0x191C, 0x191C, 0x191C,
0x029F, 0x006F, 0x8B00, 0x7800, 0x00FE, 0x0CE4, 0x8400, 0x0099, 0x00C0, 0x1F1E, 0xA000, 0x191E, 0x7400, 0x1F1E, 0x191E, 0x191C,
0x00E0, 0x0CD2, 0xA400, 0x4E00, 0x2ECE, 0x2CCF, 0x16CD, 0x0D08, 0x16C9, 0x0000, 0x16CB, 0x00C0, 0x029F, 0x05D4, 0x8B00, 0x00D8,
0x0CE4, 0x0099, 0x00C0, 0xA000, 0x191E, 0x00FE, 0x0CE4, 0x191E, 0x191C, 0x00E0, 0x0CD2, 0x4E00, 0x2ECE, 0x2CCF, 0x16CD, 0x0D08,
0x16C9, 0x0000, 0x16CB, 0x00C0, 0x02BF, 0x0084, 0x8A48, 0x0083, 0x0D08, 0x0080, 0x0000, 0x0081, 0x0000, 0x1979, 0x193A, 0xB041,
0xA64B, 0xF051, 0xB441, 0x9100, 0x1130, 0x05ED, 0xA792, 0xF151, 0xB520, 0x9941, 0xA693, 0xF051, 0xB428, 0x9141, 0x0083, 0x0D08,
0x0080, 0x00C0, 0x0081, 0x00C0, 0x1979, 0x193A, 0xB041, 0xA64B, 0xF051, 0xB441, 0x9100, 0x1130, 0x0604, 0xA792, 0xF151, 0xB520,
0x9941, 0xA693, 0xF051, 0xB428, 0x9141, 0x00C0, 0x0CD2, 0x029F, 0x006F, 0x8E48, 0x8B70, 0x8960, 0x00E0, 0x0CD2, 0x2ECE, 0x2CCF,
0x16CD, 0x0180, 0x16C9, 0x0001, 0x16CB, 0x0180, 0x8100, 0x00DE, 0x0CE5, 0x1FF9, 0x5D00, 0x00F9, 0x0CE5, 0x009A, 0x02AB, 0x009B,
0x02AA, 0x0081, 0x0D08, 0xD000, 0xD400, 0x111F, 0x0629, 0xDC31, 0xD431, 0xD431, 0xDC31, 0x4E31, 0x1B39, 0x02BF, 0x0084, 0x8F00,
0x8D00, 0x8A00, 0x0080, 0x0D08, 0x0081, 0x0400, 0x0083, 0x0000, 0x0082, 0x00C0, 0x1918, 0x195B, 0x1959, 0xA000, 0xAE00, 0x9100,
0x4E5B, 0xF04B, 0x115F, 0x064D, 0xA031, 0xAE00, 0x9140, 0x4E5A, 0xF04A, 0xA031, 0xAE00, 0x9100, 0x4E5B, 0xF04B, 0xA031, 0xAE00,
0x9100, 0x4E00, 0xF000, 0x1B3E, 0x8E00, 0x00C0, 0x0CD2, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0400, 0x16C9, 0x0001, 0x16CB,
0x0180, 0x02BF, 0x0084, 0x16FC, 0xDCD1, 0x16FD, 0x0004, 0x16FB, 0x0001, 0x26FC, 0x02A0, 0x8000, 0x029C, 0x0669, 0x029F, 0x006F,
0x16FC, 0xDCD1, 0x16FD, 0x0002, 0x16FB, 0x0001, 0x029F, 0x0F99, 0x029F, 0x004C, 0x8C00, 0x8A00, 0x8F00, 0x0081, 0x0AC0, 0x0082,
0x0240, 0x1FA1, 0x1112, 0x0687, 0x195E, 0x195C, 0xF000, 0x1B3E, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x2DCD, 0x1103, 0x06A0, 0x16C9,
0x0001, 0x16CB, 0x0024, 0x1FA1, 0x1112, 0x0699, 0x195E, 0x195C, 0xF000, 0x1B3E, 0x02BF, 0x0084, 0x191E, 0x191C, 0x2ECE, 0x2CCF,
0x2DCD, 0x16C9, 0x0001, 0x16CB, 0x0024, 0x02BF, 0x0084, 0x029F, 0x006F, 0x0087, 0xFFFF, 0x1C83, 0x197E, 0x80E1, 0xB04F, 0x1F5E,
0xE2E1, 0xB64F, 0x1F5E, 0xE2E1, 0x112F, 0x06BB, 0xB79A, 0x1F5F, 0xE2E1, 0xB69B, 0x1F5E, 0xE2E1, 0x6F30, 0x1B1F, 0x1C64, 0x1B7F,
0x02DF, 0x8C00, 0x8B00, 0x1CA0, 0x0083, 0x0370, 0x191A, 0x1918, 0x1B7A, 0x1B78, 0x1919, 0x191B, 0x0083, 0x0D03, 0x1105, 0x06D1,
0x191A, 0x1B7A, 0x0080, 0x0D03, 0x0088, 0x0004, 0x0083, 0x0370, 0x008B, 0x0001, 0x0087, 0x0000, 0x193F, 0x191A, 0xD0C3, 0xF2CB,
0xF2A9, 0xE250, 0xE379, 0x6E50, 0x1482, 0xFC00, 0x1F7E, 0x1B5E, 0x112F, 0x06FD, 0xD0C3, 0xF2CB, 0xF2A9, 0xE350, 0xE279, 0x6E50,
0x1482, 0xFC00, 0x1F3E, 0x1B5E, 0xD0C3, 0xF2CB, 0xF2A9, 0xE250, 0xE379, 0x6E50, 0x1482, 0xFC00, 0x1F7E, 0x1B5E, 0xD0C3, 0xF2CB,
0xF2A9, 0xE350, 0xE200, 0x6E00, 0x1482, 0xFC00, 0x1F3E, 0x1B5E, 0x0088, 0xFFFF, 0x008B, 0xFFFF, 0x1C05, 0x0083, 0x0370, 0x197A,
0x1978, 0x1B1A, 0x1B18, 0x1B19, 0x1B1B, 0x8D00, 0x8A00, 0x02DF, 0x02BF, 0x07E4, 0x8C00, 0x8A00, 0x8F00, 0x195B, 0x1959, 0x8100,
0x195C, 0x0080, 0x0D08, 0x0088, 0x0003, 0x195F, 0x1B1F, 0x195F, 0x1B1F, 0x195F, 0x1B1F, 0x195F, 0x1B1F, 0x0081, 0x0C60, 0x0082,
0xFFDD, 0x00C7, 0x0CE0, 0x4A00, 0x1160, 0x0748, 0x8912, 0x1FBC, 0x1577, 0x1512, 0x1C7F, 0x001F, 0x0078, 0x0741, 0x185A, 0x1B1A,
0x5000, 0x1F1D, 0x4AC3, 0x90C3, 0x97C3, 0x95C3, 0x9500, 0x4F00, 0x1B3F, 0x5A00, 0x0004, 0x0082, 0x0329, 0x189F, 0x1ADF, 0x189F,
0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x0088, 0xFFFF, 0x1ADC, 0x0082, 0x0322, 0x27DC, 0x1ADF, 0x27DB, 0x1ADF, 0x27DA, 0x1ADF,
0x0082, 0x030E, 0x27D9, 0x1ADF, 0x27D8, 0x1ADF, 0x8E00, 0x8B00, 0x02DF, 0x02BF, 0x07E4, 0x8D00, 0x8B00, 0x8F00, 0x195B, 0x1945,
0x8100, 0x195C, 0x0080, 0x0D08, 0x0088, 0x0003, 0x0084, 0x0003, 0x195F, 0x1B1F, 0x195F, 0x1B1F, 0x195F, 0x1B1F, 0x195F, 0x1B1F,
0x0081, 0x0C60, 0x0082, 0xFFDD, 0x1F25, 0x4A00, 0x1160, 0x079D, 0x8912, 0x0078, 0x078E, 0x185A, 0x1B1A, 0x5000, 0x1F1F, 0x7C00,
0xB114, 0x0294, 0x0797, 0x191F, 0x0010, 0x029F, 0x079C, 0x7C50, 0xB014, 0x199A, 0xB700, 0x4F00, 0x1F25, 0x4A39, 0x5A00, 0x0004,
0x0082, 0x0329, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x0088, 0xFFFF, 0x1ADC, 0x0082, 0x0322, 0x27DC,
0x1ADF, 0x27DB, 0x1ADF, 0x27DA, 0x1ADF, 0x0082, 0x030E, 0x27D9, 0x1ADF, 0x27D8, 0x1ADF, 0x8E00, 0x8C00, 0x02DF, 0x02BF, 0x07E4,
0x0080, 0x0C60, 0x0082, 0xFFDD, 0x1160, 0x07C9, 0x1844, 0x1B04, 0x0000, 0x0000, 0x0004, 0x0082, 0x0329, 0x189F, 0x1ADF, 0x189F,
0x1ADF, 0x189F, 0x1ADF, 0x189F, 0x1ADF, 0x0082, 0x0322, 0x27DC, 0x1ADF, 0x27DB, 0x1ADF, 0x27DA, 0x1ADF, 0x0082, 0x030E, 0x27D9,
0x1ADF, 0x27D8, 0x1ADF, 0x02DF, 0x0082, 0x0308, 0x195E, 0x2ED1, 0x195E, 0x2ED4, 0x195E, 0x2ED5, 0x195E, 0x2ED6, 0x195E, 0x2ED7,
0x195E, 0x2ED8, 0x195E, 0x2ED9, 0x195E, 0x2EA0, 0x195E, 0x2EA1, 0x195E, 0x2EA2, 0x195E, 0x2EA3, 0x195E, 0x2EA4, 0x195E, 0x2EA5,
0x195E, 0x2EA6, 0x195E, 0x2EA7, 0x195E, 0x2EA8, 0x195E, 0x2EA9, 0x195E, 0x2EAA, 0x195E, 0x2EAB, 0x195E, 0x2EAC, 0x195E, 0x2EAD,
0x195E, 0x2EAE, 0x195E, 0x2EAF, 0x195E, 0x2EDE, 0x195E, 0x2EDA, 0x195E, 0x2EDB, 0x195E, 0x2EDC, 0x02DF, 0x02DF, 0x00C0, 0x0CE2,
0x0081, 0x02DA, 0x0082, 0x0000, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02F9, 0x02DF, 0x00C0, 0x0CE3, 0x0081, 0x02DC, 0x0082, 0x00C0,
0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FD, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02DA, 0x0082, 0x0000, 0x1C62, 0x00C4, 0x0CE3, 0x0085,
0x00C0, 0x02BF, 0x0BE9, 0x00F8, 0x02F9, 0x00FB, 0x02FD, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02DA, 0x0082, 0x0000, 0x0083, 0x0D08,
0x00C4, 0x0CE3, 0x0085, 0x00C0, 0x02BF, 0x0C4F, 0x00F8, 0x02F9, 0x00FB, 0x02FD, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082,
0x0180, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0301, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x1C62, 0x02BF, 0x0BCF,
0x00F8, 0x0301, 0x029F, 0x081E, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0301, 0x029F,
0x082A, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0301, 0x029F, 0x0836, 0x00C0, 0x0CE1,
0x0081, 0x02EA, 0x0082, 0x0180, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0301, 0x029F, 0x0848, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082,
0x0180, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0301, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x0083, 0x0D08,
0x02BF, 0x0C1F, 0x00F8, 0x0301, 0x029F, 0x081E, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x0083, 0x0D08, 0x02BF, 0x0C1F,
0x00F8, 0x0301, 0x029F, 0x082A, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0301,
0x029F, 0x0836, 0x00C0, 0x0CE1, 0x0081, 0x02EA, 0x0082, 0x0180, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0301, 0x029F, 0x0848,
0x00C0, 0x0CE2, 0x0081, 0x02DE, 0x0082, 0x0400, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FA, 0x02DF, 0x00C0, 0x0CE3, 0x0081, 0x02E0,
0x0082, 0x04C0, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FE, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02DE, 0x0082, 0x0400, 0x1C62, 0x00C4,
0x0CE3, 0x0085, 0x04C0, 0x02BF, 0x0BE9, 0x00F8, 0x02FA, 0x00FB, 0x02FE, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02DE, 0x0082, 0x0400,
0x0083, 0x0D08, 0x00C4, 0x0CE3, 0x0085, 0x04C0, 0x02BF, 0x0C4F, 0x00F8, 0x02FA, 0x00FB, 0x02FE, 0x02DF, 0x00C0, 0x0CE1, 0x0081,
0x02EC, 0x0082, 0x0580, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0302, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x1C62,
0x02BF, 0x0BCF, 0x00F8, 0x0302, 0x029F, 0x08E0, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x1C62, 0x02BF, 0x0BCF, 0x00F8,
0x0302, 0x029F, 0x08EC, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0302, 0x029F, 0x08F8,
0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0302, 0x029F, 0x090A, 0x00C0, 0x0CE1, 0x0081,
0x02EC, 0x0082, 0x0580, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0302, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580,
0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0302, 0x029F, 0x08E0, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x0083, 0x0D08,
0x02BF, 0x0C1F, 0x00F8, 0x0302, 0x029F, 0x08EC, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x0083, 0x0D08, 0x02BF, 0x0C1F,
0x00F8, 0x0302, 0x029F, 0x08F8, 0x00C0, 0x0CE1, 0x0081, 0x02EC, 0x0082, 0x0580, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0302,
0x029F, 0x090A, 0x00C0, 0x0CE2, 0x0081, 0x02E2, 0x0082, 0x0640, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FB, 0x02DF, 0x00C0, 0x0CE3,
0x0081, 0x02E4, 0x0082, 0x0700, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FF, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02E2, 0x0082, 0x0640,
0x1C62, 0x00C4, 0x0CE3, 0x0085, 0x0700, 0x02BF, 0x0BE9, 0x00F8, 0x02FB, 0x00FB, 0x02FF, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02E2,
0x0082, 0x0640, 0x0083, 0x0D08, 0x00C4, 0x0CE3, 0x0085, 0x0700, 0x02BF, 0x0C4F, 0x00F8, 0x02FB, 0x00FB, 0x02FF, 0x02DF, 0x00C0,
0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0303, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082,
0x07C0, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0303, 0x029F, 0x09A2, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x1C62, 0x02BF,
0x0BCF, 0x00F8, 0x0303, 0x029F, 0x09AE, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0303,
0x029F, 0x09BA, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0303, 0x029F, 0x09CC, 0x00C0,
0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0303, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02EE,
0x0082, 0x07C0, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0303, 0x029F, 0x09A2, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0,
0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0303, 0x029F, 0x09AE, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x0083, 0x0D08,
0x02BF, 0x0C1F, 0x00F8, 0x0303, 0x029F, 0x09BA, 0x00C0, 0x0CE1, 0x0081, 0x02EE, 0x0082, 0x07C0, 0x0083, 0x0D08, 0x02BF, 0x0C1F,
0x00F8, 0x0303, 0x029F, 0x09CC, 0x00C0, 0x0CE2, 0x0081, 0x02E6, 0x0082, 0x0880, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x02FC, 0x02DF,
0x00C0, 0x0CE3, 0x0081, 0x02E8, 0x0082, 0x0940, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0300, 0x02DF, 0x00C0, 0x0CE2, 0x0081, 0x02E6,
0x0082, 0x0880, 0x1C62, 0x00C4, 0x0CE3, 0x0085, 0x0940, 0x02BF, 0x0BE9, 0x00F8, 0x02FC, 0x00FB, 0x0300, 0x02DF, 0x00C0, 0x0CE2,
0x0081, 0x02E6, 0x0082, 0x0880, 0x0083, 0x0D08, 0x00C4, 0x0CE3, 0x0085, 0x0940, 0x02BF, 0x0C4F, 0x00F8, 0x02FC, 0x00FB, 0x0300,
0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x02DF, 0x00C0, 0x0CE1, 0x0081,
0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0A64, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00,
0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0A70, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF,
0x00F8, 0x0304, 0x029F, 0x0A7C, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F,
0x0A8E, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x02DF, 0x00C0, 0x0CE1,
0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0A64, 0x00C0, 0x0CE1, 0x0081, 0x02F0,
0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0A70, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00,
0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0A7C, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08,
0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0A8E, 0x00C0, 0x0CE1, 0x0081, 0x02E6, 0x0082, 0x0880, 0x1C62, 0x02BF, 0x0BCF, 0x00F8,
0x02FC, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02E8, 0x0082, 0x0940, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0300, 0x02DF, 0x00C0, 0x0CE1,
0x0081, 0x02E6, 0x0082, 0x0880, 0x1C62, 0x00C4, 0x0CE1, 0x0085, 0x0940, 0x02BF, 0x0BE9, 0x00F8, 0x02FC, 0x00FB, 0x0300, 0x02DF,
0x00C0, 0x0CE1, 0x0081, 0x02E6, 0x0082, 0x0880, 0x0083, 0x0D08, 0x00C4, 0x0CE1, 0x0085, 0x0940, 0x02BF, 0x0C4F, 0x00F8, 0x02FC,
0x00FB, 0x0300, 0x02DF, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0B26,
0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0B32, 0x00C0, 0x0CE1, 0x0081,
0x02F0, 0x0082, 0x0A00, 0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0B3E, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00,
0x1C62, 0x02BF, 0x0BCF, 0x00F8, 0x0304, 0x029F, 0x0B50, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF,
0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0B26, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8,
0x0304, 0x029F, 0x0B32, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F,
0x0B3E, 0x00C0, 0x0CE1, 0x0081, 0x02F0, 0x0082, 0x0A00, 0x0083, 0x0D08, 0x02BF, 0x0C1F, 0x00F8, 0x0304, 0x029F, 0x0B50, 0x191A,
0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0xB46A, 0x9100, 0xF1A0, 0x112F, 0x0BE1, 0xB523, 0x9972, 0x195C, 0xF0A1, 0xB42B, 0x917A,
0x195D, 0xF1A0, 0x1B7C, 0x6E00, 0x4F12, 0x9900, 0x1B7F, 0x812B, 0x02DF, 0x191A, 0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0xB46A,
0x9100, 0xF1A0, 0x112F, 0x0BFB, 0xB523, 0x9972, 0x195C, 0xF0A1, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1B7C, 0x6E00, 0x4F12, 0x9909,
0x1B7F, 0x1B7D, 0x1C04, 0x1C45, 0x1C62, 0x191A, 0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0xB46A, 0x9100, 0xF1A0, 0x112F, 0x0C17,
0xB523, 0x9972, 0x195C, 0xF0A1, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1B7C, 0x6E00, 0x4F1E, 0x9900, 0x1B7F, 0x1B7D, 0x02DF, 0x1CE3,
0x8E00, 0x8100, 0x8971, 0x18BF, 0x1B7E, 0x4C00, 0x1B7E, 0x112F, 0x0C2C, 0x4C00, 0x1B7E, 0x4C00, 0x1B7E, 0x4C00, 0x1B3E, 0x1C27,
0x1C62, 0x8F50, 0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0x1939, 0xB46A, 0x9100, 0xF1A0, 0x1939, 0x112F, 0x0C47, 0xB523, 0x9972,
0x195C, 0xF0A1, 0x1939, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1939, 0x1B7C, 0x6E00, 0x4F12, 0x9900, 0x1B7F, 0x1B7D, 0x02DF, 0x1CE3,
0x8E00, 0x8100, 0x8971, 0x18BF, 0x1B7E, 0x4C00, 0x1B7E, 0x112F, 0x0C5C, 0x4C00, 0x1B7E, 0x4C00, 0x1B7E, 0x4C00, 0x1B3E, 0x0009,
0x8100, 0x8971, 0x18BF, 0x1B7E, 0x4C00, 0x1B7E, 0x112F, 0x0C6B, 0x4C00, 0x1B7E, 0x4C00, 0x1B7E, 0x4C00, 0x1B3E, 0x1C27, 0x1C62,
0x8F50, 0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0x1939, 0xB46A, 0x9100, 0xF1A0, 0x1939, 0x112F, 0x0C86, 0xB523, 0x9972, 0x195C,
0xF0A1, 0x1939, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1939, 0x1B7C, 0x6E00, 0x4F12, 0x9905, 0x1B7F, 0x1B7D, 0x1C04, 0x1C45, 0x1C62,
0x191A, 0x1939, 0xB072, 0x195C, 0xF07A, 0x191A, 0x1939, 0xB46A, 0x9100, 0xF1A0, 0x1939, 0x112F, 0x0CA6, 0xB523, 0x9972, 0x195C,
0xF0A1, 0x1939, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1939, 0x1B7C, 0x6E00, 0x4F1E, 0x9900, 0x1B7F, 0x1B7D, 0x02DF, 0x0098, 0x0000,
0x02DF, 0x0080, 0x0CC0, 0x1C62, 0x1939, 0x191A, 0xB000, 0x195E, 0x195C, 0xF050, 0xB400, 0x917A, 0x195D, 0xF1A0, 0x1108, 0x0CC7,
0xB523, 0x9972, 0x195C, 0xF0A1, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x4F23, 0x9900, 0x1B7F, 0x6E2B, 0x1F1E, 0x02DF, 0x0080, 0x0CC0,
0x0083, 0x0D08, 0x1CE3, 0x8E00, 0x8100, 0x8971, 0x18BF, 0x1B7E, 0x4C00, 0x1B7E, 0x1108, 0x0CDF, 0x4C00, 0x1B7E, 0x4C00, 0x1B7E,
0x4C00, 0x1B3E, 0x1C27, 0x1C62, 0x8F50, 0x1939, 0xB000, 0x195E, 0x195C, 0xF050, 0x1939, 0xB400, 0x917A, 0x195D, 0xF1A0, 0x1939,
0x1108, 0x0CFB, 0xB523, 0x9972, 0x195C, 0xF0A1, 0x1939, 0xB42B, 0x917A, 0x195D, 0xF1A0, 0x1939, 0x4F23, 0x9900, 0x1B7F, 0x6E2B,
0x1F1E, 0x02DF, 0x008A, 0x0222, 0x024F, 0x0E81, 0x027E, 0x049B, 0x04B4, 0x04CD, 0x0DBB, 0x0DDD, 0x057B, 0x0609, 0x0EC4, 0x067A,
0x0670, 0x081D, 0x081E, 0x082A, 0x0836, 0x0848, 0x0848, 0x0848, 0x0848, 0x085B, 0x0867, 0x0874, 0x0881, 0x088E, 0x088E, 0x088E,
0x088E, 0x089B, 0x08A8, 0x08B6, 0x08C4, 0x08D2, 0x08D2, 0x08D2, 0x08D2, 0x089B, 0x08A8, 0x08B6, 0x08C4, 0x08D2, 0x08D2, 0x08D2,
0x08D2, 0x081D, 0x08E0, 0x08EC, 0x08F8, 0x090A, 0x090A, 0x090A, 0x090A, 0x091D, 0x0929, 0x0936, 0x0943, 0x0950, 0x0950, 0x0950,
0x0950, 0x095D, 0x096A, 0x0978, 0x0986, 0x0994, 0x0994, 0x0994, 0x0994, 0x095D, 0x096A, 0x0978, 0x0986, 0x0994, 0x0994, 0x0994,
0x0994, 0x081D, 0x09A2, 0x09AE, 0x09BA, 0x09CC, 0x09CC, 0x09CC, 0x09CC, 0x09DF, 0x09EB, 0x09F8, 0x0A05, 0x0A12, 0x0A12, 0x0A12,
0x0A12, 0x0A1F, 0x0A2C, 0x0A3A, 0x0A48, 0x0A56, 0x0A56, 0x0A56, 0x0A56, 0x0A1F, 0x0A2C, 0x0A3A, 0x0A48, 0x0A56, 0x0A56, 0x0A56,
0x0A56, 0x081D, 0x0A64, 0x0A70, 0x0A7C, 0x0A8E, 0x0A8E, 0x0A8E, 0x0A8E, 0x0AA1, 0x0AAD, 0x0ABA, 0x0AC7, 0x0AD4, 0x0AD4, 0x0AD4,
0x0AD4, 0x0AE1, 0x0AEE, 0x0AFC, 0x0B0A, 0x0B18, 0x0B18, 0x0B18, 0x0B18, 0x0AE1, 0x0AEE, 0x0AFC, 0x0B0A, 0x0B18, 0x0B18, 0x0B18,
0x0B18, 0x081D, 0x0B26, 0x0B32, 0x0B3E, 0x0B50, 0x0B50, 0x0B50, 0x0B50, 0x0AA1, 0x0B63, 0x0B70, 0x0B7D, 0x0B8A, 0x0B8A, 0x0B8A,
0x0B8A, 0x0AE1, 0x0B97, 0x0BA5, 0x0BB3, 0x0BC1, 0x0BC1, 0x0BC1, 0x0BC1, 0x0AE1, 0x0B97, 0x0BA5, 0x0BB3, 0x0BC1, 0x0BC1, 0x0BC1,
0x0BC1, 0x0CAE, 0x0CB1, 0x0CCE, 0x0CCE, 0x0718, 0x0769, 0x07BE, 0x1000, 0x1200, 0x1400, 0x8E00, 0x00C4, 0x0CE6, 0x1905, 0x00E5,
0x0CE6, 0x0086, 0x0400, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0400, 0x16C9, 0x0001, 0x16CB, 0x0480, 0x02BF, 0x0084, 0x191E,
0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0940, 0x16C9, 0x0001, 0x16CB, 0x0180, 0x02BF, 0x0084, 0x029F, 0x0DFF, 0x8E00, 0x00C4, 0x0CE7,
0x1905, 0x00E5, 0x0CE7, 0x0086, 0x0640, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0640, 0x16C9, 0x0001, 0x16CB, 0x0480, 0x02BF,
0x0084, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0A00, 0x16C9, 0x0001, 0x16CB, 0x0180, 0x02BF, 0x0084, 0x029F, 0x0DFF, 0x8B00,
0x8100, 0x8900, 0x1FC4, 0x1FE5, 0x5D00, 0x009A, 0x02AB, 0x009B, 0x02AA, 0x0081, 0x0D08, 0xD000, 0xD400, 0x111F, 0x0E11, 0xDC31,
0xD431, 0xD431, 0xDC31, 0x4E31, 0x1B25, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x00E6, 0xFFCD, 0x16C9, 0x0000, 0x16CB, 0x0180, 0x0081,
0x0000, 0x1C41, 0x02BF, 0x0084, 0x02BF, 0x0E55, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x00E6, 0xFFCD, 0x16C9, 0x0000, 0x16CB, 0x0180,
0x02BF, 0x0084, 0x02BF, 0x0E55, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x00E6, 0xFFCD, 0x16C9, 0x0000, 0x16CB, 0x0180, 0x02BF, 0x0084,
0x02BF, 0x0E55, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x00E6, 0xFFCD, 0x16C9, 0x0000, 0x16CB, 0x0180, 0x0081, 0x0880, 0x1C41, 0x02BF,
0x0084, 0x02BF, 0x0E55, 0x029F, 0x006F, 0x8F00, 0x8D00, 0x8A00, 0x00E0, 0x0CD2, 0x0080, 0x0D08, 0x1C66, 0x80F1, 0x80C0, 0xA000,
0xAE00, 0x9141, 0x4E00, 0x4800, 0x112F, 0x0E73, 0x80F1, 0x80C0, 0xA000, 0xAF00, 0x9941, 0x4F32, 0x4922, 0x80F1, 0x80C0, 0xA000,
0xAE00, 0x9141, 0x4E3A, 0x482A, 0x80F1, 0x80C0, 0xA000, 0xAF00, 0x9941, 0x4F32, 0x4922, 0x1B5F, 0x1B5D, 0x00C0, 0x0CD2, 0x8E00,
0x02DF, 0x8E00, 0x191F, 0x191D, 0x2FCE, 0x2DCF, 0x16CD, 0x0D08, 0x16C9, 0x0000, 0x16CB, 0x0300, 0x02BF, 0x0084, 0x1C80, 0x8F00,
0x0080, 0x0D08, 0x0083, 0x0000, 0x1C43, 0x80F0, 0x80C0, 0x6A00, 0x4800, 0x112F, 0x0EA2, 0x80F0, 0x80C0, 0x6B32, 0x4922, 0x80F0,
0x80C0, 0x6A3A, 0x482A, 0x80F0, 0x80C0, 0x6B32, 0x4922, 0x1B5F, 0x1B5D, 0x80F0, 0x80C0, 0x6800, 0x7C00, 0x4A00, 0x112F, 0x0EB9,
0x80F0, 0x80C0, 0x6932, 0x7D00, 0x4B22, 0x80F0, 0x80C0, 0x683A, 0x7C00, 0x4A2A, 0x80F0, 0x80C0, 0x6932, 0x7D00, 0x4B22, 0x1B5F,
0x1B5D, 0x1C04, 0x029F, 0x006F, 0x8E48, 0x8B78, 0x8168, 0x00E0, 0x0CD2, 0x2FCE, 0x2DCF, 0x16CD, 0x0180, 0x16C9, 0x0001, 0x16CB,
0x0180, 0x02BF, 0x0084, 0x8100, 0x009C, 0x0180, 0x4D00, 0x2FCE, 0x2DCF, 0x16CD, 0x0880, 0x16C9, 0x0001, 0x16CB, 0x0180, 0x8100,
0x8900, 0x00DE, 0x0CE5, 0x1FF9, 0x5D00, 0x00F9, 0x0CE5, 0x009A, 0x02AB, 0x009B, 0x02AA, 0x0081, 0x0D08, 0xD000, 0xD400, 0x111F,
0x0EF3, 0xDC31, 0xD431, 0xD431, 0xDC31, 0x4E31, 0x1B39, 0x02BF, 0x0084, 0x8F00, 0x8D00, 0x8A00, 0x0080, 0x0D08, 0x0081, 0x0400,
0x0083, 0x0000, 0x0082, 0x00C0, 0x1918, 0x195B, 0x1959, 0xA000, 0xAE00, 0x9100, 0x4E5B, 0xF04B, 0x115F, 0x0F17, 0xA031, 0xAE00,
0x9140, 0x4E5A, 0xF04A, 0xA031, 0xAE00, 0x9100, 0x4E5B, 0xF04B, 0xA031, 0xAE00, 0x9100, 0x4E00, 0xF000, 0x1B3E, 0x8E00, 0x00C0,
0x0CD2, 0x191E, 0x191C, 0x2ECE, 0x2CCF, 0x16CD, 0x0400, 0x16C9, 0x0001, 0x16CB, 0x0180, 0x02BF, 0x0084, 0x16FC, 0xDCD1, 0x16FD,
0x0004, 0x16FB, 0x0001, 0x26FC, 0x02A0, 0x8000, 0x029C, 0x0F33, 0x029F, 0x006F, 0x8E00, 0x1FCC, 0x1D9E, 0x16FC, 0xECC0, 0x2EFD,
0x26FC, 0x02A0, 0x8000, 0x029C, 0x0F40, 0x02FF, 0x0000, 0x0000, 0x0000, 0x0000, 0x02FF, 0x8E00, 0x1DBC, 0x1DBE, 0x8100, 0x00DE,
0x0307, 0x0601, 0x0295, 0x0F57, 0x0E00, 0x00FE, 0x02D8, 0x1FCD, 0x1F8D, 0x02FF, 0x0000, 0x0000, 0x0000, 0x0000, 0x02FF, 0x8E00,
0x1DBC, 0x1DBE, 0x8100, 0x00DE, 0x0307, 0x0601, 0x0295, 0x0F70, 0x0E00, 0x00FE, 0x02D8, 0x0082, 0x0CE9, 0x1FCD, 0x1F8D, 0x02FF,
0x00DE, 0x02D9, 0x0601, 0x0295, 0x0F81, 0x00DE, 0x032A, 0x2EDA, 0x00DE, 0x032B, 0x2EDB, 0x00DE, 0x032C, 0x2EDC, 0x1FCD, 0x1F8D,
0x02FF, 0x00DE, 0x032A, 0x2EDA, 0x26DB, 0x2EDB, 0x26DC, 0x2EDC, 0x1FCD, 0x1F8D, 0x02FF, 0x0000, 0x0000, 0x0000, 0x0000, 0x02FF,
0x0000, 0x0000, 0x0000, 0x0000, 0x02FF, 0x0FA7, 0x0FAA, 0x0FE2, 0x0FE5, 0x8E00, 0x8100, 0x8900, 0x02BF, 0x0FE8, 0x27FF, 0x009E,
0x0F95, 0x4C00, 0x1C7E, 0x0313, 0x1C7F, 0x176F, 0x0021, 0x029F, 0x0037, 0x0021, 0x8100, 0x8900, 0x02BF, 0x0FE8, 0x24FF, 0x02BF,
0x0FEE, 0x25FF, 0x02BF, 0x0FEE, 0x27FF, 0x2ECE, 0x2CCF, 0x16C9, 0x0001, 0x2FCD, 0x2DCB, 0x8100, 0x8900, 0x02BF, 0x0FE8, 0x24FF,
0x1C9E, 0x1CBC, 0x02BF, 0x0FEE, 0x25FF, 0x02BF, 0x0FEE, 0x27FF, 0x1CDF, 0x1CFD, 0x8100, 0x02BF, 0x0FE8, 0x26FF, 0x1C1E, 0x8900,
0x02BF, 0x0FEE, 0x20FF, 0x1F5F, 0x02BF, 0x0FE8, 0x21FF, 0x02BF, 0x0FE8, 0x23FF, 0x26C9, 0x02A0, 0x0004, 0x029C, 0x0FDA, 0x029F,
0x80B5, 0x0021, 0x029F, 0x8000, 0x0021, 0x029F, 0x004C, 0x0021, 0x26FE, 0x02C0, 0x8000, 0x029C, 0x0FE8, 0x02DF, 0x27FE, 0x03C0,
0x8000, 0x029C, 0x0FEE, 0x02DF, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000
};