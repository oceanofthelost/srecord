\*
   The documentation is now in PDF format. This was in order to make it
   more accessible to a wider range of people.

\*
   There is a new *srec_cat --address‐length* option, so that you can
   set the length of the address fields in the output file. For example,
   if you always want S3 data records in a Motorola hex file, use the
   ``--address‐length=4`` option. This helps when talking to brain‐dead
   EPROM programmers which do not fully implement the format
   specification.

\*
   There is a new *--multiple* option to the commands, which permits an
   input file to contain multiple (contradictory) values for some memory
   locations. The last value in the file will be used.

\*
   A problem has been fixed which stopped SRecord from building under
   Cygwin.

\*
   A bug has been fixed in the C array output. It used to generate
   invalid output when the input had holes in the data.

Version 1.6 (2000‐Dec‐03)
=========================
