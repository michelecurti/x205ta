/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt2.dat, Mon Aug 24 19:53:29 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001BE2 (7138)
 *     Revision         0x01
 *     Checksum         0x6B
 *     OEM ID           "_ASUS_"
 *     OEM Table ID     "DptfTab"
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "AMI "
 *     Compiler Version 0x0100000D (16777229)
 */
DefinitionBlock ("ssdt2.aml", "SSDT", 1, "_ASUS_", "DptfTab", 0x00000003)
{
    /*
     * iASL Warning: There were 1 external control methods found during
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
    External (_SB_.PCI0.GFX0.DD01._BCM, MethodObj)    // Warning: Unresolved method, guessing 1 arguments

    External (_SB_.ADP1._PSR, UnknownObj)
    External (_SB_.I2C1, UnknownObj)
    External (_SB_.I2C1.BATC, UnknownObj)
    External (_SB_.I2C1.BATC._BST, IntObj)
    External (_SB_.I2C1.BATC.ARTG, IntObj)
    External (_SB_.I2C1.BATC.BCCC, UnknownObj)
    External (_SB_.I2C1.BATC.BCCE, UnknownObj)
    External (_SB_.I2C1.BATC.CTYP, IntObj)
    External (_SB_.I2C1.BATC.PMAX, IntObj)
    External (_SB_.I2C1.BATC.PSOC, IntObj)
    External (_SB_.I2C1.BATC.PSRC, IntObj)
    External (_SB_.I2C5, UnknownObj)
    External (_SB_.I2C5.PMI1, UnknownObj)
    External (_SB_.I2C5.PMI1.AVBD, UnknownObj)
    External (_SB_.I2C5.PMI1.AVBG, UnknownObj)
    External (_SB_.I2C5.PMI1.GMP0, UnknownObj)
    External (_SB_.I2C5.PMI1.TMP0, IntObj)
    External (_SB_.I2C5.PMI2, UnknownObj)
    External (_SB_.I2C5.PMI2.AVBD, UnknownObj)
    External (_SB_.I2C5.PMI2.AVBG, UnknownObj)
    External (_SB_.I2C5.PMI2.GMP0, UnknownObj)
    External (_SB_.I2C5.PMI2.GMP3, UnknownObj)
    External (_SB_.I2C5.PMI2.TMP0, IntObj)
    External (_SB_.I2C5.PMI2.TMP3, IntObj)
    External (_SB_.I2C5.PMIC, UnknownObj)
    External (_SB_.I2C5.PMIC.AVBD, UnknownObj)
    External (_SB_.I2C5.PMIC.AVBG, UnknownObj)
    External (_SB_.I2C5.PMIC.AX00, UnknownObj)
    External (_SB_.I2C5.PMIC.AX01, UnknownObj)
    External (_SB_.I2C5.PMIC.AX20, UnknownObj)
    External (_SB_.I2C5.PMIC.AX21, UnknownObj)
    External (_SB_.I2C5.PMIC.GEN0, UnknownObj)
    External (_SB_.I2C5.PMIC.GEN2, UnknownObj)
    External (_SB_.I2C5.PMIC.GMP0, UnknownObj)
    External (_SB_.I2C5.PMIC.GMP2, UnknownObj)
    External (_SB_.I2C5.PMIC.GX00, UnknownObj)
    External (_SB_.I2C5.PMIC.GX01, UnknownObj)
    External (_SB_.I2C5.PMIC.GX20, UnknownObj)
    External (_SB_.I2C5.PMIC.GX21, UnknownObj)
    External (_SB_.I2C5.PMIC.PEN0, UnknownObj)
    External (_SB_.I2C5.PMIC.PEN2, UnknownObj)
    External (_SB_.I2C5.PMIC.TMP0, IntObj)
    External (_SB_.I2C5.PMIC.TMP2, IntObj)
    External (_SB_.PCI0.GFX0.DD01._BQC, IntObj)
    External (_SB_.PCI0.GFX0.DD01._DCS, IntObj)
    External (_SB_.PSA2, UnknownObj)
    External (_SB_.PSA3, UnknownObj)
    External (_SB_.TCPU, UnknownObj)
    External (AMTE, UnknownObj)
    External (CHGR, UnknownObj)
    External (DDSP, UnknownObj)
    External (DPTE, UnknownObj)
    External (DSOC, UnknownObj)
    External (GCR1, UnknownObj)
    External (GCR2, UnknownObj)
    External (GCR3, UnknownObj)
    External (LPSP, UnknownObj)
    External (PDBG, IntObj)
    External (PDBP, UnknownObj)
    External (PMID, IntObj)
    External (PSA2, IntObj)
    External (PSA3, IntObj)
    External (PSC2, IntObj)
    External (PSC3, IntObj)
    External (PST1, UnknownObj)
    External (PST2, IntObj)
    External (PST3, IntObj)
    External (SCPE, UnknownObj)
    External (THM0, UnknownObj)
    External (THM1, UnknownObj)
    External (THM2, UnknownObj)
    External (THM3, UnknownObj)
    External (THM4, UnknownObj)
    External (VTSP, IntObj)

    Name (BDLI, 0x3C)
    Name (BDHI, 0x64)
    Scope (\_SB)
    {
        Device (DPTF)
        {
            Name (_HID, EisaId ("INT3400") /* Intel Dynamic Power Performance Management */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C1
            })
            Name (DPSP, Package (0x01)
            {
                ToUUID ("42a441d6-ae6a-462b-a84b-4a8ce79027d3")
            })
            Name (DCSP, Package (0x01)
            {
                ToUUID ("97c68ae7-15fa-499c-b8c9-5da81d606e0a")
            })
            Name (DCPP, Package (0x01)
            {
                ToUUID ("16caf1b7-dd38-40ed-b1c1-1b8a1913d531")
            })
            Name (DBPP, Package (0x01)
            {
                ToUUID ("64568ccd-6597-4bfc-b9d6-9d33854013ce")
            })
            Name (TMPP, Package (0x05)
            {
                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }, 

                Buffer (0x10)
                {
                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  /* ........ */
                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   /* ........ */
                }
            })
            Method (IDSP, 0, Serialized)
            {
                Name (TMPI, Zero)
                Index (TMPP, TMPI) = DerefOf (Index (DPSP, Zero))
                TMPI++
                Index (TMPP, TMPI) = DerefOf (Index (DCSP, Zero))
                TMPI++
                Index (TMPP, TMPI) = DerefOf (Index (DCPP, Zero))
                TMPI++
                If ((PDBP == One))
                {
                    Index (TMPP, TMPI) = DerefOf (Index (DBPP, Zero))
                    TMPI++
                }

                Index (TMPP, TMPI) = DerefOf (Index (LPSP, Zero))
                Return (TMPP) /* \_SB_.DPTF.TMPP */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DPTE == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PDRI, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x0A, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x02)
                    {
                        0x00010002, 
                        Zero
                    }
                }
            })
            Name (PDRA, Package (0x02)
            {
                Package (0x04)
                {
                    0x64, 
                    \_SB.TCPU, 
                    Zero, 
                    Package (0x04)
                    {
                        0x00010000, 
                        0x1F40, 
                        0x00010002, 
                        One
                    }
                }, 

                Package (0x04)
                {
                    0x64, 
                    \_SB.TDSP, 
                    0x0A, 
                    Package (0x02)
                    {
                        0x00050000, 
                        0x64
                    }
                }
            })
            Method (PDRT, 0, NotSerialized)
            {
                If ((\_SB.ADP1._PSR == Zero))
                {
                    Return (PDRI) /* \_SB_.DPTF.PDRI */
                }
                Else
                {
                    Return (PDRA) /* \_SB_.DPTF.PDRA */
                }
            }

            Name (ETRM, Package (0x0B)
            {
                Package (0x04)
                {
                    \_SB.TCPU, 
                    "INT3401", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.STR0, 
                    "INT3403", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.STR1, 
                    "INT3403", 
                    0x06, 
                    "1"
                }, 

                Package (0x04)
                {
                    \_SB.STR2, 
                    "INT3403", 
                    0x06, 
                    "2"
                }, 

                Package (0x04)
                {
                    \_SB.STI1, 
                    "INT3403", 
                    0x06, 
                    "6"
                }, 

                Package (0x04)
                {
                    \_SB.SXP1, 
                    "INT3403", 
                    0x06, 
                    "5"
                }, 

                Package (0x04)
                {
                    \_SB.STR3, 
                    "INT3403", 
                    0x06, 
                    "3"
                }, 

                Package (0x04)
                {
                    \_SB.TDSP, 
                    "INT3406", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.TCHG, 
                    "INT3403", 
                    0x06, 
                    "4"
                }, 

                Package (0x04)
                {
                    \_SB.TPWR, 
                    "INT3407", 
                    0x06, 
                    "0"
                }, 

                Package (0x04)
                {
                    \_SB.SAMB, 
                    "INT3409", 
                    0x06, 
                    "0"
                }
            })
            Name (TRTI, Package (0x05)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x37, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCHG, 
                    \_SB.STR2, 
                    0x64, 
                    0x96, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR2, 
                    0x50, 
                    0x0258, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCHG, 
                    \_SB.STR3, 
                    0x64, 
                    0x4E20, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.STR1, 
                    0x64, 
                    0x4E20, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Name (TRTX, Package (0x03)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x37, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.SXP1, 
                    0x50, 
                    0x0258, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TDSP, 
                    \_SB.SXP1, 
                    0x64, 
                    0x4E20, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Name (TRTT, Package (0x03)
            {
                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.TCPU, 
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STI1, 
                    0x64, 
                    0x32, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }, 

                Package (0x08)
                {
                    \_SB.TCPU, 
                    \_SB.STR1, 
                    0x64, 
                    0x64, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero
                }
            })
            Method (_TRT, 0, NotSerialized)  // _TRT: Thermal Relationship Table
            {
                If ((PMID == 0x05))
                {
                    Return (TRTX) /* \_SB_.DPTF.TRTX */
                }

                If ((PMID == 0x06))
                {
                    Return (TRTT) /* \_SB_.DPTF.TRTT */
                }

                Return (TRTI) /* \_SB_.DPTF.TRTI */
            }

            Name (TRTR, One)
            Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
            {
                Name (NUMP, Zero)
                Name (UID2, Buffer (0x10)
                {
                    /* 0000 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,  /* ........ */
                    /* 0008 */  0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF   /* ........ */
                })
                CreateDWordField (Arg3, Zero, STS1)
                CreateDWordField (Arg3, 0x04, CAP1)
                IDSP ()
                NUMP = SizeOf (TMPP)
                CreateDWordField (Arg0, Zero, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                CreateDWordField (UID2, Zero, EID0)
                CreateDWordField (UID2, 0x04, EID1)
                CreateDWordField (UID2, 0x08, EID2)
                CreateDWordField (UID2, 0x0C, EID3)
                While (NUMP)
                {
                    UID2 = DerefOf (Index (TMPP, (NUMP - One)))
                    If ((((IID0 == EID0) && (IID1 == EID1)) && ((IID2 == 
                        EID2) && (IID3 == EID3))))
                    {
                        Break
                    }

                    NUMP--
                }

                If ((NUMP == Zero))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x06
                    Return (Arg3)
                }

                If ((Arg1 != One))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x0A
                    Return (Arg3)
                }

                If ((Arg2 != 0x02))
                {
                    STS1 &= 0xFFFFFF00
                    STS1 |= 0x02
                    Return (Arg3)
                }

                Return (Arg3)
            }

            Method (KTOC, 1, NotSerialized)
            {
                If ((Arg0 > 0x0AAC))
                {
                    Local1 = (Arg0 - 0x0AAC)
                }
                Else
                {
                    Local1 = (0x0AAC - Arg0)
                    Local1 = (0x0A00 - Local1)
                }

                Return ((Local1 / 0x0A))
            }

            Method (CTOK, 1, NotSerialized)
            {
                If ((Arg0 & 0x80))
                {
                    Local0 = (Arg0 & 0xFF)
                    Local0 = (0x0100 - Arg0)
                    Local0 *= 0x0A
                    Local0 = (0x0AAC - Local0)
                }
                Else
                {
                    Local0 = (Arg0 * 0x0A)
                    Local0 += 0x0AAC
                }

                Return (Local0)
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (TPWR)
        {
            Name (_HID, EisaId ("INT3407") /* DPTF Platform Power Meter */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x11)
            Name (PROP, 0x07D0)
            Name (_STR, Unicode ("Platform Power"))  // _STR: Description String
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C1.BATC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DSOC == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                If (CondRefOf (\_SB.I2C1.BATC._BST, Local0))
                {
                    Return (\_SB.I2C1.BATC._BST) /* External reference */
                }
                Else
                {
                    Return (Package (0x04)
                    {
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero
                    })
                }
            }

            Method (PSOC, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PSOC, Local0))
                {
                    Return (\_SB.I2C1.BATC.PSOC) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PMAX, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PMAX, Local0))
                {
                    Return (\_SB.I2C1.BATC.PMAX) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (PSRC, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.PSRC, Local0))
                {
                    Return (\_SB.I2C1.BATC.PSRC) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (ARTG, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.ARTG, Local0))
                {
                    Return (\_SB.I2C1.BATC.ARTG) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (CTYP, 0, NotSerialized)
            {
                If (CondRefOf (\_SB.I2C1.BATC.CTYP, Local0))
                {
                    Return (\_SB.I2C1.BATC.CTYP) /* External reference */
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }

    Scope (\_SB)
    {
        Device (STR0)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("T1 Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM0, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM0 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM0 = Arg0
                If (CondRefOf (\_SB.STR0._PSV, Local0))
                {
                    Notify (STR0, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C5.PMIC.AVBG == One))
                {
                    \_SB.I2C5.PMIC.GMP0 = Zero
                    If ((\_SB.I2C5.PMIC.AVBD == One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP0) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (GTSH, 0x06)
            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("Display Board Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM1, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM1 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (PMTY, 0, NotSerialized)
            {
                Return (PMID) /* External reference */
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM1 = Arg0
                If (CondRefOf (\_SB.STR1._PSV, Local0))
                {
                    Notify (STR1, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C5.PMI2.AVBG == One))
                {
                    \_SB.I2C5.PMI2.GMP3 = Zero
                    If ((\_SB.I2C5.PMI2.AVBD == One))
                    {
                        Return (\_SB.I2C5.PMI2.TMP3) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x06)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR1))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR1 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Return (\_SB.DPTF.CTOK (PST1))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STI1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("SoC Board Sensor"))  // _STR: Description String
            Name (CTYP, Zero)
            Name (LTM1, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMI2
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM2 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (VTSP) /* External reference */
            }

            Method (PMTY, 0, NotSerialized)
            {
                Return (PMID) /* External reference */
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM1 = Arg0
                If (CondRefOf (\_SB.STI1._PSV, Local0))
                {
                    Notify (STI1, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C5.PMI2.AVBG == One))
                {
                    \_SB.I2C5.PMI2.GMP0 = Zero
                    If ((\_SB.I2C5.PMI2.AVBD == One))
                    {
                        Return (\_SB.I2C5.PMI2.TMP0) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x06)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR2))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR2 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                MAXV = PST2 /* External reference */
                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    If ((SCPE == One))
                    {
                        If ((\_SB.ADP1._PSR == Zero))
                        {
                            PSC2 = Zero
                        }
                        Else
                        {
                            PSC2 = 0x40
                        }

                        If (CondRefOf (\_SB.STI1._PSV, Local0))
                        {
                            Notify (\_SB.STI1, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (SXP1)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_STR, Unicode ("SOC Board Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM2, Zero)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMI1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM2 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_TSP, 0, NotSerialized)  // _TSP: Thermal Sampling Period
            {
                Return (VTSP) /* External reference */
            }

            Method (PMTY, 0, NotSerialized)
            {
                Return (PMID) /* External reference */
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM2 = Arg0
                If (CondRefOf (\_SB.SXP1._PSV, Local0))
                {
                    Notify (SXP1, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C5.PMI1.AVBG == One))
                {
                    \_SB.I2C5.PMI1.GMP0 = Zero
                    If ((\_SB.I2C5.PMI1.AVBD == One))
                    {
                        Return (\_SB.I2C5.PMI1.TMP0) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x06)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR2))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR2 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                If ((PSC2 > MAXV))
                {
                    MAXV = PSC2 /* External reference */
                }

                If ((PSA2 > MAXV))
                {
                    MAXV = PSA2 /* External reference */
                }

                If ((PST2 > MAXV))
                {
                    MAXV = PST2 /* External reference */
                }

                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    If ((SCPE == One))
                    {
                        If ((\_SB.ADP1._PSR == Zero))
                        {
                            PSC2 = Zero
                        }
                        Else
                        {
                            PSC2 = 0x40
                        }

                        If (CondRefOf (\_SB.SXP1._PSV, Local0))
                        {
                            Notify (\_SB.SXP1, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR2)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_STR, Unicode ("SOC Board Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM2, Zero)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM2 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM2 = Arg0
                If (CondRefOf (\_SB.STR2._PSV, Local0))
                {
                    Notify (STR2, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0017
                        }
                })
                Return (RBUF) /* \_SB_.STR2._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If ((\_SB.I2C5.PMIC.AVBG == One))
                {
                    \_SB.I2C5.PMIC.GMP2 = Zero
                    If ((\_SB.I2C5.PMIC.AVBD == One))
                    {
                        Return (\_SB.I2C5.PMIC.TMP2) /* External reference */
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.I2C5.PMIC.AVBD == One))
                {
                    \_SB.I2C5.PMIC.AX20 = Arg0
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GX20 = One
                    }

                    \_SB.I2C5.PMIC.PEN2 = Zero
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GEN2 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.I2C5.PMIC.AVBD == One))
                {
                    \_SB.I2C5.PMIC.AX21 = Arg0
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GX21 = One
                    }
                }
            }

            Name (GTSH, 0x06)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR2))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR2 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                If ((PSC2 > MAXV))
                {
                    MAXV = PSC2 /* External reference */
                }

                If ((PSA2 > MAXV))
                {
                    MAXV = PSA2 /* External reference */
                }

                If ((PST2 > MAXV))
                {
                    MAXV = PST2 /* External reference */
                }

                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    If ((SCPE == One))
                    {
                        If ((\_SB.ADP1._PSR == Zero))
                        {
                            PSC2 = Zero
                        }
                        Else
                        {
                            PSC2 = 0x40
                        }

                        If (CondRefOf (\_SB.STR2._PSV, Local0))
                        {
                            Notify (\_SB.STR2, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (STR3)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_STR, Unicode ("Charger Board Sensor"))  // _STR: Description String
            Name (PTYP, 0x03)
            Name (CTYP, Zero)
            Name (LTM3, Zero)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                \_SB.I2C1
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM3 == Zero))
                {
                    Return (Zero)
                }

                Return (Zero)
            }

            Method (_DTI, 1, NotSerialized)  // _DTI: Device Temperature Indication
            {
                LTM3 = Arg0
                If (CondRefOf (\_SB.STR3._PSV, Local0))
                {
                    Notify (STR3, 0x91) // Device-Specific
                }
            }

            Method (_NTT, 0, NotSerialized)  // _NTT: Notification Temperature Threshold
            {
                Return (0x0ADE)
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Name (BUFF, Buffer (0x07)
            {
                 0xFF                                             /* . */
            })
            CreateByteField (BUFF, Zero, STAT)
            CreateByteField (BUFF, One, LEN)
            CreateByteField (BUFF, 0x02, TMP0)
            CreateByteField (BUFF, 0x03, AX00)
            CreateByteField (BUFF, 0x04, AX01)
            CreateByteField (BUFF, 0x05, AX10)
            CreateByteField (BUFF, 0x06, AX11)
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                Return (\_SB.DPTF.CTOK (Zero))
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
            }

            Method (PAT1, 1, Serialized)
            {
            }

            Name (GTSH, 0x14)
            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                Return (\_SB.DPTF.CTOK (GCR3))
            }

            Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
            {
                Return (\_SB.DPTF.CTOK ((GCR3 - 0x03)))
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                Name (MAXV, Zero)
                If ((PSC3 > MAXV))
                {
                    MAXV = PSC3 /* External reference */
                }

                If ((PSA3 > MAXV))
                {
                    MAXV = PSA3 /* External reference */
                }

                If ((PST3 > MAXV))
                {
                    MAXV = PST3 /* External reference */
                }

                Return (\_SB.DPTF.CTOK (MAXV))
            }

            Method (_SCP, 3, Serialized)  // _SCP: Set Cooling Policy
            {
                If (((Arg0 == Zero) || (Arg0 == One)))
                {
                    CTYP = Arg0
                    If ((SCPE == One))
                    {
                        If ((\_SB.ADP1._PSR == Zero))
                        {
                            PSC3 = Zero
                        }
                        Else
                        {
                            PSC3 = 0x3A
                        }

                        If (CondRefOf (\_SB.STR3._PSV, Local0))
                        {
                            Notify (\_SB.STR3, 0x91) // Device-Specific
                        }
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (SAMB)
        {
            Name (_HID, EisaId ("INT3409"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (PTYP, 0x03)
            Name (_STR, Unicode ("Ambient Temperature"))  // _STR: Description String
            Name (CPRM, 0x05AA)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C5, 
                \_SB.I2C5.PMIC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((THM4 == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
                        "\\_SB.I2C5.PMIC", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0015
                        }
                })
                Return (RBUF) /* \_SB_.SAMB._CRS.RBUF */
            }

            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
            }

            Method (_ATI, 1, Serialized)
            {
                If ((AMTE == One))
                {
                    If (((\_SB.DPTF.KTOC (Arg0) <= 0x1E) || (Arg0 <= 0x0AAC)))
                    {
                        \_SB.PSA2 = 0x3E
                        \_SB.PSA3 = 0x39
                    }
                    Else
                    {
                        \_SB.PSA2 = 0x42
                        \_SB.PSA3 = 0x3A
                    }

                    If (CondRefOf (\_SB.STR2._PSV, Local0))
                    {
                        Notify (\_SB.STR2, 0x91) // Device-Specific
                    }

                    If (CondRefOf (\_SB.STR3._PSV, Local1))
                    {
                        Notify (\_SB.STR3, 0x91) // Device-Specific
                    }
                }
            }

            Method (AMBT, 0, Serialized)
            {
                Return (0x0AC0)
            }

            Method (TMPC, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR0._TMP, Local0))
                {
                    Return (\_SB.STR0._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (TMPH, 0, Serialized)
            {
                If (CondRefOf (\_SB.STR2._TMP, Local0))
                {
                    Return (\_SB.STR2._TMP ())
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (PATC, 0x02)
            Method (PAT0, 1, Serialized)
            {
                If ((\_SB.I2C5.PMIC.AVBD == One))
                {
                    \_SB.I2C5.PMIC.AX00 = Arg0
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GX00 = One
                    }

                    \_SB.I2C5.PMIC.PEN0 = Zero
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GEN0 = One
                    }
                }
            }

            Method (PAT1, 1, Serialized)
            {
                If ((\_SB.I2C5.PMIC.AVBD == One))
                {
                    \_SB.I2C5.PMIC.AX01 = Arg0
                    If ((\_SB.I2C5.PMIC.AVBG == One))
                    {
                        \_SB.I2C5.PMIC.GX01 = One
                    }
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TDSP)
        {
            Name (_HID, EisaId ("INT3406") /* Intel Dynamic Platform & Thermal Framework Display Participant */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((DDSP == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (DDDL, 0, NotSerialized)
            {
                Return (BDLI) /* \BDLI */
            }

            Method (DDPC, 0, NotSerialized)
            {
                Return (BDHI) /* \BDHI */
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                Return (Package (0x16)
                {
                    0x50, 
                    0x32, 
                    0x05, 
                    0x0A, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x1E, 
                    0x23, 
                    0x28, 
                    0x2D, 
                    0x32, 
                    0x37, 
                    0x3C, 
                    0x41, 
                    0x46, 
                    0x4B, 
                    0x50, 
                    0x55, 
                    0x5A, 
                    0x5F, 
                    0x64
                })
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (((Arg0 >= Zero) && (Arg0 <= 0x64)))
                {
                    \_SB.PCI0.GFX0.DD01._BCM (Arg0)
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (\_SB.PCI0.GFX0.DD01._BQC) /* External reference */
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (\_SB.PCI0.GFX0.DD01._DCS) /* External reference */
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }

        Device (TCHG)
        {
            Name (_HID, EisaId ("INT3403") /* DPTF Temperature Sensor */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Name (PTYP, 0x0B)
            Name (_STR, Unicode ("Intel DPTF Charger Participant"))  // _STR: Description String
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                \_SB.I2C1, 
                \_SB.I2C1.BATC
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((CHGR == Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Name (PPSS, Package (0x04)
            {
                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x60, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    One, 
                    0x40, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x02, 
                    0x20, 
                    "mA", 
                    Zero
                }, 

                Package (0x08)
                {
                    Zero, 
                    Zero, 
                    Zero, 
                    Zero, 
                    0x03, 
                    Zero, 
                    "mA", 
                    Zero
                }
            })
            Method (PPPC, 0, NotSerialized)
            {
                Local2 = SizeOf (PPSS)
                Local2--
                If ((\_SB.ADP1._PSR == Zero))
                {
                    Return (Local2)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (SPPC, 1, NotSerialized)
            {
                Local2 = SizeOf (PPSS)
                Local2--
                If (((Arg0 >= Zero) && (Arg0 <= Local2)))
                {
                    Local1 = DerefOf (Index (DerefOf (Index (PPSS, Arg0)), 0x05))
                    \_SB.I2C1.BATC.BCCC = Local1
                    \_SB.I2C1.BATC.BCCE = One
                    Notify (\_SB.I2C1.BATC, 0x80) // Status Change
                }
            }

            Method (SDBG, 0, NotSerialized)
            {
                Return (PDBG) /* External reference */
            }
        }
    }
}

