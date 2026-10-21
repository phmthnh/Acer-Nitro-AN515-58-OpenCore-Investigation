/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt21.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002B2A (11050)
 *     Revision         0x02
 *     Checksum         0xB6
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00003000)
{
    External (_SB_.CPPC, FieldUnitObj)
    External (_SB_.PC00.RP01, DeviceObj)
    External (_SB_.PC00.RP01.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP01.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP01.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP01.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP01.VDID, FieldUnitObj)
    External (_SB_.PC00.RP02, DeviceObj)
    External (_SB_.PC00.RP02.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP02.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP02.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP02.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP02.VDID, FieldUnitObj)
    External (_SB_.PC00.RP03, DeviceObj)
    External (_SB_.PC00.RP03.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP03.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP03.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP03.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP03.VDID, FieldUnitObj)
    External (_SB_.PC00.RP04, DeviceObj)
    External (_SB_.PC00.RP04.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP04.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP04.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP04.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP04.VDID, FieldUnitObj)
    External (_SB_.PC00.RP05, DeviceObj)
    External (_SB_.PC00.RP05.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP05.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP05.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP05.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP05.VDID, FieldUnitObj)
    External (_SB_.PC00.RP06, DeviceObj)
    External (_SB_.PC00.RP06.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP06.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP06.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP06.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP06.VDID, FieldUnitObj)
    External (_SB_.PC00.RP07, DeviceObj)
    External (_SB_.PC00.RP07.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP07.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP07.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP07.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP07.VDID, FieldUnitObj)
    External (_SB_.PC00.RP08, DeviceObj)
    External (_SB_.PC00.RP08.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP08.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP08.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP08.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP08.VDID, FieldUnitObj)
    External (_SB_.PC00.RP09, DeviceObj)
    External (_SB_.PC00.RP09.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP09.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP09.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP09.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP09.VDID, FieldUnitObj)
    External (_SB_.PC00.RP10, DeviceObj)
    External (_SB_.PC00.RP10.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP10.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP10.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP10.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP10.VDID, FieldUnitObj)
    External (_SB_.PC00.RP11, DeviceObj)
    External (_SB_.PC00.RP11.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP11.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP11.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP11.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP11.VDID, FieldUnitObj)
    External (_SB_.PC00.RP12, DeviceObj)
    External (_SB_.PC00.RP12.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP12.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP12.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP12.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP12.VDID, FieldUnitObj)
    External (_SB_.PC00.RP13, DeviceObj)
    External (_SB_.PC00.RP13.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP13.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP13.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP13.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP13.VDID, FieldUnitObj)
    External (_SB_.PC00.RP14, DeviceObj)
    External (_SB_.PC00.RP14.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP14.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP14.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP14.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP14.VDID, FieldUnitObj)
    External (_SB_.PC00.RP15, DeviceObj)
    External (_SB_.PC00.RP15.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP15.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP15.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP15.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP15.VDID, FieldUnitObj)
    External (_SB_.PC00.RP16, DeviceObj)
    External (_SB_.PC00.RP16.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP16.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP16.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP16.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP16.VDID, FieldUnitObj)
    External (_SB_.PC00.RP17, DeviceObj)
    External (_SB_.PC00.RP17.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP17.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP17.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP17.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP17.VDID, FieldUnitObj)
    External (_SB_.PC00.RP18, DeviceObj)
    External (_SB_.PC00.RP18.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP18.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP18.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP18.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP18.VDID, FieldUnitObj)
    External (_SB_.PC00.RP19, DeviceObj)
    External (_SB_.PC00.RP19.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP19.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP19.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP19.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP19.VDID, FieldUnitObj)
    External (_SB_.PC00.RP20, DeviceObj)
    External (_SB_.PC00.RP20.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP20.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP20.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP20.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP20.VDID, FieldUnitObj)
    External (_SB_.PC00.RP21, DeviceObj)
    External (_SB_.PC00.RP21.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP21.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP21.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP21.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP21.VDID, FieldUnitObj)
    External (_SB_.PC00.RP22, DeviceObj)
    External (_SB_.PC00.RP22.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP22.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP22.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP22.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP22.VDID, FieldUnitObj)
    External (_SB_.PC00.RP23, DeviceObj)
    External (_SB_.PC00.RP23.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP23.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP23.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP23.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP23.VDID, FieldUnitObj)
    External (_SB_.PC00.RP24, DeviceObj)
    External (_SB_.PC00.RP24.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP24.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP24.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP24.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP24.VDID, FieldUnitObj)
    External (_SB_.PC00.RP25, DeviceObj)
    External (_SB_.PC00.RP25.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP25.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP25.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP25.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP25.VDID, FieldUnitObj)
    External (_SB_.PC00.RP26, DeviceObj)
    External (_SB_.PC00.RP26.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP26.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP26.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP26.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP26.VDID, FieldUnitObj)
    External (_SB_.PC00.RP27, DeviceObj)
    External (_SB_.PC00.RP27.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP27.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP27.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP27.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP27.VDID, FieldUnitObj)
    External (_SB_.PC00.RP28, DeviceObj)
    External (_SB_.PC00.RP28.HPEX, FieldUnitObj)
    External (_SB_.PC00.RP28.HPSX, FieldUnitObj)
    External (_SB_.PC00.RP28.PMEX, FieldUnitObj)
    External (_SB_.PC00.RP28.PMSX, FieldUnitObj)
    External (_SB_.PC00.RP28.VDID, FieldUnitObj)
    External (_SB_.PC00.TCON, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TG0N, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TG1N, MethodObj)    // 0 Arguments
    External (_SB_.PC00.TRP0.HPEX, IntObj)
    External (_SB_.PC00.TRP0.HPSX, IntObj)
    External (_SB_.PC00.TRP0.PMEX, IntObj)
    External (_SB_.PC00.TRP0.PMSX, IntObj)
    External (_SB_.PC00.TRP1.HPEX, IntObj)
    External (_SB_.PC00.TRP1.HPSX, IntObj)
    External (_SB_.PC00.TRP1.PMEX, IntObj)
    External (_SB_.PC00.TRP1.PMSX, IntObj)
    External (_SB_.PC00.TRP2.HPEX, IntObj)
    External (_SB_.PC00.TRP2.HPSX, IntObj)
    External (_SB_.PC00.TRP2.PMEX, IntObj)
    External (_SB_.PC00.TRP2.PMSX, IntObj)
    External (_SB_.PC00.TRP3.HPEX, IntObj)
    External (_SB_.PC00.TRP3.HPSX, IntObj)
    External (_SB_.PC00.TRP3.PMEX, IntObj)
    External (_SB_.PC00.TRP3.PMSX, IntObj)
    External (_SB_.PC00.TXHC, DeviceObj)
    External (_SB_.PC01.TRP0.HPEX, IntObj)
    External (_SB_.PC01.TRP0.HPSX, IntObj)
    External (_SB_.PC01.TRP0.PMEX, IntObj)
    External (_SB_.PC01.TRP0.PMSX, IntObj)
    External (_SB_.PC01.TRP1.HPEX, IntObj)
    External (_SB_.PC01.TRP1.HPSX, IntObj)
    External (_SB_.PC01.TRP1.PMEX, IntObj)
    External (_SB_.PC01.TRP1.PMSX, IntObj)
    External (_SB_.PC01.TRP2.HPEX, IntObj)
    External (_SB_.PC01.TRP2.HPSX, IntObj)
    External (_SB_.PC01.TRP2.PMEX, IntObj)
    External (_SB_.PC01.TRP2.PMSX, IntObj)
    External (_SB_.PC01.TRP3.HPEX, IntObj)
    External (_SB_.PC01.TRP3.HPSX, IntObj)
    External (_SB_.PC01.TRP3.PMEX, IntObj)
    External (_SB_.PC01.TRP3.PMSX, IntObj)
    External (_SB_.PR00, DeviceObj)
    External (_SB_.PR00.LPSS, PkgObj)
    External (_SB_.PR00.TPSS, PkgObj)
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
    External (_SB_.TCWK, MethodObj)    // 1 Arguments
    External (ITRT, FieldUnitObj)
    External (NEXP, FieldUnitObj)
    External (OSCC, FieldUnitObj)
    External (PCHS, FieldUnitObj)
    External (PCHX, IntObj)
    External (PF00, IntObj)
    External (PF01, IntObj)
    External (PF02, IntObj)
    External (PF03, IntObj)
    External (PF04, IntObj)
    External (PF05, IntObj)
    External (PF06, IntObj)
    External (PF07, IntObj)
    External (PF08, IntObj)
    External (PF09, IntObj)
    External (PF10, IntObj)
    External (PF11, IntObj)
    External (PF12, IntObj)
    External (PF13, IntObj)
    External (PF14, IntObj)
    External (PF15, IntObj)
    External (TCNT, FieldUnitObj)
    External (TRTD, FieldUnitObj)

    Method (NHPG, 0, Serialized)
    {
        Store (Zero, \_SB.PC00.RP01.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP02.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP03.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP04.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP05.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP06.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP07.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP08.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP09.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP10.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP11.HPEX) /* External reference */
        Store (Zero, \_SB.PC00.RP12.HPEX) /* External reference */
        If (LEqual (PCHS, PCHX))
        {
            Store (Zero, \_SB.PC00.RP13.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP14.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP15.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP16.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP17.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP18.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP19.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP20.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP21.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP22.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP23.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP24.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP25.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP26.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP27.HPEX) /* External reference */
            Store (Zero, \_SB.PC00.RP28.HPEX) /* External reference */
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (CondRefOf (\_SB.PC01))
            {
                Store (Zero, \_SB.PC01.TRP0.HPEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP1.HPEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP2.HPEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP3.HPEX) /* External reference */
            }
            Else
            {
                Store (Zero, \_SB.PC00.TRP0.HPEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP1.HPEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP2.HPEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP3.HPEX) /* External reference */
            }
        }

        Store (One, \_SB.PC00.RP01.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP02.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP03.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP04.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP05.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP06.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP07.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP08.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP09.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP10.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP11.HPSX) /* External reference */
        Store (One, \_SB.PC00.RP12.HPSX) /* External reference */
        If (LEqual (PCHS, PCHX))
        {
            Store (One, \_SB.PC00.RP13.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP14.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP15.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP16.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP17.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP18.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP19.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP20.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP21.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP22.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP23.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP24.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP25.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP26.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP27.HPSX) /* External reference */
            Store (One, \_SB.PC00.RP28.HPSX) /* External reference */
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (CondRefOf (\_SB.PC01))
            {
                Store (One, \_SB.PC01.TRP0.HPSX) /* External reference */
                Store (One, \_SB.PC01.TRP1.HPSX) /* External reference */
                Store (One, \_SB.PC01.TRP2.HPSX) /* External reference */
                Store (One, \_SB.PC01.TRP3.HPSX) /* External reference */
            }
            Else
            {
                Store (One, \_SB.PC00.TRP0.HPSX) /* External reference */
                Store (One, \_SB.PC00.TRP1.HPSX) /* External reference */
                Store (One, \_SB.PC00.TRP2.HPSX) /* External reference */
                Store (One, \_SB.PC00.TRP3.HPSX) /* External reference */
            }
        }
    }

    Method (NPME, 0, Serialized)
    {
        Store (Zero, \_SB.PC00.RP01.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP02.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP03.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP04.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP05.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP06.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP07.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP08.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP09.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP10.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP11.PMEX) /* External reference */
        Store (Zero, \_SB.PC00.RP12.PMEX) /* External reference */
        If (LEqual (PCHS, PCHX))
        {
            Store (Zero, \_SB.PC00.RP13.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP14.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP15.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP16.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP17.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP18.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP19.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP20.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP21.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP22.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP23.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP24.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP21.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP22.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP23.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP24.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP25.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP26.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP27.PMEX) /* External reference */
            Store (Zero, \_SB.PC00.RP28.PMEX) /* External reference */
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (CondRefOf (\_SB.PC01))
            {
                Store (Zero, \_SB.PC01.TRP0.PMEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP1.PMEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP2.PMEX) /* External reference */
                Store (Zero, \_SB.PC01.TRP3.PMEX) /* External reference */
            }
            Else
            {
                Store (Zero, \_SB.PC00.TRP0.PMEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP1.PMEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP2.PMEX) /* External reference */
                Store (Zero, \_SB.PC00.TRP3.PMEX) /* External reference */
            }
        }

        Store (One, \_SB.PC00.RP01.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP02.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP03.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP04.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP05.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP06.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP07.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP08.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP09.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP10.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP11.PMSX) /* External reference */
        Store (One, \_SB.PC00.RP12.PMSX) /* External reference */
        If (LEqual (PCHS, PCHX))
        {
            Store (One, \_SB.PC00.RP13.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP14.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP15.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP16.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP17.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP18.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP19.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP20.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP21.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP22.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP23.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP24.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP25.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP26.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP27.PMSX) /* External reference */
            Store (One, \_SB.PC00.RP28.PMSX) /* External reference */
        }

        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (CondRefOf (\_SB.PC01))
            {
                Store (One, \_SB.PC01.TRP0.PMSX) /* External reference */
                Store (One, \_SB.PC01.TRP1.PMSX) /* External reference */
                Store (One, \_SB.PC01.TRP2.PMSX) /* External reference */
                Store (One, \_SB.PC01.TRP3.PMSX) /* External reference */
            }
            Else
            {
                Store (One, \_SB.PC00.TRP0.PMSX) /* External reference */
                Store (One, \_SB.PC00.TRP1.PMSX) /* External reference */
                Store (One, \_SB.PC00.TRP2.PMSX) /* External reference */
                Store (One, \_SB.PC00.TRP3.PMSX) /* External reference */
            }
        }
    }

    Method (SPNT, 0, Serialized)
    {
        If (And (\PF00, 0x0400))
        {
            If (CondRefOf (\_SB.PR00.TPSS))
            {
                Subtract (SizeOf (\_SB.PR00.TPSS), One, \_SB.CPPC) /* External reference */
            }
        }
        ElseIf (CondRefOf (\_SB.PR00.LPSS))
        {
            Subtract (SizeOf (\_SB.PR00.LPSS), One, \_SB.CPPC) /* External reference */
        }

        If (LGreater (TCNT, One))
        {
            If (And (\PF00, 0x08))
            {
                Notify (\_SB.PR00, 0x80) // Status Change
            }

            If (And (\PF01, 0x08))
            {
                Notify (\_SB.PR01, 0x80) // Status Change
            }

            If (And (\PF02, 0x08))
            {
                Notify (\_SB.PR02, 0x80) // Status Change
            }

            If (And (\PF03, 0x08))
            {
                Notify (\_SB.PR03, 0x80) // Status Change
            }

            If (And (\PF04, 0x08))
            {
                Notify (\_SB.PR04, 0x80) // Status Change
            }

            If (And (\PF05, 0x08))
            {
                Notify (\_SB.PR05, 0x80) // Status Change
            }

            If (And (\PF06, 0x08))
            {
                Notify (\_SB.PR06, 0x80) // Status Change
            }

            If (And (\PF07, 0x08))
            {
                Notify (\_SB.PR07, 0x80) // Status Change
            }

            If (And (\PF08, 0x08))
            {
                Notify (\_SB.PR08, 0x80) // Status Change
            }

            If (And (\PF09, 0x08))
            {
                Notify (\_SB.PR09, 0x80) // Status Change
            }

            If (And (\PF10, 0x08))
            {
                Notify (\_SB.PR10, 0x80) // Status Change
            }

            If (And (\PF11, 0x08))
            {
                Notify (\_SB.PR11, 0x80) // Status Change
            }

            If (And (\PF12, 0x08))
            {
                Notify (\_SB.PR12, 0x80) // Status Change
            }

            If (And (\PF13, 0x08))
            {
                Notify (\_SB.PR13, 0x80) // Status Change
            }

            If (And (\PF14, 0x08))
            {
                Notify (\_SB.PR14, 0x80) // Status Change
            }

            If (And (\PF15, 0x08))
            {
                Notify (\_SB.PR15, 0x80) // Status Change
            }
        }
        Else
        {
            Notify (\_SB.PR00, 0x80) // Status Change
        }

        If (LGreater (TCNT, One))
        {
            If (LAnd (And (\PF00, 0x08), And (\PF00, 0x10)))
            {
                Notify (\_SB.PR00, 0x81) // Information Change
            }

            If (LAnd (And (\PF01, 0x08), And (\PF01, 0x10)))
            {
                Notify (\_SB.PR01, 0x81) // Information Change
            }

            If (LAnd (And (\PF02, 0x08), And (\PF02, 0x10)))
            {
                Notify (\_SB.PR02, 0x81) // Information Change
            }

            If (LAnd (And (\PF03, 0x08), And (\PF03, 0x10)))
            {
                Notify (\_SB.PR03, 0x81) // Information Change
            }

            If (LAnd (And (\PF04, 0x08), And (\PF04, 0x10)))
            {
                Notify (\_SB.PR04, 0x81) // Information Change
            }

            If (LAnd (And (\PF05, 0x08), And (\PF05, 0x10)))
            {
                Notify (\_SB.PR05, 0x81) // Information Change
            }

            If (LAnd (And (\PF06, 0x08), And (\PF06, 0x10)))
            {
                Notify (\_SB.PR06, 0x81) // Information Change
            }

            If (LAnd (And (\PF07, 0x08), And (\PF07, 0x10)))
            {
                Notify (\_SB.PR07, 0x81) // Information Change
            }

            If (LAnd (And (\PF08, 0x08), And (\PF08, 0x10)))
            {
                Notify (\_SB.PR08, 0x81) // Information Change
            }

            If (LAnd (And (\PF09, 0x08), And (\PF09, 0x10)))
            {
                Notify (\_SB.PR09, 0x81) // Information Change
            }

            If (LAnd (And (\PF10, 0x08), And (\PF10, 0x10)))
            {
                Notify (\_SB.PR10, 0x81) // Information Change
            }

            If (LAnd (And (\PF11, 0x08), And (\PF11, 0x10)))
            {
                Notify (\_SB.PR11, 0x81) // Information Change
            }

            If (LAnd (And (\PF12, 0x08), And (\PF12, 0x10)))
            {
                Notify (\_SB.PR12, 0x81) // Information Change
            }

            If (LAnd (And (\PF13, 0x08), And (\PF13, 0x10)))
            {
                Notify (\_SB.PR13, 0x81) // Information Change
            }

            If (LAnd (And (\PF14, 0x08), And (\PF14, 0x10)))
            {
                Notify (\_SB.PR14, 0x81) // Information Change
            }

            If (LAnd (And (\PF15, 0x08), And (\PF15, 0x10)))
            {
                Notify (\_SB.PR15, 0x81) // Information Change
            }
        }
        Else
        {
            Notify (\_SB.PR00, 0x81) // Information Change
        }
    }

    Method (SPTS, 1, NotSerialized)
    {
        If (CondRefOf (\_SB.PC00.TXHC))
        {
            If (TRTD)
            {
                \_SB.PC00.TCON ()
            }

            If (ITRT)
            {
                \_SB.PC00.TG0N ()
                \_SB.PC00.TG1N ()
            }
        }
    }

    Method (SWAK, 2, NotSerialized)
    {
        If (NEXP)
        {
            If (And (OSCC, One))
            {
                NHPG ()
            }

            If (And (OSCC, 0x04))
            {
                NPME ()
            }
        }

        If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
        {
            If (LNotEqual (\_SB.PC00.RP01.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x02), One))
                {
                    Notify (\_SB.PC00.RP01, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP02.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x04), One))
                {
                    Notify (\_SB.PC00.RP02, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP03.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x08), One))
                {
                    Notify (\_SB.PC00.RP03, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP04.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x10), One))
                {
                    Notify (\_SB.PC00.RP04, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP05.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x20), One))
                {
                    Notify (\_SB.PC00.RP05, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP06.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x40), One))
                {
                    Notify (\_SB.PC00.RP06, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP07.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x80), One))
                {
                    Notify (\_SB.PC00.RP07, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP08.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x0100), One))
                {
                    Notify (\_SB.PC00.RP08, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP09.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x0200), One))
                {
                    Notify (\_SB.PC00.RP09, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP10.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x0400), One))
                {
                    Notify (\_SB.PC00.RP10, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP11.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x0800), One))
                {
                    Notify (\_SB.PC00.RP11, Zero) // Bus Check
                }
            }

            If (LNotEqual (\_SB.PC00.RP12.VDID, 0xFFFFFFFF))
            {
                If (LNotEqual (And (Arg1, 0x1000), One))
                {
                    Notify (\_SB.PC00.RP12, Zero) // Bus Check
                }
            }

            If (LEqual (PCHS, PCHX))
            {
                If (LNotEqual (\_SB.PC00.RP13.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x2000), One))
                    {
                        Notify (\_SB.PC00.RP13, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP14.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x4000), One))
                    {
                        Notify (\_SB.PC00.RP14, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP15.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x8000), One))
                    {
                        Notify (\_SB.PC00.RP15, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP16.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00010000), One))
                    {
                        Notify (\_SB.PC00.RP16, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP17.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00020000), One))
                    {
                        Notify (\_SB.PC00.RP17, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP18.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00040000), One))
                    {
                        Notify (\_SB.PC00.RP18, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP19.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00080000), One))
                    {
                        Notify (\_SB.PC00.RP19, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP20.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00100000), One))
                    {
                        Notify (\_SB.PC00.RP20, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP21.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00200000), One))
                    {
                        Notify (\_SB.PC00.RP21, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP22.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00400000), One))
                    {
                        Notify (\_SB.PC00.RP22, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP23.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x00800000), One))
                    {
                        Notify (\_SB.PC00.RP23, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP24.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x01000000), One))
                    {
                        Notify (\_SB.PC00.RP24, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP25.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x02000000), One))
                    {
                        Notify (\_SB.PC00.RP25, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP26.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x04000000), One))
                    {
                        Notify (\_SB.PC00.RP26, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP27.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x08000000), One))
                    {
                        Notify (\_SB.PC00.RP27, Zero) // Bus Check
                    }
                }

                If (LNotEqual (\_SB.PC00.RP28.VDID, 0xFFFFFFFF))
                {
                    If (LNotEqual (And (Arg1, 0x10000000), One))
                    {
                        Notify (\_SB.PC00.RP28, Zero) // Bus Check
                    }
                }
            }

            If (CondRefOf (\_SB.PC00.TXHC))
            {
                \_SB.TCWK (Arg0)
            }
        }
    }
}

