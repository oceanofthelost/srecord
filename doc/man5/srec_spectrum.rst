=============
srec_spectrum
=============

:Date:   SRecord

NAME
====

srec_spectrum - Spectrum file format

DESCRIPTION
===========

In this format, bytes are recorded as ASCII code with binary digits
represented by 1s and 0s. Each byte is preceded by a decimal address.

The file ends with a Control‐C character (0x03).

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 14 times
  when represented with this format (or 15 times on DOS or Windows).

EXAMPLE
=======

Here is an example Spectrum file. It contains the data “Hello, World[rq]
to be loaded at address 0x0.

   ::

      ^B
      0000 01001000
      0001 01100101
      0002 01101100
      0003 01101100
      0004 01101111
      0005 00101100
      0006 00100000
      0007 01010111
      0008 01101111
      0009 01110010
      0010 01101100
      0011 01100100
      0012 00100001
      0013 00001010
      ^C

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
