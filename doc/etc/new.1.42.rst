\*
   The *srec‐cat -data‐only* option has been broken down into four
   separate controls. It is now possible to **-enable** and **-disable**
   individual features, such as “header”, “data‐count”,
   “execution‐start‐address” and “footer”. See *srec_cat*\ (1) for more
   information.

\*
   The *srec_cat -start‐address* option has been renamed
   **-execution‐start‐address** to remove any confusion with the
   **-offset** filter. The documentation now explicitly explains the
   difference between the two.

\*
   Examples of converting to and from binary files have been added to
   the *srec_examples*\ (1) man page.

\*
   A bug has been fixed in the MOS Tech format, it now emits an end
   record even when there is no execution start address passed in.

Version 1.42 (2008‐Jun‐01)
==========================
