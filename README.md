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
| [**Ascii-Hex**](doc/man5/srec_ascii_hex.rst)                             | :white_check_mark: | :white_check_mark: | Also known as **ascii-space-hex**                                  |
| **ASM**                                                                  |                    | :white_check_mark: | Only for embedding data into *Assembler* code                      |
| [**Atmel Generic**](doc/man5/srec_atmel_generic.rst)                     | :white_check_mark: | :white_check_mark: | Used by *Atmel AVR assembler*                                      |
| **BASIC**                                                                |                    | :white_check_mark: | Only for embedding data into *BASIC* code                          |
| [**Binary**](doc/man5/srec_binary.rst)                                   | :white_check_mark: | :white_check_mark: |                                                                    |
| [**B-Record**](doc/man5/srec_brecord.rst)                                | :white_check_mark: | :white_check_mark: | also known as **Freescale Dragonball bootstrap b-record**          |
| **C**                                                                    |                    | :white_check_mark: | Only for embedding data into *C* code                              |
| [**COE**](doc/man5/srec_coe.rst)                                         |                    | :white_check_mark: | Extension `.coe`; also known as **Xilinx Coefficient File** format |
| [**Cosmac**](doc/man5/srec_cosmac.rst)                                   | :white_check_mark: | :white_check_mark: | also known as **RCA Cosmac Elf** format                            |
| [**DEC Binary (XXDP)**](doc/man5/srec_dec_binary.rst)                    | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Elektor Monitor (EMON52)**](doc/man5/srec_emon52.rst)                 | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Fairchild Fairbug**](doc/man5/srec_fairchild.rst)                     | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Formatted Binary**](doc/man5/srec_formatted_binary.rst)               | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Four Packed Code (FPC)**](doc/man5/srec_fpc.rst)                      | :white_check_mark: | :white_check_mark: |                                                                    |
| **Hexdump**                                                              |                    | :white_check_mark: | A simple hexdump                                                   |
| [**HP64000 Absolute**](doc/man5/srec_hp64k.rst)                          | :white_check_mark: |                    |                                                                    |
| [**IDT/sim**](doc/man5/srec_idt.rst)                                     | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Intel**](doc/man5/srec_intel.rst)                                     | :white_check_mark: | :white_check_mark: | Also known as **Intel MCS-86 Object** format                       |
| [**Intel Absolute Object Module Format (AOMF)**](doc/man5/srec_aomf.rst) | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Intel 16 (INHX16)**](doc/man5/srec_intel16.rst)                       | :white_check_mark: | :white_check_mark: | Also known as **Intel hexadecimal 16**                             |
| **LSI Logic Fast Load**                                                  | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Logisim**](doc/man5/srec_logisim.rst)                                 | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Memory Initialization Format**](doc/man5/srec_mem.rst)                |                    | :white_check_mark: | Extension `.mem`; used by *Lattice Semiconductor*                  |
| [**MIF**](doc/man5/srec_mif.rst)                                         | :white_check_mark: | :white_check_mark: | Used by *Altera* **Memory Initialization File** format             |
| [**MIPS-Flash**](doc/man5/srec_mips_flash.rst)                           | :white_check_mark: | :white_check_mark: |                                                                    |
| [**MOS Technology**](doc/man5/srec_mos_tech.rst)                         | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Motorola S-Record**](doc/man5/srec_motorola.rst)                      | :white_check_mark: | :white_check_mark: | Also known as the **Exorciser**, **Exormacs** or **Exormax**       |
| [**MsBin**](doc/man5/srec_msbin.rst)                                     | :white_check_mark: | :white_check_mark: | Also known as **Windows CE Binary Image Data** format              |
| [**Needham**](doc/man5/srec_needham.rst)                                 | :white_check_mark: | :white_check_mark: | Also known as **Needham Electronics ASCII file** format            |
| [**OS65V**](doc/man5/srec_os65v.rst)                                     | :white_check_mark: | :white_check_mark: | Also known as **Ohio Scientific hexadecimal** format               |
| [**PPB**](doc/man5/srec_ppb.rst)                                         | :white_check_mark: | :white_check_mark: | Also known as **Stag Prom Programmer binary**                      |
| [**PPX**](doc/man5/srec_ppx.rst)                                         | :white_check_mark: | :white_check_mark: | Also known as **Stag Prom Programmer hexadecimal**                 |
| [**Signetics**](doc/man5/srec_signetics.rst)                             | :white_check_mark: | :white_check_mark: |                                                                    |
| [**SPASM**](doc/man5/srec_SPASM.rst)                                     | :white_check_mark: | :white_check_mark: | Used by a variety of *PIC* programmers                             |
| [**Spectrum**](doc/man5/srec_spectrum.rst)                               | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Tektronix**](doc/man5/srec_tektronix.rst)                             | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Tektronix Extended**](doc/man5/srec_tektronix_extended.rst)           | :white_check_mark: | :white_check_mark: |                                                                    |
| [**Texas Instruments Tagged (8 Bit)**](doc/man5/srec_ti_tagged.rst)      | :white_check_mark: | :white_check_mark: | Also known as **TI-tagged** or **TI-SDSMAC**                       |
| [**Texas Instruments Tagged (16 Bit)**](doc/man5/srec_ti_tagged_16.rst)  | :white_check_mark: | :white_check_mark: | Also known as **TI-tagged** or **TI-SDSMAC**                       |
| [**Texas Instruments ti-txt**](doc/man5/srec_ti_txt)                     | :white_check_mark: | :white_check_mark: | Used by bootstrap loader of *TI MSP430*                            |
| [**TRS-80**](doc/man5/srec_trs80.rst)                                    | :white_check_mark: | :white_check_mark: | Used by *The Radio Shack*                                          |
| **VHDL**                                                                 |                    | :white_check_mark: |                                                                    |
| [**Verilog VMEM**](doc/man5/srec_vmem.rst)                               | :white_check_mark: | :white_check_mark: | Suitable for loading with `$readmemh()`                            |
| [**Wilson**](doc/man5/srec_wilson.rst)                                   | :white_check_mark: | :white_check_mark: | Mysterious type of EPROM writer                                    |

Full documentation and binary packages can be found at the [SRecord website](https://srecord.sourceforge.net/)
