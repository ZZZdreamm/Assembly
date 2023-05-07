#include <stdio.h>
#include <string.h>

extern unsigned int removerng(char *s);

int main(int argc, char* argv[])
{
  printf("Input string: %s\n", argv[1]);
  printf("Result: %d\n", removerng(argv[1]));
    // char text[] = "a0Faz";
//   printf("Input string: %s\n", text);
//   printf("Result: %d\n", removerng(text));
  return 0;
}