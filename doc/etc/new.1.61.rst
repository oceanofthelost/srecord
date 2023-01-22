\*
   Luc Steynen <LucSteynen@edna.be> discovered that the
   -checksum‐big‐endian option was a counter‐intuitive alias for the the
   -checksum‐bitnot‐big‐endian option. The -checksum‐big‐endian option
   is now deprecated, in favor of the -checksum‐bitnot‐big‐endian
   option; the code will warn users of the old option they will need to
   change. Ditto little‐endian variants

\*
   Alin Pilkington <apilkington@moog.com> found that the Tektronix
   Extended format was calculating the record length incorrectly. Thanks
   you for the bug report. This has been fixed for both reading and
   writing.

\*
   Dr. Benedikt Schmitt <Benedikt.Schmitt@safeintrain.de> suggested
   being able to inject arbitrary data into the file header (such as NUL
   termination characters). This change set adds URL‐style escapes (e.g.
   %25) to the string on he command line. For example: -header or
   -generate -string

Version 1.61 (2013‐Jan‐04)
==========================
