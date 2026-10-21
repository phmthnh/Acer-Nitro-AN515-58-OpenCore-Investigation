/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt9.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001263 (4707)
 *     Revision         0x02
 *     Checksum         0x08
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.PC00.LPCB.EC0_.CCI0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CCI1, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CCI2, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CCI3, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL1, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL2, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL3, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL4, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL5, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL6, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CTL7, IntObj)
    External (_SB_.PC00.LPCB.EC0_.ERCD, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC0_.MGI0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI1, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI2, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI3, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI4, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI5, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI6, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI7, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI8, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGI9, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGIA, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGIB, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGIC, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGID, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGIE, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGIF, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO1, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO2, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO3, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO4, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO5, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO6, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO7, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO8, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGO9, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOA, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOB, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOC, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOD, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOE, IntObj)
    External (_SB_.PC00.LPCB.EC0_.MGOF, IntObj)
    External (CUCB, UnknownObj)
    External (TP1D, UnknownObj)
    External (TP1P, UnknownObj)
    External (TP1T, UnknownObj)
    External (TP2D, UnknownObj)
    External (TP2P, UnknownObj)
    External (TP2T, UnknownObj)
    External (TP3D, UnknownObj)
    External (TP3P, UnknownObj)
    External (TP3T, UnknownObj)
    External (TP4D, UnknownObj)
    External (TP4P, UnknownObj)
    External (TP4T, UnknownObj)
    External (TP5D, UnknownObj)
    External (TP5P, UnknownObj)
    External (TP5T, UnknownObj)
    External (TP6D, UnknownObj)
    External (TP6P, UnknownObj)
    External (TP6T, UnknownObj)
    External (XDCE, UnknownObj)

    Scope (\_SB)
    {
        Device (UBTC)
        {
            Name (_HID, EisaId ("USBC000"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0CA0"))  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "USB Type C")  // _DDN: DOS Device Name
            Name (_ADR, Zero)  // _ADR: Address
            Name (UPC4, Package (0x04)
            {
                0xFF, 
                0x09, 
                Zero, 
                Zero
            })
            Name (PLD4, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                    /* 0008 */  0x71, 0x0C, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00   // q.......
                }
            })
            Name (PLD3, Package (0x01)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x01, 0xC6, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00,  // ..r.....
                    /* 0008 */  0x69, 0x0C, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00   // i.......
                }
            })
            Name (CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y00)
            })
            Method (RUCC, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (\_SB.UBTC.CR01._UPC ())
                        }
                        Else
                        {
                            Return (\_SB.UBTC.CR01._PLD ())
                        }
                    }
                    Default
                    {
                        If (LEqual (Arg1, One))
                        {
                            Return (TUPC (Zero))
                        }
                        Else
                        {
                            Return (TPLD (Zero, Zero))
                        }
                    }

                }
            }

            Method (FPMN, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (One)
                    {
                        ShiftRight (TP1D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP1D, One, Local1)
                        Store (TP1P, Local2)
                        Store (TP1T, Local3)
                    }
                    Case (0x02)
                    {
                        ShiftRight (TP2D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP2D, One, Local1)
                        Store (TP2P, Local2)
                        Store (TP2T, Local3)
                    }
                    Case (0x03)
                    {
                        ShiftRight (TP3D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP3D, One, Local1)
                        Store (TP3P, Local2)
                        Store (TP3T, Local3)
                    }
                    Case (0x04)
                    {
                        ShiftRight (TP4D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP4D, One, Local1)
                        Store (TP4P, Local2)
                        Store (TP4T, Local3)
                    }
                    Case (0x05)
                    {
                        ShiftRight (TP5D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP5D, One, Local1)
                        Store (TP5P, Local2)
                        Store (TP5T, Local3)
                    }
                    Case (0x06)
                    {
                        ShiftRight (TP6D, One, Local0)
                        And (Local0, 0x03, Local0)
                        And (TP6D, One, Local1)
                        Store (TP6P, Local2)
                        Store (TP6T, Local3)
                    }
                    Default
                    {
                        Store (0xFF, Local0)
                        Store (Zero, Local1)
                        Store (Zero, Local2)
                        Store (Zero, Local3)
                    }

                }

                If (LEqual (Local0, Zero))
                {
                    Return (Local2)
                }
                ElseIf (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
                {
                    If (LEqual (Local1, One))
                    {
                        Return (Local2)
                    }
                    Else
                    {
                        Return (Local3)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                Store (One, REV) /* \_SB_.UBTC.TPLD.REV_ */
                CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                Store (Arg0, VISI) /* \_SB_.UBTC.TPLD.VISI */
                CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                Store (Arg1, GPOS) /* \_SB_.UBTC.TPLD.GPOS */
                CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
                Store (One, SHAP) /* \_SB_.UBTC.TPLD.SHAP */
                CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
                Store (0x08, WID) /* \_SB_.UBTC.TPLD.WID_ */
                CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
                Store (0x03, HGT) /* \_SB_.UBTC.TPLD.HGT_ */
                Return (PCKG) /* \_SB_.UBTC.TPLD.PCKG */
            }

            Method (TUPC, 1, Serialized)
            {
                Name (PCKG, Package (0x04)
                {
                    One, 
                    Zero, 
                    Zero, 
                    Zero
                })
                Store (Arg0, Index (PCKG, One))
                Return (PCKG) /* \_SB_.UBTC.TUPC.PCKG */
            }

            Device (CR01)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                {
                    Return (PLD4) /* \_SB_.UBTC.PLD4 */
                }

                Method (_UPC, 0, NotSerialized)  // _UPC: USB Port Capabilities
                {
                    Return (UPC4) /* \_SB_.UBTC.UPC4 */
                }
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (CRS, \_SB.UBTC._Y00._BAS, CBAS)  // _BAS: Base Address
                Store (CUCB, CBAS) /* \_SB_.UBTC._CRS.CBAS */
                Return (CRS) /* \_SB_.UBTC.CRS_ */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            OperationRegion (USBC, SystemMemory, CUCB, 0x38)
            Field (USBC, ByteAcc, Lock, Preserve)
            {
                VER1,   8, 
                VER2,   8, 
                RSV1,   8, 
                RSV2,   8, 
                CCI0,   8, 
                CCI1,   8, 
                CCI2,   8, 
                CCI3,   8, 
                CTL0,   8, 
                CTL1,   8, 
                CTL2,   8, 
                CTL3,   8, 
                CTL4,   8, 
                CTL5,   8, 
                CTL6,   8, 
                CTL7,   8, 
                MGI0,   8, 
                MGI1,   8, 
                MGI2,   8, 
                MGI3,   8, 
                MGI4,   8, 
                MGI5,   8, 
                MGI6,   8, 
                MGI7,   8, 
                MGI8,   8, 
                MGI9,   8, 
                MGIA,   8, 
                MGIB,   8, 
                MGIC,   8, 
                MGID,   8, 
                MGIE,   8, 
                MGIF,   8, 
                MGO0,   8, 
                MGO1,   8, 
                MGO2,   8, 
                MGO3,   8, 
                MGO4,   8, 
                MGO5,   8, 
                MGO6,   8, 
                MGO7,   8, 
                MGO8,   8, 
                MGO9,   8, 
                MGOA,   8, 
                MGOB,   8, 
                MGOC,   8, 
                MGOD,   8, 
                MGOE,   8, 
                MGOF,   8
            }

            Mutex (UBSY, 0x00)
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("6f8398c2-7ca4-11e4-ad36-631042b5008f") /* Unknown UUID */))
                {
                    Switch (ToInteger (Arg2))
                    {
                        Case (Zero)
                        {
                            Return (Buffer (One)
                            {
                                 0x0F                                             // .
                            })
                        }
                        Case (One)
                        {
                            Acquire (UBSY, 0xFFFF)
                            Store (MGO0, \_SB.PC00.LPCB.EC0.MGO0) /* External reference */
                            Store (MGO1, \_SB.PC00.LPCB.EC0.MGO1) /* External reference */
                            Store (MGO2, \_SB.PC00.LPCB.EC0.MGO2) /* External reference */
                            Store (MGO3, \_SB.PC00.LPCB.EC0.MGO3) /* External reference */
                            Store (MGO4, \_SB.PC00.LPCB.EC0.MGO4) /* External reference */
                            Store (MGO5, \_SB.PC00.LPCB.EC0.MGO5) /* External reference */
                            Store (MGO6, \_SB.PC00.LPCB.EC0.MGO6) /* External reference */
                            Store (MGO7, \_SB.PC00.LPCB.EC0.MGO7) /* External reference */
                            Store (MGO8, \_SB.PC00.LPCB.EC0.MGO8) /* External reference */
                            Store (MGO9, \_SB.PC00.LPCB.EC0.MGO9) /* External reference */
                            Store (MGOA, \_SB.PC00.LPCB.EC0.MGOA) /* External reference */
                            Store (MGOB, \_SB.PC00.LPCB.EC0.MGOB) /* External reference */
                            Store (MGOC, \_SB.PC00.LPCB.EC0.MGOC) /* External reference */
                            Store (MGOD, \_SB.PC00.LPCB.EC0.MGOD) /* External reference */
                            Store (MGOE, \_SB.PC00.LPCB.EC0.MGOE) /* External reference */
                            Store (MGOF, \_SB.PC00.LPCB.EC0.MGOF) /* External reference */
                            Store (CTL0, \_SB.PC00.LPCB.EC0.CTL0) /* External reference */
                            Store (CTL1, \_SB.PC00.LPCB.EC0.CTL1) /* External reference */
                            Store (CTL2, \_SB.PC00.LPCB.EC0.CTL2) /* External reference */
                            Store (CTL3, \_SB.PC00.LPCB.EC0.CTL3) /* External reference */
                            Store (CTL4, \_SB.PC00.LPCB.EC0.CTL4) /* External reference */
                            Store (CTL5, \_SB.PC00.LPCB.EC0.CTL5) /* External reference */
                            Store (CTL6, \_SB.PC00.LPCB.EC0.CTL6) /* External reference */
                            Store (CTL7, \_SB.PC00.LPCB.EC0.CTL7) /* External reference */
                            Store (Buffer (0x06){}, Local0)
                            Store (0x59, Index (Local0, Zero))
                            Store (0xB1, Index (Local0, One))
                            \_SB.PC00.LPCB.EC0.ERCD (Local0)
                            Release (UBSY)
                        }
                        Case (0x02)
                        {
                            Store (\_SB.PC00.LPCB.EC0.MGI0, MGI0) /* \_SB_.UBTC.MGI0 */
                            Store (\_SB.PC00.LPCB.EC0.MGI1, MGI1) /* \_SB_.UBTC.MGI1 */
                            Store (\_SB.PC00.LPCB.EC0.MGI2, MGI2) /* \_SB_.UBTC.MGI2 */
                            Store (\_SB.PC00.LPCB.EC0.MGI3, MGI3) /* \_SB_.UBTC.MGI3 */
                            Store (\_SB.PC00.LPCB.EC0.MGI4, MGI4) /* \_SB_.UBTC.MGI4 */
                            Store (\_SB.PC00.LPCB.EC0.MGI5, MGI5) /* \_SB_.UBTC.MGI5 */
                            Store (\_SB.PC00.LPCB.EC0.MGI6, MGI6) /* \_SB_.UBTC.MGI6 */
                            Store (\_SB.PC00.LPCB.EC0.MGI7, MGI7) /* \_SB_.UBTC.MGI7 */
                            Store (\_SB.PC00.LPCB.EC0.MGI8, MGI8) /* \_SB_.UBTC.MGI8 */
                            Store (\_SB.PC00.LPCB.EC0.MGI9, MGI9) /* \_SB_.UBTC.MGI9 */
                            Store (\_SB.PC00.LPCB.EC0.MGIA, MGIA) /* \_SB_.UBTC.MGIA */
                            Store (\_SB.PC00.LPCB.EC0.MGIB, MGIB) /* \_SB_.UBTC.MGIB */
                            Store (\_SB.PC00.LPCB.EC0.MGIC, MGIC) /* \_SB_.UBTC.MGIC */
                            Store (\_SB.PC00.LPCB.EC0.MGID, MGID) /* \_SB_.UBTC.MGID */
                            Store (\_SB.PC00.LPCB.EC0.MGIE, MGIE) /* \_SB_.UBTC.MGIE */
                            Store (\_SB.PC00.LPCB.EC0.MGIF, MGIF) /* \_SB_.UBTC.MGIF */
                            Store (\_SB.PC00.LPCB.EC0.CCI0, CCI0) /* \_SB_.UBTC.CCI0 */
                            Store (\_SB.PC00.LPCB.EC0.CCI1, CCI1) /* \_SB_.UBTC.CCI1 */
                            Store (\_SB.PC00.LPCB.EC0.CCI2, CCI2) /* \_SB_.UBTC.CCI2 */
                            Store (\_SB.PC00.LPCB.EC0.CCI3, CCI3) /* \_SB_.UBTC.CCI3 */
                        }
                        Case (0x03)
                        {
                            Return (XDCE) /* External reference */
                        }

                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }

        Method (UCEV, 0, Serialized)
        {
            Store (\_SB.PC00.LPCB.EC0.MGI0, \_SB.UBTC.MGI0)
            Store (\_SB.PC00.LPCB.EC0.MGI1, \_SB.UBTC.MGI1)
            Store (\_SB.PC00.LPCB.EC0.MGI2, \_SB.UBTC.MGI2)
            Store (\_SB.PC00.LPCB.EC0.MGI3, \_SB.UBTC.MGI3)
            Store (\_SB.PC00.LPCB.EC0.MGI4, \_SB.UBTC.MGI4)
            Store (\_SB.PC00.LPCB.EC0.MGI5, \_SB.UBTC.MGI5)
            Store (\_SB.PC00.LPCB.EC0.MGI6, \_SB.UBTC.MGI6)
            Store (\_SB.PC00.LPCB.EC0.MGI7, \_SB.UBTC.MGI7)
            Store (\_SB.PC00.LPCB.EC0.MGI8, \_SB.UBTC.MGI8)
            Store (\_SB.PC00.LPCB.EC0.MGI9, \_SB.UBTC.MGI9)
            Store (\_SB.PC00.LPCB.EC0.MGIA, \_SB.UBTC.MGIA)
            Store (\_SB.PC00.LPCB.EC0.MGIB, \_SB.UBTC.MGIB)
            Store (\_SB.PC00.LPCB.EC0.MGIC, \_SB.UBTC.MGIC)
            Store (\_SB.PC00.LPCB.EC0.MGID, \_SB.UBTC.MGID)
            Store (\_SB.PC00.LPCB.EC0.MGIE, \_SB.UBTC.MGIE)
            Store (\_SB.PC00.LPCB.EC0.MGIF, \_SB.UBTC.MGIF)
            Store (\_SB.PC00.LPCB.EC0.CCI0, \_SB.UBTC.CCI0)
            Store (\_SB.PC00.LPCB.EC0.CCI1, \_SB.UBTC.CCI1)
            Store (\_SB.PC00.LPCB.EC0.CCI2, \_SB.UBTC.CCI2)
            Store (\_SB.PC00.LPCB.EC0.CCI3, \_SB.UBTC.CCI3)
            Notify (UBTC, 0x80) // Status Change
        }
    }
}

