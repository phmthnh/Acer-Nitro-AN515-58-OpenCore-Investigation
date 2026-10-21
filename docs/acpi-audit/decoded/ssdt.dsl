/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000039E6 (14822)
 *     Revision         0x02
 *     Checksum         0xA8
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.AAC0, FieldUnitObj)
    External (_SB_.ACRT, FieldUnitObj)
    External (_SB_.APSV, FieldUnitObj)
    External (_SB_.CBMI, FieldUnitObj)
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.CLVL, FieldUnitObj)
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.CTC0, FieldUnitObj)
    External (_SB_.CTC1, FieldUnitObj)
    External (_SB_.CTC2, FieldUnitObj)
    External (_SB_.OSCP, IntObj)
    External (_SB_.PAGD, DeviceObj)
    External (_SB_.PAGD._PUR, PkgObj)
    External (_SB_.PAGD._STA, MethodObj)    // 0 Arguments
    External (_SB_.PC00, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_.CTMP, FieldUnitObj)
    External (_SB_.PC00.LPCB.EC0_.DPTI, FieldUnitObj)
    External (_SB_.PC00.LPCB.EC0_.EST1, FieldUnitObj)
    External (_SB_.PC00.LPCB.EC0_.EST2, FieldUnitObj)
    External (_SB_.PC00.LPCB.H_EC.CHRG, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.DGPU, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN2, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN3, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN4, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.SEN5, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.TFN1, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.TFN2, DeviceObj)
    External (_SB_.PC00.LPCB.H_EC.TFN3, DeviceObj)
    External (_SB_.PC00.MC__.MHBR, FieldUnitObj)
    External (_SB_.PC00.TCPU, DeviceObj)
    External (_SB_.PL10, FieldUnitObj)
    External (_SB_.PL11, FieldUnitObj)
    External (_SB_.PL12, FieldUnitObj)
    External (_SB_.PL20, FieldUnitObj)
    External (_SB_.PL21, FieldUnitObj)
    External (_SB_.PL22, FieldUnitObj)
    External (_SB_.PLW0, FieldUnitObj)
    External (_SB_.PLW1, FieldUnitObj)
    External (_SB_.PLW2, FieldUnitObj)
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TPC, IntObj)
    External (_SB_.PR00._TSD, MethodObj)    // 0 Arguments
    External (_SB_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
    External (_SB_.PR00.TSMC, PkgObj)
    External (_SB_.PR00.TSMF, PkgObj)
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (_SB_.PR16, ProcessorObj)
    External (_SB_.PR17, ProcessorObj)
    External (_SB_.PR18, ProcessorObj)
    External (_SB_.PR19, ProcessorObj)
    External (_SB_.PR20, ProcessorObj)
    External (_SB_.PR21, ProcessorObj)
    External (_SB_.PR22, ProcessorObj)
    External (_SB_.PR23, ProcessorObj)
    External (_SB_.PR24, ProcessorObj)
    External (_SB_.PR25, ProcessorObj)
    External (_SB_.PR26, ProcessorObj)
    External (_SB_.PR27, ProcessorObj)
    External (_SB_.PR28, ProcessorObj)
    External (_SB_.PR29, ProcessorObj)
    External (_SB_.PR30, ProcessorObj)
    External (_SB_.PR31, ProcessorObj)
    External (_SB_.SLPB, DeviceObj)
    External (_SB_.TAR0, FieldUnitObj)
    External (_SB_.TAR1, FieldUnitObj)
    External (_SB_.TAR2, FieldUnitObj)
    External (_SB_.TPWR, DeviceObj)
    External (_TZ_.ETMD, IntObj)
    External (_TZ_.TZ00, ThermalZoneObj)
    External (ACTT, IntObj)
    External (ATPC, IntObj)
    External (BATR, IntObj)
    External (CHGE, IntObj)
    External (CRTT, IntObj)
    External (DCFE, IntObj)
    External (DPTF, IntObj)
    External (FND1, IntObj)
    External (FND2, IntObj)
    External (FND3, IntObj)
    External (HIDW, MethodObj)    // 4 Arguments
    External (HIWC, MethodObj)    // 1 Arguments
    External (IN34, IntObj)
    External (IPCS, MethodObj)    // 7 Arguments
    External (ODV0, IntObj)
    External (ODV1, IntObj)
    External (ODV2, IntObj)
    External (ODV3, IntObj)
    External (ODV4, IntObj)
    External (ODV5, IntObj)
    External (PCHE, FieldUnitObj)
    External (PF00, IntObj)
    External (PLID, IntObj)
    External (PNHM, IntObj)
    External (PPPR, IntObj)
    External (PPSZ, IntObj)
    External (PSVT, IntObj)
    External (PTPC, IntObj)
    External (PWRE, IntObj)
    External (PWRS, IntObj)
    External (S1DE, IntObj)
    External (S2DE, IntObj)
    External (S3DE, IntObj)
    External (S4DE, IntObj)
    External (S5DE, IntObj)
    External (S6DE, IntObj)
    External (S6P2, IntObj)
    External (SADE, IntObj)
    External (SSP1, IntObj)
    External (SSP2, IntObj)
    External (SSP3, IntObj)
    External (SSP4, IntObj)
    External (SSP5, IntObj)
    External (TCNT, IntObj)
    External (TSOD, IntObj)

    Scope (\_SB)
    {
        Device (IETM)
        {
            Method (GHID, 1, Serialized)
            {
                If (LEqual (Arg0, "IETM"))
                {
                    Return ("INTC1041")
                }

                If (LEqual (Arg0, "SEN1"))
                {
                    Return ("INTC1046")
                }

                If (LEqual (Arg0, "SEN2"))
                {
                    Return ("INTC1046")
                }

                If (LEqual (Arg0, "SEN3"))
                {
                    Return ("INTC1046")
                }

                If (LEqual (Arg0, "SEN4"))
                {
                    Return ("INTC1046")
                }

                If (LEqual (Arg0, "SEN5"))
                {
                    Return ("INTC1046")
                }

                If (LEqual (Arg0, "TPCH"))
                {
                    Return ("INTC1049")
                }

                If (LEqual (Arg0, "TFN1"))
                {
                    Return ("INTC1048")
                }

                If (LEqual (Arg0, "TFN2"))
                {
                    Return ("INTC1048")
                }

                If (LEqual (Arg0, "TFN3"))
                {
                    Return ("INTC1048")
                }

                If (LEqual (Arg0, "TPWR"))
                {
                    Return ("INTC1060")
                }

                If (LEqual (Arg0, "1"))
                {
                    Return ("INTC1061")
                }

                If (LEqual (Arg0, "CHRG"))
                {
                    Return ("INTC1046")
                }

                Return ("XXXX9999")
            }

            Name (_UID, "IETM")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (CondRefOf (HIWC))
                {
                    If (HIWC (Arg0))
                    {
                        If (CondRefOf (HIDW))
                        {
                            Return (HIDW (Arg0, Arg1, Arg2, Arg3))
                        }
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LAnd (LEqual (\DPTF, One), LEqual (\IN34, One)))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PTRP, Zero)
            Name (PSEM, Zero)
            Name (ATRP, Zero)
            Name (ASEM, Zero)
            Name (YTRP, Zero)
            Name (YSEM, Zero)
            Name (DECF, Zero)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                If (And (CAP1, One))
                {
                    Store (One, \_SB.PC00.LPCB.EC0.DPTI) /* External reference */
                    Store (One, DECF) /* \_SB_.IETM.DECF */
                }
                Else
                {
                    Store (Zero, \_SB.PC00.LPCB.EC0.DPTI) /* External reference */
                    Store (Zero, DECF) /* \_SB_.IETM.DECF */
                }

                If (LNotEqual (Arg1, One))
                {
                    And (STS1, 0xFFFFFF00, STS1) /* \_SB_.IETM._OSC.STS1 */
                    Or (STS1, 0x0A, STS1) /* \_SB_.IETM._OSC.STS1 */
                    Return (Arg3)
                }

                If (LNotEqual (Arg2, 0x02))
                {
                    And (STS1, 0xFFFFFF00, STS1) /* \_SB_.IETM._OSC.STS1 */
                    Or (STS1, 0x02, STS1) /* \_SB_.IETM._OSC.STS1 */
                    Return (Arg3)
                }

                If (CondRefOf (\_SB.APSV))
                {
                    If (LEqual (PSEM, Zero))
                    {
                        Store (One, PSEM) /* \_SB_.IETM.PSEM */
                        Store (\_SB.APSV, PTRP) /* \_SB_.IETM.PTRP */
                    }
                }

                If (CondRefOf (\_SB.AAC0))
                {
                    If (LEqual (ASEM, Zero))
                    {
                        Store (One, ASEM) /* \_SB_.IETM.ASEM */
                        Store (\_SB.AAC0, ATRP) /* \_SB_.IETM.ATRP */
                    }
                }

                If (CondRefOf (\_SB.ACRT))
                {
                    If (LEqual (YSEM, Zero))
                    {
                        Store (One, YSEM) /* \_SB_.IETM.YSEM */
                        Store (\_SB.ACRT, YTRP) /* \_SB_.IETM.YTRP */
                    }
                }

                If (LEqual (Arg0, ToUUID ("b23ba85d-c8b7-3542-88de-8de2ffcfd698") /* Unknown UUID */))
                {
                    If (Not (And (STS1, One)))
                    {
                        If (And (CAP1, One))
                        {
                            If (And (CAP1, 0x02))
                            {
                                Store (0x6E, \_SB.AAC0) /* External reference */
                                Store (Zero, \_TZ.ETMD) /* External reference */
                            }
                            Else
                            {
                                Store (ATRP, \_SB.AAC0) /* External reference */
                                Store (One, \_TZ.ETMD) /* External reference */
                            }

                            If (And (CAP1, 0x04))
                            {
                                Store (0x6E, \_SB.APSV) /* External reference */
                            }
                            Else
                            {
                                Store (PTRP, \_SB.APSV) /* External reference */
                            }

                            If (And (CAP1, 0x08))
                            {
                                Store (0xD2, \_SB.ACRT) /* External reference */
                            }
                            Else
                            {
                                Store (YTRP, \_SB.ACRT) /* External reference */
                            }

                            If (CondRefOf (\_TZ.TZ00))
                            {
                                Notify (\_TZ.TZ00, 0x81) // Information Change
                            }
                        }
                        Else
                        {
                            Store (YTRP, \_SB.ACRT) /* External reference */
                            Store (PTRP, \_SB.APSV) /* External reference */
                            Store (ATRP, \_SB.AAC0) /* External reference */
                            Store (One, \_TZ.ETMD) /* External reference */
                        }

                        If (CondRefOf (\_TZ.TZ00))
                        {
                            Notify (\_TZ.TZ00, 0x81) // Information Change
                        }
                    }

                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (DCFG, 0, NotSerialized)
            {
                Return (\DCFE) /* External reference */
            }

            Name (ODVX, Package (0x06)
            {
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero
            })
            Method (ODVP, 0, Serialized)
            {
                Store (\ODV0, Index (ODVX, Zero))
                Store (\ODV1, Index (ODVX, One))
                Store (\ODV2, Index (ODVX, 0x02))
                Store (\ODV3, Index (ODVX, 0x03))
                Store (\ODV4, Index (ODVX, 0x04))
                Store (\ODV5, Index (ODVX, 0x05))
                Return (ODVX) /* \_SB_.IETM.ODVX */
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (KTOC, 1, Serialized)
        {
            If (LGreater (Arg0, 0x0AAC))
            {
                Return (Divide (Subtract (Arg0, 0x0AAC), 0x0A, ))
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (CTOK, 1, Serialized)
        {
            Return (Add (Multiply (Arg0, 0x0A), 0x0AAC))
        }

        Method (C10K, 1, Serialized)
        {
            Name (TMP1, Buffer (0x10)
            {
                 0x00                                             // .
            })
            CreateByteField (TMP1, Zero, TMPL)
            CreateByteField (TMP1, One, TMPH)
            Add (Arg0, 0x0AAC, Local0)
            Store (And (Local0, 0xFF), TMPL) /* \_SB_.IETM.C10K.TMPL */
            Store (ShiftRight (And (Local0, 0xFF00), 0x08), TMPH) /* \_SB_.IETM.C10K.TMPH */
            ToInteger (TMP1, Local1)
            Return (Local1)
        }

        Method (K10C, 1, Serialized)
        {
            If (LGreater (Arg0, 0x0AAC))
            {
                Return (Subtract (Arg0, 0x0AAC))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PC00.TCPU)
    {
        Name (PFLG, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (\SADE, One))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }

        OperationRegion (CPWR, SystemMemory, Add (ShiftLeft (\_SB.PC00.MC.MHBR, 0x0F), 0x5000), 0x1000)
        Field (CPWR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x930), 
            PTDP,   15, 
            Offset (0x932), 
            PMIN,   15, 
            Offset (0x934), 
            PMAX,   15, 
            Offset (0x936), 
            TMAX,   7, 
            Offset (0x938), 
            PWRU,   4, 
            Offset (0x939), 
            EGYU,   5, 
            Offset (0x93A), 
            TIMU,   4, 
            Offset (0x958), 
            Offset (0x95C), 
            LPMS,   1, 
            CTNL,   2, 
            Offset (0x978), 
            PCTP,   8, 
            Offset (0x998), 
            RP0C,   8, 
            RP1C,   8, 
            RPNC,   8, 
            Offset (0xF3C), 
            TRAT,   8, 
            Offset (0xF40), 
            PTD1,   15, 
            Offset (0xF42), 
            TRA1,   8, 
            Offset (0xF44), 
            PMX1,   15, 
            Offset (0xF46), 
            PMN1,   15, 
            Offset (0xF48), 
            PTD2,   15, 
            Offset (0xF4A), 
            TRA2,   8, 
            Offset (0xF4C), 
            PMX2,   15, 
            Offset (0xF4E), 
            PMN2,   15, 
            Offset (0xF50), 
            CTCL,   2, 
                ,   29, 
            CLCK,   1, 
            MNTR,   8
        }

        Name (XPCC, Zero)
        Method (PPCC, 0, Serialized)
        {
            If (LAnd (LEqual (XPCC, Zero), CondRefOf (\_SB.CBMI)))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        If (LAnd (LGreaterEqual (\_SB.CLVL, One), LLessEqual (\_SB.CLVL, 0x03)))
                        {
                            CPL0 ()
                            Store (One, XPCC) /* \_SB_.PC00.TCPU.XPCC */
                        }
                    }
                    Case (One)
                    {
                        If (LOr (LEqual (\_SB.CLVL, 0x02), LEqual (\_SB.CLVL, 0x03)))
                        {
                            CPL1 ()
                            Store (One, XPCC) /* \_SB_.PC00.TCPU.XPCC */
                        }
                    }
                    Case (0x02)
                    {
                        If (LEqual (\_SB.CLVL, 0x03))
                        {
                            CPL2 ()
                            Store (One, XPCC) /* \_SB_.PC00.TCPU.XPCC */
                        }
                    }

                }
            }

            Return (NPCC) /* \_SB_.PC00.TCPU.NPCC */
        }

        Name (NPCC, Package (0x03)
        {
            0x02, 
            Package (0x06)
            {
                Zero, 
                0x88B8, 
                0xAFC8, 
                0x6D60, 
                0x7D00, 
                0x03E8
            }, 

            Package (0x06)
            {
                One, 
                0xDBBA, 
                0xDBBA, 
                Zero, 
                Zero, 
                0x03E8
            }
        })
        Method (CPNU, 2, Serialized)
        {
            Name (CNVT, Zero)
            Name (PPUU, Zero)
            Name (RMDR, Zero)
            If (LEqual (PWRU, Zero))
            {
                Store (One, PPUU) /* \_SB_.PC00.TCPU.CPNU.PPUU */
            }
            Else
            {
                ShiftLeft (Decrement (PWRU), 0x02, PPUU) /* \_SB_.PC00.TCPU.CPNU.PPUU */
            }

            Divide (Arg0, PPUU, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            If (LEqual (Arg1, Zero))
            {
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
            Else
            {
                Multiply (CNVT, 0x03E8, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
                Multiply (RMDR, 0x03E8, RMDR) /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Divide (RMDR, PPUU, , RMDR) /* \_SB_.PC00.TCPU.CPNU.RMDR */
                Add (CNVT, RMDR, CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
                Return (CNVT) /* \_SB_.PC00.TCPU.CPNU.CNVT */
            }
        }

        Method (CPL0, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PC00.TCPU.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), Zero))
            Store (0x7D, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), One))
            Store (CPNU (\_SB.PL10, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x02))
            Multiply (\_SB.PLW0, 0x03E8, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x03))
            Add (Multiply (\_SB.PLW0, 0x03E8), 0x0FA0, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 
                0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), Zero))
            Store (CPNU (\_SB.PL20, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), One))
            Store (CPNU (\_SB.PL20, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x05))
        }

        Method (CPL1, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PC00.TCPU.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), Zero))
            Store (0x7D, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), One))
            Store (CPNU (\_SB.PL11, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x02))
            Multiply (\_SB.PLW1, 0x03E8, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x03))
            Add (Multiply (\_SB.PLW1, 0x03E8), 0x0FA0, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 
                0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), Zero))
            Store (CPNU (\_SB.PL21, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), One))
            Store (CPNU (\_SB.PL21, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x05))
        }

        Method (CPL2, 0, NotSerialized)
        {
            Store (0x02, Index (\_SB.PC00.TCPU.NPCC, Zero))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), Zero))
            Store (0x7D, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), One))
            Store (CPNU (\_SB.PL12, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x02))
            Multiply (\_SB.PLW2, 0x03E8, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x03))
            Add (Multiply (\_SB.PLW2, 0x03E8), 0x0FA0, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 
                0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, One)), 0x05))
            Store (One, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), Zero))
            Store (CPNU (\_SB.PL22, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), One))
            Store (CPNU (\_SB.PL22, One), Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x02))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x03))
            Store (Zero, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x04))
            Store (PPSZ, Index (DerefOf (Index (\_SB.PC00.TCPU.NPCC, 0x02)), 0x05))
        }

        Name (LSTM, Zero)
        Name (_PPC, Zero)  // _PPC: Performance Present Capabilities
        Method (SPPC, 1, Serialized)
        {
            If (CondRefOf (\_SB.CPPC))
            {
                Store (Arg0, \_SB.CPPC) /* External reference */
            }

            If (LGreater (ToInteger (\TCNT), Zero))
            {
                Notify (\_SB.PR00, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), One))
            {
                Notify (\_SB.PR01, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x02))
            {
                Notify (\_SB.PR02, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x03))
            {
                Notify (\_SB.PR03, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x04))
            {
                Notify (\_SB.PR04, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x05))
            {
                Notify (\_SB.PR05, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x06))
            {
                Notify (\_SB.PR06, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x07))
            {
                Notify (\_SB.PR07, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x08))
            {
                Notify (\_SB.PR08, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x09))
            {
                Notify (\_SB.PR09, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0A))
            {
                Notify (\_SB.PR10, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0B))
            {
                Notify (\_SB.PR11, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0C))
            {
                Notify (\_SB.PR12, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0D))
            {
                Notify (\_SB.PR13, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0E))
            {
                Notify (\_SB.PR14, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x0F))
            {
                Notify (\_SB.PR15, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x10))
            {
                Notify (\_SB.PR16, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x11))
            {
                Notify (\_SB.PR17, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x12))
            {
                Notify (\_SB.PR18, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x13))
            {
                Notify (\_SB.PR19, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x14))
            {
                Notify (\_SB.PR20, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x15))
            {
                Notify (\_SB.PR21, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x16))
            {
                Notify (\_SB.PR22, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x17))
            {
                Notify (\_SB.PR23, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x18))
            {
                Notify (\_SB.PR24, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x19))
            {
                Notify (\_SB.PR25, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1A))
            {
                Notify (\_SB.PR26, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1B))
            {
                Notify (\_SB.PR27, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1C))
            {
                Notify (\_SB.PR28, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1D))
            {
                Notify (\_SB.PR29, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1E))
            {
                Notify (\_SB.PR30, 0x80) // Status Change
            }

            If (LGreater (ToInteger (\TCNT), 0x1F))
            {
                Notify (\_SB.PR31, 0x80) // Status Change
            }
        }

        Method (SPUR, 1, NotSerialized)
        {
            If (LLessEqual (Arg0, \TCNT))
            {
                If (LEqual (\_SB.PAGD._STA (), 0x0F))
                {
                    Store (Arg0, Index (\_SB.PAGD._PUR, One))
                    Notify (\_SB.PAGD, 0x80) // Status Change
                }
            }
        }

        Method (PCCC, 0, Serialized)
        {
            Store (One, Index (PCCX, Zero))
            Switch (ToInteger (CPNU (PTDP, Zero)))
            {
                Case (0x39)
                {
                    Store (0xA7F8, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x00017318, Index (DerefOf (Index (PCCX, One)), One))
                }
                Case (0x2F)
                {
                    Store (0x9858, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x00014C08, Index (DerefOf (Index (PCCX, One)), One))
                }
                Case (0x25)
                {
                    Store (0x7148, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0xD6D8, Index (DerefOf (Index (PCCX, One)), One))
                }
                Case (0x19)
                {
                    Store (0x3E80, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x7D00, Index (DerefOf (Index (PCCX, One)), One))
                }
                Case (0x0F)
                {
                    Store (0x36B0, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x7D00, Index (DerefOf (Index (PCCX, One)), One))
                }
                Case (0x0B)
                {
                    Store (0x36B0, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0x61A8, Index (DerefOf (Index (PCCX, One)), One))
                }
                Default
                {
                    Store (0xFF, Index (DerefOf (Index (PCCX, One)), Zero))
                    Store (0xFF, Index (DerefOf (Index (PCCX, One)), One))
                }

            }

            Return (PCCX) /* \_SB_.PC00.TCPU.PCCX */
        }

        Name (PCCX, Package (0x02)
        {
            0x80000000, 
            Package (0x02)
            {
                0x80000000, 
                0x80000000
            }
        })
        Name (KEFF, Package (0x1E)
        {
            Package (0x02)
            {
                0x01BC, 
                Zero
            }, 

            Package (0x02)
            {
                0x01CF, 
                0x27
            }, 

            Package (0x02)
            {
                0x01E1, 
                0x4B
            }, 

            Package (0x02)
            {
                0x01F3, 
                0x6C
            }, 

            Package (0x02)
            {
                0x0206, 
                0x8B
            }, 

            Package (0x02)
            {
                0x0218, 
                0xA8
            }, 

            Package (0x02)
            {
                0x022A, 
                0xC3
            }, 

            Package (0x02)
            {
                0x023D, 
                0xDD
            }, 

            Package (0x02)
            {
                0x024F, 
                0xF4
            }, 

            Package (0x02)
            {
                0x0261, 
                0x010B
            }, 

            Package (0x02)
            {
                0x0274, 
                0x011F
            }, 

            Package (0x02)
            {
                0x032C, 
                0x01BD
            }, 

            Package (0x02)
            {
                0x03D7, 
                0x0227
            }, 

            Package (0x02)
            {
                0x048B, 
                0x026D
            }, 

            Package (0x02)
            {
                0x053E, 
                0x02A1
            }, 

            Package (0x02)
            {
                0x05F7, 
                0x02C6
            }, 

            Package (0x02)
            {
                0x06A8, 
                0x02E6
            }, 

            Package (0x02)
            {
                0x075D, 
                0x02FF
            }, 

            Package (0x02)
            {
                0x0818, 
                0x0311
            }, 

            Package (0x02)
            {
                0x08CF, 
                0x0322
            }, 

            Package (0x02)
            {
                0x179C, 
                0x0381
            }, 

            Package (0x02)
            {
                0x2DDC, 
                0x039C
            }, 

            Package (0x02)
            {
                0x44A8, 
                0x039E
            }, 

            Package (0x02)
            {
                0x5C35, 
                0x0397
            }, 

            Package (0x02)
            {
                0x747D, 
                0x038D
            }, 

            Package (0x02)
            {
                0x8D7F, 
                0x0382
            }, 

            Package (0x02)
            {
                0xA768, 
                0x0376
            }, 

            Package (0x02)
            {
                0xC23B, 
                0x0369
            }, 

            Package (0x02)
            {
                0xDE26, 
                0x035A
            }, 

            Package (0x02)
            {
                0xFB7C, 
                0x034A
            }
        })
        Name (CEUP, Package (0x06)
        {
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000, 
            0x80000000
        })
        Method (_TMP, 0, Serialized)  // _TMP: Temperature
        {
            Return (Add (0x0AAC, Multiply (\_SB.PC00.LPCB.EC0.CTMP, 0x0A)))
        }

        Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
        {
            Store (Arg0, LSTM) /* \_SB_.PC00.TCPU.LSTM */
            Notify (\_SB.PC00.TCPU, 0x91) // Device-Specific
        }

        Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
        {
            Return (0x0ADE)
        }

        Name (PTYP, Zero)
        Method (_PSS, 0, NotSerialized)  // _PSS: Performance Supported States
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                Return (\_SB.PR00._PSS ())
            }
            Else
            {
                Return (Package (0x02)
                {
                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }, 

                    Package (0x06)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TSS, 0, NotSerialized)  // _TSS: Throttling Supported States
        {
            If (CondRefOf (\_SB.PR00._TSS))
            {
                Return (\_SB.PR00._TSS ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    }
                })
            }
        }

        Method (_TPC, 0, NotSerialized)  // _TPC: Throttling Present Capabilities
        {
            If (CondRefOf (\_SB.PR00._TPC))
            {
                Return (\_SB.PR00._TPC) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PTC, 0, NotSerialized)  // _PTC: Processor Throttling Control
        {
            If (LAnd (CondRefOf (\PF00), LNotEqual (\PF00, 0x80000000)))
            {
                If (And (\PF00, 0x04))
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (FFixedHW, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemIO, 
                                0x05,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000001810, // Address
                                ,)
                        }
                    })
                }
            }
            Else
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }
        }

        Method (_TSD, 0, NotSerialized)  // _TSD: Throttling State Dependencies
        {
            If (CondRefOf (\_SB.PR00._TSD))
            {
                Return (\_SB.PR00._TSD ())
            }
            Else
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFC, 
                        Zero
                    }
                })
            }
        }

        Method (_TDL, 0, NotSerialized)  // _TDL: T-State Depth Limit
        {
            If (LAnd (CondRefOf (\_SB.PR00._TSS), CondRefOf (\_SB.CFGD)))
            {
                If (And (\_SB.CFGD, 0x2000))
                {
                    Return (Subtract (SizeOf (\_SB.PR00.TSMF), One))
                }
                Else
                {
                    Return (Subtract (SizeOf (\_SB.PR00.TSMC), One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_PDL, 0, NotSerialized)  // _PDL: P-state Depth Limit
        {
            If (CondRefOf (\_SB.PR00._PSS))
            {
                If (And (\_SB.OSCP, 0x0400))
                {
                    Return (Subtract (SizeOf (\_SB.PR00.TPSS), One))
                }
                Else
                {
                    Return (Subtract (SizeOf (\_SB.PR00.LPSS), One))
                }
            }
            Else
            {
                Return (Zero)
            }
        }

        Name (TJMX, 0x6E)
        Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
        {
            Return (Zero)
        }

        Method (_AC0, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Store (\_SB.IETM.CTOK (TJMX), Local1)
            Subtract (Local1, 0x0A, Local1)
            If (LGreaterEqual (LSTM, Local1))
            {
                Return (Subtract (Local1, 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC1, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Store (\_SB.IETM.CTOK (TJMX), Local1)
            Subtract (Local1, 0x1E, Local1)
            If (LGreaterEqual (LSTM, Local1))
            {
                Return (Subtract (Local1, 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC2, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Store (\_SB.IETM.CTOK (TJMX), Local1)
            Subtract (Local1, 0x28, Local1)
            If (LGreaterEqual (LSTM, Local1))
            {
                Return (Subtract (Local1, 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC3, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Store (\_SB.IETM.CTOK (TJMX), Local1)
            Subtract (Local1, 0x37, Local1)
            If (LGreaterEqual (LSTM, Local1))
            {
                Return (Subtract (Local1, 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_AC4, 0, Serialized)  // _ACx: Active Cooling, x=0-9
        {
            Store (\_SB.IETM.CTOK (TJMX), Local1)
            Subtract (Local1, 0x46, Local1)
            If (LGreaterEqual (LSTM, Local1))
            {
                Return (Subtract (Local1, 0x14))
            }
            Else
            {
                Return (Local1)
            }
        }

        Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
        {
            Return (\_SB.IETM.CTOK (TJMX))
        }

        Method (UVTH, 1, Serialized)
        {
        }
    }

    Scope (\_SB.IETM)
    {
        Name (CTSP, Package (0x01)
        {
            ToUUID ("e145970a-e4c1-4d73-900e-c9c5a69dd067") /* Unknown UUID */
        })
    }

    Scope (\_SB.PC00.TCPU)
    {
        Method (TDPL, 0, Serialized)
        {
            Name (AAAA, Zero)
            Name (BBBB, Zero)
            Name (CCCC, Zero)
            Store (CTNL, Local0)
            If (LOr (LEqual (Local0, One), LEqual (Local0, 0x02)))
            {
                Store (\_SB.CLVL, Local0)
            }
            Else
            {
                Return (Package (0x01)
                {
                    Zero
                })
            }

            If (LEqual (CLCK, One))
            {
                Store (One, Local0)
            }

            Store (CPNU (\_SB.PL10, One), AAAA) /* \_SB_.PC00.TCPU.TDPL.AAAA */
            Store (CPNU (\_SB.PL11, One), BBBB) /* \_SB_.PC00.TCPU.TDPL.BBBB */
            Store (CPNU (\_SB.PL12, One), CCCC) /* \_SB_.PC00.TCPU.TDPL.CCCC */
            Name (TMP1, Package (0x01)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP2, Package (0x02)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Name (TMP3, Package (0x03)
            {
                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x05)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            If (LEqual (Local0, 0x03))
            {
                If (LGreater (AAAA, BBBB))
                {
                    If (LGreater (AAAA, CCCC))
                    {
                        If (LGreater (BBBB, CCCC))
                        {
                            Store (Zero, Local3)
                            Store (Zero, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                            Store (One, Local4)
                            Store (One, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                            Store (0x02, Local5)
                            Store (0x02, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                        }
                        Else
                        {
                            Store (Zero, Local3)
                            Store (Zero, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                            Store (One, Local5)
                            Store (0x02, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                            Store (0x02, Local4)
                            Store (One, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                        }
                    }
                    Else
                    {
                        Store (Zero, Local5)
                        Store (0x02, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (One, Local3)
                        Store (Zero, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (0x02, Local4)
                        Store (One, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }
                }
                ElseIf (LGreater (BBBB, CCCC))
                {
                    If (LGreater (AAAA, CCCC))
                    {
                        Store (Zero, Local4)
                        Store (One, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (One, Local3)
                        Store (Zero, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (0x02, Local5)
                        Store (0x02, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }
                    Else
                    {
                        Store (Zero, Local4)
                        Store (One, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (One, Local5)
                        Store (0x02, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (0x02, Local3)
                        Store (Zero, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }
                }
                Else
                {
                    Store (Zero, Local5)
                    Store (0x02, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                    Store (One, Local4)
                    Store (One, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                    Store (0x02, Local3)
                    Store (Zero, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                }

                Store (Add (\_SB.TAR0, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (AAAA, Index (DerefOf (Index (TMP3, Local3)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local3)), One))
                Store (\_SB.CTC0, Index (DerefOf (Index (TMP3, Local3)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local3)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local3)), 0x04))
                Store (Add (\_SB.TAR1, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (BBBB, Index (DerefOf (Index (TMP3, Local4)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local4)), One))
                Store (\_SB.CTC1, Index (DerefOf (Index (TMP3, Local4)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local4)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local4)), 0x04))
                Store (Add (\_SB.TAR2, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (CCCC, Index (DerefOf (Index (TMP3, Local5)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP3, Local5)), One))
                Store (\_SB.CTC2, Index (DerefOf (Index (TMP3, Local5)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP3, Local5)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP3, Local5)), 0x04))
                Return (TMP3) /* \_SB_.PC00.TCPU.TDPL.TMP3 */
            }

            If (LEqual (Local0, 0x02))
            {
                If (LGreater (AAAA, BBBB))
                {
                    Store (Zero, Local3)
                    Store (One, Local4)
                    Store (Zero, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                    Store (One, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                    Store (Zero, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                }
                Else
                {
                    Store (Zero, Local4)
                    Store (One, Local3)
                    Store (One, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                    Store (Zero, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                    Store (Zero, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                }

                Store (Add (\_SB.TAR0, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (AAAA, Index (DerefOf (Index (TMP2, Local3)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP2, Local3)), One))
                Store (\_SB.CTC0, Index (DerefOf (Index (TMP2, Local3)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP2, Local3)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP2, Local3)), 0x04))
                Store (Add (\_SB.TAR1, One), Local1)
                Multiply (Local1, 0x64, Local2)
                Store (BBBB, Index (DerefOf (Index (TMP2, Local4)), Zero))
                Store (Local2, Index (DerefOf (Index (TMP2, Local4)), One))
                Store (\_SB.CTC1, Index (DerefOf (Index (TMP2, Local4)), 0x02))
                Store (Local1, Index (DerefOf (Index (TMP2, Local4)), 0x03))
                Store (Zero, Index (DerefOf (Index (TMP2, Local4)), 0x04))
                Return (TMP2) /* \_SB_.PC00.TCPU.TDPL.TMP2 */
            }

            If (LEqual (Local0, One))
            {
                Switch (ToInteger (\_SB.CBMI))
                {
                    Case (Zero)
                    {
                        Store (Add (\_SB.TAR0, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (AAAA, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_SB.CTC0, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (Zero, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (Zero, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (Zero, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }
                    Case (One)
                    {
                        Store (Add (\_SB.TAR1, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (BBBB, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_SB.CTC1, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (One, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (One, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (One, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }
                    Case (0x02)
                    {
                        Store (Add (\_SB.TAR2, One), Local1)
                        Multiply (Local1, 0x64, Local2)
                        Store (CCCC, Index (DerefOf (Index (TMP1, Zero)), Zero))
                        Store (Local2, Index (DerefOf (Index (TMP1, Zero)), One))
                        Store (\_SB.CTC2, Index (DerefOf (Index (TMP1, Zero)), 0x02))
                        Store (Local1, Index (DerefOf (Index (TMP1, Zero)), 0x03))
                        Store (Zero, Index (DerefOf (Index (TMP1, Zero)), 0x04))
                        Store (0x02, LEV0) /* \_SB_.PC00.TCPU.LEV0 */
                        Store (0x02, LEV1) /* \_SB_.PC00.TCPU.LEV1 */
                        Store (0x02, LEV2) /* \_SB_.PC00.TCPU.LEV2 */
                    }

                }

                Return (TMP1) /* \_SB_.PC00.TCPU.TDPL.TMP1 */
            }

            Return (Zero)
        }

        Name (MAXT, Zero)
        Method (TDPC, 0, NotSerialized)
        {
            Return (MAXT) /* \_SB_.PC00.TCPU.MAXT */
        }

        Name (LEV0, Zero)
        Name (LEV1, Zero)
        Name (LEV2, Zero)
        Method (STDP, 1, Serialized)
        {
            If (LGreaterEqual (Arg0, \_SB.CLVL))
            {
                Return (Zero)
            }

            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Store (LEV0, Local0)
                }
                Case (One)
                {
                    Store (LEV1, Local0)
                }
                Case (0x02)
                {
                    Store (LEV2, Local0)
                }

            }

            Switch (ToInteger (Local0))
            {
                Case (Zero)
                {
                    CPL0 ()
                }
                Case (One)
                {
                    CPL1 ()
                }
                Case (0x02)
                {
                    CPL2 ()
                }

            }

            Notify (\_SB.PC00.TCPU, 0x83) // Device-Specific Change
        }
    }

    Scope (\_SB)
    {
        Device (TPCH)
        {
            Name (_UID, "TPCH")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Intel PCH FIVR Participant"))  // _STR: Description String
            Name (PTYP, 0x05)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\PCHE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (RFC0, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, Zero, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (RFC1, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, One, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (SEMI, 1, Serialized)
            {
                IPCS (0xA3, One, 0x08, 0x02, Arg0, Zero, Zero)
                Return (Package (0x01)
                {
                    Zero
                })
            }

            Method (PKGC, 1, Serialized)
            {
                Name (PPKG, Package (0x02)
                {
                    Zero, 
                    Zero
                })
                Store (DerefOf (Index (Arg0, Zero)), Index (PPKG, Zero))
                Store (DerefOf (Index (Arg0, One)), Index (PPKG, One))
                Return (PPKG) /* \_SB_.TPCH.PKGC.PPKG */
            }

            Method (GFC0, 0, Serialized)
            {
                Store (IPCS (0xA3, Zero, 0x08, Zero, Zero, Zero, Zero), Local0)
                Store (\_SB.TPCH.PKGC (Local0), Local1)
                Return (Local1)
            }

            Method (GFC1, 0, Serialized)
            {
                Store (IPCS (0xA3, Zero, 0x08, One, Zero, Zero, Zero), Local0)
                Store (\_SB.TPCH.PKGC (Local0), Local1)
                Return (Local1)
            }

            Method (GEMI, 0, Serialized)
            {
                Store (IPCS (0xA3, Zero, 0x08, 0x02, Zero, Zero, Zero), Local0)
                Store (\_SB.TPCH.PKGC (Local0), Local1)
                Return (Local1)
            }

            Method (GFFS, 0, Serialized)
            {
                Store (IPCS (0xA3, Zero, 0x08, 0x03, Zero, Zero, Zero), Local0)
                Store (\_SB.TPCH.PKGC (Local0), Local1)
                Return (Local1)
            }

            Method (GFCS, 0, Serialized)
            {
                Store (IPCS (0xA3, Zero, 0x08, 0x04, Zero, Zero, Zero), Local0)
                Store (\_SB.TPCH.PKGC (Local0), Local1)
                Return (Local1)
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC0)
    {
        Device (SEN2)
        {
            Name (_UID, "SEN2")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sen1 DDR"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\S2DE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (Add (0x0AAC, Multiply (\_SB.PC00.LPCB.EC0.EST1, 0x0A)))
            }

            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM) /* \_SB_.PC00.LPCB.EC0_.SEN2.LSTM */
                Notify (\_SB.PC00.LPCB.EC0.SEN2, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S2AC, 0x3C)
            Name (S2A1, 0x32)
            Name (S2A2, 0x28)
            Name (S2PV, 0x41)
            Name (S2CC, 0x50)
            Name (S2C3, 0x46)
            Name (S2HP, 0x4B)
            Name (SSP2, Zero)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP2) /* \_SB_.PC00.LPCB.EC0_.SEN2.SSP2 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S2PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S2CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S2C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S2HP))
            }
        }
    }

    Scope (\_SB.PC00.LPCB.EC0)
    {
        Device (SEN3)
        {
            Name (_UID, "SEN3")  // _UID: Unique ID
            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Return (\_SB.IETM.GHID (_UID))
            }

            Name (_STR, Unicode ("Sen2 VRAM "))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (PFLG, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\S3DE, One))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (Add (0x0AAC, Multiply (\_SB.PC00.LPCB.EC0.EST2, 0x0A)))
            }

            Name (GTSH, 0x14)
            Name (LSTM, Zero)
            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                Store (Arg0, LSTM) /* \_SB_.PC00.LPCB.EC0_.SEN3.LSTM */
                Notify (\_SB.PC00.LPCB.EC0.SEN3, 0x91) // Device-Specific
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Name (S3AC, 0x3C)
            Name (S3A1, 0x32)
            Name (S3A2, 0x28)
            Name (S3PV, 0x41)
            Name (S3CC, 0x50)
            Name (S3C3, 0x46)
            Name (S3HP, 0x4B)
            Name (SSP3, Zero)
            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (SSP3) /* \_SB_.PC00.LPCB.EC0_.SEN3.SSP3 */
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.IETM.CTOK (S3PV))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.IETM.CTOK (S3CC))
            }

            Method (_CR3, 0, Serialized)  // _CR3: Warm/Standby Temperature
            {
                Return (\_SB.IETM.CTOK (S3C3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.IETM.CTOK (S3HP))
            }
        }
    }

    Scope (\_SB.IETM)
    {
        Name (PTTL, 0x14)
        Name (PSVT, Package (0x04)
        {
            0x02, 
            Package (0x0C)
            {
                \_SB.PC00.TCPU, 
                \_SB.PC00.TCPU, 
                One, 
                0x0A, 
                0x0E1C, 
                0x09, 
                0x00010000, 
                "MAX", 
                0x01F4, 
                0x14, 
                0x14, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, 
                \_SB.PC00.LPCB.EC0.SEN2, 
                0x03, 
                0x96, 
                0x0D0E, 
                0x09, 
                0x00010000, 
                "MAX", 
                0xFA, 
                0x14, 
                0x14, 
                Zero
            }, 

            Package (0x0C)
            {
                \_SB.PC00.TCPU, 
                \_SB.PC00.LPCB.EC0.SEN3, 
                0x02, 
                0x96, 
                0x0D72, 
                0x09, 
                0x00010000, 
                "MAX", 
                0xFA, 
                0x14, 
                0x14, 
                Zero
            }
        })
    }

    Scope (\_SB.IETM)
    {
        Name (DP2P, Package (0x01)
        {
            ToUUID ("9e04115a-ae87-4d1c-9500-0f3e340bfe75") /* Unknown UUID */
        })
        Name (DPSP, Package (0x01)
        {
            ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3") /* Unknown UUID */
        })
        Name (DASP, Package (0x01)
        {
            ToUUID ("3a95c389-e4b8-4629-a526-c52c88626bae") /* Unknown UUID */
        })
        Name (DA2P, Package (0x01)
        {
            ToUUID ("0e56fab6-bdfc-4e8c-8246-40ecfd4d74ea") /* Unknown UUID */
        })
        Name (DCSP, Package (0x01)
        {
            ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a") /* Unknown UUID */
        })
        Name (RFIP, Package (0x01)
        {
            ToUUID ("c4ce1849-243a-49f3-b8d5-f97002f38e6a") /* Unknown UUID */
        })
        Name (POBP, Package (0x01)
        {
            ToUUID ("f5a35014-c209-46a4-993a-eb56de7530a1") /* Unknown UUID */
        })
        Name (DAPP, Package (0x01)
        {
            ToUUID ("63be270f-1c11-48fd-a6f7-3af253ff3e2d") /* Unknown UUID */
        })
        Name (DVSP, Package (0x01)
        {
            ToUUID ("6ed722a7-9240-48a5-b479-31eef723d7cf") /* Unknown UUID */
        })
        Name (DPID, Package (0x01)
        {
            ToUUID ("42496e14-bc1b-46e8-a798-ca915464426f") /* Unknown UUID */
        })
    }

    Scope (\_SB.IETM)
    {
        Method (TEVT, 2, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case ("IETM")
                {
                    Notify (\_SB.IETM, Arg1)
                }
                Case ("TCPU")
                {
                    Notify (\_SB.PC00.TCPU, Arg1)
                }
                Case ("TPCH")
                {
                    Notify (\_SB.TPCH, Arg1)
                }

            }
        }
    }

    Scope (\_SB.IETM)
    {
        Method (GDDV, 0, Serialized)
        {
            Switch (ToInteger (PLID))
            {
                Case (Package (0x01)
                    {
                        0x1B
                    }

)
                {
                    Return (Package (0x01)
                    {
                        Buffer (0x044B)
                        {
                            /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                            /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                            /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                            /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                            /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x80, 0x4B, 0xF8, 0xA1,  // .....K..
                            /* 0070 */  0xDB, 0x42, 0xBD, 0x7D, 0xCF, 0x35, 0x88, 0x3A,  // .B.}.5.:
                            /* 0078 */  0xB5, 0x36, 0x0E, 0x52, 0xE1, 0x1D, 0x9C, 0x57,  // .6.R...W
                            /* 0080 */  0x8C, 0xD6, 0x5D, 0xFE, 0xBD, 0x33, 0x77, 0x1D,  // ..]..3w.
                            /* 0088 */  0x06, 0x96, 0x98, 0xE8, 0xB7, 0x03, 0x00, 0x00,  // ........
                            /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                            /* 0098 */  0x01, 0x55, 0x4D, 0x00, 0x00, 0x00, 0x00, 0x00,  // .UM.....
                            /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                            /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                            /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                            /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                            /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                            /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x44, 0x0F, 0xD3,  // u8...D..
                            /* 00D0 */  0x8E, 0xF2, 0xC3, 0x2A, 0xAE, 0xE5, 0x63, 0x97,  // ...*..c.
                            /* 00D8 */  0x9F, 0x3E, 0x8A, 0x8F, 0x8F, 0x5D, 0xFD, 0x8E,  // .>...]..
                            /* 00E0 */  0x1F, 0x7A, 0x9A, 0xE6, 0x99, 0x3C, 0xD4, 0xDE,  // .z...<..
                            /* 00E8 */  0x94, 0xC9, 0x7C, 0xAF, 0x73, 0xD4, 0x50, 0xA9,  // ..|.s.P.
                            /* 00F0 */  0x57, 0x95, 0x12, 0xD5, 0x5E, 0x96, 0x0D, 0x5A,  // W...^..Z
                            /* 00F8 */  0xD5, 0x6B, 0xAE, 0x06, 0x48, 0x5D, 0x6D, 0x66,  // .k..H]mf
                            /* 0100 */  0x89, 0x37, 0x9D, 0x50, 0xA4, 0x2C, 0xD0, 0x17,  // .7.P.,..
                            /* 0108 */  0x20, 0x5D, 0x3B, 0x32, 0x85, 0xF2, 0x56, 0xD4,  //  ];2..V.
                            /* 0110 */  0x7D, 0xDE, 0x14, 0x62, 0x32, 0xED, 0xB7, 0x4E,  // }..b2..N
                            /* 0118 */  0x8D, 0x3A, 0xC5, 0x46, 0x57, 0xAC, 0xDF, 0x56,  // .:.FW..V
                            /* 0120 */  0xE7, 0xDF, 0x79, 0xA9, 0x28, 0x8B, 0x60, 0x7B,  // ..y.(.`{
                            /* 0128 */  0x4B, 0xD6, 0x10, 0x98, 0x82, 0x99, 0x7C, 0xDA,  // K.....|.
                            /* 0130 */  0x79, 0x9D, 0xCC, 0x02, 0xEB, 0xF9, 0x9E, 0x60,  // y......`
                            /* 0138 */  0x25, 0x9D, 0x76, 0x60, 0xD8, 0xFC, 0x35, 0x6D,  // %.v`..5m
                            /* 0140 */  0x06, 0x99, 0x04, 0x80, 0xD5, 0x80, 0xAD, 0x42,  // .......B
                            /* 0148 */  0xDB, 0x95, 0x47, 0xD4, 0x0B, 0xE9, 0x47, 0x21,  // ..G...G!
                            /* 0150 */  0x17, 0xFE, 0xD5, 0x3D, 0x80, 0x12, 0x29, 0x3A,  // ...=..):
                            /* 0158 */  0x19, 0xFF, 0x8D, 0xE0, 0x11, 0x15, 0x20, 0xE7,  // ...... .
                            /* 0160 */  0x72, 0x01, 0x4F, 0xC3, 0xE7, 0x82, 0xF5, 0xEA,  // r.O.....
                            /* 0168 */  0x9A, 0xCB, 0xC6, 0x82, 0x64, 0x24, 0x46, 0x78,  // ....d$Fx
                            /* 0170 */  0xA1, 0xBC, 0xDB, 0x69, 0xCA, 0x72, 0xC8, 0x70,  // ...i.r.p
                            /* 0178 */  0x07, 0x44, 0x5A, 0x38, 0x20, 0xF6, 0x46, 0x68,  // .DZ8 .Fh
                            /* 0180 */  0x1B, 0x41, 0x95, 0x8D, 0x77, 0x35, 0x24, 0x28,  // .A..w5$(
                            /* 0188 */  0x0F, 0xF8, 0xA9, 0x92, 0xBF, 0x4C, 0x83, 0xED,  // .....L..
                            /* 0190 */  0xAB, 0x07, 0xF0, 0x72, 0xCC, 0x03, 0x8B, 0xE3,  // ...r....
                            /* 0198 */  0xAE, 0x22, 0xE8, 0x53, 0x25, 0x5D, 0xF7, 0x4C,  // .".S%].L
                            /* 01A0 */  0xFF, 0xAF, 0x9C, 0x79, 0x94, 0xE3, 0x48, 0xC2,  // ...y..H.
                            /* 01A8 */  0xFB, 0x46, 0x03, 0x67, 0xCA, 0xAA, 0xB2, 0x86,  // .F.g....
                            /* 01B0 */  0xF0, 0x1D, 0x7B, 0x51, 0x90, 0xE8, 0x89, 0x4D,  // ..{Q...M
                            /* 01B8 */  0xB7, 0x73, 0x63, 0xA9, 0x9A, 0x46, 0xE0, 0x9F,  // .sc..F..
                            /* 01C0 */  0xB7, 0x1A, 0x86, 0xD0, 0x17, 0x4F, 0x83, 0x9A,  // .....O..
                            /* 01C8 */  0x72, 0x18, 0x1D, 0x0E, 0xFC, 0x05, 0xE9, 0x81,  // r.......
                            /* 01D0 */  0x57, 0xA8, 0xB2, 0xE7, 0xF7, 0x0E, 0x81, 0x13,  // W.......
                            /* 01D8 */  0xE8, 0xC1, 0x02, 0x1A, 0xD8, 0x4B, 0x67, 0x9D,  // .....Kg.
                            /* 01E0 */  0x46, 0x2D, 0xFC, 0xF5, 0xDC, 0x42, 0x31, 0xE1,  // F-...B1.
                            /* 01E8 */  0x79, 0xDB, 0x3F, 0x8A, 0x38, 0x9D, 0xB7, 0x0C,  // y.?.8...
                            /* 01F0 */  0xC8, 0x5C, 0x7C, 0x0D, 0xED, 0xA9, 0xB0, 0x7D,  // .\|....}
                            /* 01F8 */  0x28, 0xF7, 0xB7, 0x7A, 0x96, 0x41, 0xEA, 0x9D,  // (..z.A..
                            /* 0200 */  0x20, 0x6E, 0x6E, 0xA2, 0xBB, 0x32, 0x98, 0xCD,  //  nn..2..
                            /* 0208 */  0x3F, 0x79, 0x6F, 0x5C, 0x12, 0xAD, 0x67, 0xA7,  // ?yo\..g.
                            /* 0210 */  0xE9, 0xC6, 0x50, 0x57, 0x09, 0x16, 0x05, 0x65,  // ..PW...e
                            /* 0218 */  0x02, 0x2A, 0xDE, 0x84, 0xE6, 0xCC, 0x90, 0xD8,  // .*......
                            /* 0220 */  0x61, 0x84, 0x14, 0xB0, 0x07, 0xC8, 0xE3, 0x45,  // a......E
                            /* 0228 */  0x04, 0xA8, 0xE0, 0x47, 0x0D, 0xFC, 0x5D, 0xE7,  // ...G..].
                            /* 0230 */  0x44, 0x38, 0xB9, 0x34, 0xF8, 0x67, 0xC0, 0x70,  // D8.4.g.p
                            /* 0238 */  0xE8, 0xD3, 0x37, 0xAD, 0x01, 0x9A, 0x2D, 0xEF,  // ..7...-.
                            /* 0240 */  0xD4, 0x61, 0x67, 0x7A, 0x89, 0x60, 0xE9, 0x6A,  // .agz.`.j
                            /* 0248 */  0x18, 0x56, 0x6F, 0x0B, 0x47, 0xB8, 0xA5, 0x1A,  // .Vo.G...
                            /* 0250 */  0xA5, 0xC6, 0x6C, 0x44, 0xF7, 0xC2, 0x75, 0x77,  // ..lD..uw
                            /* 0258 */  0x69, 0x8B, 0xC5, 0xD1, 0x4E, 0xEF, 0x08, 0x1F,  // i...N...
                            /* 0260 */  0x2C, 0xE6, 0xF0, 0x46, 0x65, 0x81, 0xD0, 0xB7,  // ,..Fe...
                            /* 0268 */  0x69, 0x60, 0x9A, 0xF7, 0xE4, 0xCE, 0xCC, 0x04,  // i`......
                            /* 0270 */  0x4F, 0x4B, 0xA3, 0x1C, 0xF3, 0x1F, 0x82, 0x03,  // OK......
                            /* 0278 */  0x5F, 0x47, 0xCF, 0x58, 0xD5, 0xA9, 0x00, 0x27,  // _G.X...'
                            /* 0280 */  0xAD, 0x38, 0x7F, 0xB9, 0x0A, 0xEC, 0xD6, 0xFA,  // .8......
                            /* 0288 */  0xF1, 0xAB, 0x36, 0x1F, 0xF7, 0x90, 0x48, 0xDB,  // ..6...H.
                            /* 0290 */  0x07, 0x3A, 0x50, 0xAB, 0x1D, 0x83, 0x28, 0x51,  // .:P...(Q
                            /* 0298 */  0xC7, 0x8E, 0x97, 0x77, 0x66, 0x52, 0x68, 0x56,  // ...wfRhV
                            /* 02A0 */  0x2F, 0x04, 0xEA, 0xB1, 0xDF, 0x49, 0xDF, 0x9F,  // /....I..
                            /* 02A8 */  0xC2, 0x2D, 0x05, 0x9B, 0x1C, 0xC3, 0x11, 0x16,  // .-......
                            /* 02B0 */  0xD3, 0xB0, 0xA2, 0x6B, 0x6B, 0xCC, 0xEF, 0x3A,  // ...kk..:
                            /* 02B8 */  0x5F, 0xEA, 0x97, 0x3A, 0xB1, 0x0A, 0x10, 0xC7,  // _..:....
                            /* 02C0 */  0x86, 0x83, 0xA9, 0x85, 0x31, 0x2F, 0xBA, 0x71,  // ....1/.q
                            /* 02C8 */  0xD6, 0x85, 0xC2, 0xC3, 0x07, 0x94, 0xF0, 0x6C,  // .......l
                            /* 02D0 */  0x2C, 0xE5, 0xAF, 0x3E, 0x74, 0x0E, 0x60, 0xEB,  // ,..>t.`.
                            /* 02D8 */  0xCB, 0x50, 0x94, 0x75, 0x72, 0x85, 0xDA, 0x8C,  // .P.ur...
                            /* 02E0 */  0x25, 0x29, 0x58, 0xE4, 0x51, 0x3C, 0x80, 0x36,  // %)X.Q<.6
                            /* 02E8 */  0x37, 0x45, 0x1C, 0xBF, 0x8D, 0x13, 0x03, 0xB8,  // 7E......
                            /* 02F0 */  0x2B, 0xF0, 0xD6, 0x92, 0x97, 0xDC, 0xFA, 0x5F,  // +......_
                            /* 02F8 */  0x85, 0x98, 0xD5, 0xBB, 0x86, 0x02, 0x47, 0xDC,  // ......G.
                            /* 0300 */  0xFE, 0xC5, 0x19, 0xE5, 0x1C, 0x7C, 0x56, 0x91,  // .....|V.
                            /* 0308 */  0x7F, 0x11, 0xFC, 0xFF, 0x32, 0x9F, 0x50, 0x83,  // ....2.P.
                            /* 0310 */  0x28, 0x77, 0xAA, 0x31, 0xAA, 0x6A, 0x25, 0xA8,  // (w.1.j%.
                            /* 0318 */  0xCB, 0x16, 0x84, 0x33, 0x9E, 0x55, 0x70, 0x83,  // ...3.Up.
                            /* 0320 */  0x98, 0x50, 0x6E, 0xAD, 0xEA, 0xB8, 0x4B, 0x2A,  // .Pn...K*
                            /* 0328 */  0xF2, 0x27, 0xD7, 0x17, 0xC4, 0xD7, 0x45, 0xBF,  // .'....E.
                            /* 0330 */  0x5D, 0xDE, 0x81, 0x5E, 0xD3, 0x59, 0x60, 0x90,  // ]..^.Y`.
                            /* 0338 */  0x00, 0xE3, 0xA4, 0xB0, 0xF0, 0x0A, 0x6D, 0x20,  // ......m 
                            /* 0340 */  0xD7, 0xFF, 0x60, 0xD0, 0xCE, 0x78, 0x18, 0x61,  // ..`..x.a
                            /* 0348 */  0x38, 0x17, 0x2A, 0x7A, 0x57, 0x4A, 0x4A, 0x42,  // 8.*zWJJB
                            /* 0350 */  0xF6, 0x14, 0x16, 0x63, 0xD2, 0x35, 0x4A, 0xCE,  // ...c.5J.
                            /* 0358 */  0x52, 0x3D, 0xF4, 0x74, 0xDE, 0x6B, 0x44, 0xAB,  // R=.t.kD.
                            /* 0360 */  0x28, 0x75, 0x31, 0x0B, 0x25, 0xC5, 0xC5, 0x86,  // (u1.%...
                            /* 0368 */  0xFA, 0x74, 0xC8, 0xE0, 0xB0, 0x79, 0xD8, 0x6C,  // .t...y.l
                            /* 0370 */  0x58, 0xDB, 0x91, 0x55, 0x81, 0xDB, 0xB4, 0x71,  // X..U...q
                            /* 0378 */  0x84, 0x30, 0x2A, 0x4F, 0x67, 0x8A, 0xE3, 0x68,  // .0*Og..h
                            /* 0380 */  0x7F, 0x5D, 0xF8, 0x38, 0x99, 0x67, 0xBF, 0x8C,  // .].8.g..
                            /* 0388 */  0x5D, 0x3E, 0x7B, 0x2E, 0x72, 0x49, 0x71, 0xB9,  // ]>{.rIq.
                            /* 0390 */  0xD5, 0xA3, 0x3A, 0x4B, 0x8C, 0x5F, 0x81, 0xAA,  // ..:K._..
                            /* 0398 */  0xE3, 0x88, 0x12, 0x97, 0x1B, 0x1F, 0x81, 0x4C,  // .......L
                            /* 03A0 */  0x3D, 0x62, 0xB8, 0x1D, 0x87, 0x75, 0x55, 0x05,  // =b...uU.
                            /* 03A8 */  0xAD, 0x99, 0xA5, 0x87, 0x36, 0x42, 0xE4, 0xD3,  // ....6B..
                            /* 03B0 */  0x55, 0xD6, 0x17, 0x2C, 0x03, 0xA0, 0xB2, 0xB3,  // U..,....
                            /* 03B8 */  0x26, 0x63, 0xEA, 0x77, 0xAF, 0x25, 0xF3, 0xA9,  // &c.w.%..
                            /* 03C0 */  0xA5, 0x84, 0x06, 0xD1, 0xB1, 0xD9, 0xDD, 0xCB,  // ........
                            /* 03C8 */  0x41, 0xE2, 0xE4, 0x06, 0xE1, 0xE3, 0x58, 0xD5,  // A.....X.
                            /* 03D0 */  0xCE, 0xE4, 0x1B, 0x51, 0xED, 0xF3, 0x38, 0x5B,  // ...Q..8[
                            /* 03D8 */  0xCA, 0x8C, 0x8F, 0x6B, 0x5D, 0x04, 0xE4, 0x9D,  // ...k]...
                            /* 03E0 */  0xA5, 0x3E, 0xA9, 0x9F, 0x3B, 0xF7, 0xDA, 0xBA,  // .>..;...
                            /* 03E8 */  0xC0, 0x4A, 0xC5, 0xEC, 0x39, 0xFF, 0x43, 0xBC,  // .J..9.C.
                            /* 03F0 */  0x97, 0x80, 0x11, 0xE0, 0x52, 0xC6, 0x1F, 0xFA,  // ....R...
                            /* 03F8 */  0x57, 0xFB, 0x2F, 0xC9, 0x9B, 0x87, 0xB2, 0xDD,  // W./.....
                            /* 0400 */  0x38, 0xA9, 0xE5, 0xDB, 0x37, 0x44, 0xF6, 0x24,  // 8...7D.$
                            /* 0408 */  0x73, 0x39, 0xB1, 0xDB, 0x52, 0xA6, 0x08, 0x3F,  // s9..R..?
                            /* 0410 */  0x99, 0x9E, 0x02, 0x25, 0x3F, 0x5F, 0x6E, 0xE2,  // ...%?_n.
                            /* 0418 */  0xAC, 0x14, 0x48, 0x0F, 0xED, 0x9A, 0xC3, 0xCF,  // ..H.....
                            /* 0420 */  0xB9, 0x48, 0xEB, 0xD0, 0x55, 0xAC, 0x65, 0xF2,  // .H..U.e.
                            /* 0428 */  0x55, 0xDF, 0x6B, 0x73, 0x01, 0x37, 0x4D, 0x1E,  // U.ks.7M.
                            /* 0430 */  0x00, 0x06, 0xE4, 0xD1, 0xC6, 0xE5, 0xB8, 0x8E,  // ........
                            /* 0438 */  0xDF, 0x1E, 0xFB, 0x4E, 0x4D, 0xFC, 0x60, 0x59,  // ...NM.`Y
                            /* 0440 */  0x01, 0x5A, 0xD2, 0xCB, 0xD7, 0x26, 0x76, 0xE3,  // .Z...&v.
                            /* 0448 */  0xA6, 0x5B, 0x5E                                 // .[^
                        }
                    })
                }
                Default
                {
                    Return (Package (0x01)
                    {
                        Buffer (0x07BE)
                        {
                            /* 0000 */  0xE5, 0x1F, 0x94, 0x00, 0x00, 0x00, 0x00, 0x02,  // ........
                            /* 0008 */  0x00, 0x00, 0x00, 0x40, 0x67, 0x64, 0x64, 0x76,  // ...@gddv
                            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x4F, 0x45, 0x4D, 0x20,  // ....OEM 
                            /* 0030 */  0x45, 0x78, 0x70, 0x6F, 0x72, 0x74, 0x65, 0x64,  // Exported
                            /* 0038 */  0x20, 0x44, 0x61, 0x74, 0x61, 0x56, 0x61, 0x75,  //  DataVau
                            /* 0040 */  0x6C, 0x74, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // lt......
                            /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x3F, 0x1A, 0x04, 0x92,  // ....?...
                            /* 0070 */  0xCB, 0x78, 0x4B, 0x34, 0xE8, 0x12, 0x7F, 0x61,  // .xK4...a
                            /* 0078 */  0x56, 0x6C, 0x06, 0x60, 0xDE, 0x1B, 0xF8, 0x14,  // Vl.`....
                            /* 0080 */  0x8A, 0x40, 0x6F, 0x31, 0x80, 0xAE, 0x5E, 0xE1,  // .@o1..^.
                            /* 0088 */  0xAB, 0xF4, 0x6D, 0x31, 0x2A, 0x07, 0x00, 0x00,  // ..m1*...
                            /* 0090 */  0x52, 0x45, 0x50, 0x4F, 0x5D, 0x00, 0x00, 0x00,  // REPO]...
                            /* 0098 */  0x01, 0x89, 0xD2, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                            /* 00A0 */  0x00, 0x00, 0x72, 0x87, 0xCD, 0xFF, 0x6D, 0x24,  // ..r...m$
                            /* 00A8 */  0x47, 0xDB, 0x3D, 0x24, 0x92, 0xB4, 0x16, 0x6F,  // G.=$...o
                            /* 00B0 */  0x45, 0xD8, 0xC3, 0xF5, 0x66, 0x14, 0x9F, 0x22,  // E...f.."
                            /* 00B8 */  0xD7, 0xF7, 0xDE, 0x67, 0x90, 0x9A, 0xA2, 0x0D,  // ...g....
                            /* 00C0 */  0x39, 0x25, 0xAD, 0xC3, 0x1A, 0xAD, 0x52, 0x0B,  // 9%....R.
                            /* 00C8 */  0x75, 0x38, 0xE1, 0xA4, 0x14, 0x41, 0x82, 0xEE,  // u8...A..
                            /* 00D0 */  0xA1, 0x41, 0x9C, 0xE9, 0x84, 0xEA, 0x93, 0x33,  // .A.....3
                            /* 00D8 */  0x91, 0x57, 0x6E, 0x78, 0xFA, 0xF9, 0x4A, 0x1E,  // .Wnx..J.
                            /* 00E0 */  0xBC, 0xC8, 0xC9, 0xF8, 0xAA, 0x39, 0x7D, 0x95,  // .....9}.
                            /* 00E8 */  0xBA, 0xA9, 0x8F, 0x64, 0xB6, 0x17, 0x3A, 0x8B,  // ...d..:.
                            /* 00F0 */  0xCC, 0xF7, 0xF6, 0xF3, 0x4C, 0x44, 0x72, 0xA5,  // ....LDr.
                            /* 00F8 */  0x3F, 0x59, 0xFF, 0x10, 0xDF, 0x30, 0x13, 0x23,  // ?Y...0.#
                            /* 0100 */  0x70, 0x2E, 0x32, 0xD6, 0x51, 0xE4, 0x1B, 0xCE,  // p.2.Q...
                            /* 0108 */  0xF1, 0x75, 0x6D, 0x82, 0xD2, 0xC2, 0xA9, 0x60,  // .um....`
                            /* 0110 */  0x0F, 0x3E, 0xDD, 0xFC, 0x90, 0x60, 0x02, 0x28,  // .>...`.(
                            /* 0118 */  0x44, 0x04, 0x32, 0xC4, 0x63, 0x20, 0x0A, 0xAC,  // D.2.c ..
                            /* 0120 */  0x01, 0x4C, 0x8F, 0x23, 0x53, 0x38, 0x33, 0xE1,  // .L.#S83.
                            /* 0128 */  0x47, 0xA6, 0x1D, 0xB9, 0x27, 0xF0, 0x53, 0x15,  // G...'.S.
                            /* 0130 */  0x9F, 0xA8, 0x75, 0x3A, 0xAE, 0x1B, 0xCD, 0x22,  // ..u:..."
                            /* 0138 */  0xD1, 0xE5, 0xA3, 0xCB, 0x2E, 0x4A, 0x82, 0xC9,  // .....J..
                            /* 0140 */  0xF7, 0x4D, 0xFD, 0x31, 0x70, 0xDB, 0xCB, 0x92,  // .M.1p...
                            /* 0148 */  0x5A, 0x10, 0xAF, 0xBD, 0xFF, 0x69, 0xD1, 0xDF,  // Z....i..
                            /* 0150 */  0xB9, 0x81, 0x43, 0xBD, 0x45, 0xB6, 0xBF, 0x0A,  // ..C.E...
                            /* 0158 */  0x1D, 0x0C, 0xE8, 0xF4, 0x1A, 0x94, 0x77, 0xB2,  // ......w.
                            /* 0160 */  0xA0, 0x2B, 0x1B, 0xDE, 0xDB, 0x90, 0x9F, 0x08,  // .+......
                            /* 0168 */  0xA0, 0x74, 0xC8, 0xAC, 0x97, 0x8E, 0x3A, 0xC7,  // .t....:.
                            /* 0170 */  0x69, 0x91, 0x55, 0x73, 0x5D, 0x17, 0x6D, 0x20,  // i.Us].m 
                            /* 0178 */  0xC4, 0xDD, 0xAD, 0x5D, 0x36, 0x7F, 0x76, 0xCB,  // ...]6.v.
                            /* 0180 */  0x69, 0x02, 0xE0, 0x6D, 0x92, 0x70, 0x8C, 0x30,  // i..m.p.0
                            /* 0188 */  0x05, 0x97, 0x5E, 0x48, 0xB3, 0xC6, 0x4C, 0x05,  // ..^H..L.
                            /* 0190 */  0xCE, 0x0B, 0x7A, 0xB8, 0x7B, 0x58, 0x42, 0xB7,  // ..z.{XB.
                            /* 0198 */  0x47, 0xA1, 0x5C, 0xCE, 0x6B, 0xCF, 0x24, 0x30,  // G.\.k.$0
                            /* 01A0 */  0xFF, 0x34, 0xE8, 0x96, 0xF3, 0xCF, 0x14, 0x86,  // .4......
                            /* 01A8 */  0xDF, 0x35, 0x3D, 0x2C, 0x53, 0xE4, 0x4F, 0x1D,  // .5=,S.O.
                            /* 01B0 */  0xB8, 0xFE, 0x42, 0x99, 0x66, 0x30, 0x5B, 0x87,  // ..B.f0[.
                            /* 01B8 */  0x59, 0xB9, 0x36, 0xBF, 0x7F, 0x14, 0x40, 0xDF,  // Y.6...@.
                            /* 01C0 */  0x7C, 0xBF, 0xF5, 0x93, 0xFC, 0x40, 0x0E, 0xE2,  // |....@..
                            /* 01C8 */  0xBF, 0x2D, 0x57, 0x6D, 0xF1, 0xD4, 0x97, 0x81,  // .-Wm....
                            /* 01D0 */  0xB4, 0x6B, 0x0C, 0x23, 0xDB, 0x84, 0x9B, 0x50,  // .k.#...P
                            /* 01D8 */  0x47, 0x70, 0x59, 0x93, 0xE9, 0xF0, 0x42, 0x10,  // GpY...B.
                            /* 01E0 */  0x13, 0x1F, 0xEC, 0xB1, 0x86, 0x7B, 0x74, 0x9E,  // .....{t.
                            /* 01E8 */  0x61, 0x3E, 0x41, 0x72, 0x0B, 0x3E, 0x17, 0xA0,  // a>Ar.>..
                            /* 01F0 */  0x1A, 0x34, 0x1A, 0x60, 0x79, 0xBC, 0xE5, 0xA1,  // .4.`y...
                            /* 01F8 */  0x81, 0x04, 0x21, 0xFB, 0xAC, 0x45, 0xA0, 0x23,  // ..!..E.#
                            /* 0200 */  0x5F, 0xD3, 0x13, 0xDE, 0x1B, 0x1F, 0x9E, 0x02,  // _.......
                            /* 0208 */  0xD1, 0x02, 0x29, 0x21, 0x54, 0xAD, 0x9F, 0xA2,  // ..)!T...
                            /* 0210 */  0x19, 0x09, 0xDB, 0x0F, 0x63, 0xB8, 0x6D, 0x59,  // ....c.mY
                            /* 0218 */  0x2A, 0xA2, 0xC7, 0xD1, 0x20, 0x99, 0x88, 0x31,  // *... ..1
                            /* 0220 */  0x59, 0xD9, 0x84, 0x95, 0x98, 0x72, 0xD0, 0xBF,  // Y....r..
                            /* 0228 */  0xBD, 0x20, 0xAC, 0x15, 0xD6, 0x26, 0x75, 0x64,  // . ...&ud
                            /* 0230 */  0xA6, 0x3D, 0xE0, 0x2A, 0x2B, 0x4C, 0x98, 0x62,  // .=.*+L.b
                            /* 0238 */  0xB5, 0x95, 0xD7, 0xB0, 0x7B, 0x62, 0x93, 0xA0,  // ....{b..
                            /* 0240 */  0xC5, 0x4C, 0x5E, 0xAD, 0x2F, 0x1E, 0xC9, 0xEF,  // .L^./...
                            /* 0248 */  0x1B, 0x36, 0xE2, 0xCD, 0xFB, 0x63, 0x4F, 0xAE,  // .6...cO.
                            /* 0250 */  0x7F, 0xAE, 0x81, 0x01, 0xB2, 0x29, 0xCE, 0xE2,  // .....)..
                            /* 0258 */  0x03, 0xC2, 0xE6, 0xDB, 0x38, 0x65, 0x1A, 0xD1,  // ....8e..
                            /* 0260 */  0xC5, 0xAC, 0x3B, 0xAD, 0x4D, 0xFC, 0x06, 0xA9,  // ..;.M...
                            /* 0268 */  0xF4, 0xEA, 0x8D, 0xF5, 0x6C, 0x79, 0x0B, 0xF0,  // ....ly..
                            /* 0270 */  0x51, 0x93, 0x49, 0x42, 0x77, 0xBB, 0x5D, 0xB9,  // Q.IBw.].
                            /* 0278 */  0x1B, 0x73, 0x8E, 0xD9, 0xFB, 0xA5, 0xBE, 0x8B,  // .s......
                            /* 0280 */  0xCC, 0xCD, 0x50, 0xA8, 0xD9, 0x73, 0x79, 0x42,  // ..P..syB
                            /* 0288 */  0x03, 0xBB, 0x91, 0xDB, 0x09, 0x0D, 0xD2, 0x9A,  // ........
                            /* 0290 */  0x69, 0xE9, 0x18, 0x21, 0x49, 0x6D, 0xFD, 0xA6,  // i..!Im..
                            /* 0298 */  0xB0, 0x19, 0xDA, 0xF5, 0x61, 0x31, 0x61, 0xC0,  // ....a1a.
                            /* 02A0 */  0x73, 0xD4, 0x89, 0x00, 0xB1, 0x7A, 0xA4, 0xB0,  // s....z..
                            /* 02A8 */  0x9E, 0x45, 0x83, 0x96, 0xA0, 0xC4, 0xD1, 0x2B,  // .E.....+
                            /* 02B0 */  0xFD, 0x7D, 0x53, 0x9C, 0xD4, 0x89, 0x2B, 0x7B,  // .}S...+{
                            /* 02B8 */  0xA1, 0x95, 0xF6, 0x0B, 0x95, 0x14, 0x25, 0x6C,  // ......%l
                            /* 02C0 */  0xE9, 0xB0, 0x22, 0xB9, 0xFF, 0xD3, 0xDB, 0xDA,  // ..".....
                            /* 02C8 */  0x1E, 0x97, 0x91, 0x11, 0x44, 0x47, 0x30, 0xD2,  // ....DG0.
                            /* 02D0 */  0x15, 0xB5, 0xF7, 0xFB, 0xA0, 0x30, 0x00, 0xC3,  // .....0..
                            /* 02D8 */  0x3C, 0xFC, 0xD0, 0xDE, 0x27, 0x67, 0xB0, 0x05,  // <...'g..
                            /* 02E0 */  0x81, 0xAD, 0x64, 0x73, 0x54, 0xFC, 0x84, 0x25,  // ..dsT..%
                            /* 02E8 */  0x30, 0x9B, 0x78, 0x4E, 0x67, 0xCD, 0xCB, 0x87,  // 0.xNg...
                            /* 02F0 */  0xD2, 0xCB, 0x64, 0x53, 0xF6, 0x0A, 0x39, 0x7B,  // ..dS..9{
                            /* 02F8 */  0x21, 0x55, 0x77, 0xB3, 0xB0, 0xF3, 0xC4, 0x49,  // !Uw....I
                            /* 0300 */  0xE7, 0x5F, 0x86, 0x8D, 0x21, 0x55, 0x3B, 0xE3,  // ._..!U;.
                            /* 0308 */  0xDE, 0x11, 0xE2, 0x2E, 0x07, 0x53, 0xEE, 0xF9,  // .....S..
                            /* 0310 */  0xDB, 0x2F, 0x50, 0x7E, 0x0E, 0x22, 0x78, 0xAF,  // ./P~."x.
                            /* 0318 */  0x13, 0x0B, 0x63, 0x2F, 0x16, 0xBA, 0xA4, 0x6D,  // ..c/...m
                            /* 0320 */  0x89, 0x1A, 0xF7, 0xE9, 0x51, 0xF6, 0xA7, 0xD7,  // ....Q...
                            /* 0328 */  0xF4, 0x20, 0x8E, 0xF9, 0x40, 0xF9, 0xC0, 0xA4,  // . ..@...
                            /* 0330 */  0x98, 0x86, 0x57, 0x95, 0xA9, 0x35, 0xEC, 0x1A,  // ..W..5..
                            /* 0338 */  0x12, 0xD4, 0x55, 0x1E, 0xFF, 0x70, 0xDB, 0x42,  // ..U..p.B
                            /* 0340 */  0xE7, 0x4A, 0xEC, 0x62, 0x34, 0xE3, 0x00, 0xF2,  // .J.b4...
                            /* 0348 */  0x53, 0xD4, 0xCC, 0x8E, 0x86, 0x51, 0xE5, 0xDD,  // S....Q..
                            /* 0350 */  0xA3, 0x75, 0x53, 0x86, 0xD0, 0xB2, 0xD4, 0x32,  // .uS....2
                            /* 0358 */  0x1E, 0x98, 0xA2, 0x53, 0x2E, 0xF6, 0x2D, 0xD9,  // ...S..-.
                            /* 0360 */  0xD2, 0x39, 0x05, 0x33, 0x34, 0x00, 0x76, 0x32,  // .9.34.v2
                            /* 0368 */  0x4D, 0xA2, 0x45, 0x3A, 0x8B, 0xD6, 0x22, 0xB9,  // M.E:..".
                            /* 0370 */  0x4C, 0x99, 0x62, 0xF8, 0x59, 0xDE, 0x55, 0xD6,  // L.b.Y.U.
                            /* 0378 */  0xBE, 0x27, 0x5C, 0xBB, 0x9D, 0x40, 0x27, 0xB5,  // .'\..@'.
                            /* 0380 */  0xCB, 0x1D, 0x51, 0x6F, 0x2B, 0x7F, 0xB3, 0x38,  // ..Qo+..8
                            /* 0388 */  0xD7, 0x7E, 0x51, 0x96, 0x2F, 0xBC, 0xE6, 0xF9,  // .~Q./...
                            /* 0390 */  0x35, 0xC7, 0x67, 0x5F, 0x27, 0x50, 0x99, 0xF2,  // 5.g_'P..
                            /* 0398 */  0x6F, 0xAF, 0x03, 0xFE, 0x30, 0xC2, 0x2D, 0xCB,  // o...0.-.
                            /* 03A0 */  0x9E, 0x30, 0x70, 0x7F, 0x85, 0x32, 0x48, 0xE2,  // .0p..2H.
                            /* 03A8 */  0xDB, 0xF1, 0x1A, 0xD3, 0xBB, 0x4F, 0xEF, 0xC8,  // .....O..
                            /* 03B0 */  0x7C, 0xBF, 0x9F, 0xBC, 0xC5, 0x80, 0xD8, 0x35,  // |......5
                            /* 03B8 */  0x85, 0x9C, 0x31, 0xCC, 0x7A, 0x5E, 0xEF, 0xD4,  // ..1.z^..
                            /* 03C0 */  0x98, 0xE3, 0xA4, 0xEF, 0xF4, 0x91, 0xB0, 0x6B,  // .......k
                            /* 03C8 */  0xD9, 0x28, 0xC9, 0x70, 0xC7, 0x8D, 0x4E, 0x4D,  // .(.p..NM
                            /* 03D0 */  0x54, 0x46, 0xC8, 0x6F, 0xA5, 0x14, 0xA0, 0x62,  // TF.o...b
                            /* 03D8 */  0x47, 0x43, 0x30, 0x0A, 0x59, 0xDD, 0x65, 0xC9,  // GC0.Y.e.
                            /* 03E0 */  0x0A, 0xA8, 0xC3, 0x45, 0xC3, 0xCC, 0xA9, 0x56,  // ...E...V
                            /* 03E8 */  0x80, 0x9B, 0xC0, 0x17, 0x98, 0xFB, 0xDA, 0x50,  // .......P
                            /* 03F0 */  0x98, 0x27, 0x71, 0xEF, 0xED, 0x81, 0x63, 0x9A,  // .'q...c.
                            /* 03F8 */  0x9E, 0x73, 0x06, 0x29, 0xCA, 0x10, 0x91, 0x30,  // .s.)...0
                            /* 0400 */  0x51, 0x6E, 0xC2, 0x09, 0xF4, 0x78, 0x06, 0xA5,  // Qn...x..
                            /* 0408 */  0xB9, 0x4B, 0x5A, 0xF0, 0x08, 0xE6, 0x33, 0xC2,  // .KZ...3.
                            /* 0410 */  0x23, 0x3D, 0x2B, 0x21, 0x5D, 0xB3, 0x99, 0x5B,  // #=+!]..[
                            /* 0418 */  0x21, 0xFF, 0x22, 0xB7, 0x19, 0xBB, 0x2B, 0xD3,  // !."...+.
                            /* 0420 */  0x06, 0x7A, 0x86, 0xDD, 0x29, 0x50, 0xF1, 0xE6,  // .z..)P..
                            /* 0428 */  0xFE, 0x70, 0x35, 0xC5, 0x0F, 0x2F, 0x34, 0x3F,  // .p5../4?
                            /* 0430 */  0xE8, 0x4C, 0x3D, 0x4C, 0xD7, 0xEE, 0x6E, 0x5E,  // .L=L..n^
                            /* 0438 */  0x03, 0x93, 0xF1, 0x71, 0xD7, 0x96, 0x2B, 0x1F,  // ...q..+.
                            /* 0440 */  0x95, 0xE6, 0xE2, 0x49, 0xE1, 0x61, 0x36, 0x9B,  // ...I.a6.
                            /* 0448 */  0x86, 0x19, 0xAA, 0x00, 0xE2, 0x76, 0x80, 0x37,  // .....v.7
                            /* 0450 */  0x48, 0xB2, 0x92, 0x80, 0x92, 0x05, 0xA8, 0x9D,  // H.......
                            /* 0458 */  0x71, 0x00, 0x8C, 0x21, 0x15, 0xA8, 0x07, 0x54,  // q..!...T
                            /* 0460 */  0x55, 0xAC, 0xB7, 0x4F, 0x25, 0xF3, 0x6A, 0x68,  // U..O%.jh
                            /* 0468 */  0x25, 0x4D, 0x1B, 0x6F, 0x9E, 0x91, 0x2D, 0x6B,  // %M.o..-k
                            /* 0470 */  0x9A, 0xDB, 0x44, 0x24, 0xF3, 0xD4, 0xA0, 0x73,  // ..D$...s
                            /* 0478 */  0x58, 0x72, 0xE6, 0xCB, 0xDB, 0x81, 0xBD, 0xA2,  // Xr......
                            /* 0480 */  0x71, 0x3E, 0x64, 0x00, 0x32, 0xCF, 0xF9, 0xF9,  // q>d.2...
                            /* 0488 */  0xDA, 0x2C, 0xCA, 0x03, 0x97, 0xBC, 0x74, 0x7F,  // .,....t.
                            /* 0490 */  0xD4, 0xB1, 0x41, 0x5E, 0xC9, 0x91, 0x0A, 0xDC,  // ..A^....
                            /* 0498 */  0x43, 0x68, 0x51, 0x34, 0x28, 0x45, 0xA9, 0x80,  // ChQ4(E..
                            /* 04A0 */  0xA3, 0x8E, 0x3F, 0xC9, 0x36, 0x6D, 0x58, 0xF1,  // ..?.6mX.
                            /* 04A8 */  0x3A, 0x70, 0x7A, 0xD4, 0xA4, 0x68, 0xFB, 0x02,  // :pz..h..
                            /* 04B0 */  0x07, 0xFF, 0xE3, 0xA0, 0x7B, 0xA6, 0xD0, 0x29,  // ....{..)
                            /* 04B8 */  0x3D, 0xDA, 0x9B, 0x00, 0x01, 0x0D, 0xC1, 0xB2,  // =.......
                            /* 04C0 */  0x11, 0x20, 0x3D, 0x5D, 0x2B, 0x57, 0x71, 0xDE,  // . =]+Wq.
                            /* 04C8 */  0xD8, 0x36, 0xF2, 0x5C, 0x54, 0xC0, 0xA4, 0xD8,  // .6.\T...
                            /* 04D0 */  0x0E, 0x46, 0x21, 0xC9, 0xE8, 0xDF, 0x47, 0x24,  // .F!...G$
                            /* 04D8 */  0x76, 0x3A, 0x19, 0x2C, 0x98, 0x27, 0xFA, 0xCC,  // v:.,.'..
                            /* 04E0 */  0x1A, 0xAE, 0x8C, 0xC1, 0xD3, 0x74, 0x1F, 0x56,  // .....t.V
                            /* 04E8 */  0xD2, 0xCB, 0xF5, 0x60, 0xF5, 0xD6, 0x05, 0x5C,  // ...`...\
                            /* 04F0 */  0x98, 0xE6, 0xE1, 0x7D, 0x96, 0xB7, 0x79, 0xDB,  // ...}..y.
                            /* 04F8 */  0x00, 0xB1, 0x35, 0x4C, 0x99, 0x20, 0xBC, 0x88,  // ..5L. ..
                            /* 0500 */  0xF6, 0x6E, 0x32, 0x48, 0x27, 0x5D, 0x22, 0xBF,  // .n2H']".
                            /* 0508 */  0x64, 0x1E, 0x26, 0x2D, 0xE1, 0x4B, 0x68, 0x46,  // d.&-.KhF
                            /* 0510 */  0x5B, 0x45, 0xA8, 0xA9, 0x43, 0x40, 0x1D, 0x8F,  // [E..C@..
                            /* 0518 */  0x13, 0x1B, 0x15, 0xF9, 0xD0, 0xED, 0xC6, 0x70,  // .......p
                            /* 0520 */  0xBB, 0x5D, 0x40, 0x18, 0x90, 0x27, 0xE9, 0x80,  // .]@..'..
                            /* 0528 */  0xF0, 0x58, 0x8A, 0xD4, 0x6E, 0x7E, 0xBC, 0xE9,  // .X..n~..
                            /* 0530 */  0xDB, 0x99, 0x16, 0x77, 0x35, 0xAA, 0x92, 0x7C,  // ...w5..|
                            /* 0538 */  0x98, 0x0B, 0xAB, 0xAC, 0xBD, 0xC0, 0x14, 0x2B,  // .......+
                            /* 0540 */  0x3F, 0x79, 0x92, 0xEB, 0x11, 0xEC, 0x24, 0x5A,  // ?y....$Z
                            /* 0548 */  0x2E, 0x7A, 0xF2, 0xF6, 0x11, 0x4E, 0x1C, 0xB7,  // .z...N..
                            /* 0550 */  0xFE, 0xF5, 0xF6, 0x19, 0x4F, 0xDE, 0xB1, 0x92,  // ....O...
                            /* 0558 */  0x2E, 0xA9, 0x80, 0x53, 0x0B, 0xB0, 0x6B, 0x5C,  // ...S..k\
                            /* 0560 */  0x1E, 0xC5, 0x0A, 0x13, 0x0F, 0xFE, 0x2B, 0x53,  // ......+S
                            /* 0568 */  0x93, 0x37, 0x64, 0x35, 0x6D, 0x0A, 0xFE, 0xEA,  // .7d5m...
                            /* 0570 */  0xF2, 0x24, 0x4B, 0x08, 0x04, 0x60, 0x4C, 0xEB,  // .$K..`L.
                            /* 0578 */  0x5F, 0x3F, 0xA4, 0x4E, 0x55, 0x84, 0xAC, 0xBB,  // _?.NU...
                            /* 0580 */  0x3B, 0xA2, 0xE8, 0xF7, 0x98, 0x1F, 0x67, 0xF9,  // ;.....g.
                            /* 0588 */  0xA9, 0xC3, 0x09, 0xAB, 0x1E, 0x83, 0x67, 0xF9,  // ......g.
                            /* 0590 */  0xA8, 0x85, 0x95, 0x8C, 0x6C, 0xE8, 0x69, 0xCB,  // ....l.i.
                            /* 0598 */  0x2A, 0xE1, 0x8A, 0x67, 0xA7, 0xB7, 0x56, 0x7E,  // *..g..V~
                            /* 05A0 */  0x17, 0x0C, 0xAA, 0x1A, 0x0C, 0x18, 0x21, 0x2D,  // ......!-
                            /* 05A8 */  0x05, 0x82, 0x46, 0x8F, 0xF8, 0x48, 0x1A, 0x68,  // ..F..H.h
                            /* 05B0 */  0x33, 0x0E, 0x5D, 0x7D, 0x77, 0x5A, 0xB8, 0x1B,  // 3.]}wZ..
                            /* 05B8 */  0x42, 0xCA, 0xD4, 0xDC, 0x02, 0xC2, 0x94, 0x6C,  // B......l
                            /* 05C0 */  0xE2, 0xEB, 0x4E, 0xD4, 0xF5, 0x90, 0x00, 0xE7,  // ..N.....
                            /* 05C8 */  0xC1, 0xD0, 0x54, 0xF8, 0x05, 0x05, 0x4E, 0x49,  // ..T...NI
                            /* 05D0 */  0xA8, 0x62, 0xA3, 0x3E, 0x2F, 0x2E, 0x0F, 0x57,  // .b.>/..W
                            /* 05D8 */  0x27, 0x27, 0x9B, 0x6B, 0x68, 0x31, 0x96, 0x9F,  // ''.kh1..
                            /* 05E0 */  0x16, 0x49, 0xF9, 0xD5, 0xA1, 0x56, 0xFB, 0x7B,  // .I...V.{
                            /* 05E8 */  0x29, 0xDA, 0x9F, 0x45, 0xB3, 0x93, 0x02, 0xAD,  // )..E....
                            /* 05F0 */  0x69, 0x92, 0x73, 0x27, 0xBE, 0xA0, 0x73, 0xF5,  // i.s'..s.
                            /* 05F8 */  0x6C, 0x62, 0xBB, 0x34, 0x7D, 0xB8, 0x15, 0xE1,  // lb.4}...
                            /* 0600 */  0xF8, 0x73, 0x47, 0x8F, 0xA6, 0x17, 0x19, 0x2D,  // .sG....-
                            /* 0608 */  0x7F, 0xE8, 0x66, 0xC7, 0xEE, 0xD4, 0xAD, 0x70,  // ..f....p
                            /* 0610 */  0x51, 0x43, 0x5A, 0x1B, 0x8F, 0x67, 0x24, 0x26,  // QCZ..g$&
                            /* 0618 */  0x55, 0x9A, 0x6A, 0x13, 0xDE, 0x13, 0x56, 0x61,  // U.j...Va
                            /* 0620 */  0x0E, 0x05, 0x23, 0x62, 0x52, 0xCB, 0x85, 0xA5,  // ..#bR...
                            /* 0628 */  0xBD, 0x7E, 0x0D, 0x50, 0x27, 0xA4, 0x77, 0x23,  // .~.P'.w#
                            /* 0630 */  0xF7, 0x08, 0x5E, 0x65, 0xF4, 0xFD, 0x56, 0x7B,  // ..^e..V{
                            /* 0638 */  0x84, 0xE8, 0x61, 0xDE, 0x97, 0xB3, 0x50, 0xFD,  // ..a...P.
                            /* 0640 */  0x94, 0xC2, 0x81, 0xFF, 0xF3, 0x27, 0x01, 0x1B,  // .....'..
                            /* 0648 */  0x1F, 0x7D, 0x20, 0x71, 0x73, 0xCD, 0x3F, 0x65,  // .} qs.?e
                            /* 0650 */  0x11, 0xA9, 0xFC, 0xE9, 0xD7, 0xE8, 0x8F, 0xAF,  // ........
                            /* 0658 */  0x6C, 0x13, 0x9A, 0xCB, 0xF4, 0xF4, 0x54, 0x35,  // l.....T5
                            /* 0660 */  0x44, 0x9E, 0xE7, 0x06, 0x60, 0xF5, 0x5D, 0x85,  // D...`.].
                            /* 0668 */  0x24, 0xB3, 0x2C, 0x7E, 0x2B, 0x77, 0x21, 0x61,  // $.,~+w!a
                            /* 0670 */  0x59, 0x59, 0x3C, 0x13, 0xF2, 0xB4, 0x07, 0x66,  // YY<....f
                            /* 0678 */  0x73, 0xFB, 0x45, 0x7C, 0xB0, 0xAF, 0xC9, 0xD4,  // s.E|....
                            /* 0680 */  0x68, 0xBF, 0x1B, 0x22, 0xEE, 0xBC, 0xCA, 0x6C,  // h.."...l
                            /* 0688 */  0xD8, 0xA7, 0x5F, 0x57, 0xB0, 0xE0, 0x2B, 0xA4,  // .._W..+.
                            /* 0690 */  0x74, 0x31, 0xA0, 0x20, 0x96, 0x87, 0xCD, 0x5D,  // t1. ...]
                            /* 0698 */  0xCD, 0xC7, 0x96, 0xB9, 0x6A, 0xE8, 0xF2, 0x6C,  // ....j..l
                            /* 06A0 */  0x94, 0x99, 0x3A, 0x8B, 0x27, 0x27, 0x91, 0x94,  // ..:.''..
                            /* 06A8 */  0x8B, 0x4A, 0x1C, 0x96, 0x4B, 0x35, 0xF3, 0xAB,  // .J..K5..
                            /* 06B0 */  0x82, 0xB8, 0x37, 0xC8, 0x8F, 0xFA, 0x53, 0xC1,  // ..7...S.
                            /* 06B8 */  0x77, 0x23, 0x46, 0x5B, 0xCC, 0x4C, 0xA0, 0x7C,  // w#F[.L.|
                            /* 06C0 */  0x03, 0x63, 0x01, 0x9F, 0x11, 0x23, 0x17, 0x22,  // .c...#."
                            /* 06C8 */  0xA0, 0x11, 0x42, 0x48, 0x24, 0xBA, 0x7D, 0x8F,  // ..BH$.}.
                            /* 06D0 */  0x0C, 0x37, 0x0B, 0x16, 0xF7, 0x6D, 0xD5, 0x71,  // .7...m.q
                            /* 06D8 */  0x7E, 0x8D, 0xCB, 0x90, 0xF3, 0x40, 0x21, 0x69,  // ~....@!i
                            /* 06E0 */  0xB3, 0x15, 0xBA, 0x5E, 0xDA, 0x7A, 0xB8, 0xAA,  // ...^.z..
                            /* 06E8 */  0xD5, 0x82, 0xE7, 0xEB, 0x2F, 0xAF, 0x32, 0x48,  // ..../.2H
                            /* 06F0 */  0x57, 0x53, 0x14, 0x54, 0xFF, 0x6C, 0xBC, 0x5D,  // WS.T.l.]
                            /* 06F8 */  0x4B, 0xC6, 0xD5, 0x13, 0xFE, 0x3C, 0x0D, 0x0C,  // K....<..
                            /* 0700 */  0x11, 0x01, 0x0B, 0xEE, 0x6D, 0x2A, 0xE1, 0x98,  // ....m*..
                            /* 0708 */  0xE7, 0x58, 0x84, 0x24, 0xBB, 0xC0, 0x41, 0xB1,  // .X.$..A.
                            /* 0710 */  0x74, 0x99, 0xC0, 0x14, 0xA5, 0x00, 0x55, 0xF0,  // t.....U.
                            /* 0718 */  0x6E, 0x41, 0x9B, 0x46, 0x8D, 0x4E, 0x10, 0x31,  // nA.F.N.1
                            /* 0720 */  0xA9, 0x66, 0x04, 0xF3, 0x5C, 0x13, 0x14, 0x43,  // .f..\..C
                            /* 0728 */  0xEE, 0x36, 0x0D, 0x76, 0x56, 0xAE, 0x74, 0x09,  // .6.vV.t.
                            /* 0730 */  0x90, 0xB1, 0x5D, 0x10, 0xCE, 0xF3, 0x89, 0x64,  // ..]....d
                            /* 0738 */  0x43, 0xC4, 0x90, 0x6C, 0x3F, 0x60, 0xC1, 0xC3,  // C..l?`..
                            /* 0740 */  0x9E, 0x5C, 0x3C, 0x78, 0x60, 0xC9, 0xA2, 0x13,  // .\<x`...
                            /* 0748 */  0x11, 0x02, 0x98, 0x31, 0xDE, 0x64, 0xE3, 0xC9,  // ...1.d..
                            /* 0750 */  0x41, 0xC4, 0xC4, 0x1B, 0xEA, 0x73, 0x1B, 0x98,  // A....s..
                            /* 0758 */  0xEC, 0xF8, 0x54, 0xED, 0xAC, 0x28, 0x9B, 0x38,  // ..T..(.8
                            /* 0760 */  0xC4, 0xFC, 0xC2, 0x2D, 0xA7, 0xBA, 0x07, 0xDD,  // ...-....
                            /* 0768 */  0x1C, 0xE2, 0x29, 0x5A, 0xFB, 0xCA, 0xB9, 0x1B,  // ..)Z....
                            /* 0770 */  0x13, 0x33, 0x28, 0xE3, 0xDC, 0xBD, 0x4D, 0xFB,  // .3(...M.
                            /* 0778 */  0xBE, 0x28, 0x23, 0x72, 0xEF, 0x52, 0x2D, 0xA7,  // .(#r.R-.
                            /* 0780 */  0x06, 0x4F, 0x66, 0x27, 0xD2, 0x35, 0x23, 0x71,  // .Of'.5#q
                            /* 0788 */  0x12, 0x1C, 0x47, 0x78, 0x6C, 0x04, 0x8F, 0x57,  // ..Gxl..W
                            /* 0790 */  0x44, 0xDB, 0xD9, 0x81, 0x24, 0x56, 0x70, 0xA4,  // D...$Vp.
                            /* 0798 */  0x4B, 0xD9, 0x75, 0xDA, 0x09, 0x84, 0x35, 0xC4,  // K.u...5.
                            /* 07A0 */  0xF6, 0x63, 0x08, 0x38, 0x8E, 0xC5, 0x1C, 0xEB,  // .c.8....
                            /* 07A8 */  0x00, 0xB8, 0x5B, 0x65, 0x32, 0x4A, 0xF7, 0xDB,  // ..[e2J..
                            /* 07B0 */  0x5A, 0xEB, 0x4A, 0x3C, 0x0D, 0x10, 0x84, 0xAA,  // Z.J<....
                            /* 07B8 */  0x90, 0x8E, 0xA5, 0xE5, 0xAB, 0x06               // ......
                        }
                    })
                }

            }
        }

        Method (IMOK, 1, NotSerialized)
        {
            Return (Arg0)
        }
    }
}

