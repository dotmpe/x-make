ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/foo/bar/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/foo/bar
include .build/home/berend/project/x-make/001-viral-make/foo/bar/Rules.mk
endif

