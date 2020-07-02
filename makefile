.PHONY:clean

libhello.so:hello.o
	gcc -o $@ -shared $^
hello.o:hello.c
	gcc -o $@ -fPIC -c $^
clean:
	rm libhello.so hello.o
