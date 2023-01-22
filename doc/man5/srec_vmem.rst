=========
srec_vmem
=========

:Date:   SRecord

NAME
====

srec_vmem - vmem file format

DESCRIPTION
===========

This format is the Verilog VMEM format. This is a hex format suitable
for loading into Verilog simulations using the ``$readmemh`` call.

| The text file to be read shall contain only the following:
| White space (spaces, new lines, tabs, and form‐feeds)
| Comments (both types of C++ comment are allowed)
| Hexadecimal numbers

White space and/or comments shall be used to separate the numbers.

In the following discussion, the term "address" refers to an index into
the array that models the memory.

As the file is read, each number encountered is assigned to a successive
word element of the memory. Addressing is controlled both by specifying
start and/or finish addresses in the system task invocation and by
specifying addresses in the data file.

When addresses appear in the data file, the format is an "at" character
(``@``) followed by a hexadecimal number as follows:

   ::

      @hh...h

Both uppercase and lowercase digits are allowed in the number. No white
space is allowed between the ``@`` and the number. As many address
specifications as needed within the data file can be used. When the
system task encounters an address specification, it loads subsequent
data starting at that memory address.

Commentary
----------

There is no checksum in this format, which can generate false positives
when guessing file formats on input.

There is no indication of the word size in the file, since it is
dependent on the word type of the Verilog memory it is being read into.
SRecord will guess the word size based on the number of digits it sees
in the numbers, but this is only a guess.

SRecord will also assume that the numbers are to be loaded big‐endian;
that is, most significant byte (first byte seen) into the lowest address
covered by the word.

You can use the **-byte‐swap** filter to change the byte order; it takes
an optional width of bytes to swap within.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 2.9
  times (32‐bit), 3.1 times (16‐bit) or 3.6 times (8‐bit) when
  represented with this format.

EXAMPLE
=======

Here is an example Verilog VMEM file. It contains the data “Hello,
World[rq] to be loaded at address 0x1000.

   ::

      @00000400 48656C6C 6F2C2057 6F726C64 0AFFFFFF

REFERENCE
=========

| IEEE P1364‐2005/D2, Standard for Verilog Hardware Description Language
  (Draft), section 17.2.8 "Loading memory data from a file", p. 295.
| Copyright © 2003 IEEE
| ` <http://www.boyd.com/1364/>`__
| ` <http://www.boyd.com/1364/1364-2005-d2.pdf.gz>`__

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
