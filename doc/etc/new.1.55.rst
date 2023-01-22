\*
   A bug has been fixed in the MsBin output, it now concatenates records
   correctly, and calculate checksums appropriately.

\*
   It is now possible to ask the Fletcher 16 filter to give you a
   specific answer, and adjusting the checksum to achieve that result.
   It is also possible to specify different seed values for the sums.

\*
   There is a new srec_cat **-enable=optional‐address** option to cause
   output formats capable of omitting addresses, to omit a leading zero
   address, as those formats usually default the address to zero, if no
   address information is seen before the first data record. Defaults to
   false (disabled).

\*
   There is a new *srec_cat*\ (1) **-output‐block‐packing** option, that
   may be used to pack output records even when they cross internal
   SRecord boundaries.

\*
   There is a new *srec_cat*\ (1) **-output‐block‐size** so that you can
   specify the block size exactly, rather than implying it with the line
   length option.

Version 1.55 (2010-Feb-10)
==========================
