/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt11.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000077B (1915)
 *     Revision         0x02
 *     Checksum         0x14
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "INTC6001")  // _HID: Hardware ID
            Name (_CID, "MSFT0101" /* TPM 2.0 Security Device */)  // _CID: Compatible ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TPMR, SystemMemory, 0xFED40000, 0x5000)
            Field (TPMR, AnyAcc, NoLock, Preserve)
            {
                ACC0,   8, 
                Offset (0x08), 
                INTE,   32, 
                INTV,   8, 
                Offset (0x10), 
                INTS,   32, 
                INTF,   32, 
                STS0,   32, 
                Offset (0x24), 
                FIFO,   32, 
                Offset (0x30), 
                TID0,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }

            OperationRegion (TNVS, SystemMemory, 0x4390B000, 0x30)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32, 
                CAIN,   8, 
                UCRQ,   32, 
                IRQN,   32, 
                SFRB,   8
            }

            Name (RESS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x00000001,
                    0x00000002,
                    0x00000003,
                    0x00000004,
                    0x00000005,
                    0x00000006,
                    0x00000007,
                    0x00000008,
                    0x00000009,
                    0x0000000A,
                }
            })
            Name (RESL, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, )
                {
                    0x00000001,
                    0x00000002,
                    0x00000003,
                    0x00000004,
                    0x00000005,
                    0x00000006,
                    0x00000007,
                    0x00000008,
                    0x00000009,
                    0x0000000A,
                    0x0000000B,
                    0x0000000C,
                    0x0000000D,
                    0x0000000E,
                    0x0000000F,
                }
            })
            Name (RES0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y00)
                {
                    0x0000000C,
                }
            })
            Name (RES1, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFED40000,         // Address Base
                    0x00005000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (LEqual (IRQN, Zero))
                {
                    Return (RES1) /* \_SB_.TPM_.RES1 */
                }
                Else
                {
                    CreateDWordField (RES0, \_SB.TPM._Y00._INT, LIRQ)  // _INT: Interrupts
                    Store (IRQN, LIRQ) /* \_SB_.TPM_._CRS.LIRQ */
                    Return (RES0) /* \_SB_.TPM_.RES0 */
                }
            }

            OperationRegion (CONA, SystemMemory, 0x4390B030, 0x30)
            Field (CONA, DWordAcc, NoLock, Preserve)
            {
                HRTB,   32, 
                ERRR,   32, 
                CLFG,   32, 
                STA1,   32, 
                AccessAs (QWordAcc, 0x00), 
                INTC,   64, 
                AccessAs (DWordAcc, 0x00), 
                CMSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                CMDB,   64, 
                AccessAs (DWordAcc, 0x00), 
                RPSZ,   32, 
                AccessAs (QWordAcc, 0x00), 
                RESP,   64
            }

            OperationRegion (STRT, SystemMemory, 0x4390B060, 0x04)
            Field (STRT, AnyAcc, NoLock, Preserve)
            {
                SMTD,   32
            }

            Method (_SRS, 1, Serialized)  // _SRS: Set Resource Settings
            {
                If (LNotEqual (IRQN, Zero))
                {
                    CreateDWordField (Arg0, 0x11, IRQ0)
                    CreateDWordField (RES0, \_SB.TPM._Y00._INT, LIRQ)  // _INT: Interrupts
                    Store (IRQ0, LIRQ) /* \_SB_.TPM_._SRS.LIRQ */
                    Store (IRQ0, IRQN) /* \_SB_.TPM_.IRQN */
                    CreateBitField (Arg0, 0x79, ITRG)
                    CreateBitField (RES0, \_SB.TPM._Y00._HE, LTRG)  // _HE_: High-Edge
                    Store (ITRG, LTRG) /* \_SB_.TPM_._SRS.LTRG */
                    CreateBitField (Arg0, 0x7A, ILVL)
                    CreateBitField (RES0, \_SB.TPM._Y00._LL, LLVL)  // _LL_: Low Level
                    Store (ILVL, LLVL) /* \_SB_.TPM_._SRS.LLVL */
                    If (LOr (LEqual (And (TID0, 0x0F), Zero), LEqual (And (TID0, 0x0F
                        ), 0x0F)))
                    {
                        If (LLess (IRQ0, 0x10))
                        {
                            Store (And (IRQ0, 0x0F), INTV) /* \_SB_.TPM_.INTV */
                        }

                        If (LEqual (ITRG, One))
                        {
                            Or (INTE, 0x10, INTE) /* \_SB_.TPM_.INTE */
                        }
                        Else
                        {
                            And (INTE, 0xFFFFFFEF, INTE) /* \_SB_.TPM_.INTE */
                        }

                        If (LEqual (ILVL, One))
                        {
                            Or (INTE, 0x08, INTE) /* \_SB_.TPM_.INTE */
                        }
                        Else
                        {
                            And (INTE, 0xFFFFFFF7, INTE) /* \_SB_.TPM_.INTE */
                        }
                    }
                }
            }

            Method (_PRS, 0, Serialized)  // _PRS: Possible Resource Settings
            {
                If (LEqual (IRQN, Zero))
                {
                    Return (RES1) /* \_SB_.TPM_.RES1 */
                }
                ElseIf (LEqual (SFRB, Zero))
                {
                    Return (RESL) /* \_SB_.TPM_.RESL */
                }
                Else
                {
                    Return (RESS) /* \_SB_.TPM_.RESS */
                }
            }

            Method (PTS, 1, Serialized)
            {
                If (LAnd (LLess (Arg0, 0x06), LGreater (Arg0, 0x03)))
                {
                    If (LNot (And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (ACC0, 0xFF))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (HINF, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If (LEqual (_STA (), Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.3")
                    }
                    Case (0x02)
                    {
                        Store (DerefOf (Index (Arg1, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (Zero, PPRM) /* \_SB_.TPM_.PPRM */
                        Store (0x02, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        Store (PPRQ, Index (TPM2, One))
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        Store (0x05, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (LPPR, Index (TPM3, One))
                        Store (PPRP, Index (TPM3, 0x02))
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        Store (0x07, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg1, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (Zero, PPRM) /* \_SB_.TPM_.PPRM */
                        If (LEqual (PPRQ, 0x17))
                        {
                            Store (DerefOf (Index (Arg1, One)), PPRM) /* \_SB_.TPM_.PPRM */
                        }

                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        Store (0x08, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg1, Zero)), UCRQ) /* \_SB_.TPM_.UCRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 2, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Store (DerefOf (Index (Arg1, Zero)), MORD) /* \_SB_.TPM_.MORD */
                        Store (One, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (OASM, 1, Serialized)
            {
                Switch (ToInteger (Arg0))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (WTME, Zero)
                        If (LEqual (SMTD, 0x07))
                        {
                            Store (One, CREQ) /* \_SB_.TPM_.CREQ */
                            While (LAnd (LLessEqual (WTME, 0xC8), LNotEqual (And (CSTS, 0x02), 
                                Zero)))
                            {
                                Sleep (One)
                                Increment (WTME)
                            }

                            Store (0x02, HCMD) /* \_SB_.TPM_.HCMD */
                        }
                        Else
                        {
                            Store (CAIN, IOB2) /* \_SB_.TPM_.IOB2 */
                            While (LEqual (STA1, One))
                            {
                                If (LEqual (And (STS0, 0x90), 0x90))
                                {
                                    Store (CAIN, IOB2) /* \_SB_.TPM_.IOB2 */
                                    Return (Zero)
                                }

                                If (LEqual (CLFG, One))
                                {
                                    If (LEqual (WTME, 0x00015F90))
                                    {
                                        Break
                                    }

                                    Increment (WTME)
                                }

                                Sleep (One)
                            }

                            Store (Zero, STA1) /* \_SB_.TPM_.STA1 */
                            Return (Zero)
                        }
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* TPM Hardware Information */))
                {
                    Return (HINF (Arg2))
                }

                If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* TPM Memory Clear */))
                {
                    Return (TMCI (Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* TPM Start Method */))
                {
                    Return (OASM (Arg2))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

