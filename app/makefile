.PHONY:all clean
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
DEPS=$(SRCS:.c=.d)
BIN=MP3
all:$(DEPS) $(OBJS) $(BIN)
ifneq ("$(wildcard $(DEPS))","")
include $(DEPS)
endif
$(BIN):$(OBJS)
	@echo "SRCS====$(SRCS)"
	@echo "OBJS====$(OBJS)"
	gcc -o $@ $^ ../lcd/lcd.o ../usb/usb.o ../media/media.o
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
%.d:%.c
	gcc -MM $^ >$@
clean:
	rm $(OBJS) $(BIN) $(DEPS)
