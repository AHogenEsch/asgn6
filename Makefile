CC = gcc
CFLAGS = -Wall -ansi -pedantic

all: hello

hello: hello.o
	$(CC) $(CFLAGS) hello.o  -o hello

hello.o: hello.c hello.h
	$(CC) $(CFLAGS) -c $< -o $@

test: hello
	@./hello

clean:
	rm -f hello *.o