==============
srec_ascii_hex
==============

:Date:   SRecord

NAME
====

srec_ascii_hex - Ascii‐Hex file format

DESCRIPTION
===========

This format is also known as the *Ascii‐Space‐Hex* or *Ascii‐Hex‐Space*
format. If you know who invented this format, please let me know. If you
have a better or more complete description, I'd like to know that, too.

The file starts with a start‐of‐text (STX or Control‐B) character
(0x02). Everything before the STX is ignored.

Each data byte is represented as 2 hexadecimal characters, followed by
an "execution character". The default execution character is a space,
although many programs which write this format omit the space character
immediately preceding end‐of‐line.

The address for data bytes is set by using a sequence of
``$A``\ *``nnnn``*\ ``,`` characters, where *nnnn* is the 4‐character
ascii representation of the address. The comma is required. There is no
need for an address record unless there are gaps. Implicitly, the file
starts a address 0 if no address is set before the first data byte.

The file ends with an end‐of‐text (ETX or Control‐C) character (0x03).
Everything following the ETX is ignored.

It is also possible to specify a running 16‐bit checksum using a
sequence of ``$S``\ *``nnnn``*\ ``,`` characters, although this usually
appears *after* the ETX character and is thus often ignored.

Variant Forms
-------------

In addition to a space character, the execution character can also be
percent (%) called "ascii‐hex‐percent" format, apostrophe (') or comma
(,) called "ascii‐hex‐comma" format. The file must use the same
execution character throughout.

If the execution character is a comma, the address and checksum commands
are terminated by a dot (.) rather than a comma (,).

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 3.0
  times when represented with this format.

EXAMPLE
=======

Here is an example ascii‐hex file. It contains the data “Hello,
World[rq] to be loaded at address 0x1000.

   ::

      ^B $A1000,
      48 65 6C 6C 6F 2C 20 57 6F 72 6C 64 0A ^C

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
