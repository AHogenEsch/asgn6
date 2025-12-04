CC = gcc
CFLAGS = -Wall -ansi -pedantic

.PHONY: all test clean

all: hello

hello: hello.o hello.h
	$(CC) $(CFLAGS) hello.o  -o hello

# hello.o: hello.c hello.h
# 	$(CC) $(CFLAGS) -c $< -o $@

test: hello
	@./hello

clean:
	rm -f hello *.o