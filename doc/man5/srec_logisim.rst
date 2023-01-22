============
srec_logisim
============

:Date:   SRecord

NAME
====

srec_logisim - format Logisim EPROM load files

DESCRIPTION
===========

The file format used for image files is intentionally simple; this
permits you to write a program, such as an assembler, that generates
memory images that can then be loaded into memory. As an example of this
file format, if we had a 256‐byte memory whose first five bytes were 2,
3, 0, 20, and -1, and all subsequent values were 0, then the image would
be the following text file.

   v2.0 raw

   02 03 00 14 ff

The first line identifies the file format used (currently, there is only
one file format recognized). Subsequent values list the values in
hexadecimal, starting from address 0; you can place several such values
on the same line. Logisim will assume that any values unlisted in the
file are zero.

The image file can use run‐length encoding; for example, rather than
list the value 00 sixteen times in a row, the file can include 16*00
rather than repeat 00 sixteen times. Notice than the number of
repetitions is written in base 10. Files produced by Logisim will use
run‐length encoding for runs of at least four values

Size Multiplier
---------------

In general, binary data will expand in sized by approximately 2.95 times
when represented with this format.

Commentary
----------

This format is particularly deficient.

·
   The is no way for changing address in‐flight. And therefore the
   format can't have holes in the data.

·
   There are no checksums, or any other error checking.

·
   There is no provision for a comment header, as distinct to the “v2.0
   raw” magic number.

·
   There is no provision for an execution start address.

SEE ALSO
========

` <http://ozark.hendrix.edu/~burch/logisim/docs/2.3.0/guide/mem/menu.html>`__

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
