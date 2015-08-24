/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt4.dat, Mon Aug 24 19:53:29 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000FF (255)
 *     Revision         0x01
 *     Checksum         0x46
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "SoCDptf"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "AMI "
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("ssdt4.aml", "SSDT", 1, "_ASUS_", "SoCDptf", 0x00000003)
{
    /*
     * iASL Warning: There were 2 external control methods found during
     * disassembly, but additional ACPI tables to resolve these externals
     * were not specified. This resulting disassembler output file may not
     * compile because the disassembler did not know how many arguments
     * to assign to these methods. To specify the tables needed to resolve
     * external control method references, the -e option can be used to
     * specify the filenames. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (ACTT, MethodObj)    // Warning: Unresolved method, guessing 0 arguments
    External (CRTT, MethodObj)    // Warning: Unresolved method, guessing 0 arguments

    External (_SB_.DPTF.CTOK, IntObj)
    External (_SB_.TCPU, UnknownObj)

    Scope (\_SB)
    {
        Device (TSOC)
        {
            Name (_HID, EisaId ("INT3402"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (CTYP, Zero)
            Name (CINT, 0x04)
            Name (LSTM, Zero)
            Name (PATC, 0x02)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveLow, Exclusive, ,, )
                    {
                        0x0000004A,
                    }
                })
                Return (RBUF) /* \_SB_.TSOC._CRS.RBUF */
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                CRTT ()
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                (CRTT () - 0x03)
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK) /* External reference */
                ACTT ()
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    Notify (\_SB.TCPU, 0x91) // Device-Specific
                }
            }
        }
    }
}

