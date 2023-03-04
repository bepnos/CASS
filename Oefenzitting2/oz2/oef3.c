//
// Created by lange on 04/03/2023.
//
#include <stdio.h>
#include "oef3.h"

struct getallen {
    float getal1;
    long getal2;
    int *getal3;
    char getal4;
};

int main(){
    struct getallen test;
    test.getal1 = 3.65;
    test.getal2 = 3662367;
    int n;
    scanf("%d", &n);
    test.getal3 = &n;
    test.getal4 = 97;

    int result = sizeof(struct getallen);
    int result2 = sizeof(test);
    printf("%d \n", result);
    printf("%d \n", result2);
    printf("%d \n", test.getal4);
    printf("%d \n", test.getal3);
    return 0;
}