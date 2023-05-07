#include <stdio.h>
#include <string.h>

extern unsigned int nthnum(char *s, unsigned int n);

int main(int argc, char* argv[])
{
    printf("Input string  > %s\n", argv[1]);
    unsigned int number;
    sscanf(argv[2],  "%u", &number);
    printf("N-th number > %u\n", nthnum(argv[1], number));

    // char text[] = "a12";
    // unsigned int n = 2;
    // printf("Input string: %s\n", text);
    // printf("Result: %d\n", nthnum(text, n));
    return 0;
}