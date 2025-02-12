CC = gcc
CFLAGS = -Wall -g

all: hello

hello: main.o greet.o
 $(CC) $(CFLAGS) -o hello main.o greet.o

main.o: main.c
 $(CC) $(CFLAGS) -c main.c

greet.o: greet.c
 $(CC) $(CFLAGS) -c greet.c

clean:
 rm -f *.o hello
