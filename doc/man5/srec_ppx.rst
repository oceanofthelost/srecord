========
srec_ppx
========

:Date:   SRecord

NAME
====

srec_ppx - Stag Prom Programmer hexadecimal format

DESCRIPTION
===========

This is the native hexadecimal format of the Stag Prom Programmer.

Format
------

The file must start with an asterisk '*' on a line by itself.

Each line has a 16‐bit address, followed by 8‐bit bytes.

The end is indicated by '$S' followed by a 16‐bit checksum of the data
bytes as 4 hex digits.

Command Line Option
-------------------

This format is specified using the **-PPX** command line option.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 3 times
  when represented with this format (worse if you use shorter lines).

EXAMPLE
=======

Here is an example PPX file. It contains the data “Hello, World” to be
loaded at bytes address 0x0000 (but remember, the file contents are
always multiples of four bytes).

   ::

      *
      0000 48 65 6C 6C 6F 2C 20 57 6F 72 6C 64 21 0A $S0473

SEE ALSO
========

` <http://matthieu.benoit.free.fr/pdf/pp39.pdf>`__
` <https//web.archive.org/web/20110417235840/http://www.stag.co.uk/>`__

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
