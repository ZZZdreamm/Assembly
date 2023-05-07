CC=gcc
ASMBIN=nasm

all : asm cc link

asm : 
	$(ASMBIN) -o removerep.o -f elf -g -F dwarf removerep.asm
cc :
	$(CC) -m32 -c -g -O0 removerep_test.c
link :
	$(CC) -m32 -g -o rmvrp removerep_test.o removerep.o

clean :
	rm *.o
