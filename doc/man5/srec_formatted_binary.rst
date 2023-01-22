=====================
srec_formatted_binary
=====================

:Date:   SRecord

NAME
====

srec_formatted_binary - Formatted Binary file format

DESCRIPTION
===========

This is the PDP‐11 paper tape format, described in the DEC‐11‐GGPC‐D
PDP‐11 "Paper Tape Software Programming Handbook" 1972.

The file starts with a character sequence which appears as an arrow when
punched on 8‐hole paper tape.

   0x08, 0x1C, 0x2A, 0x49, 0x08, 0x00

Then follows a byte count, encoded big‐endian in the low 4 bits of the
next 4 bytes. The high bits should be zero.

Then follows a 0xFF byte.

The data follows, as many bytes as specified in the header.

The trailer consists of the following bytes:

   0x00, 0x00,

and then a 2‐byte checksum (big‐endian).

The alternate header sequence

   0x08, 0x1C, 0x3E, 0x6B, 0x08, 0x00

is followed by an 8‐nibble big‐endian byte count.

Size Multiplier
---------------

| In general, binary data will expand in sized very little when
  represented with this format.

EXAMPLE
=======

Here is a hex dump of a formatted binary file containing the data
"Hello, World!".

   ::

      0000: 08 1C 2A 49 08 00 00 00  ..*I....
      0008: 00 0E FF 48 65 6C 6C 6F  ...Hello
      0010: 2C 20 57 6F 72 6C 64 21  , World!
      0018: 0A 00 00 04 73           ....s

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
