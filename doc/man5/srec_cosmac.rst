===========
srec_cosmac
===========

:Date:   SRecord

NAME
====

srec_cosmac - RCA Cosmac Elf file format

DESCRIPTION
===========

This file takes the form of one or more RCA Cosmac Elf monitor commands,
also known as the IDIOT/4 monitor. Only the change memory command
(``!M``) is allowed.

The general form of the ``!M`` command takes the form

   !M\ *aaaa* *dd* ... *dd*

The ``!M`` command writes data byte bytes (represented by character
pairs *dd*) into successive memory locations, started at address *aaaa*.
Spaces between data bytes are ignored.

Using the comma (``,``) line continuation character resumes from the
next address in sequence.

   !M\ *aaaa* *dd* ... *dd*, *dd* ... *dd*

Using the semicolon (``;``) line continuation character takes an address
on the next line

   !M\ *aaaa* *dd* ... *dd*; *aaaa* *dd* ... *dd*

It is also possible to have the semicolon immediately after the command.

   !M; *aaaa* *dd* ... *dd*

All of these forms may be used in combination.

Size Multiplier
---------------

| In general, binary data will expand in size by approximately 2.0 times
  when represented with this format.

EXAMPLE
=======

Here is an example Cosmac file. It contains the data “Hello, World[rq]
to be loaded at address 0x1000.

   ::

      !M1000 48656C6C6F2C20576F726C640A

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
