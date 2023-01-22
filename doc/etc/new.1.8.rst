\*
   The DEC Binary (XXDP) format is now understood for both reading and
   writing. See *srec_dec_binary*\ (5) for more information.

\*
   The Elektor Monitor (EMON52) format is now understood for both
   reading and writing. See *srec_emon52*\ (5) for more information.

\*
   The Signetics format is now understood for both reading and writing.
   See *srec_signetics*\ (5) for more information.

\*
   The Four Packed Code (FPC) format is now understood for both reading
   and writing. See *srec_fpc*\ (5) for more information.

\*
   Wherever possible, header data is now passed through by
   *srec_cat*\ (1). There is also a new *srec_cat -header* option, so
   that you can set the header comment from the command line.

\*
   The Atmel Generic format for Atmel AVR programmers is now understood
   for both reading and writing. See *srec_atmel_generic*\ (5) for more
   information.

\*
   The handling of termination records has been improved. It caused
   problems for a number of filters, including the -fill filter.

\*
   A bug has been fixed in the checksum calculations for the Tektronix
   format.

\*
   There is a new SPASM format for PIC programmers. See
   *srec_spasm*\ (5) for more information.

Version 1.8 (2001-Apr-20)
=========================
