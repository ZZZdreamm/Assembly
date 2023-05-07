#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char* remove_last_num(char *s);

int main(int argc, char* argv[]) {
  printf("Input string: %s\n", argv[1]);
  printf("Result string: %s\n", remove_last_num(argv[1]));
  return 0;
}
