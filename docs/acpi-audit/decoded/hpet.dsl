/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of acpi-audit/raw/hpet.aml
 *
 * ACPI Data Table [HPET]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "HPET"    [High Precision Event Timer Table]
[004h 0004 004h]                Table Length : 00000038
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : 69
[00Ah 0010 006h]                      Oem ID : "ACRSYS"
[010h 0016 008h]                Oem Table ID : "ACRPRDCT"
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "1025"
[020h 0032 004h]       Asl Compiler Revision : 00040000

[024h 0036 004h]           Hardware Block ID : 8086A201

[028h 0040 00Ch]        Timer Block Register : [Generic Address Structure]
[028h 0040 001h]                    Space ID : 00 [SystemMemory]
[029h 0041 001h]                   Bit Width : 40
[02Ah 0042 001h]                  Bit Offset : 00
[02Bh 0043 001h]        Encoded Access Width : 00 [Undefined/Legacy]
[02Ch 0044 008h]                     Address : 00000000FED00000

[034h 0052 001h]             Sequence Number : 00
[035h 0053 002h]         Minimum Clock Ticks : 0080
[037h 0055 001h]       Flags (decoded below) : 00
                             4K Page Protect : 0
                            64K Page Protect : 0

Raw Table Data: Length 56 (0x38)

    0000: 48 50 45 54 38 00 00 00 01 69 41 43 52 53 59 53  // HPET8....iACRSYS
    0010: 41 43 52 50 52 44 43 54 02 00 00 00 31 30 32 35  // ACRPRDCT....1025
    0020: 00 00 04 00 01 A2 86 80 00 40 00 00 00 00 D0 FE  // .........@......
    0030: 00 00 00 00 00 80 00 00                          // ........
