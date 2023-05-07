#include <stdio.h>
#include <string.h>

extern char* removerng(char *s);

int main(int argc, char* argv[])
{

       printf("Input string  > %s\n", argv[1]);
    char* result = removerng(argv[1]);
    printf("Removal result > %s\n", result);
    // char text[] = "abc";
    // printf("Input string: %s\n", text);
    // printf("Result: %s\n", removerng(text));
    return 0;
}