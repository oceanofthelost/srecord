==========
New Format
==========

:Date:   SRecord

NAME
====

How to add a new file format

DESCRIPTION
===========

This section describes how to add a new file format. It's mostly a set
of reminders for the maintainer. If you want a format added to the
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

The following files need to be creates for a new format.

srecord/output/file/*name*.cc
   This file is how to write the new format. Take a look at the other
   files in the same directory for examples. Also check out
   *srecord/output/file.h* and *srecord/output.h* for various helper
   methods.

srecord/output/file/*name*.h
   This is the class declaration for the above file.

srecord/input/file/*name*.cc
   This file is how to read the new format. Take a look at the other
   files in the same directory for examples. Also check out
   *srecord/input/file.h* and *srecord/input.h* for various helper
   methods.

srecord/input/file/*name*.h
   This is the class declaration for the above file.

man/man5/srec\_\ *name*.5
   This file describes the format. Take a look at the other files in the
   same directory for examples.

   If you need to describe something as “stupid”, as is all too often
   the case, use ``thesaurus.com`` to find a synonym. Use the following
   command

      ``find man/. -type f | xargs grep -i``\ *synonym*

   to make sure it hasn't been used yet.

test/*nn*/t\ *nnmm*\ a.sh
   You may have noticed that SRecord comes with a lot of tests. You are
   more likely to get the patch for your new format accepted rapidly if
   it comes with at least one test for its output class, and at least
   one test for its input class.

   If your filter has endian‐ness, add tests for each endian.

Modified Files
--------------

The following files need to be updated to mention the new format.

srecord/srecord.h
   Add the new include file to the list. This file controls what files
   are installed into the ``/usr/include`` directory. Not all of them,
   just the public interface.

etc/README.man
   Mention the new format in the section of this file which describes
   the supported file formats.

etc/index.html
   Mention the new format in the section of this file which describes
   the supported file formats.

srecord/arglex/tool.h
   Add the new format to the command line argument type enum.

   If your filter has endian‐ness, add one for each endian, using “_be”
   and “_le” suffixes.

srecord/arglex/tool.cc
   Add the new format to the array of command line arguments types.

   If your filter has endian‐ness, add one for each endian, using
   “_Big_Endian” and “_Little_Endian” suffixes.

srecord/arglex/tool/input.cc
   Add the new format to the code which parses input formats.

srecord/arglex/tool/output.cc
   Add the new format to the code which parses output formats.

srecord/input/file/guess.cc
   Add the new format to the list of formats which are tested.

man/man1/srec_input.1
   Mention the new format in the section of this file which describes
   the supported input file formats.

man/man1/srec_cat.1
   Mention the new format in the section of this file which describes
   the supported output file formats.

Makefile
   Actually, the system the maintainer uses automatically generates this
   file, but if you aren't using Aegis you will need to edit this file
   for your own use.

Tests
-----

You may have noticed that SRecord comes with a lot of tests. You are
more likely to get the patch for your new format accepted rapidly if it
comes with at least one test for its output class, and at least one test
for its input class.

If your filter has endian‐ness, add tests for each endian.

IMPLEMENTATION ISSUES
=====================

In implementing a new file format, there are a couple of philosophical
issues which affect technical decisions:

Be liberal in what you accept
   Where ever possible, consume the widest possible interpretation of
   valid data. This includes treating mandatory input fields as optional
   (*e.g.* file headers and execution start addresses), and coping with
   input definitions to their logical extremes (*e.g.* 255 byte data
   records in Motorola format). Checksums should always be checked on
   input, only ignore them if the -ignore‐checksums command line option
   has been given. Absurd line lengths must be tolerated.

Be conservative in what you produce
   Even when the input is questionable, the output produced by
   *srec_cat* must always be strictly conforming with the format
   definition (except as mandated by command line options, see below).
   Checksums, if the format has them, must always be correct on output.
   Line lengths should default to something reasonable (about 80
   characters or less).

