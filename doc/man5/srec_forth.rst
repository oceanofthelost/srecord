==========
srec_forth
==========

:Date:   SRecord

NAME
====

srec_forth - FORTH file format

DESCRIPTION
===========

This format can be read by FORTH interpreters

The file starts with HEX to set the number base.

| Each line contains the address, the byte and a store command, either
  C! for RAM or EEC! for EEPROM

EXAMPLE
=======

Here is an example srec[hy]forth file. It contains the data “Hello,
World” to be loaded at address 0x1000.

   ::

      HEX
      48 1000 C!
      65 1001 C!
      6C 1002 C!
      6C 1003 C!
      6F 1004 C!
      2C 1005 C!
      20 1006 C!
      57 1007 C!
      6F 1008 C!
      72 1009 C!
      6C 100A C!
      64 100B C!
      0A 100C C!

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
