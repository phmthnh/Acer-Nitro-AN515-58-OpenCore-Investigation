/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20251212 (32-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of acpi-audit/raw/xsdt.aml
 *
 * ACPI Data Table [XSDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "XSDT"    [Extended System Description Table]
[004h 0004 004h]                Table Length : 0000016C
[008h 0008 001h]                    Revision : 01
[009h 0009 001h]                    Checksum : AC
[00Ah 0010 006h]                      Oem ID : "ACRSYS"
[010h 0016 008h]                Oem Table ID : "ACRPRDCT"
[018h 0024 004h]                Oem Revision : 00000002
[01Ch 0028 004h]             Asl Compiler ID : "    "
[020h 0032 004h]       Asl Compiler Revision : 01000013

[024h 0036 008h]       ACPI Table Address   0 : 0000000043ABF000
[02Ch 0044 008h]       ACPI Table Address   1 : 00000000439BE000
[034h 0052 008h]       ACPI Table Address   2 : 0000000043AF9000
[03Ch 0060 008h]       ACPI Table Address   3 : 0000000043AF8000
[044h 0068 008h]       ACPI Table Address   4 : 0000000043AF7000
[04Ch 0076 008h]       ACPI Table Address   5 : 0000000043AF1000
[054h 0084 008h]       ACPI Table Address   6 : 0000000043AEE000
[05Ch 0092 008h]       ACPI Table Address   7 : 0000000043AEA000
[064h 0100 008h]       ACPI Table Address   8 : 0000000043ADC000
[06Ch 0108 008h]       ACPI Table Address   9 : 0000000043ADB000
[074h 0116 008h]       ACPI Table Address  10 : 0000000043ADA000
[07Ch 0124 008h]       ACPI Table Address  11 : 0000000043AD8000
[084h 0132 008h]       ACPI Table Address  12 : 0000000043AD7000
[08Ch 0140 008h]       ACPI Table Address  13 : 0000000043AD6000
[094h 0148 008h]       ACPI Table Address  14 : 0000000043AD5000
[09Ch 0156 008h]       ACPI Table Address  15 : 0000000043AD4000
[0A4h 0164 008h]       ACPI Table Address  16 : 0000000043AD3000
[0ACh 0172 008h]       ACPI Table Address  17 : 0000000043AD2000
[0B4h 0180 008h]       ACPI Table Address  18 : 0000000043AD1000
[0BCh 0188 008h]       ACPI Table Address  19 : 0000000043AD0000
[0C4h 0196 008h]       ACPI Table Address  20 : 0000000043ACC000
[0CCh 0204 008h]       ACPI Table Address  21 : 0000000043AFD000
[0D4h 0212 008h]       ACPI Table Address  22 : 0000000043ACB000
[0DCh 0220 008h]       ACPI Table Address  23 : 0000000043AC9000
[0E4h 0228 008h]       ACPI Table Address  24 : 0000000043AC0000
[0ECh 0236 008h]       ACPI Table Address  25 : 0000000043ABE000
[0F4h 0244 008h]       ACPI Table Address  26 : 0000000043ABD000
[0FCh 0252 008h]       ACPI Table Address  27 : 0000000043ABC000
[104h 0260 008h]       ACPI Table Address  28 : 0000000043A43000
[10Ch 0268 008h]       ACPI Table Address  29 : 0000000043A42000
[114h 0276 008h]       ACPI Table Address  30 : 0000000043A41000
[11Ch 0284 008h]       ACPI Table Address  31 : 0000000043A40000
[124h 0292 008h]       ACPI Table Address  32 : 0000000043A38000
[12Ch 0300 008h]       ACPI Table Address  33 : 0000000043A37000
[134h 0308 008h]       ACPI Table Address  34 : 0000000043A33000
[13Ch 0316 008h]       ACPI Table Address  35 : 0000000043A30000
[144h 0324 008h]       ACPI Table Address  36 : 0000000043A2E000
[14Ch 0332 008h]       ACPI Table Address  37 : 0000000043A2D000
[154h 0340 008h]       ACPI Table Address  38 : 0000000043A2C000
[15Ch 0348 008h]       ACPI Table Address  39 : 0000000043A2B000
[164h 0356 008h]       ACPI Table Address  40 : 0000000043ACF000

Raw Table Data: Length 364 (0x16C)

    0000: 58 53 44 54 6C 01 00 00 01 AC 41 43 52 53 59 53  // XSDTl.....ACRSYS
    0010: 41 43 52 50 52 44 43 54 02 00 00 00 20 20 20 20  // ACRPRDCT....    
    0020: 13 00 00 01 00 F0 AB 43 00 00 00 00 00 E0 9B 43  // .......C.......C
    0030: 00 00 00 00 00 90 AF 43 00 00 00 00 00 80 AF 43  // .......C.......C
    0040: 00 00 00 00 00 70 AF 43 00 00 00 00 00 10 AF 43  // .....p.C.......C
    0050: 00 00 00 00 00 E0 AE 43 00 00 00 00 00 A0 AE 43  // .......C.......C
    0060: 00 00 00 00 00 C0 AD 43 00 00 00 00 00 B0 AD 43  // .......C.......C
    0070: 00 00 00 00 00 A0 AD 43 00 00 00 00 00 80 AD 43  // .......C.......C
    0080: 00 00 00 00 00 70 AD 43 00 00 00 00 00 60 AD 43  // .....p.C.....`.C
    0090: 00 00 00 00 00 50 AD 43 00 00 00 00 00 40 AD 43  // .....P.C.....@.C
    00A0: 00 00 00 00 00 30 AD 43 00 00 00 00 00 20 AD 43  // .....0.C..... .C
    00B0: 00 00 00 00 00 10 AD 43 00 00 00 00 00 00 AD 43  // .......C.......C
    00C0: 00 00 00 00 00 C0 AC 43 00 00 00 00 00 D0 AF 43  // .......C.......C
    00D0: 00 00 00 00 00 B0 AC 43 00 00 00 00 00 90 AC 43  // .......C.......C
    00E0: 00 00 00 00 00 00 AC 43 00 00 00 00 00 E0 AB 43  // .......C.......C
    00F0: 00 00 00 00 00 D0 AB 43 00 00 00 00 00 C0 AB 43  // .......C.......C
    0100: 00 00 00 00 00 30 A4 43 00 00 00 00 00 20 A4 43  // .....0.C..... .C
    0110: 00 00 00 00 00 10 A4 43 00 00 00 00 00 00 A4 43  // .......C.......C
    0120: 00 00 00 00 00 80 A3 43 00 00 00 00 00 70 A3 43  // .......C.....p.C
    0130: 00 00 00 00 00 30 A3 43 00 00 00 00 00 00 A3 43  // .....0.C.......C
    0140: 00 00 00 00 00 E0 A2 43 00 00 00 00 00 D0 A2 43  // .......C.......C
    0150: 00 00 00 00 00 C0 A2 43 00 00 00 00 00 B0 A2 43  // .......C.......C
    0160: 00 00 00 00 00 F0 AC 43 00 00 00 00              // .......C....
