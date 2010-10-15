#$(info ======================== $(DIR))
# Dir-stack: save container directory
p                := $p.x
D_$p             := $d
# Set current directory
d                := $(DIR)


#
#   Include Rules.mk for each subdir
#
SUB_$d           := $(call sub-dirs,$d)
#$(info Subdirs,$(SUB_$d))

SUB_MK_$d        := $(SUB_$d:%=.build%/Rules.mk)
SUB_MK_NF_$d     := $(call complement,$(SUB_MK_$d),$(call filter-file,$(SUB_MK_$d)))
#$(info Submk,$(SUB_MK_$d))
#$(info Submkf,$(SUB_MK_NF_$d))
DMK_$d           := .build/$d/Rules.sub.mk
#$(info Dmk,$(DMK_$d))

$(DMK_$d): MK_FILES := $(SUB_MK_$d)
$(DMK_$d): $(SUB_MK_NF_$d)
	@if test -f $@; then rm $@; touch $@; fi;
	@for F in $(MK_FILES); do\
	  DIR=$$(dirname $$F);\
	  if test ! -e "$$DIR"; then mkdir -p "$$DIR"; fi;\
	  echo "ifeq (\$$(shell if test -f \"$$F\"; then echo 1; fi),1)">>$@;\
	  echo "DIR := /$${DIR#.build/}">>$@;\
	  echo "include $$F">>$@;\
	  echo "endif\n">>$@;\
	done;

-include $(DMK_$d)

# List dynamic makefiles
DMK += $(DMK_$d) $(SUB_MK_$d)

#$(info )


# Restore container directory
d               := $(D_$p)
# decrease stack pointer
p               := $(basename $p)
