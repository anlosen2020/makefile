all: test1 test2
test1 test2:
	@echo "just for test:$@"

hello:main.o
	gcc -o hello main.o
main.o:main.c
	gcc -o main.o -c main.c
clean:
	rm hello main.o
