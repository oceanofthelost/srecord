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
