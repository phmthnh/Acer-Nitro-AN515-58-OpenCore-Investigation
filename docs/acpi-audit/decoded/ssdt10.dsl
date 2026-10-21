/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ssdt10.aml
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000056 (86)
 *     Revision         0x01
 *     Checksum         0xEE
 *     OEM ID           "ACRSYS"
 *     OEM Table ID     "ACRPRDCT"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "1025"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "ACRSYS", "ACRPRDCT", 0x00001000)
{
    External (_SB_.PC00, DeviceObj)

    Scope (\_SB.PC00)
    {
        Device (ADED)
        {
            Name (_HID, "10251517")  // _HID: Hardware ID
        }
    }
}

