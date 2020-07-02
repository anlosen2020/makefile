.PHONY:all

DEBUG= true
ifeq ($(DEBUG),true)
VERSION = debug
CC = gcc -g 
#-g为debug模式
else
VERSION = release
CC = gcc
#没有为release模式
endif
hello:main.c
	@echo "build $(VERSION) mode"
	$(CC) -o $@ $^
clean:
	rm hello
