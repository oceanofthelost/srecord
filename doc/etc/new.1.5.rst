\*
   A bug has been fixed in the C array output. (Holes in the input
   caused an invalid C file to be produced.)

\*
   There is are new CRC input filters, both 16‐bit and 32‐bit, both big
   and little endian. See *srec_cat*\ (1) for more information.

\*
   There is a new VHDL output format.

\*
   There are new checksum filters: in addition to the existing one's
   complement (bit not) checksum filter, there are now negative and
   positive checksum filters. See *srec_cat*\ (1) for more information.

\*
   The checksum filters are now able to sum over 16‐bit and 32‐bit
   values, in addition to the existing byte sums.

\*
   The *srec_cmp* program now has a **--verbose** option, which gives
   more information about how the two inputs differ. See *srec_cmp*\ (1)
   for more information.

Version 1.5 (2000‐Mar‐06)
=========================
