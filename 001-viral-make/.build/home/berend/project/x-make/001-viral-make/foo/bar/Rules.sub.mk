ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/foo/bar/baz/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/foo/bar/baz
include .build/home/berend/project/x-make/001-viral-make/foo/bar/baz/Rules.mk
endif

ifeq ($(shell if test -f ".build/home/berend/project/x-make/001-viral-make/foo/bar/beh/Rules.mk"; then echo 1; fi),1)
DIR := /home/berend/project/x-make/001-viral-make/foo/bar/beh
include .build/home/berend/project/x-make/001-viral-make/foo/bar/beh/Rules.mk
endif

