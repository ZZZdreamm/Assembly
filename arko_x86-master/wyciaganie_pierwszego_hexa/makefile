CC=gcc
ASMBIN=nasm

all : asm cc link

asm :
	$(ASMBIN) -o get_first_hex.o -f elf -g -F dwarf get_first_hex.asm
cc :
	$(CC) -m32 -c -g -O0 get_first_hex_test.c
link :
	$(CC) -m32 -g -o gfhex get_first_hex_test.o get_first_hex.o

clean :
	rm *.o
