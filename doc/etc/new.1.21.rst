\*
   The **-byte‐swap** filter now has an optional *width* argument, to
   specify the address width to swap. The default is two bytes.

\*
   The motorola file format now accepts an additional 'width' command
   line argument, so you can have 16‐bit and 32‐bit address multiples.

\*
   A bug has been fixed in the VMEM output format. It was failing to
   correctly set the next address in some cases. This fixes SourceForge
   bug 1119786.

\*
   The -C‐Array output format now uses the ``const`` keyword by default,
   you can turn it off with the -no‐const option. The -C‐Array output
   format can now generate an additional include file if you use the
   -INClude option. This answers SourceForge feature request 942132.

\*
   A fix for the "undefined symbols" problem when using g++ 3.x on
   Cygwin and MacOsX has been added to the ./configure script.

\*
   There is a new -ignore‐checksum command line option. The
   -ignore‐checksums option may be used to disable checksum validation
   of input files, for those formats which have checksums at all. Note
   that the checksum values are still read in and parsed (so it is still
   an error if they are missing) but their values are not checked.

Version 1.21 (2005‐Feb‐07)
==========================
