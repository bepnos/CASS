#include <stdio.h>
#include <string.h>
/**
 * Write a C program that asks the user for a string and outputs the length of the string.
 * You can use the function fgets with the parameter stdin to read a whole string from the console.

First, write a version using the function unsigned long strlen(char *) declared in the header string.h.
 Then create a second version where strlen is not used. Note that the last character of the string will be the line feed (hex 0x0a).
 *
 */

int main(){
    char str[100];
    fgets(str, 100, stdin);
    printf("Lengte van de string is %d \n", strlen(str));
    int result = 0;
    for (int i = 0; str[i] != 0; i++){
        printf("%02x ", str[i]);
        result++;
    }
    printf("\n");
    printf("Lengte van de string is %d \n", result);
    return 0;
}

