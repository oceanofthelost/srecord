============
srec_needham
============

:Date:   SRecord

NAME
====

srec_needham - Needham EMP‐series programmer ASCII file format

DESCRIPTION
===========

This format is understood by Needham Electronics' EMP‐series
programmers. See ``www.needhams.com/winman.pdf`` for more information.
(This format is very similar to the ASCII‐Hex format, but without the ^B
and ^C guard characters.)

Each data byte is represented as 2 hexadecimal characters, and is
separated by white space from all other data bytes.

The address for data bytes is set by using a sequence of
``$A``\ *``nnnn``*\ ``,`` characters, where *nnnn* is the 8‐character
ascii representation of the address. The comma is required. There is no
need for an address record unless there are gaps. Implicitly, the file
starts a address 0 if no address is set before the first data byte.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 3.0
  times when represented with this format.

EXAMPLE
=======

Here is an example ascii‐hex file. It contains the data “Hello,
World[rq] to be loaded at address 0x1000.

   ::

      $A1000,
      48 65 6C 6C 6F 2C 20 57 6F 72 6C 64 0A

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
