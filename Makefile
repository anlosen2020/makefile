all: test1
all: test3
test1 test2:
	@echo "just for test:$@"
test3:
	@echo "hi test3"
hello:main.o
	gcc -o hello main.o
main.o:main.c
	gcc -o main.o -c main.c
clean:
	rm hello main.o
