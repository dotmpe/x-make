ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a1/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a1
include .build/home/berend/project/x-make/001-viral-make/a1/Rules.mk
endif

ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/a2/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/a2
include .build/home/berend/project/x-make/001-viral-make/a2/Rules.mk
endif

ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/foo/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/foo
include .build/home/berend/project/x-make/001-viral-make/foo/Rules.mk
endif

