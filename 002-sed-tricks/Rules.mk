$(info ======================== $(DIR))
# Dir-stack: save container directory
p                := $p.x
D_$p             := $d
# Set current directory
d                := $(DIR)


SRC              += $(call safe-paths,$d/test)
#$(info SRC_$d,$(SRC_$d))
UNSAFE           += $(call unsafe-paths,$d/test)
#$(info UNSAFE,$(UNSAFE))
#$(info )


# Restore container directory
d               := $(D_$p)
# decrease stack pointer
p               := $(basename $p)
