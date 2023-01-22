===============
srec_mips_flash
===============

:Date:   SRecord

NAME
====

srec_mips_flash - MIPS‐Flash file format

DESCRIPTION
===========

The MIPS SDE tool chain has a *convert* program that is able to output
this format. I have no idea what reads it, some kind of flash programmer
I suppose.

Format
------

The file must start with '!R' to reset the state machine. White space
appears to be ignored, except as it serves to separate tokens.

Data is presented as 32‐bit hexadecimal numbers, in the normal
big‐endian text number format. To write them to memory, you have to know
if the target is big‐endian or little‐endian. for little endian targets,
reverse the order of the bytes in this number.

The eight bytes following a '>' are a sort of comment. The SDE code
reads like they are displayed in the flash programmer as a kind of
progress indicator.

The number following '@' is a new address for the following data.

Each segment must be erased before it can be written, this is done with
the '!E' command. Each segment is assumed to be 128kB in size.

Special segments must unlocked (with the '!C' command) and locked again
(with the '!S' command).

This file format contains no checksum mechanism.

Command Line Options
--------------------

This format is specified using one of the **-Mips‐Flash‐Big_Endian** or
**-Mips‐Flash‐Little_Endian** options. The endian‐ness must be specified
on the command line, because there is nothing in the file contents to
indicate the endian‐ness of the data it contains.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 2.3
  times when represented with this format (worse if you use shorter
  lines).

EXAMPLE
=======

Here is an example MIPS‐Flash file. It contains the data “Hello, World”
to be loaded at bytes address 0x0000 (but remember, the file contents
are always multiples of four bytes).

   ::

      !R
      >00000xxx @00000000 !E
      @00000000
      >00000000
      48656C6C 6F2C2057 6F726C64 210A0000
      >#DL_DONE
      >FINISHED

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
