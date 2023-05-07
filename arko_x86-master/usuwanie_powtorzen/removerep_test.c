#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern char* remrep(char *s);

int main(int argc, char* argv[]) {
  printf("Input:  %s\n", argv[1]);
  printf("Result: %s\n", remrep(argv[1]));
  return 0;
}
