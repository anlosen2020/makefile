.PHONY:clean

libhello.a:hello.o
	ar rcs $@ $^
hello.o:hello.c hello.h
clean:
	rm libhello.a hello.o
