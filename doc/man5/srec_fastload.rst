=============
srec_fastload
=============

:Date:   SRecord

NAME
====

srec_fastload - LSI Logic Fast Load file format

DESCRIPTION
===========

The FastLoad Format uses a compressed ASCII format that permits files to
be downloaded in less than half the time taken for Motorola S‐records.

The base‐64 encoding used is "A‐Za‐z0−9,.". The data is encoded in
groups of 4 characters (3 bytes, 24 bits).

The character '/' is used to introduce a special function. Special
functions are:

A\ *nnnnnn*
   Defines an address.

B\ *nn*
   Define a single byte.

C\ *nnnn*
   Compare the checksums. The checksum is a simple positive 16‐bit sum,
   of the data bytes only.

EAA
   Define the program's entry point. The address will be the current
   address as defined by the **A** command. (The *AA* number in this
   command is ignored.) This must be the last entry in the file.

KAA
   Clear the checksum. (The *AA* number in this command is ignored.)

S\ *name*,X
   Define a symbol. The address of the symbol will be the current
   address as defined by the **A** command.

Z\ *nn*
   Clear a number of bytes.

Size Multiplier
---------------

| In general, binary data will expand in sized by approximately 1.4
  times when represented with this format.

EXAMPLE
=======

Here is an example LSI Logic Fast Load format file. It contains the data
“Hello, World[rq] to be loaded at address 0.

   ::

      /AAAA
      SGVsbG8sIFdvcmxk/BAK/CARS/AAAA/EAA

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
