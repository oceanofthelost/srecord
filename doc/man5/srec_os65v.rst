==========
srec_os65v
==========

:Date:   SRecord

NAME
====

srec_os65v - OS65V Loader file format

DESCRIPTION
===========

This format is used by Ohio Scientific OS65V‐compatible loaders. This
family of machines includes the OSI C1P, Superboard II, C2, C4, C8, and
Challenger III, as well as the UK101, and Elektor Junior.

The file starts with a period '.' (0x2E), to ensure address entry mode.
then a 4‐digit hex address, followed by a slash '/' (0X2F) to enter the
data entry mode. The initial address is always present. There is no need
for an additional address record unless there are gaps.

Each data byte is represented as 2 hexadecimal characters, and is
separated by a carriage return character (0x0D) (advance address). The
final return character may be omitted.

The data is concluded with a period '.' (0x2E) to re‐enter address mode.
If an address to start execution is specified, then the last 5 bytes are
*nnnn*\ G where *nnnn* is the 4‐digit execution address, and G is the
'Go' command.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 3.0
  times when represented with this format.

EXAMPLE
=======

Here is an example ascii‐hex file. It contains the data “Hello,
World[rq] to be loaded at address 0x1000, with execution at 0x1003. (On
a 6502, this is the opcode for indirect jump to 0x2C6F.)

1000/48^M65^M6C^M6C^M6F^M2C^M20^M57^M6F^M72^M6C^M64^M0A^M.1010G

| 

COPYRIGHT
=========

| *srec_cat* version 1.65
| Copyright (C) 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006,
  2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2018, 2019,
  2020, 2022, 2023 Peter Miller

| The *srec_cat* program comes with ABSOLUTELY NO WARRANTY; for details
  use the '*srec_cat -LICense*' command. This is free software and you
  are welcome to redistribute it under certain conditions; for details
  use the '*srec_cat -LICense*' command.

MAINTAINER
==========

============== ======= ==========================
Scott Finneran E‐Mail: scottfinneran@yahoo.com.au
Peter Miller   E‐Mail: pmiller@opensource.org.au
============== ======= ==========================
