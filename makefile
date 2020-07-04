.PHONY:clean
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
BIN=mp3
$(BIN):$(OBJS)
	@echo "SRCS====$(SRCS)"
	@echo "OBJS====$(OBJS)"
	gcc -o $@ $^
%.o:%.c
	gcc -o $@ -c $^
clean:
	rm $(OBJS) $(BIN)
