SRC                :=
UNSAFE             :=
ROOT               := $(abspath .)
# Set appropiately before each Makefile is included:
DIR                := $(abspath .)



.PHONY: default 
default:
	@/bin/echo -e "Paths\n\t"$(SRC)
	@/bin/echo -e "Illegal paths\n\t$(UNSAFE)"


safe-paths          = $(shell ls "$1"|grep '^[a-zA-Z0-9\+\.,_-]\+$$')
unsafe-paths        = $(shell ls "$1"|grep -v '^[a-zA-Z0-9\+\.,_-]\+$$')



include Rules.mk


