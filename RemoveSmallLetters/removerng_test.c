#include <stdio.h>
#include <string.h>

extern char* removerng(char *s, char low, char high);

int main(int argc, char* argv[])
{
    // char* text[] = argv[1];
    // char expected[] = "ASDASD SDWQ[][]2[]";
    printf("Input string  > %s\n", argv[1]);
    char* result = removerng(argv[1], 'a', 'z');
    printf("Removal result > %s\n", result);

    // if(strcmp(result, expected)){
    //     printf("Error in testcase #1");
    // }
    return 0;
}