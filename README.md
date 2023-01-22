# SRecord

The SRecord package is a collection of powerful tools for manipulating EPROM load files.

> I wrote SRecord because when I was looking for programs to manipulate EPROM load files, I could not find very many.
> The ones that I could find only did a few of the things I needed. SRecord is written in C++ and polymorphism is
> used to provide the file format flexibility and arbitrary filter chaining. Adding more file formats and filters is
> relatively simple, see the Reference Manual.
> -- *Peter Miller (original author of SRecord)*

The SRecord package understands a number of file formats:

| Protocol | Input | Output | Description |
|----|----|----|----|
| **Ascii-Hex**                                  | :white_check_mark:  | :white_check_mark: | Also known as **ascii-space-hex**                                  |
| **ASM**                                        |                     | :white_check_mark: | Only for embedding data into *Assembler* code                      |
| **Atmel Generic**                              | :white_check_mark:  | :white_check_mark: | Used by *Atmel AVR assembler*                                      |
| **BASIC**                                      |                     | :white_check_mark: | Only for embedding data into *BASIC* code                          |
| **BinaryBinary**                               | :white_check_mark:  | :white_check_mark: |                                                                    |
| **B-Record**                                   | :white_check_mark:  | :white_check_mark: | also known as **Freescale Dragonball bootstrap b-record**          |
| **C**                                          |                     | :white_check_mark: | Only for embedding data into *C* code                              |
| **COE**                                        |                     | :white_check_mark: | Extension `.coe`; also known as **Xilinx Coefficient File** format |
| **Cosmac**                                     | :white_check_mark:  | :white_check_mark: | also known as **RCA Cosmac Elf** format                            |
| **DEC Binary (XXDP)**                          | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Elektor Monitor (EMON52)**                   | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Fairchild Fairbug**                          | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Formatted Binary**                           | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Four Packed Code (FPC)**                     | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Hexdump**                                    |                     | :white_check_mark: | A simple hexdump                                                   |
| **HP64000 Absolute**                           | :white_check_mark:  |                    |                                                                    |
| **IDT/sim**                                    | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Intel**                                      | :white_check_mark:  | :white_check_mark: | Also known as **Intel MCS-86 Object** format                       |
| **Intel Absolute Object Module Format (AOMF)** | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Intel 16 (INHX16)**                          | :white_check_mark:  | :white_check_mark: | Also known as **Intel hexadecimal 16**                             |
| **LSI Logic Fast Load**                        | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Logisim**                                    | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Memory Initialization Format**               |                     | :white_check_mark: | Extension `.mem`; used by *Lattice Semiconductor*                  |
| **MIF**                                        | :white_check_mark:  | :white_check_mark: | Used by *Altera* **Memory Initialization File** format             |
| **MOS Technology**                             | :white_check_mark:  | :white_check_mark: |                                                                    |
| **MIPS-Flash**                                 | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Motorola S-Record**                          | :white_check_mark:  | :white_check_mark: | Also known as the **Exorciser**, **Exormacs** or **Exormax**       |
| **MsBin**                                      | :white_check_mark:  | :white_check_mark: | Also known as **Windows CE Binary Image Data** format              |
| **Needham**qqq                                 | :white_check_mark:  | :white_check_mark: | Also known as **Needham Electronics ASCII file** format            |
| **OS65V**                                      | :white_check_mark:  | :white_check_mark: | Also known as **Ohio Scientific hexadecimal** format               |
| **PPB**                                        | :white_check_mark:  | :white_check_mark: | Also known as **Stag Prom Programmer binary**                      |
| **PPX**                                        | :white_check_mark:  | :white_check_mark: | Also known as **Stag Prom Programmer hexadecimal**                 |
| **Signetics**                                  | :white_check_mark:  | :white_check_mark: |                                                                    |
| **SPASM**                                      | :white_check_mark:  | :white_check_mark: | Used by a variety of *PIC* programmers                             |
| **Spectrum**                                   | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Tektronix**                                  | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Tektronix Extended**                         | :white_check_mark:  | :white_check_mark: |                                                                    |
| **Texas Instruments Tagged (8 Bit)**           | :white_check_mark:  | :white_check_mark: | Also known as **TI-tagged** or **TI-SDSMAC**                       |
| **Texas Instruments Tagged (16 Bit)**          | :white_check_mark:  | :white_check_mark: | Also known as **TI-tagged** or **TI-SDSMAC**                       |
| **Texas Instruments ti-txt**                   | :white_check_mark:  | :white_check_mark: | Used by bootstrap loader of *TI MSP430*                            |
| **TRS-80**                                     | :white_check_mark:  | :white_check_mark: | Used by *The Radio Shack*                                          |
| **VHDL**                                       |                     | :white_check_mark: |                                                                    |
| **Verilog VMEM**                               | :white_check_mark:  | :white_check_mark: | Suitable for loading with `$readmemh()`                            |
| **Wilson**                                     | :white_check_mark:  | :white_check_mark: | Mysterious type of EPROM writer                                    |

Full documentation and binary packages can be found at the [SRecord website](https://srecord.sourceforge.net/)
