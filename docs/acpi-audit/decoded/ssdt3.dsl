/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt3.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00005D22 (23842)
 *     Revision         0x02
 *     Checksum         0x04
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00003000)
{
    External (_SB_.OSCP, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR01, DeviceObj)
    External (_SB_.PR02, DeviceObj)
    External (_SB_.PR03, DeviceObj)
    External (_SB_.PR04, DeviceObj)
    External (_SB_.PR05, DeviceObj)
    External (_SB_.PR06, DeviceObj)
    External (_SB_.PR07, DeviceObj)
    External (_SB_.PR08, DeviceObj)
    External (_SB_.PR09, DeviceObj)
    External (_SB_.PR10, DeviceObj)
    External (_SB_.PR11, DeviceObj)
    External (_SB_.PR12, DeviceObj)
    External (_SB_.PR13, DeviceObj)
    External (_SB_.PR14, DeviceObj)
    External (_SB_.PR15, DeviceObj)
    External (_SB_.PR16, DeviceObj)
    External (_SB_.PR17, DeviceObj)
    External (_SB_.PR18, DeviceObj)
    External (_SB_.PR19, DeviceObj)
    External (_SB_.PR20, DeviceObj)
    External (_SB_.PR21, DeviceObj)
    External (_SB_.PR22, DeviceObj)
    External (_SB_.PR23, DeviceObj)
    External (_SB_.PR24, DeviceObj)
    External (_SB_.PR25, DeviceObj)
    External (_SB_.PR26, DeviceObj)
    External (_SB_.PR27, DeviceObj)
    External (_SB_.PR28, DeviceObj)
    External (_SB_.PR29, DeviceObj)
    External (_SB_.PR30, DeviceObj)
    External (_SB_.PR31, DeviceObj)
    External (_SB_.PR32, DeviceObj)
    External (_SB_.PR33, DeviceObj)
    External (_SB_.PR34, DeviceObj)
    External (_SB_.PR35, DeviceObj)
    External (_SB_.PR36, DeviceObj)
    External (_SB_.PR37, DeviceObj)
    External (_SB_.PR38, DeviceObj)
    External (_SB_.PR39, DeviceObj)
    External (_SB_.PR40, DeviceObj)
    External (_SB_.PR41, DeviceObj)
    External (_SB_.PR42, DeviceObj)
    External (_SB_.PR43, DeviceObj)
    External (_SB_.PR44, DeviceObj)
    External (_SB_.PR45, DeviceObj)
    External (_SB_.PR46, DeviceObj)
    External (_SB_.PR47, DeviceObj)
    External (_SB_.PR48, DeviceObj)
    External (_SB_.PR49, DeviceObj)
    External (_SB_.PR50, DeviceObj)
    External (_SB_.PR51, DeviceObj)
    External (_SB_.PR52, DeviceObj)
    External (_SB_.PR53, DeviceObj)
    External (_SB_.PR54, DeviceObj)
    External (_SB_.PR55, DeviceObj)
    External (_SB_.PR56, DeviceObj)
    External (_SB_.PR57, DeviceObj)
    External (_SB_.PR58, DeviceObj)
    External (_SB_.PR59, DeviceObj)
    External (_SB_.PR60, DeviceObj)
    External (_SB_.PR61, DeviceObj)
    External (_SB_.PR62, DeviceObj)
    External (_SB_.PR63, DeviceObj)
    External (OSYS, UnknownObj)

    Scope (\)
    {
        Name (SSDT, Package (0x1B)
        {
            "CPU0IST ", 
            0x40946298, 
            0x000006AA, 
            "APIST   ", 
            0x40939018, 
            0x00001BAF, 
            "CPU0CST ", 
            0x4093B698, 
            0x00000394, 
            "APCST   ", 
            0x40936018, 
            0x00000FBB, 
            "CPU0HWP ", 
            0x4093B018, 
            0x00000476, 
            "APHWP   ", 
            0x40934018, 
            0x00001038, 
            "HWPLVT  ", 
            0x80000000, 
            0x80000000, 
            "CPU0PSD ", 
            0x40946D18, 
            0x000001AB, 
            "APPSD   ", 
            0x40937018, 
            0x00001349
        })
        Name (\PF00, 0x80000000)
        Name (\PF01, 0x80000000)
        Name (\PF02, 0x80000000)
        Name (\PF03, 0x80000000)
        Name (\PF04, 0x80000000)
        Name (\PF05, 0x80000000)
        Name (\PF06, 0x80000000)
        Name (\PF07, 0x80000000)
        Name (\PF08, 0x80000000)
        Name (\PF09, 0x80000000)
        Name (\PF10, 0x80000000)
        Name (\PF11, 0x80000000)
        Name (\PF12, 0x80000000)
        Name (\PF13, 0x80000000)
        Name (\PF14, 0x80000000)
        Name (\PF15, 0x80000000)
        Name (\PF16, 0x80000000)
        Name (\PF17, 0x80000000)
        Name (\PF18, 0x80000000)
        Name (\PF19, 0x80000000)
        Name (\PF20, 0x80000000)
        Name (\PF21, 0x80000000)
        Name (\PF22, 0x80000000)
        Name (\PF23, 0x80000000)
        Name (\PF24, 0x80000000)
        Name (\PF25, 0x80000000)
        Name (\PF26, 0x80000000)
        Name (\PF27, 0x80000000)
        Name (\PF28, 0x80000000)
        Name (\PF29, 0x80000000)
        Name (\PF30, 0x80000000)
        Name (\PF31, 0x80000000)
        Name (\PF32, 0x80000000)
        Name (\PF33, 0x80000000)
        Name (\PF34, 0x80000000)
        Name (\PF35, 0x80000000)
        Name (\PF36, 0x80000000)
        Name (\PF37, 0x80000000)
        Name (\PF38, 0x80000000)
        Name (\PF39, 0x80000000)
        Name (\PF40, 0x80000000)
        Name (\PF41, 0x80000000)
        Name (\PF42, 0x80000000)
        Name (\PF43, 0x80000000)
        Name (\PF44, 0x80000000)
        Name (\PF45, 0x80000000)
        Name (\PF46, 0x80000000)
        Name (\PF47, 0x80000000)
        Name (\PF48, 0x80000000)
        Name (\PF49, 0x80000000)
        Name (\PF50, 0x80000000)
        Name (\PF51, 0x80000000)
        Name (\PF52, 0x80000000)
        Name (\PF53, 0x80000000)
        Name (\PF54, 0x80000000)
        Name (\PF55, 0x80000000)
        Name (\PF56, 0x80000000)
        Name (\PF57, 0x80000000)
        Name (\PF58, 0x80000000)
        Name (\PF59, 0x80000000)
        Name (\PF60, 0x80000000)
        Name (\PF61, 0x80000000)
        Name (\PF62, 0x80000000)
        Name (\PF63, 0x80000000)
        Name (\SDTL, Zero)
    }

    Scope (\_SB)
    {
        Name (CTPC, Zero)
        OperationRegion (PNVS, SystemMemory, 0x43915000, 0x00A6)
        Field (PNVS, AnyAcc, Lock, Preserve)
        {
            PGRV,   8, 
            CFGD,   32, 
            Offset (0x06), 
            ACRT,   8, 
            APSV,   8, 
            AAC0,   8, 
            CPID,   32, 
            CPPC,   8, 
            CLVL,   8, 
            CBMI,   8, 
            PL10,   16, 
            PL11,   16, 
            PL12,   16, 
            PL20,   16, 
            PL21,   16, 
            PL22,   16, 
            PLW0,   8, 
            PLW1,   8, 
            PLW2,   8, 
            CTC0,   8, 
            CTC1,   8, 
            CTC2,   8, 
            TAR0,   8, 
            TAR1,   8, 
            TAR2,   8, 
            PPC0,   8, 
            PPC1,   8, 
            PPC2,   8, 
            Offset (0x29), 
            C6MW,   8, 
            C7MW,   8, 
            CDMW,   8, 
            Offset (0x2E), 
            C6LT,   16, 
            C7LT,   16, 
            CDLT,   16, 
            CDLV,   16, 
            CDPW,   16, 
            MPMF,   8, 
            HWPV,   8, 
            Offset (0x55), 
            LMPS,   8, 
            ITBM,   8, 
            OBIN,   8, 
            TXTE,   8, 
            HWPE,   8, 
            HTRO,   8, 
            CM00,   8, 
            CM01,   8, 
            CM02,   8, 
            CM03,   8, 
            CM04,   8, 
            CM05,   8, 
            CM06,   8, 
            CM07,   8, 
            CM08,   8, 
            CM09,   8, 
            CM10,   8, 
            CM11,   8, 
            CM12,   8, 
            CM13,   8, 
            CM14,   8, 
            CM15,   8, 
            CM16,   8, 
            CM17,   8, 
            CM18,   8, 
            CM19,   8, 
            CM20,   8, 
            CM21,   8, 
            CM22,   8, 
            CM23,   8, 
            CM24,   8, 
            CM25,   8, 
            CM26,   8, 
            CM27,   8, 
            CM28,   8, 
            CM29,   8, 
            CM30,   8, 
            CM31,   8, 
            CM32,   8, 
            CM33,   8, 
            CM34,   8, 
            CM35,   8, 
            CM36,   8, 
            CM37,   8, 
            CM38,   8, 
            CM39,   8, 
            CM40,   8, 
            CM41,   8, 
            CM42,   8, 
            CM43,   8, 
            CM44,   8, 
            CM45,   8, 
            CM46,   8, 
            CM47,   8, 
            CM48,   8, 
            CM49,   8, 
            CM50,   8, 
            CM51,   8, 
            CM52,   8, 
            CM53,   8, 
            CM54,   8, 
            CM55,   8, 
            CM56,   8, 
            CM57,   8, 
            CM58,   8, 
            CM59,   8, 
            CM60,   8, 
            CM61,   8, 
            CM62,   8, 
            CM63,   8, 
            CORE,   32, 
            SFSC,   16, 
            SFBC,   16, 
            NMFQ,   16, 
            INFS,   8
        }

        OperationRegion (BGNV, SystemMemory, 0xFFFF0000, 0xAA55)
        Field (BGNV, AnyAcc, Lock, Preserve)
        {
            BGMA,   64, 
            BGMS,   8, 
            BGIA,   16, 
            BGIL,   16
        }

        If (CondRefOf (\_SB.BGIL))
        {
            If (LNotEqual (\_SB.BGIL, Zero))
            {
                OperationRegion (IO_P, SystemIO, \_SB.BGIA, \_SB.BGIL)
                Field (IO_P, ByteAcc, NoLock, Preserve)
                {
                    TRPF,   8
                }
            }
        }
    }

    Scope (\_SB.PR00)
    {
        Name (HI0, Zero)
        Name (HC0, Zero)
        Name (HW0, Zero)
        Name (HW2, Zero)
        Name (HP0, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (CPDC, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, REVS)
            CreateDWordField (Arg0, 0x04, SIZE)
            Store (SizeOf (Arg0), Local0)
            Store (Subtract (Local0, 0x08), Local1)
            CreateField (Arg0, 0x40, Multiply (Local1, 0x08), TEMP)
            Store (Buffer (0x04)
                {
                     0x00, 0x00, 0x00, 0x00                           // ....
                }, Local3)
            Concatenate (Local3, TEMP, Local2)
            Return (COSC (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, REVS, SIZE, Local2))
        }

        Method (COSC, 4, NotSerialized)
        {
            CreateDWordField (Arg3, Zero, STS0)
            CreateDWordField (Arg0, Zero, IID0)
            CreateDWordField (Arg0, 0x04, IID1)
            CreateDWordField (Arg0, 0x08, IID2)
            CreateDWordField (Arg0, 0x0C, IID3)
            Store (ToUUID ("4077a616-290c-47be-9ebd-d87058713953") /* Unknown UUID */, Local0)
            CreateDWordField (Local0, Zero, EID0)
            CreateDWordField (Local0, 0x04, EID1)
            CreateDWordField (Local0, 0x08, EID2)
            CreateDWordField (Local0, 0x0C, EID3)
            If (LNot (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (LEqual (
                IID2, EID2), LEqual (IID3, EID3)))))
            {
                Store (0x06, STS0) /* \_SB_.PR00.COSC.STS0 */
                Return (Arg3)
            }

            If (LNotEqual (Arg1, One))
            {
                Store (0x0A, STS0) /* \_SB_.PR00.COSC.STS0 */
                Return (Arg3)
            }

            Return (Arg3)
        }

        Method (GCAP, 1, Serialized)
        {
            CreateDWordField (Arg0, Zero, STS0)
            CreateDWordField (Arg0, 0x04, CAP0)
            If (LOr (LEqual (STS0, 0x06), LEqual (STS0, 0x0A)))
            {
                Return (Zero)
            }

            If (And (STS0, One))
            {
                And (CAP0, 0x0BFF, CAP0) /* \_SB_.PR00.GCAP.CAP0 */
                Return (Zero)
            }

            Or (And (PF00, 0x7FFFFFFF), CAP0, PF00) /* \PF00 */
            If (And (CFGD, 0x72))
            {
                If (LAnd (LAnd (And (CFGD, 0x0200), And (PF00, 0x18)), LNot (
                    And (SDTL, 0x02))))
                {
                    Or (SDTL, 0x02, SDTL) /* \SDTL */
                    OperationRegion (CST0, SystemMemory, DerefOf (Index (SSDT, 0x07)), DerefOf (Index (SSDT, 0x08)))
                    Load (CST0, HC0) /* \_SB_.PR00.HC0_ */
                }
            }

            If (LEqual (And (PF00, 0x09), 0x09))
            {
                If (LAnd (And (CFGD, One), LNot (And (SDTL, 0x08))))
                {
                    Or (SDTL, 0x08, SDTL) /* \SDTL */
                    OperationRegion (IST0, SystemMemory, DerefOf (Index (SSDT, One)), DerefOf (Index (SSDT, 0x02)))
                    Load (IST0, HI0) /* \_SB_.PR00.HI0_ */
                }
            }

            If (LAnd (LOr (And (CFGD, One), And (CFGD, 0x00400000)), LNot (
                And (SDTL, 0x0100))))
            {
                Or (SDTL, 0x0100, SDTL) /* \SDTL */
                OperationRegion (PSD0, SystemMemory, DerefOf (Index (SSDT, 0x16)), DerefOf (Index (SSDT, 0x17)))
                Load (PSD0, HP0) /* \_SB_.PR00.HP0_ */
            }

            If (LGreaterEqual (OSYS, 0x07DF))
            {
                If (LAnd (And (CFGD, 0x00400000), LNot (And (SDTL, 0x40))))
                {
                    If (And (\_SB.OSCP, 0x40))
                    {
                        Or (SDTL, 0x40, SDTL) /* \SDTL */
                        OperationRegion (HWP0, SystemMemory, DerefOf (Index (SSDT, 0x0D)), DerefOf (Index (SSDT, 0x0E)))
                        Load (HWP0, HW0) /* \_SB_.PR00.HW0_ */
                    }

                    If (And (\_SB.OSCP, 0x20))
                    {
                        If (LNot (And (\_SB.OSCP, 0x40)))
                        {
                            Store (Zero, HWPV) /* \_SB_.HWPV */
                        }
                    }

                    If (And (\_SB.OSCP, 0x40))
                    {
                        Store (0x02, HWPV) /* \_SB_.HWPV */
                    }
                }
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PR01)
    {
        Name (HI1, Zero)
        Name (HC1, Zero)
        Name (HW1, Zero)
        Name (HP1, Zero)
        Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
        {
            Store (\_SB.PR00.CPDC (Arg0), Local0)
            GCAP (Local0)
        }

        Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
        {
            Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
            GCAP (Local0)
            Return (Local0)
        }

        Method (GCAP, 1, NotSerialized)
        {
            CreateDWordField (Arg0, Zero, ST01)
            CreateDWordField (Arg0, 0x04, CP01)
            If (LOr (LEqual (ST01, 0x06), LEqual (ST01, 0x0A)))
            {
                Return (Zero)
            }

            If (And (ST01, One))
            {
                And (CP01, 0x0BFF, CP01) /* \_SB_.PR01.GCAP.CP01 */
                Return (Zero)
            }

            Or (And (PF01, 0x7FFFFFFF), CP01, PF01) /* \PF01 */
            If (LEqual (And (PF01, 0x09), 0x09))
            {
                APPT ()
            }

            If (And (\_SB.OSCP, 0x20))
            {
                HWPT ()
            }

            If (LOr (LEqual (And (PF01, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
            {
                APPS ()
            }

            If (And (PF01, 0x18))
            {
                APCT ()
            }

            Store (PF01, PF00) /* \PF00 */
            Return (Zero)
        }

        Method (APCT, 0, Serialized)
        {
            If (LAnd (And (CFGD, 0x72), LNot (And (SDTL, 0x20))))
            {
                Or (SDTL, 0x20, SDTL) /* \SDTL */
                OperationRegion (CST1, SystemMemory, DerefOf (Index (SSDT, 0x0A)), DerefOf (Index (SSDT, 0x0B)))
                Load (CST1, HC1) /* \_SB_.PR01.HC1_ */
            }
        }

        Method (APPT, 0, Serialized)
        {
            If (LAnd (And (CFGD, One), LNot (And (SDTL, 0x10))))
            {
                Or (SDTL, 0x10, SDTL) /* \SDTL */
                OperationRegion (IST1, SystemMemory, DerefOf (Index (SSDT, 0x04)), DerefOf (Index (SSDT, 0x05)))
                Load (IST1, HI1) /* \_SB_.PR01.HI1_ */
            }
        }

        Method (APPS, 0, Serialized)
        {
            If (LAnd (LOr (And (CFGD, One), And (CFGD, 0x00400000)), LNot (
                And (SDTL, 0x0200))))
            {
                Or (SDTL, 0x0200, SDTL) /* \SDTL */
                OperationRegion (PSD1, SystemMemory, DerefOf (Index (SSDT, 0x19)), DerefOf (Index (SSDT, 0x1A)))
                Load (PSD1, HP1) /* \_SB_.PR01.HP1_ */
            }
        }

        Method (HWPT, 0, Serialized)
        {
            If (LGreaterEqual (OSYS, 0x07DF))
            {
                If (LAnd (And (CFGD, 0x00400000), LNot (And (SDTL, 0x80))))
                {
                    Or (SDTL, 0x80, SDTL) /* \SDTL */
                    OperationRegion (HWP1, SystemMemory, DerefOf (Index (SSDT, 0x10)), DerefOf (Index (SSDT, 0x11)))
                    Load (HWP1, HW1) /* \_SB_.PR01.HW1_ */
                }
            }
        }
    }

    If (CondRefOf (\_SB.PR02))
    {
        Scope (\_SB.PR02)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST02)
                CreateDWordField (Arg0, 0x04, CP02)
                If (LOr (LEqual (ST02, 0x06), LEqual (ST02, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST02, One))
                {
                    And (CP02, 0x0BFF, CP02) /* \_SB_.PR02.GCAP.CP02 */
                    Return (Zero)
                }

                Or (And (PF02, 0x7FFFFFFF), CP02, PF02) /* \PF02 */
                If (LEqual (And (PF02, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF02, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF02, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF02, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR03))
    {
        Scope (\_SB.PR03)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST03)
                CreateDWordField (Arg0, 0x04, CP03)
                If (LOr (LEqual (ST03, 0x06), LEqual (ST03, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST03, One))
                {
                    And (CP03, 0x0BFF, CP03) /* \_SB_.PR03.GCAP.CP03 */
                    Return (Zero)
                }

                Or (And (PF03, 0x7FFFFFFF), CP03, PF03) /* \PF03 */
                If (LEqual (And (PF03, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF03, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF03, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF03, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR04))
    {
        Scope (\_SB.PR04)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST04)
                CreateDWordField (Arg0, 0x04, CP04)
                If (LOr (LEqual (ST04, 0x06), LEqual (ST04, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST04, One))
                {
                    And (CP04, 0x0BFF, CP04) /* \_SB_.PR04.GCAP.CP04 */
                    Return (Zero)
                }

                Or (And (PF04, 0x7FFFFFFF), CP04, PF04) /* \PF04 */
                If (LEqual (And (PF04, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF04, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF04, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF04, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR05))
    {
        Scope (\_SB.PR05)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST05)
                CreateDWordField (Arg0, 0x04, CP05)
                If (LOr (LEqual (ST05, 0x06), LEqual (ST05, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST05, One))
                {
                    And (CP05, 0x0BFF, CP05) /* \_SB_.PR05.GCAP.CP05 */
                    Return (Zero)
                }

                Or (And (PF05, 0x7FFFFFFF), CP05, PF05) /* \PF05 */
                If (LEqual (And (PF05, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF05, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF05, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF05, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR06))
    {
        Scope (\_SB.PR06)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST06)
                CreateDWordField (Arg0, 0x04, CP06)
                If (LOr (LEqual (ST06, 0x06), LEqual (ST06, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST06, One))
                {
                    And (CP06, 0x0BFF, CP06) /* \_SB_.PR06.GCAP.CP06 */
                    Return (Zero)
                }

                Or (And (PF06, 0x7FFFFFFF), CP06, PF06) /* \PF06 */
                If (LEqual (And (PF06, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF06, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF06, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF06, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR07))
    {
        Scope (\_SB.PR07)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST07)
                CreateDWordField (Arg0, 0x04, CP07)
                If (LOr (LEqual (ST07, 0x06), LEqual (ST07, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST07, One))
                {
                    And (CP07, 0x0BFF, CP07) /* \_SB_.PR07.GCAP.CP07 */
                    Return (Zero)
                }

                Or (And (PF07, 0x7FFFFFFF), CP07, PF07) /* \PF07 */
                If (LEqual (And (PF07, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF07, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF07, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF07, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR08))
    {
        Scope (\_SB.PR08)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST08)
                CreateDWordField (Arg0, 0x04, CP08)
                If (LOr (LEqual (ST08, 0x06), LEqual (ST08, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST08, One))
                {
                    And (CP08, 0x0BFF, CP08) /* \_SB_.PR08.GCAP.CP08 */
                    Return (Zero)
                }

                Or (And (PF08, 0x7FFFFFFF), CP08, PF08) /* \PF08 */
                If (LEqual (And (PF08, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF08, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF08, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF08, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR09))
    {
        Scope (\_SB.PR09)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST09)
                CreateDWordField (Arg0, 0x04, CP09)
                If (LOr (LEqual (ST09, 0x06), LEqual (ST09, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST09, One))
                {
                    And (CP09, 0x0BFF, CP09) /* \_SB_.PR09.GCAP.CP09 */
                    Return (Zero)
                }

                Or (And (PF09, 0x7FFFFFFF), CP09, PF09) /* \PF09 */
                If (LEqual (And (PF09, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF09, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF09, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF09, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR10))
    {
        Scope (\_SB.PR10)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST10)
                CreateDWordField (Arg0, 0x04, CP10)
                If (LOr (LEqual (ST10, 0x06), LEqual (ST10, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST10, One))
                {
                    And (CP10, 0x0BFF, CP10) /* \_SB_.PR10.GCAP.CP10 */
                    Return (Zero)
                }

                Or (And (PF10, 0x7FFFFFFF), CP10, PF10) /* \PF10 */
                If (LEqual (And (PF10, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF10, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF10, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF10, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR11))
    {
        Scope (\_SB.PR11)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST11)
                CreateDWordField (Arg0, 0x04, CP11)
                If (LOr (LEqual (ST11, 0x06), LEqual (ST11, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST11, One))
                {
                    And (CP11, 0x0BFF, CP11) /* \_SB_.PR11.GCAP.CP11 */
                    Return (Zero)
                }

                Or (And (PF11, 0x7FFFFFFF), CP11, PF11) /* \PF11 */
                If (LEqual (And (PF11, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF11, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF11, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF11, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR12))
    {
        Scope (\_SB.PR12)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST12)
                CreateDWordField (Arg0, 0x04, CP12)
                If (LOr (LEqual (ST12, 0x06), LEqual (ST12, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST12, One))
                {
                    And (CP12, 0x0BFF, CP12) /* \_SB_.PR12.GCAP.CP12 */
                    Return (Zero)
                }

                Or (And (PF12, 0x7FFFFFFF), CP12, PF12) /* \PF12 */
                If (LEqual (And (PF12, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF12, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF12, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF12, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR13))
    {
        Scope (\_SB.PR13)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST13)
                CreateDWordField (Arg0, 0x04, CP13)
                If (LOr (LEqual (ST13, 0x06), LEqual (ST13, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST13, One))
                {
                    And (CP13, 0x0BFF, CP13) /* \_SB_.PR13.GCAP.CP13 */
                    Return (Zero)
                }

                Or (And (PF13, 0x7FFFFFFF), CP13, PF13) /* \PF13 */
                If (LEqual (And (PF13, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF13, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF13, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF13, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR14))
    {
        Scope (\_SB.PR14)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST14)
                CreateDWordField (Arg0, 0x04, CP14)
                If (LOr (LEqual (ST14, 0x06), LEqual (ST14, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST14, One))
                {
                    And (CP14, 0x0BFF, CP14) /* \_SB_.PR14.GCAP.CP14 */
                    Return (Zero)
                }

                Or (And (PF14, 0x7FFFFFFF), CP14, PF14) /* \PF14 */
                If (LEqual (And (PF14, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF14, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF14, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF14, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR15))
    {
        Scope (\_SB.PR15)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST15)
                CreateDWordField (Arg0, 0x04, CP15)
                If (LOr (LEqual (ST15, 0x06), LEqual (ST15, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST15, One))
                {
                    And (CP15, 0x0BFF, CP15) /* \_SB_.PR15.GCAP.CP15 */
                    Return (Zero)
                }

                Or (And (PF15, 0x7FFFFFFF), CP15, PF15) /* \PF15 */
                If (LEqual (And (PF15, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF15, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF15, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF15, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR16))
    {
        Scope (\_SB.PR16)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST16)
                CreateDWordField (Arg0, 0x04, CP16)
                If (LOr (LEqual (ST16, 0x06), LEqual (ST16, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST16, One))
                {
                    And (CP16, 0x0BFF, CP16) /* \_SB_.PR16.GCAP.CP16 */
                    Return (Zero)
                }

                Or (And (PF16, 0x7FFFFFFF), CP16, PF16) /* \PF16 */
                If (LEqual (And (PF16, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF16, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF16, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF16, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR17))
    {
        Scope (\_SB.PR17)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST17)
                CreateDWordField (Arg0, 0x04, CP17)
                If (LOr (LEqual (ST17, 0x06), LEqual (ST17, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST17, One))
                {
                    And (CP17, 0x0BFF, CP17) /* \_SB_.PR17.GCAP.CP17 */
                    Return (Zero)
                }

                Or (And (PF17, 0x7FFFFFFF), CP17, PF17) /* \PF17 */
                If (LEqual (And (PF17, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF17, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF17, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF17, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR18))
    {
        Scope (\_SB.PR18)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST18)
                CreateDWordField (Arg0, 0x04, CP18)
                If (LOr (LEqual (ST18, 0x06), LEqual (ST18, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST18, One))
                {
                    And (CP18, 0x0BFF, CP18) /* \_SB_.PR18.GCAP.CP18 */
                    Return (Zero)
                }

                Or (And (PF18, 0x7FFFFFFF), CP18, PF18) /* \PF18 */
                If (LEqual (And (PF18, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF18, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF18, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF18, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR19))
    {
        Scope (\_SB.PR19)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST19)
                CreateDWordField (Arg0, 0x04, CP19)
                If (LOr (LEqual (ST19, 0x06), LEqual (ST19, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST19, One))
                {
                    And (CP19, 0x0BFF, CP19) /* \_SB_.PR19.GCAP.CP19 */
                    Return (Zero)
                }

                Or (And (PF19, 0x7FFFFFFF), CP19, PF19) /* \PF19 */
                If (LEqual (And (PF19, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF19, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF19, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF19, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR20))
    {
        Scope (\_SB.PR20)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST20)
                CreateDWordField (Arg0, 0x04, CP20)
                If (LOr (LEqual (ST20, 0x06), LEqual (ST20, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST20, One))
                {
                    And (CP20, 0x0BFF, CP20) /* \_SB_.PR20.GCAP.CP20 */
                    Return (Zero)
                }

                Or (And (PF20, 0x7FFFFFFF), CP20, PF20) /* \PF20 */
                If (LEqual (And (PF20, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF20, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF20, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF20, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR21))
    {
        Scope (\_SB.PR21)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST21)
                CreateDWordField (Arg0, 0x04, CP21)
                If (LOr (LEqual (ST21, 0x06), LEqual (ST21, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST21, One))
                {
                    And (CP21, 0x0BFF, CP21) /* \_SB_.PR21.GCAP.CP21 */
                    Return (Zero)
                }

                Or (And (PF21, 0x7FFFFFFF), CP21, PF21) /* \PF21 */
                If (LEqual (And (PF21, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF21, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF21, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF21, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR22))
    {
        Scope (\_SB.PR22)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST22)
                CreateDWordField (Arg0, 0x04, CP22)
                If (LOr (LEqual (ST22, 0x06), LEqual (ST22, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST22, One))
                {
                    And (CP22, 0x0BFF, CP22) /* \_SB_.PR22.GCAP.CP22 */
                    Return (Zero)
                }

                Or (And (PF22, 0x7FFFFFFF), CP22, PF22) /* \PF22 */
                If (LEqual (And (PF22, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF22, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF22, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF22, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR23))
    {
        Scope (\_SB.PR23)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST23)
                CreateDWordField (Arg0, 0x04, CP23)
                If (LOr (LEqual (ST23, 0x06), LEqual (ST23, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST23, One))
                {
                    And (CP23, 0x0BFF, CP23) /* \_SB_.PR23.GCAP.CP23 */
                    Return (Zero)
                }

                Or (And (PF23, 0x7FFFFFFF), CP23, PF23) /* \PF23 */
                If (LEqual (And (PF23, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF23, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF23, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF23, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR24))
    {
        Scope (\_SB.PR24)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST24)
                CreateDWordField (Arg0, 0x04, CP24)
                If (LOr (LEqual (ST24, 0x06), LEqual (ST24, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST24, One))
                {
                    And (CP24, 0x0BFF, CP24) /* \_SB_.PR24.GCAP.CP24 */
                    Return (Zero)
                }

                Or (And (PF24, 0x7FFFFFFF), CP24, PF24) /* \PF24 */
                If (LEqual (And (PF24, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF24, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF24, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF24, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR25))
    {
        Scope (\_SB.PR25)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST25)
                CreateDWordField (Arg0, 0x04, CP25)
                If (LOr (LEqual (ST25, 0x06), LEqual (ST25, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST25, One))
                {
                    And (CP25, 0x0BFF, CP25) /* \_SB_.PR25.GCAP.CP25 */
                    Return (Zero)
                }

                Or (And (PF25, 0x7FFFFFFF), CP25, PF25) /* \PF25 */
                If (LEqual (And (PF25, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF25, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF25, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF25, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR26))
    {
        Scope (\_SB.PR26)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST26)
                CreateDWordField (Arg0, 0x04, CP26)
                If (LOr (LEqual (ST26, 0x06), LEqual (ST26, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST26, One))
                {
                    And (CP26, 0x0BFF, CP26) /* \_SB_.PR26.GCAP.CP26 */
                    Return (Zero)
                }

                Or (And (PF26, 0x7FFFFFFF), CP26, PF26) /* \PF26 */
                If (LEqual (And (PF26, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF26, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF26, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF26, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR27))
    {
        Scope (\_SB.PR27)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST27)
                CreateDWordField (Arg0, 0x04, CP27)
                If (LOr (LEqual (ST27, 0x06), LEqual (ST27, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST27, One))
                {
                    And (CP27, 0x0BFF, CP27) /* \_SB_.PR27.GCAP.CP27 */
                    Return (Zero)
                }

                Or (And (PF27, 0x7FFFFFFF), CP27, PF27) /* \PF27 */
                If (LEqual (And (PF27, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF27, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF27, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF27, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR28))
    {
        Scope (\_SB.PR28)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST28)
                CreateDWordField (Arg0, 0x04, CP28)
                If (LOr (LEqual (ST28, 0x06), LEqual (ST28, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST28, One))
                {
                    And (CP28, 0x0BFF, CP28) /* \_SB_.PR28.GCAP.CP28 */
                    Return (Zero)
                }

                Or (And (PF28, 0x7FFFFFFF), CP28, PF28) /* \PF28 */
                If (LEqual (And (PF28, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF28, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF28, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF28, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR29))
    {
        Scope (\_SB.PR29)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST29)
                CreateDWordField (Arg0, 0x04, CP29)
                If (LOr (LEqual (ST29, 0x06), LEqual (ST29, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST29, One))
                {
                    And (CP29, 0x0BFF, CP29) /* \_SB_.PR29.GCAP.CP29 */
                    Return (Zero)
                }

                Or (And (PF29, 0x7FFFFFFF), CP29, PF29) /* \PF29 */
                If (LEqual (And (PF29, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF29, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF29, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF29, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR30))
    {
        Scope (\_SB.PR30)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST30)
                CreateDWordField (Arg0, 0x04, CP30)
                If (LOr (LEqual (ST30, 0x06), LEqual (ST30, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST30, One))
                {
                    And (CP30, 0x0BFF, CP30) /* \_SB_.PR30.GCAP.CP30 */
                    Return (Zero)
                }

                Or (And (PF30, 0x7FFFFFFF), CP30, PF30) /* \PF30 */
                If (LEqual (And (PF30, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF30, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF30, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF30, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR31))
    {
        Scope (\_SB.PR31)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST31)
                CreateDWordField (Arg0, 0x04, CP31)
                If (LOr (LEqual (ST31, 0x06), LEqual (ST31, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST31, One))
                {
                    And (CP31, 0x0BFF, CP31) /* \_SB_.PR31.GCAP.CP31 */
                    Return (Zero)
                }

                Or (And (PF31, 0x7FFFFFFF), CP31, PF31) /* \PF31 */
                If (LEqual (And (PF31, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF31, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF31, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF31, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR32))
    {
        Scope (\_SB.PR32)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST32)
                CreateDWordField (Arg0, 0x04, CP32)
                If (LOr (LEqual (ST32, 0x06), LEqual (ST32, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST32, One))
                {
                    And (CP32, 0x0BFF, CP32) /* \_SB_.PR32.GCAP.CP32 */
                    Return (Zero)
                }

                Or (And (PF32, 0x7FFFFFFF), CP32, PF32) /* \PF32 */
                If (LEqual (And (PF32, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF32, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF32, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF32, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR33))
    {
        Scope (\_SB.PR33)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST33)
                CreateDWordField (Arg0, 0x04, CP33)
                If (LOr (LEqual (ST33, 0x06), LEqual (ST33, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST33, One))
                {
                    And (CP33, 0x0BFF, CP33) /* \_SB_.PR33.GCAP.CP33 */
                    Return (Zero)
                }

                Or (And (PF33, 0x7FFFFFFF), CP33, PF33) /* \PF33 */
                If (LEqual (And (PF33, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF33, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF33, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF33, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR34))
    {
        Scope (\_SB.PR34)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST34)
                CreateDWordField (Arg0, 0x04, CP34)
                If (LOr (LEqual (ST34, 0x06), LEqual (ST34, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST34, One))
                {
                    And (CP34, 0x0BFF, CP34) /* \_SB_.PR34.GCAP.CP34 */
                    Return (Zero)
                }

                Or (And (PF34, 0x7FFFFFFF), CP34, PF34) /* \PF34 */
                If (LEqual (And (PF34, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF34, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF34, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF34, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR35))
    {
        Scope (\_SB.PR35)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST35)
                CreateDWordField (Arg0, 0x04, CP35)
                If (LOr (LEqual (ST35, 0x06), LEqual (ST35, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST35, One))
                {
                    And (CP35, 0x0BFF, CP35) /* \_SB_.PR35.GCAP.CP35 */
                    Return (Zero)
                }

                Or (And (PF35, 0x7FFFFFFF), CP35, PF35) /* \PF35 */
                If (LEqual (And (PF35, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF35, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF35, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF35, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR36))
    {
        Scope (\_SB.PR36)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST36)
                CreateDWordField (Arg0, 0x04, CP36)
                If (LOr (LEqual (ST36, 0x06), LEqual (ST36, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST36, One))
                {
                    And (CP36, 0x0BFF, CP36) /* \_SB_.PR36.GCAP.CP36 */
                    Return (Zero)
                }

                Or (And (PF36, 0x7FFFFFFF), CP36, PF36) /* \PF36 */
                If (LEqual (And (PF36, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF36, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF36, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF36, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR37))
    {
        Scope (\_SB.PR37)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST37)
                CreateDWordField (Arg0, 0x04, CP37)
                If (LOr (LEqual (ST37, 0x06), LEqual (ST37, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST37, One))
                {
                    And (CP37, 0x0BFF, CP37) /* \_SB_.PR37.GCAP.CP37 */
                    Return (Zero)
                }

                Or (And (PF37, 0x7FFFFFFF), CP37, PF37) /* \PF37 */
                If (LEqual (And (PF37, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF37, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF37, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF37, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR38))
    {
        Scope (\_SB.PR38)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST38)
                CreateDWordField (Arg0, 0x04, CP38)
                If (LOr (LEqual (ST38, 0x06), LEqual (ST38, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST38, One))
                {
                    And (CP38, 0x0BFF, CP38) /* \_SB_.PR38.GCAP.CP38 */
                    Return (Zero)
                }

                Or (And (PF38, 0x7FFFFFFF), CP38, PF38) /* \PF38 */
                If (LEqual (And (PF38, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF38, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF38, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF38, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR39))
    {
        Scope (\_SB.PR39)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST39)
                CreateDWordField (Arg0, 0x04, CP39)
                If (LOr (LEqual (ST39, 0x06), LEqual (ST39, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST39, One))
                {
                    And (CP39, 0x0BFF, CP39) /* \_SB_.PR39.GCAP.CP39 */
                    Return (Zero)
                }

                Or (And (PF39, 0x7FFFFFFF), CP39, PF39) /* \PF39 */
                If (LEqual (And (PF39, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF39, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF39, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF39, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR40))
    {
        Scope (\_SB.PR40)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST40)
                CreateDWordField (Arg0, 0x04, CP40)
                If (LOr (LEqual (ST40, 0x06), LEqual (ST40, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST40, One))
                {
                    And (CP40, 0x0BFF, CP40) /* \_SB_.PR40.GCAP.CP40 */
                    Return (Zero)
                }

                Or (And (PF40, 0x7FFFFFFF), CP40, PF40) /* \PF40 */
                If (LEqual (And (PF40, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF40, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF40, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF40, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR41))
    {
        Scope (\_SB.PR41)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST41)
                CreateDWordField (Arg0, 0x04, CP41)
                If (LOr (LEqual (ST41, 0x06), LEqual (ST41, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST41, One))
                {
                    And (CP41, 0x0BFF, CP41) /* \_SB_.PR41.GCAP.CP41 */
                    Return (Zero)
                }

                Or (And (PF41, 0x7FFFFFFF), CP41, PF41) /* \PF41 */
                If (LEqual (And (PF41, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF41, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF41, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF41, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR42))
    {
        Scope (\_SB.PR42)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST42)
                CreateDWordField (Arg0, 0x04, CP42)
                If (LOr (LEqual (ST42, 0x06), LEqual (ST42, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST42, One))
                {
                    And (CP42, 0x0BFF, CP42) /* \_SB_.PR42.GCAP.CP42 */
                    Return (Zero)
                }

                Or (And (PF42, 0x7FFFFFFF), CP42, PF42) /* \PF42 */
                If (LEqual (And (PF42, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF42, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF42, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF42, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR43))
    {
        Scope (\_SB.PR43)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST43)
                CreateDWordField (Arg0, 0x04, CP43)
                If (LOr (LEqual (ST43, 0x06), LEqual (ST43, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST43, One))
                {
                    And (CP43, 0x0BFF, CP43) /* \_SB_.PR43.GCAP.CP43 */
                    Return (Zero)
                }

                Or (And (PF43, 0x7FFFFFFF), CP43, PF43) /* \PF43 */
                If (LEqual (And (PF43, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF43, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF43, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF43, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR44))
    {
        Scope (\_SB.PR44)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST44)
                CreateDWordField (Arg0, 0x04, CP44)
                If (LOr (LEqual (ST44, 0x06), LEqual (ST44, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST44, One))
                {
                    And (CP44, 0x0BFF, CP44) /* \_SB_.PR44.GCAP.CP44 */
                    Return (Zero)
                }

                Or (And (PF44, 0x7FFFFFFF), CP44, PF44) /* \PF44 */
                If (LEqual (And (PF44, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF44, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF44, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF44, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR45))
    {
        Scope (\_SB.PR45)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST45)
                CreateDWordField (Arg0, 0x04, CP45)
                If (LOr (LEqual (ST45, 0x06), LEqual (ST45, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST45, One))
                {
                    And (CP45, 0x0BFF, CP45) /* \_SB_.PR45.GCAP.CP45 */
                    Return (Zero)
                }

                Or (And (PF45, 0x7FFFFFFF), CP45, PF45) /* \PF45 */
                If (LEqual (And (PF45, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF45, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF45, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF45, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR46))
    {
        Scope (\_SB.PR46)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST46)
                CreateDWordField (Arg0, 0x04, CP46)
                If (LOr (LEqual (ST46, 0x06), LEqual (ST46, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST46, One))
                {
                    And (CP46, 0x0BFF, CP46) /* \_SB_.PR46.GCAP.CP46 */
                    Return (Zero)
                }

                Or (And (PF46, 0x7FFFFFFF), CP46, PF46) /* \PF46 */
                If (LEqual (And (PF46, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF46, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF46, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF46, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR47))
    {
        Scope (\_SB.PR47)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST47)
                CreateDWordField (Arg0, 0x04, CP47)
                If (LOr (LEqual (ST47, 0x06), LEqual (ST47, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST47, One))
                {
                    And (CP47, 0x0BFF, CP47) /* \_SB_.PR47.GCAP.CP47 */
                    Return (Zero)
                }

                Or (And (PF47, 0x7FFFFFFF), CP47, PF47) /* \PF47 */
                If (LEqual (And (PF47, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF47, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF47, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF47, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR48))
    {
        Scope (\_SB.PR48)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST48)
                CreateDWordField (Arg0, 0x04, CP48)
                If (LOr (LEqual (ST48, 0x06), LEqual (ST48, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST48, One))
                {
                    And (CP48, 0x0BFF, CP48) /* \_SB_.PR48.GCAP.CP48 */
                    Return (Zero)
                }

                Or (And (PF48, 0x7FFFFFFF), CP48, PF48) /* \PF48 */
                If (LEqual (And (PF48, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF48, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF48, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF48, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR49))
    {
        Scope (\_SB.PR49)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST49)
                CreateDWordField (Arg0, 0x04, CP49)
                If (LOr (LEqual (ST49, 0x06), LEqual (ST49, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST49, One))
                {
                    And (CP49, 0x0BFF, CP49) /* \_SB_.PR49.GCAP.CP49 */
                    Return (Zero)
                }

                Or (And (PF49, 0x7FFFFFFF), CP49, PF49) /* \PF49 */
                If (LEqual (And (PF49, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF49, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF49, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF49, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR50))
    {
        Scope (\_SB.PR50)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST50)
                CreateDWordField (Arg0, 0x04, CP50)
                If (LOr (LEqual (ST50, 0x06), LEqual (ST50, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST50, One))
                {
                    And (CP50, 0x0BFF, CP50) /* \_SB_.PR50.GCAP.CP50 */
                    Return (Zero)
                }

                Or (And (PF50, 0x7FFFFFFF), CP50, PF50) /* \PF50 */
                If (LEqual (And (PF50, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF50, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF50, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF50, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR51))
    {
        Scope (\_SB.PR51)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST51)
                CreateDWordField (Arg0, 0x04, CP51)
                If (LOr (LEqual (ST51, 0x06), LEqual (ST51, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST51, One))
                {
                    And (CP51, 0x0BFF, CP51) /* \_SB_.PR51.GCAP.CP51 */
                    Return (Zero)
                }

                Or (And (PF51, 0x7FFFFFFF), CP51, PF51) /* \PF51 */
                If (LEqual (And (PF51, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF51, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF51, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF51, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR52))
    {
        Scope (\_SB.PR52)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST52)
                CreateDWordField (Arg0, 0x04, CP52)
                If (LOr (LEqual (ST52, 0x06), LEqual (ST52, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST52, One))
                {
                    And (CP52, 0x0BFF, CP52) /* \_SB_.PR52.GCAP.CP52 */
                    Return (Zero)
                }

                Or (And (PF52, 0x7FFFFFFF), CP52, PF52) /* \PF52 */
                If (LEqual (And (PF52, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF52, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF52, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF52, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR53))
    {
        Scope (\_SB.PR53)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST53)
                CreateDWordField (Arg0, 0x04, CP53)
                If (LOr (LEqual (ST53, 0x06), LEqual (ST53, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST53, One))
                {
                    And (CP53, 0x0BFF, CP53) /* \_SB_.PR53.GCAP.CP53 */
                    Return (Zero)
                }

                Or (And (PF53, 0x7FFFFFFF), CP53, PF53) /* \PF53 */
                If (LEqual (And (PF53, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF53, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF53, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF53, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR54))
    {
        Scope (\_SB.PR54)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST54)
                CreateDWordField (Arg0, 0x04, CP54)
                If (LOr (LEqual (ST54, 0x06), LEqual (ST54, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST54, One))
                {
                    And (CP54, 0x0BFF, CP54) /* \_SB_.PR54.GCAP.CP54 */
                    Return (Zero)
                }

                Or (And (PF54, 0x7FFFFFFF), CP54, PF54) /* \PF54 */
                If (LEqual (And (PF54, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF54, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF54, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF54, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR55))
    {
        Scope (\_SB.PR55)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST55)
                CreateDWordField (Arg0, 0x04, CP55)
                If (LOr (LEqual (ST55, 0x06), LEqual (ST55, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST55, One))
                {
                    And (CP55, 0x0BFF, CP55) /* \_SB_.PR55.GCAP.CP55 */
                    Return (Zero)
                }

                Or (And (PF55, 0x7FFFFFFF), CP55, PF55) /* \PF55 */
                If (LEqual (And (PF55, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF55, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF55, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF55, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR56))
    {
        Scope (\_SB.PR56)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST56)
                CreateDWordField (Arg0, 0x04, CP56)
                If (LOr (LEqual (ST56, 0x06), LEqual (ST56, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST56, One))
                {
                    And (CP56, 0x0BFF, CP56) /* \_SB_.PR56.GCAP.CP56 */
                    Return (Zero)
                }

                Or (And (PF56, 0x7FFFFFFF), CP56, PF56) /* \PF56 */
                If (LEqual (And (PF56, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF56, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF56, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF56, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR57))
    {
        Scope (\_SB.PR57)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST57)
                CreateDWordField (Arg0, 0x04, CP57)
                If (LOr (LEqual (ST57, 0x06), LEqual (ST57, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST57, One))
                {
                    And (CP57, 0x0BFF, CP57) /* \_SB_.PR57.GCAP.CP57 */
                    Return (Zero)
                }

                Or (And (PF57, 0x7FFFFFFF), CP57, PF57) /* \PF57 */
                If (LEqual (And (PF57, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF57, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF57, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF57, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR58))
    {
        Scope (\_SB.PR58)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST58)
                CreateDWordField (Arg0, 0x04, CP58)
                If (LOr (LEqual (ST58, 0x06), LEqual (ST58, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST58, One))
                {
                    And (CP58, 0x0BFF, CP58) /* \_SB_.PR58.GCAP.CP58 */
                    Return (Zero)
                }

                Or (And (PF58, 0x7FFFFFFF), CP58, PF58) /* \PF58 */
                If (LEqual (And (PF58, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF58, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF58, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF58, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR59))
    {
        Scope (\_SB.PR59)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST59)
                CreateDWordField (Arg0, 0x04, CP59)
                If (LOr (LEqual (ST59, 0x06), LEqual (ST59, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST59, One))
                {
                    And (CP59, 0x0BFF, CP59) /* \_SB_.PR59.GCAP.CP59 */
                    Return (Zero)
                }

                Or (And (PF59, 0x7FFFFFFF), CP59, PF59) /* \PF59 */
                If (LEqual (And (PF59, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF59, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF59, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF59, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR60))
    {
        Scope (\_SB.PR60)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST60)
                CreateDWordField (Arg0, 0x04, CP60)
                If (LOr (LEqual (ST60, 0x06), LEqual (ST60, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST60, One))
                {
                    And (CP60, 0x0BFF, CP60) /* \_SB_.PR60.GCAP.CP60 */
                    Return (Zero)
                }

                Or (And (PF60, 0x7FFFFFFF), CP60, PF60) /* \PF60 */
                If (LEqual (And (PF60, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF60, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF60, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF60, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR61))
    {
        Scope (\_SB.PR61)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST61)
                CreateDWordField (Arg0, 0x04, CP61)
                If (LOr (LEqual (ST61, 0x06), LEqual (ST61, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST61, One))
                {
                    And (CP61, 0x0BFF, CP61) /* \_SB_.PR61.GCAP.CP61 */
                    Return (Zero)
                }

                Or (And (PF61, 0x7FFFFFFF), CP61, PF61) /* \PF61 */
                If (LEqual (And (PF61, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF61, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF61, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF61, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR62))
    {
        Scope (\_SB.PR62)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST62)
                CreateDWordField (Arg0, 0x04, CP62)
                If (LOr (LEqual (ST62, 0x06), LEqual (ST62, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST62, One))
                {
                    And (CP62, 0x0BFF, CP62) /* \_SB_.PR62.GCAP.CP62 */
                    Return (Zero)
                }

                Or (And (PF62, 0x7FFFFFFF), CP62, PF62) /* \PF62 */
                If (LEqual (And (PF62, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF62, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF62, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF62, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    If (CondRefOf (\_SB.PR63))
    {
        Scope (\_SB.PR63)
        {
            Method (_PDC, 1, NotSerialized)  // _PDC: Processor Driver Capabilities
            {
                Store (\_SB.PR00.CPDC (Arg0), Local0)
                GCAP (Local0)
            }

            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                Store (\_SB.PR00.COSC (Arg0, Arg1, Arg2, Arg3), Local0)
                GCAP (Local0)
                Return (Local0)
            }

            Method (GCAP, 1, NotSerialized)
            {
                CreateDWordField (Arg0, Zero, ST63)
                CreateDWordField (Arg0, 0x04, CP63)
                If (LOr (LEqual (ST63, 0x06), LEqual (ST63, 0x0A)))
                {
                    Return (Zero)
                }

                If (And (ST63, One))
                {
                    And (CP63, 0x0BFF, CP63) /* \_SB_.PR63.GCAP.CP63 */
                    Return (Zero)
                }

                Or (And (PF63, 0x7FFFFFFF), CP63, PF63) /* \PF63 */
                If (LEqual (And (PF63, 0x09), 0x09))
                {
                    \_SB.PR01.APPT ()
                }

                If (And (\_SB.OSCP, 0x20))
                {
                    \_SB.PR01.HWPT ()
                }

                If (LOr (LEqual (And (PF63, 0x09), 0x09), And (\_SB.OSCP, 0x20)))
                {
                    \_SB.PR01.APPS ()
                }

                If (And (PF63, 0x18))
                {
                    \_SB.PR01.APCT ()
                }

                Store (PF63, PF00) /* \PF00 */
                Return (Zero)
            }
        }
    }

    Scope (\_SB)
    {
        If (LEqual (TXTE, One))
        {
            Device (ACM)
            {
                Name (_HID, "INTC1025")  // _HID: Hardware ID
                Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
                {
                    And (CPID, 0xFFFFFFF0, Local0)
                    If (LOr (LEqual (Local0, 0x000806C0), LEqual (Local0, 0x000806D0)))
                    {
                        Return ("INT_TGL_SINIT")
                    }

                    If (LOr (LEqual (Local0, 0x00090670), LEqual (Local0, 0x000906A0)))
                    {
                        Return ("INT_ADL_SINIT")
                    }

                    If (LOr (LEqual (Local0, 0x000B0670), LEqual (Local0, 0x000B06A0)))
                    {
                        Return ("INT_RPL_SINIT")
                    }

                    If (LOr (LOr (LEqual (Local0, 0x000A06A0), LEqual (Local0, 0x000A06B0)), LEqual (Local0, 0x000A06C0)))
                    {
                        Return ("INT_MTL_SINIT")
                    }

                    Return ("INT_UNK_SINIT")
                }
            }
        }
    }
}

