DMK                :=
ROOT               := $(abspath .)
# Set appropiately before each Makefile is included:
DIR                := $(abspath .)



.PHONY: default 
default:
	@echo Default, does not have prerequisites because make always tries to build missing includes.
	@\
	 DP="$(call sed-escape,$(ROOT))";\
	 echo "Dynamic makefiles $$(echo $(DMK)|sed 's/ /\n\t/g')";

.build/%/Rules.mk:
	@if test ! -d $(@D); then mkdir -p $(@D); fi
	@cd $(@D); ln -s $(ROOT)/Rules.mk ./


# some snippets/functions
sub-dirs            = $(abspath $(realpath $(shell \
						for sub in $1/*; do \
						  if test -d $$sub; then \
						    echo $$sub; fi; done)))
filter-file         = $(shell for F in $1; do if test -f "$$F"; then \
                        echo $$F; fi; done)
complement          = $(shell \
					    for X in $1; do \
					      if test -z "$$(for Z in $2; do if test "$$Z" = "$$X"; \
					        then echo $$X; fi; done)"; then \
					        echo "$$X"; fi; done; )
sed-escape          = $(shell echo "$1" | awk '{gsub("[~/:.]", "\\\\&");print}')


# Include the rules to start the recursion
include Rules.mk


