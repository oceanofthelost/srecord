=========
srec_info
=========

NAME
====

srec_info - information about EPROM load files

SYNOPSIS
========

| **srec_info** [ *option*... ] *filename*...
| **srec_info** **-Help**
| **srec_info** **-VERSion**

DESCRIPTION
===========

The *srec_info* program is used to obtain input about EPROM load files.
It reads the files specified, and then presents statistics about them.
These statistics include: the file header if any, the execution start
address if any, and the address ranges covered by the data if any.

If there is binary data the header, it will be presented using the URL
encoding that uses % followed by two hexadecimal characters. For example
a backspace would be encoded as “%08”. (This is symmetric with the
srec_cat ‐‐header option).

INPUT FILE SPECIFICATIONS
=========================

Input may be qualified in two ways: you may specify a data file or a
data generator. format and you may specify filters to apply to them. An
input file specification looks like this:

   | *data‐file* [ *filter* ... ]
   | *data‐generator* [ *filter* ... ]

Data Files
----------

Input from data files is specified by file name and format name. An
input file specification looks like this:

   *filename* [ *format* ][ -ignore‐checksums ]

The default format is Motorola S‐Record format, but *many* others are
also understood.

Data Generators
---------------

It is also possible to generate data, rather than read it from a file.
You may use a generator anywhere you could use a file. An input
generator specification looks like this:

   **-GENerate** *address‐range* **-**\ *data‐source*

Generators include random data and various forms of constant data.

Common Manual Page
------------------

| See *srec_input*\ (1) for complete details of input specifiers. This
  description is in a separate manual page because it is common to more
  than one SRecord command.

OPTIONS
=======

The following options are understood:

**@**\ *filename*
   The named text file is read for additional command line arguments.
   Arguments are separated by white space (space, tab, newline, *etc*).
   There is no wildcard mechanism. There is no quoting mechanism.
   Comments, which start with '**#**' and extend to the end of the line,
   are ignored. Blank lines are ignored.

**-Help**
   |
   | Provide some help with using the *srec_info* program.

**-IGnore_Checksums**
   The **-IGnore‐Checksums** option may be used to disable checksum
   validation of input files, for those formats which have checksums at
   all. Note that the checksum values are still read in and parsed (so
   it is still an error if they are missing) but their values are not
   checked. Used after an input file name, the option affects that file
   alone; used anywhere else on the command line, it applies to all
   following files.

**-Enable_Sequence_Warnings**
   This option may be used to enable warnings about input files where
   the data records are not in strictly ascending address order. Only
   one warning is issued per input file. This is the default.

   **Note:** the output of *srec_cat*\ (1) is always in this order.

   **Note:** This option must be used *before* the input file. This is
   because if there are several files on the command line, each may need
   different settings. The setting remains in force until the next
   **-Disable_Sequence_Warnings** option.

**-Disable_Sequence_Warnings**
   This option may be used to disable warnings about input files where
   the data records are not in strictly ascending address order.

   **Note:** This option must be used *before* the offending input file.
   This is because if there are several files on the command line, each
   may need different settings. The setting remains in force until the
   next **-Enable_Sequence_Warnings** option.

**-redundant‐bytes=**\ *value*
   Use this option to permit a file to contain redundant values for some
   memory locations. The default is for this condition to be a warning.

   ignore
      No warning or error is issued when a redundant settings are
      detected.

   warning
      A warning is issued when a redundant settings are observed, the
      warning includes the problematic address.

   error
      A fatal error is issued when a redundant settings are observed,
      the fatal error message includes the problematic address and byte
      value.

**-contradictory‐bytes=**\ *value*
   Use this option to permit a file to contain contradictory values for
   some memory locations. The last value in the input(s) will be used.
   The default is for this condition to be a fatal error.

   ignore
      No warning or error is issued when contradictory setting is
      detected.

   warning
      A warning is issued when a contradictory settings are observed,
      the warning includes the problematic address, and values.

   error
      A fatal error is issued when contradictory settings are observed,
      the fatal error message includes the problematic address and byte
      values.

**-Verbose**
   |
   | This option may be used to obtain more information about the input
     files including size of blocks and allocation ratio.

**-VERSion**
   |
   | Print the version of the *srec_info* program being executed.

All other options will produce a diagnostic error.

All options may be abbreviated; the abbreviation is documented as the
upper case letters, all lower case letters and underscores (_) are
optional. You must use consecutive sequences of optional letters.

All options are case insensitive, you may type them in upper case or
lower case or a combination of both, case is not important.

For example: the arguments “-help”, “-HEL” and “-h” are all interpreted
to mean the **-Help** option. The argument “-hlp” will not be
understood, because consecutive optional characters were not supplied.

| Options and other command line arguments may be mixed arbitrarily on
  the command line.

| The GNU long option names are understood. Since all option names for
  *srec_info* are long, this means ignoring the extra leading “-”. The
  “\ **--**\ *option*\ **=**\ *value*\ ” convention is also understood.

EXIT STATUS
===========

| The *srec_info* command will exit with a status of 1 on any error. The
  *srec_info* command will only exit with a status of 0 if there are no
  errors.

COPYRIGHT
=========

| *srec_info* version 1.65
| Copyright (C) 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006,
  2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2018, 2019,
  2020, 2022, 2023 Peter Miller

| The *srec_info* program comes with ABSOLUTELY NO WARRANTY; for details
  use the '*srec_info -LICense*' command. This is free software and you
  are welcome to redistribute it under certain conditions; for details
  use the '*srec_info -LICense*' command.

MAINTAINER
==========

============== ======= ==========================
Scott Finneran E‐Mail: scottfinneran@yahoo.com.au
Peter Miller   E‐Mail: pmiller@opensource.org.au
============== ======= ==========================
