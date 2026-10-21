/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt7.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000094D (2381)
 *     Revision         0x02
 *     Checksum         0xAD
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00003000)
{
    External (_SB_.CSMI, MethodObj)    // 2 Arguments
    External (_SB_.PC00.LPCB.EC0_, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_.ADPT, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BAM0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BCG0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BDC0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BFC0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BFDT, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.BOL0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BPC0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BRC0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.BTY0, IntObj)
    External (_SB_.PC00.LPCB.EC0_.CAVR, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.ESMB, IntObj)
    External (_SB_.PC00.LPCB.EC0_.ESMC, MethodObj)    // 1 Arguments
    External (_SB_.PC00.LPCB.EC0_.ESMS, IntObj)
    External (_SB_.PC00.LPCB.EC0_.IDFD, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.SFNO, UnknownObj)
    External (_SB_.PC00.LPCB.EC0_.STDT, UnknownObj)
    External (BFDT, IntObj)
    External (ESMB, IntObj)
    External (ESMS, IntObj)
    External (IDFD, IntObj)
    External (STDT, IntObj)

    Scope (\_SB.PC00.LPCB.EC0)
    {
        Name (CFWV, "00.00.20")
        Name (SMIV, 0x20)
        Name (CTSL, Package (0x0B)
        {
            0x13, 
            0x14, 
            0x15, 
            0x16, 
            0x17, 
            0x20, 
            0x21, 
            0x22, 
            0x24, 
            0x25, 
            0x28
        })
        Mutex (CFMX, 0x00)
        Method (CFUN, 4, Serialized)
        {
            Name (FUNN, Zero)
            CreateWordField (Arg2, Zero, INDA)
            Store (Zero, STDT) /* External reference */
            Store (Zero, BFDT) /* External reference */
            Store (DerefOf (Index (Arg0, Zero)), FUNN) /* \_SB_.PC00.LPCB.EC0_.CFUN.FUNN */
            Switch (FUNN)
            {
                Case (0x10)
                {
                    Store (One, STDT) /* External reference */
                    Switch (ToInteger (Arg1))
                    {
                        Case (One)
                        {
                            Store (INDA, CAVR) /* External reference */
                        }
                        Case (0x02)
                        {
                            Store (CFWV, BFDT) /* External reference */
                        }
                        Case (0x03)
                        {
                            Store (SMIV, BFDT) /* External reference */
                        }
                        Case (0x04)
                        {
                            Store (0x05, BFDT) /* External reference */
                        }
                        Default
                        {
                            Store (0x8000, STDT) /* External reference */
                        }

                    }
                }
                Case (0x12)
                {
                    Store (Buffer (0x80){}, Local1)
                    Store (IDFD, Local2)
                    Store (One, STDT) /* External reference */
                    Switch (ToInteger (Arg1))
                    {
                        Case (One)
                        {
                            Store (DerefOf (Index (Local2, 0x08)), Index (Local1, Zero))
                            Store (DerefOf (Index (Local2, 0x09)), Index (Local1, One))
                            Store (DerefOf (Index (Local2, 0x0A)), Index (Local1, 0x02))
                            Store (DerefOf (Index (Local2, 0x0B)), Index (Local1, 0x03))
                            Store (Local1, BFDT) /* External reference */
                        }
                        Case (0x02)
                        {
                            Store (DerefOf (Index (Local2, 0x38)), Index (Local1, Zero))
                            Store (DerefOf (Index (Local2, 0x3A)), Index (Local1, One))
                            Store (DerefOf (Index (Local2, 0x3B)), Index (Local1, 0x02))
                            Store (DerefOf (Index (Local2, 0x3D)), Index (Local1, 0x03))
                            Store (Local1, BFDT) /* External reference */
                        }
                        Case (0x03)
                        {
                            Store (Local2, BFDT) /* External reference */
                        }
                        Default
                        {
                            Store (0x8000, STDT) /* External reference */
                        }

                    }
                }
                Case (0x15)
                {
                    CreateWordField (Arg1, Zero, SFUN)
                    Switch (SFUN)
                    {
                        Case (0x9001)
                        {
                        }
                        Case (0x9002)
                        {
                            Store (Zero, STDT) /* External reference */
                            Store (Zero, BFDT) /* External reference */
                            Store (0x02, BFDT) /* External reference */
                            Store (One, STDT) /* External reference */
                        }
                        Case (0x9000)
                        {
                            \_SB.PC00.LPCB.EC0.ESMC (Arg2)
                            If (LNotEqual (ESMS, 0xFF))
                            {
                                Store (Buffer (0x80){}, Local1)
                                Store (0x80, Index (Local1, Zero))
                                Store (ESMS, Index (Local1, One))
                                Store (ESMB, Local3)
                                Store (DerefOf (Index (Local3, Zero)), Index (Local1, 0x02))
                                Store (DerefOf (Index (Local3, One)), Index (Local1, 0x03))
                                Store (DerefOf (Index (Local3, 0x02)), Index (Local1, 0x04))
                                Store (DerefOf (Index (Local3, 0x03)), Index (Local1, 0x05))
                                Store (DerefOf (Index (Local3, 0x04)), Index (Local1, 0x06))
                                Store (DerefOf (Index (Local3, 0x05)), Index (Local1, 0x07))
                                Store (DerefOf (Index (Local3, 0x06)), Index (Local1, 0x08))
                                Store (DerefOf (Index (Local3, 0x07)), Index (Local1, 0x09))
                                Store (DerefOf (Index (Local3, 0x08)), Index (Local1, 0x0A))
                                Store (DerefOf (Index (Local3, 0x09)), Index (Local1, 0x0B))
                                Store (DerefOf (Index (Local3, 0x0A)), Index (Local1, 0x0C))
                                Store (DerefOf (Index (Local3, 0x0B)), Index (Local1, 0x0D))
                                Store (DerefOf (Index (Local3, 0x0C)), Index (Local1, 0x0E))
                                Store (DerefOf (Index (Local3, 0x0D)), Index (Local1, 0x0F))
                                Store (DerefOf (Index (Local3, 0x0E)), Index (Local1, 0x10))
                                Store (DerefOf (Index (Local3, 0x0F)), Index (Local1, 0x11))
                                Store (DerefOf (Index (Local3, 0x10)), Index (Local1, 0x12))
                                Store (DerefOf (Index (Local3, 0x11)), Index (Local1, 0x13))
                                Store (DerefOf (Index (Local3, 0x12)), Index (Local1, 0x14))
                                Store (DerefOf (Index (Local3, 0x13)), Index (Local1, 0x15))
                                Store (DerefOf (Index (Local3, 0x14)), Index (Local1, 0x16))
                                Store (DerefOf (Index (Local3, 0x15)), Index (Local1, 0x17))
                                Store (DerefOf (Index (Local3, 0x16)), Index (Local1, 0x18))
                                Store (DerefOf (Index (Local3, 0x17)), Index (Local1, 0x19))
                                Store (DerefOf (Index (Local3, 0x18)), Index (Local1, 0x1A))
                                Store (DerefOf (Index (Local3, 0x19)), Index (Local1, 0x1B))
                                Store (DerefOf (Index (Local3, 0x1A)), Index (Local1, 0x1C))
                                Store (DerefOf (Index (Local3, 0x1B)), Index (Local1, 0x1D))
                                Store (DerefOf (Index (Local3, 0x1C)), Index (Local1, 0x1E))
                                Store (DerefOf (Index (Local3, 0x1D)), Index (Local1, 0x1F))
                                Store (DerefOf (Index (Local3, 0x1E)), Index (Local1, 0x20))
                                Store (DerefOf (Index (Local3, 0x1F)), Index (Local1, 0x21))
                                Store (Local1, BFDT) /* External reference */
                                Store (One, STDT) /* External reference */
                            }
                            Else
                            {
                                Store (0x8000, STDT) /* External reference */
                            }
                        }
                        Default
                        {
                            Store (Arg1, SFNO) /* External reference */
                            Store (Arg2, BFDT) /* External reference */
                            \_SB.CSMI (0xCE, Arg0)
                        }

                    }
                }
                Case (0x26)
                {
                    Store (One, STDT) /* External reference */
                    Switch (ToInteger (Arg1))
                    {
                        Case (One)
                        {
                            Or (ShiftLeft (\_SB.PC00.LPCB.EC0.ADPT, 0x08), \_SB.PC00.LPCB.EC0.BOL0, BFDT) /* External reference */
                        }
                        Case (0x02)
                        {
                            If (LEqual (INDA, One))
                            {
                                Or (ShiftLeft (\_SB.PC00.LPCB.EC0.BAM0, One), \_SB.PC00.LPCB.EC0.BTY0, BFDT) /* External reference */
                            }
                            ElseIf (LEqual (INDA, 0x02)){}
                        }
                        Case (0x03)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (And (\_SB.PC00.LPCB.EC0.BOL0, One), BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Case (0x04)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (\_SB.PC00.LPCB.EC0.BDC0, BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Case (0x05)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (\_SB.PC00.LPCB.EC0.BFC0, BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Case (0x06)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (\_SB.PC00.LPCB.EC0.BRC0, BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Case (0x07)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (\_SB.PC00.LPCB.EC0.BCG0, BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Case (0x08)
                        {
                            If (LEqual (INDA, One))
                            {
                                Store (\_SB.PC00.LPCB.EC0.BPC0, BFDT) /* External reference */
                            }
                            Else
                            {
                            }
                        }
                        Default
                        {
                            Store (0x8000, STDT) /* External reference */
                        }

                    }
                }
                Default
                {
                    If (LNotEqual (Match (CTSL, MEQ, DerefOf (Index (Arg0, Zero)), MTR, 
                        Zero, Zero), Ones))
                    {
                        Store (Arg1, SFNO) /* External reference */
                        Store (Arg2, BFDT) /* External reference */
                        \_SB.CSMI (0xCE, Arg0)
                    }
                    Else
                    {
                        Store (0x8000, STDT) /* External reference */
                    }
                }

            }
        }

        Name (OCSL, Package (0x01)
        {
            0x90
        })
        Method (PFUN, 4, Serialized)
        {
            If (LNotEqual (Match (OCSL, MEQ, DerefOf (Index (Arg0, Zero)), MTR, 
                Zero, Zero), Ones))
            {
                Store (Arg1, SFNO) /* External reference */
                Store (Arg2, BFDT) /* External reference */
                \_SB.CSMI (0xCF, Arg0)
            }
            Else
            {
                Store (0x8000, STDT) /* External reference */
            }
        }

        Method (CMFC, 4, Serialized)
        {
            Name (RTVL, Package (0x04)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Store ("=== In CMFC method ===", Debug)
            If (LEqual (ObjectType (Arg0), One))
            {
                Store (0x8000, Index (RTVL, Zero))
            }
            ElseIf (LLess (DerefOf (Index (Arg0, Zero)), 0xFF))
            {
                Store (Buffer (0x82){}, Local1)
                CreateWordField (Local1, Zero, RTST)
                CreateField (Local1, 0x10, 0x0400, RTDT)
                If (LAnd (LLessEqual (ToInteger (Arg0), 0xBF), LGreaterEqual (ToInteger (Arg0
                    ), 0x90)))
                {
                    PFUN (Arg0, Arg1, Arg2, Arg3)
                }
                Else
                {
                    CFUN (Arg0, Arg1, Arg2, Arg3)
                }

                Store (STDT, RTST) /* \_SB_.PC00.LPCB.EC0_.CMFC.RTST */
                Store (BFDT, RTDT) /* \_SB_.PC00.LPCB.EC0_.CMFC.RTDT */
                Return (Local1)
            }
            Else
            {
                Store (0x8000, Index (RTVL, Zero))
            }

            Return (RTVL) /* \_SB_.PC00.LPCB.EC0_.CMFC.RTVL */
        }
    }
}

