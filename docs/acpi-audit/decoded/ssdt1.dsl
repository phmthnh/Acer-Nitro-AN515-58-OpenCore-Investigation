/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt1.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000038C (908)
 *     Revision         0x02
 *     Checksum         0xFB
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00000001)
{
    External (PXAC, IntObj)
    External (PXDC, IntObj)
    External (PXFD, IntObj)
    External (PXUC, IntObj)
    External (PXWC, IntObj)

    Scope (\_SB)
    {
        Device (PMAX)
        {
            Name (_HID, "INT3533")  // _HID: Hardware ID
            Name (RTKS, "\\_SB.PC00.HDAS")
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Name (RTK0, 0x0BB8)
            Name (RTKX, 0x0000)
            Name (WFCS, "\\_SB.PC00.LNK0")
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Name (WFC0, 0x032A)
            Name (WFCX, 0x0000)
            Name (UFCS, "\\_SB.PC00.LNK1")
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Name (UFC0, 0x033E)
            Name (UFCX, 0x0000)
            Name (FLDS, "\\_SB.PC00.FLM0")
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Noop
            Name (FLD0, 0x2328)
            Name (FLDX, 0x0000)
            Name (DSMP, Package (0x04)
            {
                Package (0x02)
                {
                    "", 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            Zero, 
                            0xFFFF
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0xFFFF
                        }
                    }
                }, 

                Package (0x02)
                {
                    "", 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            Zero, 
                            0xFFFF
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0xFFFF
                        }
                    }
                }, 

                Package (0x02)
                {
                    "", 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            Zero, 
                            0xFFFF
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0xFFFF
                        }
                    }
                }, 

                Package (0x02)
                {
                    "", 
                    Package (0x02)
                    {
                        Package (0x02)
                        {
                            Zero, 
                            0xFFFF
                        }, 

                        Package (0x02)
                        {
                            One, 
                            0xFFFF
                        }
                    }
                }
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("2256364f-a3a9-4c9a-bcec-a34a34a57144") /* Unknown UUID */))
                {
                    Store (RTKS, Index (DerefOf (Index (DSMP, Zero)), Zero))
                    Store (RTK0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, Zero)), 
                        One)), Zero)), One))
                    Store (RTKX, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, Zero)), 
                        One)), One)), One))
                    Store (WFCS, Index (DerefOf (Index (DSMP, One)), Zero))
                    Store (WFC0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, One)), 
                        One)), Zero)), One))
                    Store (WFCX, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, One)), 
                        One)), One)), One))
                    Store (UFCS, Index (DerefOf (Index (DSMP, 0x02)), Zero))
                    Store (UFC0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, 0x02)), 
                        One)), Zero)), One))
                    Store (UFCX, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, 0x02)), 
                        One)), One)), One))
                    Store (FLDS, Index (DerefOf (Index (DSMP, 0x03)), Zero))
                    Store (FLD0, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, 0x03)), 
                        One)), Zero)), One))
                    Store (FLDX, Index (DerefOf (Index (DerefOf (Index (DerefOf (Index (DSMP, 0x03)), 
                        One)), One)), One))
                    If (LEqual (Arg1, Zero))
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (One)
                            {
                                 0x03                                             // .
                            })
                        }

                        If (LEqual (Arg2, One))
                        {
                            If (LEqual (PXAC, One))
                            {
                                Store (Package (0x02)
                                    {
                                        Package (0x02)
                                        {
                                            Zero, 
                                            Zero
                                        }, 

                                        Package (0x02)
                                        {
                                            One, 
                                            Zero
                                        }
                                    }, Index (DerefOf (Index (DSMP, Zero)), One))
                            }

                            If (LEqual (PXWC, One))
                            {
                                Store (Package (0x02)
                                    {
                                        Package (0x02)
                                        {
                                            Zero, 
                                            Zero
                                        }, 

                                        Package (0x02)
                                        {
                                            One, 
                                            Zero
                                        }
                                    }, Index (DerefOf (Index (DSMP, One)), One))
                            }

                            If (LEqual (PXUC, One))
                            {
                                Store (Package (0x02)
                                    {
                                        Package (0x02)
                                        {
                                            Zero, 
                                            Zero
                                        }, 

                                        Package (0x02)
                                        {
                                            One, 
                                            Zero
                                        }
                                    }, Index (DerefOf (Index (DSMP, 0x02)), One))
                            }

                            If (LEqual (PXFD, One))
                            {
                                Store (Package (0x02)
                                    {
                                        Package (0x02)
                                        {
                                            Zero, 
                                            Zero
                                        }, 

                                        Package (0x02)
                                        {
                                            One, 
                                            Zero
                                        }
                                    }, Index (DerefOf (Index (DSMP, 0x03)), One))
                            }

                            Return (DSMP) /* \_SB_.PMAX.DSMP */
                        }
                    }

                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (PXDC, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }
    }
}

