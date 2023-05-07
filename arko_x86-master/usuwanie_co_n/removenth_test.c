#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char* removenth(char *s, int n);

int main(int argc, char* argv[]) {
  int n = atoi(argv[2]);
  printf("Input string: %s\n", argv[1]);
  printf("Result string: %s\n", removenth(argv[1], 3));
  return 0;
}
