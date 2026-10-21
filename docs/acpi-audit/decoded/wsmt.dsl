/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of acpi-audit/raw/wsmt.aml
 *
 * ACPI Data Table [WSMT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "WSMT"    [Windows SMM Security Mitigations Table]
[004h 0004 004h]                Table Length : 00000028
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 8F
[00Ah 0010 006h]                      Oem ID : "ACRSYS"
[010h 0016 008h]                Oem Table ID : "ACRPRDCT"
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "1025"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 004h]            Protection Flags : 00000007
                          FIXED_COMM_BUFFERS : 1
           COMM_BUFFER_NESTED_PTR_PROTECTION : 1
                  SYSTEM_RESOURCE_PROTECTION : 1

Raw Table Data: Length 40 (0x28)

    0000: 57 53 4D 54 28 00 00 00 01 8F 41 43 52 53 59 53  // WSMT(.....ACRSYS
    0010: 41 43 52 50 52 44 43 54 02 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 07 00 00 00                          // ........
