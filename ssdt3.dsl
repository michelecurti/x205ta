/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt3.dat, Mon Aug 24 19:53:29 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000058 (88)
 *     Revision         0x01
 *     Checksum         0x3D
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "LowPwrM"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "AMI "
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("ssdt3.aml", "SSDT", 1, "_ASUS_", "LowPwrM", 0x00000003)
{

    External (_SB_.DPTF, DeviceObj)
    External (LPMV, IntObj)

    Scope (\_SB.DPTF)
    {
        Name (LPSP, Package (0x01)
        {
            ToUUID ("b9455b06-7949-40c6-abf2-363a70c8706c")
        })
        Method (CLPM, 0, NotSerialized)
        {
            Return (LPMV) /* External reference */
        }
    }
}

