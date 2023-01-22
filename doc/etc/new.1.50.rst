\*
   A number of gcc 4.4 build problems have been fixed.

\*
   A bugs has been fixed in the Intel output format. When using the
   segmented format (address‐length=2) records that span the end of
   segment boundary are tricky. The code now carefully splits such
   output records, to ensure the two parts are explicitly placed into
   separate segments.

Version 1.50 (2009‐Jul‐09)
==========================
