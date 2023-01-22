\*
   The byte order of the fletcher16 output has been reversed.

\*
   The meaning of the **-address‐length** option has been change for the
   Intel output format. Previously, 2 meant using i16hex 20‐bit
   segmented addressing, and >2 meant using i32hex extended addressing.
   This has been changed: a value of 2 requests i8hex 16‐bit addressing,
   a value of 3 requests i16hex 20‐bit segment addressing, and a value
   >=4 requests i32hex 32‐bit addressing. My thanks to Stephen R.
   Phillips ``<srp@CSECorporation.com>`` for reporting the absence of
   i8hex support.

\*
   The **-generate -repeat‐string** option is now able to take a string
   that looks like a number as the text to be repeated. My thanks to
   Stephen R. Phillips ``<srp@CSECorporation.com>`` for reporting this
   problem.

\*
   Luca Giancristofaro ``<luca.giancristofaro@prosa.com>`` discovered a
   WinAVR linker that is a sandwich short of a picnic: it generated
   non‐conforming Intel hex end‐of‐file records. This is no longer an
   error, but only a warning.

\*
   There were some problems with the RPM spec file, these have been
   improved. My thanks to Galen Seitz ``<galens@seitzassoc.com>`` for
   reporting this problem.

Version 1.56 (2010‐Sep‐15)
==========================
