ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a1/b3/c1/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a1/b3/c1
include .build/home/berend/project/x-make/001-viral-make/a1/b3/c1/Rules.mk
endif

ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a1/b3/c2/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a1/b3/c2
include .build/home/berend/project/x-make/001-viral-make/a1/b3/c2/Rules.mk
endif

