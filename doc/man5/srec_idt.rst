========
srec_idt
========

:Date:   SRecord

NAME
====

srec_idt - IDT/sim binary file format

DESCRIPTION
===========

This format comes from Integrated Device Technology (IDT) System
Integration Manager (IDT/sim).

It is almost identical to the Motorola S‐Record format, except that most
of each record is in binary, and there is no line termination character.
The 'S' and tag characters are the same (ascii), however all other bytes
are emitted as binary, rather than as a 2‐byte hexadecimal ascii
encoding.

SEE ALSO
========

*srec_motorola*\ (5)
   The original Motorola S‐Record format.

*srec_wilson*\ (5)
   For a different spin on making S‐Record into a more densely packed
   binary file.

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
