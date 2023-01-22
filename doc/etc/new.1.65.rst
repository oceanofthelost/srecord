Version 1.65 (2022‐Oct‐09)
==========================

\* HP64000 absolute file format contributed by fenugrec. Supports file
input, tests and documentation.

\* Patch by dg1yfe as pulled from github via marcows. Updated man page
for srec_ppb. Updated PPB output to match checksum range for output.
Updated tests for PPB write and read including files containing holes.
Tweaked patch to handle multi-line and arbitrary ascii before SOH. Added
test for prologue stripping.

\* Added NSIS installer build for Windows.

\* Verbose srec_info as suggested by Thomas. Display basic info on the
proportion of input files which data/holes.

\* Bug fix from xiretza for COE generation falsely detecting holes in
input.

\* Remove dependencies on boost moving to std shared_ptr and
static_assert. Remove doc references to boost.

\* Full Windows build, test and packaging supported under MSYS2. Build
documentation updated to cover Windows and windows web page deprecated.

\* Fixed buffer overflow in four packed code output generator.

\* Markus Heidelberg <markus.heidelberg@web.de> contributed a patch to
fix a bug that he also found with the -generator which resulted in an
endless loop.

\* Completely new build and config system to replace Aegis, Cook and
autoconf with cmake & git. Integration with cpack to generate linux and
windows packages. Integration with ctest to sustain the regression test
suite.
