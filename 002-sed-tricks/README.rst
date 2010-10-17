:Author: \B. van Berkum  <dev@dotmpe.com>
:Date: 2010-10-17
:Updated: 2010-10-17
:Description: 
  1. Sanitizing ``ls`` output.


1. So GNU/Make and other programs that work with string based invocations do 
   not like whitespace or other special characters in their arguments. Care is 
   needed in dealing with e.g. ``ls`` output or shell invocations. Instead of 
   filtering all the illegal characters, this approach focusses on sanitization 
   of ``ls`` output by filtering through ``grep``, demanding all paths to conform 
   to specifiek character format.

----

.. literal:: Makefile
   :include: Makefile

- `Makefile <./Makefile>`__

----

.. literal:: Makefile
   :include: Rules.viral.mk

- `Rules.mk <./Rules.mk>`__
   
