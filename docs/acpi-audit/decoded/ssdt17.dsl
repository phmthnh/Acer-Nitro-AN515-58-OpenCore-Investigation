/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt17.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000016C (364)
 *     Revision         0x02
 *     Checksum         0x27
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00000002 (2)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "ACRSYS", "ACRPRDCT", 0x00000002)
{
    External (_SB_.PC00.LPCB.EC0_, DeviceObj)
    External (_SB_.PC00.LPCB.EC0_.CTMP, FieldUnitObj)
    External (_SB_.PC00.LPCB.EC0_.DSTP, FieldUnitObj)
    External (_SB_.PC00.LPCB.EC0_.Q27F, UnknownObj)
    External (_SB_.PC00.LPCB.ECOK, MethodObj)    // 0 Arguments

    Scope (\_TZ)
    {
        ThermalZone (TZ00)
        {
            Name (CRT1, 0x78)
            Name (DTMP, 0x1B)
            Name (CHOT, 0x6E)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PC00.LPCB.ECOK ())
                {
                    If (LEqual (\_SB.PC00.LPCB.EC0.Q27F, One))
                    {
                        Return (Add (0x0AAC, Multiply (CHOT, 0x0A)))
                    }
                    Else
                    {
                        Store (\_SB.PC00.LPCB.EC0.CTMP, Local0)
                        Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                    }
                }

                Return (Add (0x0AAC, Multiply (DTMP, 0x0A)))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (Add (0x0AAC, Multiply (CRT1, 0x0A)))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (Add (0x0AAC, Multiply (CHOT, 0x0A)))
            }
        }
    }
}

