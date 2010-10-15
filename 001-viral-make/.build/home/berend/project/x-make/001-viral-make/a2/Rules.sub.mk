ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a2/b4/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a2/b4
include .build/home/berend/project/x-make/001-viral-make/a2/b4/Rules.mk
endif

ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a2/b5/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a2/b5
include .build/home/berend/project/x-make/001-viral-make/a2/b5/Rules.mk
endif

