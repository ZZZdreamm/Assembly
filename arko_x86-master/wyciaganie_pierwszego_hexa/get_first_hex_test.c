#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern unsigned int get_first_hex(char *s);

int main(int argc, char* argv[]) {
  printf("Input string: %s\n", argv[1]);
  printf("Result: %d\n", get_first_hex(argv[1]));
  return 0;
}
