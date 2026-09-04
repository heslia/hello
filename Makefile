all: hello

hello: main.o print.o
	gcc -o hello main.o print.o

main.o: main.c
	gcc -c -o main.o main.c

print.o: print.S
	nasm -f macho64 -o print.o print.S

clean:
	rm -f *.o hello
