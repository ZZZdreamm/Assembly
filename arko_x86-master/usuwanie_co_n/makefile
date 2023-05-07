CC=gcc
ASMBIN=nasm

all : asm cc link

asm : 
	$(ASMBIN) -o removenth.o -f elf -g -F dwarf removenth.asm
cc :
	$(CC) -m32 -c -g -O0 removenth_test.c
link :
	$(CC) -m32 -g -o rmnth removenth_test.o removenth.o

clean :
	rm *.o
	rm rmvt
