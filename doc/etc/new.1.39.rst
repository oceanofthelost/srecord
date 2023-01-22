\*
   An RPM build problem has been fixed.

\*
   The dependency on the Boost library is now documented in the BUILDING
   file.

\*
   Some build problems with g++ 4.3 have been fixed

\*
   A bug has been fixed in the calculation of ranges on the command
   line, it no longer goes into an infinite loop for "-fill 0xFF -over {
   foo.hex -exclude -within foo.hex }" construct, which should have been
   calculating an empty fill set, but was instead calculating a 4GB fill
   set.

\*
   The CRC32 filters now take an -xmodem option, to use an xmodem‐like
   (all bit zero) initial state, rather than the default CCITT (all bits
   on) initial state.

Version 1.39 (2008‐Feb‐04)
==========================