Eat Your Own Dog Food
   You input class must always be able to consume what your output class
   produces, no matter what combination of command line options (see
   below) has been selected.

Round Trip

   In general, what went in is what comes out.

   ·
      The data may be re‐arranged in order, the line lengths may change,
      but the same data should go out as came in. (The data should be
      unchanged even if the format changed, assuming equally capable
      formats.) The *srec_cmp*\ (1) command may be used to verify this.

   ·
      If the input has no header record, the output should not have one
      either (if at all possible). This means not automatically
      inserting a header record if the output file code sees data as the
      first method call. (The -disable=header option affects this, too.)

   ·
      If the input has no execution start address record, the output
      should not have one either (if at all possible). This means not
      automatically inserting an execution start address record if the
      output file code does not see one by the time the destructor is
      called. (The -disable=exec‐start‐addr flag affects this, too.)

   ·
      Write at least one **test** that does a “round trip” of data
      through the new format and back again, exercising any interesting
      boundary conditions along the way (*e.g.* data records spanning
      segment boundaries).

Holes
   Do not to fill in holes in the data. That said, sometimes you *have*
   to fill holes in the data. This happens, for example, when a 16‐bit
   format is faced with an 8‐bit byte of data for one or other half of a
   16‐bit word. If there is no other way around it, call the
   fatal_alignment_error method, which will suggest a suitable input
   filter.

OPTIONS
=======

There are also some command line arguments you will need to take into
account:

**-address‐length**
   This options is used to specify the minimum address length, if your
   new format has a choice about how many bytes of address it produces.

**-data‐only**
   This option implies all of the **-disable=header**,
   **-disable=data‐count** **-disable=exec‐start‐addr** and
   **-disable=footer** options. Only the essential data records are
   produced.

**-disable=header**
   If this option is used, no header records are to be produced (or
   minimal header records). This is available as the
   ``enable_header_flag`` class variable in the methods of your derived
   class.

**-disable=data‐count**
   If this option is used, no data record count records are to be
   produced. This is available as the ``enable_data_count_flag`` class
   variable in the methods of your derived class.

**-disable=exec‐start‐addr**
   If this option is used, no execution start address records are to be
   produced. This is available as the ``enable_goto_addr_flag`` class
   variable in the methods of your derived class.

**-disable=footer**
   If this option is used, no end‐of‐file records are to be produced.
   This is available as the ``enable_footer_flag`` class variable in the
   methods of your derived class.

**-enable=optional‐address**
   If this option is used, in combination with a format that does not
   have an address on every line, the the first zero address many be
   omitted. All subsequent addresses are not optional, just the first
   zero address. Defaults to disabled.

**-ignore‐checksums**
   If this flag is set, your file input methods must parse *but not*
   check\ **checksums, if the format has checksums. You can tell if
   you** need to use checksums by calling the
   ``use_checksums()``\ **method** within the implementation of your
   derived class. This only applies to input; output must always produce
   correct checksums.

**-line‐length**
   Where your output format is text, and there exists the possibility of
   putting more or less text on each line (*e.g.*\ **the Motorola
   format** allows a variable number of data bytes per record) then this
   should be controllable. This manifests in the
   ``address_length_set``\ **and**
   ``preferred_block_size_get``\ **methods you must implement in your**
   derived class.

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
using ``@param``\ **tags; see existing style.** Always use whole
sentences in your Doxygen documentation, see existing code for examples.

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
put at the end of a (very) long queue of other *gratis*\ **open** source
work the maintainer has yet to do. You can jump the queue if you want to
pay the maintainer to do the work for you.

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
will be GNU GPL licensed. If you *need*\ **a format or filter** written,
it has value to you; the issue of freeloaders is irrelevant.

Conversely, integrating complete open source contributions and patches
is done *gratis*\ **, and usually done as promptly as time permits.**

AUTHOR
======

============== ======= ==========================
Scott Finneran E‐Mail: scottfinneran@yahoo.com.au
Peter Miller   E‐Mail: pmiller@opensource.org.au
============== ======= ==========================
