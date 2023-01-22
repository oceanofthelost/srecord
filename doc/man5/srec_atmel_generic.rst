==================
srec_atmel_generic
==================

:Date:   SRecord

NAME
====

srec_atmel_generic - Atmel Generic file format

DESCRIPTION
===========

This format is the output of the Atmel AVR assembler. The file contains
two columns of hexadecimal coded values. The first column is the 24‐bit
word address, the second column is the 16‐bit word data. The columns are
separated by a colon (`:') character.

By default, SRecord treats this is little‐endian data (the least
significant byte first). If you want big endian order, use the
-atmel‐generic‐be argument instead.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 6.0
  times when represented with this format (6.5 times in Windows).

EXAMPLE
=======

Here is an example Atmel Generic file. It contains the data “Hello,
World[rq] to be loaded at bytes address 0x0100 (but remember, the file
contents are word addressed).

   ::

      000080:4865
      000081:6C6C
      000082:6F2C
      000083:2057
      000084:6F72
      000085:6C64

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
