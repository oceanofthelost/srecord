\*
   Some compilers issue a warning when const appears before extern.
   "warning: storage class is not first". The C output has been updated
   to conform to this expectation.

\*
   The manual page for *srec_cat*\ (1) has been enhanced to describe the
   in‐memory data model, and the resulting output data order.

\*
   The **-motorola** optional width argument now produces a better error
   message when it is out of range.

\*
   The **-fill** filter now checks the size, and fails for absurdly
   large fills, with a **-big** override if they really want >1GB fills.

\*
   A bug in the .spec file for rpmbuild has been fixed, it now takes
   notice of $RPM_BUILD_ROOT

\*
   There is a new **-line‐termination** option, which may be used to
   select the desired line termination of output text files.

Version 1.43 (2008‐Jul‐06)
==========================
