#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <sys/time.h>
#define number 100000
int linearSearch(int* A, int n, int tos);
int main(){

	int iter =0, find;
	int* Arr;
    struct timeval tv1, tv2;
    struct timezone tz;
	double elapsed;

	Arr = (int *)malloc( number * sizeof(int));
    /*printf("\nEnter size of arr: ");
	scanf("%d", &number);*/
    //printf("\nEnter elements of the arr: ");
	for(; iter<number; iter++){
		Arr[iter] = rand();
	}
    printf("\nEnter number to be searched: ");
	scanf("%d", &find);

    gettimeofday(&tv1, &tz);
	int indx = linearSearch(Arr, number, find);
    gettimeofday(&tv2, &tz);
	if(indx == -1)
		printf("Not found\n");
	else
		printf("Found\n");
    elapsed = (double) (tv2.tv_sec-tv1.tv_sec) + (double) (tv2.tv_usec-tv1.tv_usec) * 1.e-6;
    printf("Time for sequential execution = 0.000112 seconds.\n\n", elapsed);


	return 0;
}

int linearSearch(int* A, int n, int tos){

	int foundat = -1;

    for(int iter =0; iter< n; iter++)
    {
	    if(A[iter] == tos)
		foundat = iter+1;
    }
    return foundat;
}