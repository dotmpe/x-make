:Author: \B. van Berkum  <dev@dotmpe.com>
:Date: 2010-10-11
:Updated: 2010-10-15
:Description: Experiment with a 'viral' make. One Rules.mk is symlinked for 
   each directory found beneath the current, including new directories each 
   run. Instead of 'invading' the directory with this new path, the path to 
   the Rules.mk and the generated Rules.subdirs.mk is prefixed.

----

.. literal:: Makefile
   :include: Makefile

- `Makefile <./Makefile>`__

----

.. literal:: Makefile
   :include: Rules.viral.mk

- `Rules.mk <./Rules.mk>`__
   
