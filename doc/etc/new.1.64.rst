Version 1.64 (2014‐Jun‐22)
==========================

\* Cleaned up a few references to the maintainer's name.

\* Fixed some warnings in test 38

\* Fixed bugs discovered by Mike <russiane39@gmail.com> regarding the
formatting of some of the examples where lines were wrapping the wrong
way.

\* Added the ability to compile without libgcrypt if the user specifies
the option ‐‐without‐gcrypt to configure. If gcrypt is missing, the user
is prompted to either install it or explicitly compile with it disabled.

\* Cleaned up a few recent compiler and doxygen warnings.

\* Added Sourceforge Patch #4 contributed by Stas Sergeev
<stsp@sourceforge.net> which contributed get_upper_bound() and makes it
and the lower equivalent public (for use from libsrecord). Also fixed a
bug in srec_memory::find_next_chunk() where it would fail to reset the
find_next_chunk_index once it became equal to nchunks. After that,
find_next_chunk() would always fail.

\* Added prefix and postfix strings to the C Array format which are
applied at each end of the data array declaration. This allows the user
to add various compiler directives such as location flags or
non‐standard load address specifiers.

\* when converting from AOMF Fixed Sourceforge bug 11 raised by patryks.
In the analysis, it was discovered that a start address (of zero) was
being generated when converting from AOMF. AOMF does not support the
concept of an execution start address.

\* The Windows build instructions have been updated by Jens Heilig
<jens@familie‐heilig.net>.

\* Fixed the length field description in extended tektronix
documentation. The implementation was already correct.

\* Added a regression test for calculated address for CRC (Sourceforge
bug 19).
