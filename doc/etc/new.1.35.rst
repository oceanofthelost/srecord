\*
   A bug has been fixed in the CRC‐16 CCITT calculation; the algorithm
   was correct but the start value was incorrect, leading to incorrect
   results.

\*
   The CRC16 filters have a new --no‐augment option, to omit the 16 zero
   bits augmenting the message. This is not CCITT standard conforming,
   but some implementations do this.

\*
   A problem has been fixed in the generated Makefile.in file found in
   the tarball.

\*
   The license has been changed to GNU GPL version 3.

Version 1.35 (2007‐Jun‐23)
==========================
