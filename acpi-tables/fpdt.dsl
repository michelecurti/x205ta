/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembly of fpdt.dat, Mon Aug 24 19:53:29 2015
 *
 * ACPI Data Table [FPDT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "FPDT"    [Firmware Performance Data Table]
[004h 0004   4]                 Table Length : 00000044
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : D9
[00Ah 0010   6]                       Oem ID : "_ASUS_"
[010h 0016   8]                 Oem Table ID : "Notebook"
[018h 0024   4]                 Oem Revision : 01072009
[01Ch 0028   4]              Asl Compiler ID : "AMI "
[020h 0032   4]        Asl Compiler Revision : 00010013


[024h 0036   2]                Subtable Type : 0001
[026h 0038   1]                       Length : 10
[027h 0039   1]                     Revision : 01
[028h 0040   4]                     Reserved : 00000000
[02Ch 0044   8]                 S3PT Address : 000000007C84D528

[034h 0052   2]                Subtable Type : 0000
[036h 0054   1]                       Length : 10
[037h 0055   1]                     Revision : 01
[038h 0056   4]                     Reserved : 00000000
[03Ch 0060   8]                    Reset End : 000000007C84D548
/**** ACPI subtable terminates early - may be older version (dump table) */

Raw Table Data: Length 68 (0x44)

  0000: 46 50 44 54 44 00 00 00 01 D9 5F 41 53 55 53 5F  // FPDTD....._ASUS_
  0010: 4E 6F 74 65 62 6F 6F 6B 09 20 07 01 41 4D 49 20  // Notebook. ..AMI 
  0020: 13 00 01 00 01 00 10 01 00 00 00 00 28 D5 84 7C  // ............(..|
  0030: 00 00 00 00 00 00 10 01 00 00 00 00 48 D5 84 7C  // ............H..|
  0040: 00 00 00 00                                      // ....
