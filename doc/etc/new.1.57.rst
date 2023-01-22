\*
   The **-guess** command line option, for guessing the file format, now
   also tells you the command line option you could have used instead of
   **-guess** for the exact format.

\*
   The Integrated Device Technology (IDT) system integration manager
   (IDT/sim) binary format is now understood for both reading and
   writing.

\*
   The Stag Prom Programmer binary format is now supported for both
   reading and writing.

\*
   The Stag Prom Programmer hexadecimal format is now understood for
   both reading and writing.

\*
   The MIPS‐Flash file format is now supported for both reading and
   writing.

\*
   Bernhard Weirich ``<Bernhard.Weirich@riedel.net>`` discovered that a
   backward compatible option had been omitted when the **-INtel_16**
   option was renamed **-INtel_HeX_16** to more closely match the usual
   abbreviation (INHX16) for this format. The backwards compatible
   option name has been reintroduced.

\*
   The windows build instructions have been greatly improved, based on
   the experiences of Jens Heilig ``<jens@familie‐heilig.net>`` which he
   has generously shared.

\*
   The documentation in the manual about sequence warnings has been
   improved. The **-disable‐sequence‐warnings** option must come before
   the input file on the command line. My thanks to Emil Gracic
   ``<emil_kruki@yahoo.com>`` for reporting this problem.

Version 1.57 (2011-Jun-09)
==========================
