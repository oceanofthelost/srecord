===========
srec_binary
===========

:Date:   SRecord

NAME
====

srec_binary - binary file format

DESCRIPTION
===========

It is possible to read and write binary files using *srec_cat*\ (1).

File Holes
----------

A file hole is a portion of a regular file that contains NUL characters
and is not stored in any data block on disk. Holes are a long‐standing
feature of Unix files. For instance, the following Unix command creates
a file in which the first bytes are a hole:

   ::

      $ echo -n "X" | dd of=/tmp/hole bs=1024 seek=6
      $

Now ``/tmp/hole`` has 6,145 characters (6,144 NUL characters plus an X
character), yet the file occupies just one data block on disk.

File holes were introduced to avoid wasting disk space. They are used
extensively by database applications and, more generally, by all
applications that perform hashing on files.

See ` <http://www.oreilly.com/catalog/linuxkernel2/chapter/ch17.pdf>`__
for more information.

Reading
-------

The size of binary files is taken from the size of the file on the file
system. If the file has holes these will read as blocks of NUL (zero)
data, as there is no elegant way to detect Unix file holes. In general,
you probably want to use the **-unfill** filter to find and remove large
swathes of zero bytes.

Writing
-------

In producing a binary file, *srec_cat*\ (1) honours the address
information and places the data into the binary file at the addresses
specified in the hex file. This usually results on holes in the file.
Sometimes alarmingly large file sizes are reported as a result.

If you are on a brain‐dead operating system without file holes then
there are going to be real data blocks containing real zero bytes, and
consuming real amounts of disk space. Upgrade - I suggest Linux.

To make a file of the size you expect, use

   srec_info foo.s19

to find the lowest address, then use

   srec_cat foo.s19 -intel -offset -*n* -o foo.bin -binary

where *n* is the lowest address present in the ``foo.s19`` file, as
reported by *srec_info*\ (1). The **negative** offset serves to move the
data down to have an origin of zero.

SEE ALSO
========

*srec_input*\ (1)
   for a description of the **-unfill** filter

*srec_examples*\ (1)
   has a section about binary files, and ways of automagically
   offsetting the data back to zero in a single command.

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
