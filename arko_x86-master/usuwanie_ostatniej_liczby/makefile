CC=gcc
ASMBIN=nasm

all : asm cc link

asm : 
	$(ASMBIN) -o remove_last_num.o -f elf -g -F dwarf remove_last_num.asm
cc :
	$(CC) -m32 -c -g -O0 remove_last_num_test.c
link :
	$(CC) -m32 -g -o rmlnum remove_last_num_test.o remove_last_num.o

clean :
	rm *.o

