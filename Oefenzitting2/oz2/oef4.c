#include <stdio.h>

void printArray(int[], int);
void scaleArray(int[],int, int);

int main(){
    int arr[] = {1, 2, 3, 4, 5, 10};
    int lengte = sizeof(arr)/sizeof(arr[0]);
    printArray(arr, lengte);
    scaleArray(arr, lengte, 2);
    printArray(arr, lengte);
}

void printArray(int *arr, int lengte){
    for(int i = 0; i < lengte; i++){
        if (arr[i] == 0) {
            break;
        }
        else {
            printf("%d, ", arr[i]);
            printf("%d, ", arr+i);
        }
    }
    printf("\n");

}

void scaleArray(int *arr,int lengte,  int scalar){
    for(int i = 0; i < lengte; i++){
        if (arr[i] == 0) {
            break;
        }
        else {
            arr[i] = arr[i] * scalar;
        }
    }
}