==========
New Filter
==========

NAME
====

How to add a new filter

DESCRIPTION
===========

This section describes how to add a new filter. It's mostly a set of
reminders for the maintainer. If you want a filter added to the
distribution, use this method and e‐mail the maintainer a patch
(generated with ``diff -Nur``, usually) and it can be added to the
sources if appropriate.

New Files
---------

The directory hierarchy is an echo of the class hierarchy, making it
easy to guess the filename of a class, and to work out the appropriate
file name of a new class. You get used to it. It is suggested that you
simply work in the root of the source tree (exploiting tab‐completion in
your shell and your editor) rather than continually changing directories
up and down the source tree. All of the file names below assume this.

The following files need to be created for a new filter.

srecord/input/filter/*name*.cc
   This file is how to process the new filter. Take a look at the other
   files in the same directory for examples. Also read *srecord/input.h*
   and *srecord/input/filter.h* for various helper methods.

srecord/input/filter/*name*.h
   This is the class declaration for the above file.

srecord/input/filter/message/*name*.cc
   If your filter needs all of the data to be known before it can
   proceed, or it needs all of the data to appear in ascending address
   order, derive from the ``srec_input_filter_message`` class, instead.
   This takes care of all data handling, you only have to write the
   method that computes the result from the data. Take a look at the
   other files in the same directory for examples.

srecord/input/filter/message/*name*.h
   This is the class declaration for the above file.

test/*nn*/t\ *nnmm*\ a.sh
   You may have noticed that SRecord comes with a lot of tests. You are
   more likely to get the patch for your new filter accepted rapidly if
   it comes with at least one test.

Modified Files
--------------

The following files need to be updated to mention the new filter.

srecord/srecord.h
   Add the new include file to the list. This file controls what files
   are installed into the ``/usr/include`` directory. Not all of them,
   just the public interface.

etc/README.man
   Mention the new filter in the section of this file which describes
   the supported filters.

etc/index.html
   Mention the new filter in the section of this file which describes
   the supported filters.

srecord/arglex/tool.h
   Add the new filter to the command line argument type enum.

   If your filter has endian‐ness, add one for each endian, using “_be”
   and “_le” suffixes.

srecord/arglex/tool.cc
   Add the new filter to the array of command line arguments types.

   If your filter has endian‐ness, add one for each endian, using
   “_Big_Endian” and “_Little_Endian” suffixes.

srecord/arglex/tool/input.cc
   Add the new filter to the code which parses input filters.

   If your filter has endian‐ness, add your command line tokens to the
   switch in the srecord::arglex_tool::get_endian_by_token method.

man/man1/o_input.so
   Mention the new filter in the section of this file which describes
   the supported input filters.

Makefile
   Actually, the system the maintainer has Aegis automatically generate
   this file, but if you aren't using Aegis you will need to edit this
   file for your own use.

Tests
-----

You may have noticed that SRecord comes with a lot of tests. You are
more likely to get the patch for your new filter accepted rapidly if it
comes with at least one test.

If your filter has endian‐ness, add tests for each endian.

IMPLEMENTATION ISSUES
=====================

In implementing a new filter, there are a couple of philosophical issues
which affect technical decisions:

·
   Be liberal in what you accept. Where ever possible, consume the
   widest possible interpretation of “valid” data. You especially need
   to cope with data with holes, and data records out of order, and data
   records not nicely aligned.

If your filter has endian‐ness, add tests for each endian.

·
   Be conservative in what you produce. Even when the input is weird,
   the output produced by the filter must be conforming. *E.g.* the
   byte‐swap filter still works when it has only one of the two bytes,
   and the other is a hole; it swaps the byte and the hole.

·
   If the input has no header record, the output should not have one
   either.

·
   If the input has no execution start address record, the output should
   not have one either.

·
   Do not to fill in holes in the data, unless you are a writing a
   “fill” filter. See the ``srecord/input/filter/message.cc`` file for
   an example of issuing a warning in the presence of holes.

·
   If the new filter is supposed to be its own inverse (*e.g.*
   byte‐swap), or a pair of filters are supposed to be inverses (*e.g.*
   split and unsplit) be sure to write a test to confirm this. The tests
   should exercise all of the boundary conditions (*e.g.* around the
   edges of holes, extremes of data ranges).

CODING STYLE
============

Please following the coding style of the existing code. It makes your
patches and contributions more likely to be accepted if they don't have
to be extensively reformatted.

Indent increments are four characters. Do not use tab characters at all,
nobody can agree how wide they are supposed to be. Line length is 80
characters or fewer, no exceptions.

Please follow the existing convention of always using Doxygen comments
on all your instance variables and methods, even for private methods.
Always document all arguments of all methods, even private methods,
using ``@param`` tags; see existing style. Always use whole sentences in
your Doxygen documentation, see existing code for examples.

Do not use upper case letters in file names. Do not use white space or
shell special characters in file names.

When sending a patch please use “diff -Nur”, as this will include your
new files in the patch, and you will not need additional attachments in
your email. Patches are preferred over tarballs.

Include tests. It makes your patches and contributions more likely to be
accepted if the maintainer doesn't have to write your tests for you. See
sources for examples of existing tests.

CONTRACT RATES
==============

It is possible to have the maintainer write your new file format or new
filter for you. However, if you want it done for nothing, you will be
put at the end of a (very) long queue of other *gratis* open source work
the maintainer has yet to do. You can jump the queue if you want to pay
the maintainer to do the work for you.

The maintainer's rates are AU$100 per hour.

A well document new format typically takes six hours to write and test,
this includes both reading and writing the new format. A well documented
new filter typically takes three hours to write and test.

Examples make these tasks easier. Poor documentation makes these tasks
take longer. A mystery format that requires reverse engineering may take
*much* longer; ask again once you have figured it out.

All code written for you will be included in the project source tarball
in its next release. All formats and filters written for you will be
copyright Scott Finneran;E‐Mail:;scottfinneran@yahoo.com.au, and they
will be GNU GPL licensed. If you *need* a format or filter written, it
has value to you; the issue of freeloaders is irrelevant.

Conversely, integrating complete open source contributions and patches
is done *gratis*, and usually done as promptly as time permits.

AUTHOR
======

============== ======= ==========================
Scott Finneran E‐Mail: scottfinneran@yahoo.com.au
Peter Miller   E‐Mail: pmiller@opensource.org.au
============== ======= ==========================
