#include <stdio.h>

// Calculates factorial of a number between 1 and 10


int main() {
    int input;
    printf("Give a number between 1 and 10 \n ");
    scanf("%d", &input);
    int result;
    result = 1;
    int i;
    for ( i = 1; i <= input ; i++) {
        result = result*i;
    }
    printf("Het resultaat is %d", result);
    return 0;
}
