Version 1.63 (2014‐Apr‐07)
==========================

\* The srec_tools now understand how to read and write Logisim format.

\* Daniel Anselmi <danselmi@gmx.ch> fixed a bug with generating Lattice
Memory init files.

\* This change set generalises the code that handles redundant byte
settings and contradictory byte settings. The defcon_t type describes
what to do: ignore, warn or error. The --multiple option is no more.

\* Daniel Anselmi <danselmi@gmx.ch> discovered that the "mem" output
format was malformed. The lines now break every "width" bits.

\* Hanspeter Niederstrasser discovered some false negatives in the test
suite, when used on OSX. Thank you for the bug report. This has been
fixed.

\* Simplification of selection code to choose which CRC16 implementation
is used.

\* Juliano Mourão Vieira <juliano@utfpr.edu.br> discovered a problem
with the srec_mif.5 description. This mistake is not present in the
code.

\* Liju Prasanth Nivas (RBEI/ECA1) <Liju.PrasanthNivas@in.bosch.com>
suggested another use case for the examples. In the case of "joining"
files that are meant to be “stacked in layers”. Contributions for the
examples are always appreciated. Thank you.

\* Added more comments to the code, so that the use of URL_decode for
the command line is better explained. And comment to explain why not to
do URL_encode when building header records.

\* Added URL quoting to the command line. There are times you need to be
able to insert unprintable characters on the command line. The immediate
use case prompting this was a user wanting to put a NUL in the header
string. So now you can, as "%00". The other choice was quoted printable
encoding, but that was a bit obscure.

\* Fixed new warnings when building with g++ 4.8.1

\* Added more links to the windows files on SourceForge, maybe it will
boost download numbers.
