CC=gcc
ASMBIN=nasm

all : asm cc link

asm : 
	$(ASMBIN) -o reverse_pairs.o -f elf -g -F dwarf reverse_pairs.asm
cc :
	$(CC) -m32 -c -g -O0 reverse_pairs_test.c
link :
	$(CC) -m32 -g -o rvpairs reverse_pairs_test.o reverse_pairs.o

clean :
	rm *.o
