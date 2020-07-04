.PHONY:all clean
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
BIN=mp3
all:$(BIN)

$(BIN):$(OBJS)
	@echo "SRCS====$(SRCS)"
	@echo "OBJS====$(OBJS)"
	gcc -o $@ $^
usb.o:usb.c usb.h
%.o:%.c
	gcc -o $@ -c $(filter %.c,$^)
clean:
	rm $(OBJS) $(BIN)
