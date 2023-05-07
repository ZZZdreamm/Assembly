#include <stdio.h>
#include <string.h>

extern char* removerng(char *s, int n);

int main(int argc, char* argv[])
{

    printf("Input string  > %s\n", argv[1]);
    int number;
    sscanf(argv[2],  "%d", &number);
    char* result = removerng(argv[1], number);
    printf("Removal result > %s\n", result);

    // if(strcmp(result, expected)){
    //     printf("Error in testcase #1");
    // }
    return 0;
}