CC=gcc
ASMBIN=nasm

all : asm cc link

asm :
	$(ASMBIN) -o nthnum.o -f elf -g -F dwarf nthnum.asm
cc :
	$(CC) -m32 -c -g -O0 nthnum_test.c
link :
	$(CC) -m32 -g -o rmvt nthnum_test.o nthnum.o

clean :
	rm *.o
	rm rmvt