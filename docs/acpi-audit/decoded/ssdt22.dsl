/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt22.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000010B5 (4277)
 *     Revision         0x02
 *     Checksum         0x12
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.DGCX, IntObj)
    External (_SB_.PC00.DSSV, FieldUnitObj)
    External (_SB_.PC00.GC6I, MethodObj)    // 0 Arguments
    External (_SB_.PC00.GC6O, MethodObj)    // 0 Arguments
    External (_SB_.PC00.HGOF, MethodObj)    // 0 Arguments
    External (_SB_.PC00.HGON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.NINI, MethodObj)    // 0 Arguments
    External (_SB_.PC00.NVGE, FieldUnitObj)
    External (_SB_.PC00.OPTF, FieldUnitObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.PXSX, DeviceObj)
    External (_SB_.PC00.RP01.PXSX._ADR, UnknownObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.PXSX, DeviceObj)
    External (_SB_.PC00.RP05.PXSX._ADR, UnknownObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.CEDR, FieldUnitObj)
    External (_SB_.PC00.RP08.CMDR, FieldUnitObj)
    External (_SB_.PC00.RP08.D0ST, FieldUnitObj)
    External (_SB_.PC00.RP08.LREN, FieldUnitObj)
    External (_SB_.PC00.RP08.PXSX, DeviceObj)
    External (_SB_.PC00.RP08.PXSX._ADR, UnknownObj)
    External (_SB_.PC00.RP08.PXSX.HDAE, FieldUnitObj)
    External (_SB_.PC00.RP08.PXSX.LTRE, IntObj)
    External (_SB_.PC00.RP08.PXSX.SSSV, FieldUnitObj)
    External (_SB_.PC00.TDGC, IntObj)
    External (_SB_.PC00.TGPC, BuffObj)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (DGPV, UnknownObj)
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (EECP, UnknownObj)
    External (GBAS, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (HGMD, UnknownObj)
    External (HRA0, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRG0, UnknownObj)
    External (OSYS, UnknownObj)
    External (PWA0, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWG0, UnknownObj)
    External (RPA5, UnknownObj)
    External (RPBA, UnknownObj)
    External (RPIN, UnknownObj)
    External (SGGP, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_SB.PC00)
    {
        If (LEqual (RPIN, Zero))
        {
            Scope (\_SB.PC00.RP01)
            {
                PowerResource (PCRP, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    If (LEqual (\_SB.PC00.DGCX, 0x03))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }
                                    ElseIf (LEqual (\_SB.PC00.DGCX, 0x04))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }

                                    Store (Zero, \_SB.PC00.TDGC) /* External reference */
                                    Store (Zero, \_SB.PC00.DGCX) /* External reference */
                                    Store (One, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGON ()
                                    Store (0x07, \_SB.PC00.RP08.CMDR) /* External reference */
                                    Store (Zero, \_SB.PC00.RP08.D0ST) /* External reference */
                                    Store (\_SB.PC00.DSSV, \_SB.PC00.RP08.PXSX.SSSV) /* External reference */
                                    If (LEqual (\_SB.PC00.NVGE, 0x11))
                                    {
                                        If (\_SB.PC00.OPTF)
                                        {
                                            Store (One, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                        Else
                                        {
                                            Store (Zero, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                    }

                                    Store (One, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGON ()
                                Store (One, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                            }
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    CreateField (\_SB.PC00.TGPC, Zero, 0x03, GPPC)
                                    If (LEqual (ToInteger (GPPC), One))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }
                                    ElseIf (LEqual (ToInteger (GPPC), 0x02))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }

                                    Store (Zero, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGOF ()
                                    Store (Zero, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGOF ()
                                Store (Zero, _STA) /* \_SB_.PC00.RP01.PCRP._STA */
                            }
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PCRP
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    PCRP
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PCRP
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Device (PEGA)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }
            }

            Scope (\_SB.PC00.RP01.PXSX)
            {
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (Zero, \_SB.PC00.RP01.PXSX._ADR) /* External reference */
                    If (CondRefOf (\_SB.PC00.NINI))
                    {
                        \_SB.PC00.NINI ()
                    }
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    \_SB.PC00.HGON ()
                    Notify (\_SB.PC00.RP01, Zero) // Bus Check
                    Return (Zero)
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    \_SB.PC00.HGOF ()
                    Notify (\_SB.PC00.RP01, Zero) // Bus Check
                    Return (Zero)
                }
            }
        }
        ElseIf (LEqual (RPIN, 0x04))
        {
            Scope (\_SB.PC00.RP05)
            {
                PowerResource (PCRP, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    If (LEqual (\_SB.PC00.DGCX, 0x03))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }
                                    ElseIf (LEqual (\_SB.PC00.DGCX, 0x04))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }

                                    Store (Zero, \_SB.PC00.TDGC) /* External reference */
                                    Store (Zero, \_SB.PC00.DGCX) /* External reference */
                                    Store (One, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGON ()
                                    Store (0x07, \_SB.PC00.RP08.CMDR) /* External reference */
                                    Store (Zero, \_SB.PC00.RP08.D0ST) /* External reference */
                                    Store (\_SB.PC00.DSSV, \_SB.PC00.RP08.PXSX.SSSV) /* External reference */
                                    If (LEqual (\_SB.PC00.NVGE, 0x11))
                                    {
                                        If (\_SB.PC00.OPTF)
                                        {
                                            Store (One, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                        Else
                                        {
                                            Store (Zero, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                    }

                                    Store (One, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGON ()
                                Store (One, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                            }
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    CreateField (\_SB.PC00.TGPC, Zero, 0x03, GPPC)
                                    If (LEqual (ToInteger (GPPC), One))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }
                                    ElseIf (LEqual (ToInteger (GPPC), 0x02))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }

                                    Store (Zero, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGOF ()
                                    Store (Zero, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGOF ()
                                Store (Zero, _STA) /* \_SB_.PC00.RP05.PCRP._STA */
                            }
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PCRP
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    PCRP
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PCRP
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Device (PEGA)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }
            }

            Scope (\_SB.PC00.RP05.PXSX)
            {
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (Zero, \_SB.PC00.RP05.PXSX._ADR) /* External reference */
                    If (CondRefOf (\_SB.PC00.NINI))
                    {
                        \_SB.PC00.NINI ()
                    }
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    \_SB.PC00.HGON ()
                    Notify (\_SB.PC00.RP05, Zero) // Bus Check
                    Return (Zero)
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    \_SB.PC00.HGOF ()
                    Notify (\_SB.PC00.RP05, Zero) // Bus Check
                    Return (Zero)
                }
            }
        }
        ElseIf (LEqual (RPIN, 0x07))
        {
            Scope (\_SB.PC00.RP08)
            {
                PowerResource (PCRP, 0x00, 0x0000)
                {
                    Name (_STA, One)  // _STA: Status
                    Method (_ON, 0, Serialized)  // _ON_: Power On
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    If (LEqual (\_SB.PC00.DGCX, 0x03))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }
                                    ElseIf (LEqual (\_SB.PC00.DGCX, 0x04))
                                    {
                                        \_SB.PC00.GC6O ()
                                    }

                                    Store (Zero, \_SB.PC00.TDGC) /* External reference */
                                    Store (Zero, \_SB.PC00.DGCX) /* External reference */
                                    Store (One, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGON ()
                                    Store (0x07, \_SB.PC00.RP08.CMDR) /* External reference */
                                    Store (Zero, \_SB.PC00.RP08.D0ST) /* External reference */
                                    Store (\_SB.PC00.DSSV, \_SB.PC00.RP08.PXSX.SSSV) /* External reference */
                                    If (LEqual (\_SB.PC00.NVGE, 0x11))
                                    {
                                        If (\_SB.PC00.OPTF)
                                        {
                                            Store (One, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                        Else
                                        {
                                            Store (Zero, \_SB.PC00.RP08.PXSX.HDAE) /* External reference */
                                        }
                                    }

                                    Store (One, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGON ()
                                Store (One, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                            }
                        }
                    }

                    Method (_OFF, 0, Serialized)  // _OFF: Power Off
                    {
                        If (LNotEqual (OSYS, 0x07D9))
                        {
                            If (LEqual (DGPV, 0x10DE))
                            {
                                If (LEqual (\_SB.PC00.TDGC, One))
                                {
                                    CreateField (\_SB.PC00.TGPC, Zero, 0x03, GPPC)
                                    If (LEqual (ToInteger (GPPC), One))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }
                                    ElseIf (LEqual (ToInteger (GPPC), 0x02))
                                    {
                                        \_SB.PC00.GC6I ()
                                    }

                                    Store (Zero, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                                }
                                Else
                                {
                                    \_SB.PC00.HGOF ()
                                    Store (Zero, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                                }
                            }
                            Else
                            {
                                \_SB.PC00.HGOF ()
                                Store (Zero, _STA) /* \_SB_.PC00.RP08.PCRP._STA */
                            }
                        }
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    PCRP
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    PCRP
                })
                Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
                {
                    PCRP
                })
                Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                {
                    Return (0x04)
                }

                Device (PEGA)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                    {
                        Return (GPRW (0x69, 0x04))
                    }
                }
            }

            Scope (\_SB.PC00.RP08.PXSX)
            {
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    Store (Zero, \_SB.PC00.RP08.PXSX._ADR) /* External reference */
                    If (CondRefOf (\_SB.PC00.NINI))
                    {
                        \_SB.PC00.NINI ()
                    }
                }

                Method (_ON, 0, Serialized)  // _ON_: Power On
                {
                    \_SB.PC00.HGON ()
                    Notify (\_SB.PC00.RP08, Zero) // Bus Check
                    Return (Zero)
                }

                Method (_OFF, 0, Serialized)  // _OFF: Power Off
                {
                    \_SB.PC00.HGOF ()
                    Notify (\_SB.PC00.RP08, Zero) // Bus Check
                    Return (Zero)
                }
            }
        }

        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        OperationRegion (RPCF, SystemMemory, RPBA, 0x1000)
        Field (RPCF, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x18), 
            PRBN,   8, 
            SCBN,   8, 
            Offset (0x50), 
            ASPN,   2, 
                ,   2, 
            LKDN,   1, 
            Offset (0x328), 
                ,   19, 
            LKSN,   4
        }

        OperationRegion (RTPN, SystemMemory, Add (\XBAS, ShiftLeft (SCBN, 0x14)), 0xF0)
        Field (RTPN, AnyAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x0B), 
            CBCN,   8, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16
        }

        OperationRegion (PCAN, SystemMemory, Add (Add (\XBAS, ShiftLeft (SCBN, 0x14)), \EECP), 0x14)
        Field (PCAN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTR,   16
        }

        OperationRegion (PCBN, SystemMemory, Add (Add (Add (\XBAS, ShiftLeft (SCBN, 0x14)), 0x1000), 
            \EECP), 0x14)
        Field (PCBN, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTZ,   16
        }

        Method (HGON, 0, Serialized)
        {
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            HGPO (PWE0, PWG0, PWA0, One)
            Sleep (DLPW)
            HGPO (HRE0, HRG0, HRA0, Zero)
            Sleep (DLHR)
            Store (Zero, LKDN) /* \_SB_.PC00.LKDN */
            Store (Zero, TCNT) /* \_SB_.PC00.TCNT */
            While (LLess (TCNT, LDLY))
            {
                If (LGreaterEqual (LKSN, 0x07))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT) /* \_SB_.PC00.TCNT */
            }

            If (LEqual (DGPV, 0x10DE))
            {
                Store (\_SB.PC00.RP08.PXSX.LTRE, \_SB.PC00.RP08.LREN) /* External reference */
                Store (One, \_SB.PC00.RP08.CEDR) /* External reference */
            }

            Store (HVID, SVID) /* \_SB_.PC00.SVID */
            Store (HDID, SDID) /* \_SB_.PC00.SDID */
            Or (And (ELCT, 0x43), And (LCTR, 0xFFBC), LCTR) /* \_SB_.PC00.LCTR */
            Or (And (ELCT, 0x43), And (LCTZ, 0xFFBC), LCTZ) /* \_SB_.PC00.LCTZ */
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            If (LEqual (DGPV, 0x10DE))
            {
                Store (\_SB.PC00.RP08.LREN, \_SB.PC00.RP08.PXSX.LTRE) /* External reference */
            }

            Store (LCTR, ELCT) /* \_SB_.PC00.ELCT */
            Store (SVID, HVID) /* \_SB_.PC00.HVID */
            Store (SDID, HDID) /* \_SB_.PC00.HDID */
            Store (One, LKDN) /* \_SB_.PC00.LKDN */
            Store (Zero, TCNT) /* \_SB_.PC00.TCNT */
            While (LLess (TCNT, LDLY))
            {
                If (LGreaterEqual (LKSN, Zero))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT) /* \_SB_.PC00.TCNT */
            }

            HGPO (HRE0, HRG0, HRA0, One)
            Sleep (DLHR)
            HGPO (PWE0, PWG0, PWA0, Zero)
            Return (Zero)
        }

        Method (HGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (HGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
            }

            And (Local0, One, Local0)
            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HGPI (SGGP, PWE0, PWG0, PWA0), Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HGPI (SGGP, PWE0, PWG0, PWA0), One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }
}

