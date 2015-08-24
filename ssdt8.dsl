/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20150717-64
 * Copyright (c) 2000 - 2015 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of ssdt8.dat, Mon Aug 24 19:53:29 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000427 (1063)
 *     Revision         0x01
 *     Checksum         0x5B
 *     OEM ID           "Intel_"
 *     OEM Table ID     "Tpm2Tabl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("ssdt8.aml", "SSDT", 1, "Intel_", "Tpm2Tabl", 0x00001000)
{

    External (TPMA, IntObj)
    External (TPME, IntObj)
    External (TPML, IntObj)

    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Name (TPMF, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    _Y1E)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateDWordField (^TPMF, \_SB.TPM._Y1E._BAS, TB0A)  // _BAS: Base Address
                CreateDWordField (^TPMF, \_SB.TPM._Y1E._LEN, TB0L)  // _LEN: Length
                TB0A = TPMA /* External reference */
                TB0L = TPML /* External reference */
                Return (TPMF) /* \_SB_.TPM_.TPMF */
            }

            OperationRegion (TICR, SystemMemory, 0xE00D0000, 0x0100)
            Field (TICR, AnyAcc, NoLock, Preserve)
            {
                Offset (0x8C), 
                STAT,   32
            }

            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (TNVS, SystemMemory, 0x7BFE9000, 0x27)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (((Arg0 < 0x06) && (Arg0 > 0x03)))
                {
                    If (!(MORD & 0x10))
                    {
                        MCIP = 0x02
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (TPME)
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (HINF, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (Arg1)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             /* . */
                    })
                }
                Else
                {
                    If ((_T_0 == One))
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                0x02, 
                                Zero
                            }
                        })
                        If ((_STA () == Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Else
                    {
                        BreakPoint
                    }
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (Arg1)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (0x02)
                    {
                         0xFF, 0x01                                       /* .. */
                    })
                }
                Else
                {
                    If ((_T_0 == One))
                    {
                        Return ("1.2")
                    }
                    Else
                    {
                        If ((_T_0 == 0x02))
                        {
                            PPRQ = DerefOf (Index (Arg2, Zero))
                            PPIP = 0x02
                            IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                            Return (FRET) /* \_SB_.TPM_.FRET */
                        }
                        Else
                        {
                            If ((_T_0 == 0x03))
                            {
                                Index (TPM2, One) = PPRQ /* \_SB_.TPM_.PPRQ */
                                Return (TPM2) /* \_SB_.TPM_.TPM2 */
                            }
                            Else
                            {
                                If ((_T_0 == 0x04))
                                {
                                    Return (0x02)
                                }
                                Else
                                {
                                    If ((_T_0 == 0x05))
                                    {
                                        PPIP = 0x05
                                        IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                                        Index (TPM3, One) = LPPR /* \_SB_.TPM_.LPPR */
                                        Index (TPM3, 0x02) = PPRP /* \_SB_.TPM_.PPRP */
                                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                                    }
                                    Else
                                    {
                                        If ((_T_0 == 0x06))
                                        {
                                            Return (0x03)
                                        }
                                        Else
                                        {
                                            If ((_T_0 == 0x07))
                                            {
                                                PPIP = 0x07
                                                PPRQ = DerefOf (Index (Arg2, Zero))
                                                IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                                                Return (FRET) /* \_SB_.TPM_.FRET */
                                            }
                                            Else
                                            {
                                                If ((_T_0 == 0x08))
                                                {
                                                    PPIP = 0x08
                                                    PPRQ = DerefOf (Index (Arg2, Zero))
                                                    IOB2 = PPIN /* \_SB_.TPM_.PPIN */
                                                    Return (FRET) /* \_SB_.TPM_.FRET */
                                                }
                                                Else
                                                {
                                                    BreakPoint
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (Arg1)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             /* . */
                    })
                }
                Else
                {
                    If ((_T_0 == One))
                    {
                        MORD = DerefOf (Index (Arg2, Zero))
                        MCIP = One
                        IOB2 = MCIN /* \_SB_.TPM_.MCIN */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Else
                    {
                        BreakPoint
                    }
                }

                Return (One)
            }

            Method (TSMI, 3, Serialized)
            {
                Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
                _T_0 = ToInteger (Arg1)
                If ((_T_0 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             /* . */
                    })
                }
                Else
                {
                    If ((_T_0 == One))
                    {
                        STAT = One
                        Return (Zero)
                    }
                    Else
                    {
                        BreakPoint
                    }
                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8")))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d")))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If ((Arg0 == ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4")))
                {
                    Return (TSMI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             /* . */
                })
            }
        }
    }
}

