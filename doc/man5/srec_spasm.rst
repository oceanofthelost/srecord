==========
srec_spasm
==========

:Date:   SRecord

NAME
====

srec_spasm - SPASM file format

DESCRIPTION
===========

This format is the output of the Parallax SPASM assembler (now defunct,
I'm told). The file contains two columns of 16‐bit hexadecimal coded
values. The first column is the word address, the second column is the
word data.

By default, SRecord treats this is big‐endian data (the most significant
byte first). If you want little endian order, use the -spasm‐le argument
instead.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 5.0
  times when represented with this format (5.5 times in Windows).

EXAMPLE
=======

Here is an example SPASM file. It contains the data “Hello, World[rq] to
be loaded at bytes address 0x0100 (but remember, the file contents are
word addressed).

   ::

      0080 6548
      0081 6C6C
      0082 2C6F
      0083 5720
      0084 726F
      0085 646C

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
