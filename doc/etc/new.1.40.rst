\*
   False negative being reported by tests on Cygwin have been fixed.

\*
   There are six new filters (-be‐exclusive‐length,
   -le‐exclusive‐length, -be‐exclusive‐maximum, -le‐exclusive‐maximum,
   -be‐exclusive‐minimum and -le‐exclusive‐minimum) which are very
   similar to their non‐exclusive equivalents, except that they do not
   include the address range covered by their output in their output.

\*
   A bug has been fixed in the C word‐array output. It was getting
   offsets and lengths wrong in some cases.

\*
   A bug has been fixed in the generated C array header file, it no
   longer omits the section descriptor arrays.

\*
   A problem with building RPM packages with the names of the
   executables in the .spec file has been fixed, and the BuildRequires
   has been updated.

Version 1.40 (2008‐Mar‐13)
==========================
