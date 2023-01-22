=======================
srec_tektronix_extended
=======================

:Date:   SRecord

NAME
====

srec_tektronix_extended - Tektronix Extended hexadecimal file format

DESCRIPTION
===========

This format allows binary files to be uploaded and downloaded between
two computer systems, typically between a computer system (such as a PC,
Macintosh, or workstation) and an emulator or evaluation board for
microcontrollers and microprocessors.

The Lines
---------

| Lines always start with a percent (%) character. Each line consists of
  5 fields. These are the length field, the type field, the checksum,
  the address field (including address length), and the data field.

The Fields
----------

= ====== ==== ======== ======= ====
% Length Type Checksum Address Data
= ====== ==== ======== ======= ====

Record Length
   The record length field is a 2 character (1 byte) field that
   specifies the number of characters (not bytes) in the record,
   excluding the percent.

Type
   The type field is a 1 character field that specifies whether the
   record is data (6) or termination (8).

Checksum
   The checksum is an 2 character (1 byte) field that represents the sum
   of all the nibbles on the line, excluding the checksum.

Address
   This is a 9 character field. The first character is the address size;
   it is always 8. The remaining 8 characters are the 4‐byte address
   that specifies where the data is to be loaded into memory.

Data
   | The data field contains the executable code, memory‐loadable data
     or descriptive information to be transferred.

Record Types
------------

6
   A record containing data. The data is placed at the address
   specified.

8
   A termination record. The address field may optionally contain the
   address of the instruction to which control is passed. There is no
   data field.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 2.5
  times when represented with this format.

EXAMPLE
=======

Here is an example Tektronix extended file. It contains the data “Hello,
World” to be loaded at address 0x006B.

   ::

      %256D980000006B48656C6C6F2C20576F726C64210A
      %09819800000000

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
