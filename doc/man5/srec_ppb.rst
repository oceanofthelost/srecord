========
srec_ppb
========

:Date:   SRecord

NAME
====

srec_ppb - Stag Prom Programmer binary format

DESCRIPTION
===========

This is the native binary format of the Stag Prom Programmer.

Format
------

The format is packet based. The packet is composed of an 0x01 byte, the
packet payload size (4 bytes, big‐endian), the packet address (4 bytes,
big‐endian), the packet data, and the negative of a one‐byte simple sum
of the payload size, address and payload data.

If the packet payload is more than 1024 bytes, there is an intermediate
checksum after each 1024th payload byte.

The end of file is indicated by a packet with a zero‐length payload.

Command Line Option
-------------------

This format is specified using the **-PPB** command line option.

Size Multiplier
---------------

In general, binary data will expand in size by approximately 1.002 times
when represented with this format (worse if there are many short data
regions).

SEE ALSO
========

` <https://web.archive.org/web/20110417235840/http://www.stag.co.uk/>`__

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
