#pragma once

#include "types.h"

//Interface for work events, which most classes that do any types of tasks seem to inherit.
class IWorkEvent {
public:
    virtual ~IWorkEvent();
    virtual u32 IWorkEvent_80039E28();
    virtual u32 IWorkEvent_80039E20();
    virtual u32 IWorkEvent_80039E18();
    virtual u32 IWorkEvent_80039E10();
    virtual void IWorkEvent_80039E0C();
    virtual u32 IWorkEvent_80039E04();
    virtual u32 IWorkEvent_80039DFC();
    virtual u32 IWorkEvent_80039DF4();
    virtual u32 IWorkEvent_80039DEC();
    virtual u32 IWorkEvent_80039DE4();
    virtual u32 IWorkEvent_80039DDC();
    virtual u32 IWorkEvent_80039DD4();
    virtual u32 IWorkEvent_80039DCC();
    virtual u32 IWorkEvent_80039DC4();
    virtual u32 IWorkEvent_80039DBC();
    virtual u32 IWorkEvent_80039DB4();
    virtual u32 IWorkEvent_80039DAC();
    virtual u32 IWorkEvent_80039DA4();
    virtual u32 IWorkEvent_80039D9C();
    virtual u32 IWorkEvent_80039D94();
    virtual u32 IWorkEvent_80039D8C();
    virtual u32 IWorkEvent_80039D84();
    virtual u32 IWorkEvent_80039D7C();
    virtual u32 IWorkEvent_80039D74();
    virtual u32 IWorkEvent_80039D6C();
    virtual u32 IWorkEvent_80039D64();
    virtual u32 IWorkEvent_80039D5C();
    virtual u32 IWorkEvent_80039D54();
    virtual u32 IWorkEvent_80039D4C();
    virtual u32 IWorkEvent_80039D44();
    virtual void IWorkEvent_80039D40();
};