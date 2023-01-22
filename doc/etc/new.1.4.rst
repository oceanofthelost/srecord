\*
   There is now a command line option to guess the input file format;
   all of the tools understand this option.

\*
   The “MOS Technologies” file format is now understood for reading and
   writing. See *srec_mos_tech*\ (5) for more information.

\*
   The “Tektronix Extended” file format is now understood for reading
   and writing. See *srec_tektronix_extended*\ (5) for more information.

\*
   The “Texas Instruments Tagged” file format is now understood for
   reading and writing. (Also known as the TI‐Tagged or SDSMAC format.)
   See *srec_ti_tagged*\ (5) for more information.

\*
   The “ascii‐hex” file format is now understood for reading and
   writing. (Also known as the ascii‐space‐hex format.) See
   *srec_ascii_hex*\ (5) for more information.

\*
   There is a new *byte swap* input filter, allowing pairs of odd and
   even input bytes to be swapped. See *srec_cat*\ (1) for more
   information.

\*
   The “wilson” file format is now understood for reading and writing.
   This mystery format was added for a mysterious type of EPROM writer.
   See *srec_wilson*\ (5) for more information.

\*
   The *srec_cat* program now has a **-data‐only** option, which
   suppresses all output except for the data records. This helps when
   talking to brain‐dead EPROM programmers which barf at anything but
   data. See *srec_cat*\ (1) for more information.

\*
   There is a new *-Line‐Length* option for the *srec_cat* program,
   allowing you to specify the maximum width of output lines. See
   *srec_cat*\ (1) for more information.

Version 1.4 (2000‐Jan‐13)
=========================
