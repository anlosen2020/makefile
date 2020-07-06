.PHONY:all clean
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
DEPS=$(SRCS:.c=.d)

LINK_OBJ_DIR=$(BUILD_ROOT)/app/link_obj
$(shell mkdir -p $(LINK_OBJ_DIR))
DEP_DIR=$(BUILD_ROOT)/app/dep
$(shell mkdir -p $(DEP_DIR))

BIN:=$(addprefix $(BUILD_ROOT)/,$(BIN))
OBJS:=$(addprefix $(LINK_OBJ_DIR)/,$(OBJS))
DEPS:=$(addprefix $(DEP_DIR)/,$(DEPS))
LINK_OBJ = $(wildcard $(LINK_OBJ_DIR)/*.o)
LINK_OBJ +=$(OBJS)
all:$(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif
$(BIN):$(LINK_OBJ)
	@echo "LINK_OBJ=$(LINK_OBJ)"
	gcc -o $@ $^
$(LINK_OBJ_DIR)/%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
$(DEP_DIR)/%.d:%.c
	gcc -MM $(filter %.c,$^) | sed 's,\(.*\).o[ :]*,$(LINK_OBJ_DIR)/\1.o $@:,g'  >$@
clean:
	rm $(OBJS) $(BIN) $(DEPS)
