#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <sys/time.h>

int linearSearch(int* A, int n, int tos);

void quicksort(int number[25],int first,int last){
   int i, j, pivot, temp;

   if(first<last){
      pivot=first;
      i=first;
      j=last;

      while(i<j){
         while(number[i]<=number[pivot]&&i<last)
            i++;
         while(number[j]>number[pivot])
            j--;
         if(i<j){
            temp=number[i];
            number[i]=number[j];
            number[j]=temp;
         }
      }

      temp=number[pivot];
      number[pivot]=number[j];
      number[j]=temp;
      quicksort(number,first,j-1);
      quicksort(number,j+1,last);

   }
}

int main(){

	int number, iter =0, find;
	int* Arr;
    struct timeval tv1, tv2;
    struct timezone tz;
	double elapsed;

	Arr = (int *)malloc( number * sizeof(int));
    printf("\nEnter size of arr: ");
	scanf("%d", &number);
    printf("\nEnter elements of the arr: ");
	for(; iter<number; iter++){
		scanf("%d", &Arr[iter]);
	}
    printf("\nEnter number to be searched: ");
	scanf("%d", &find);
    
    quicksort(Arr, 0, number-1);
    gettimeofday(&tv1, &tz);
	int indx = linearSearch(Arr, number, find);
    gettimeofday(&tv2, &tz);
	if(indx == -1)
		printf("Not found");
	else
		printf("Found at %d\n", indx);
    elapsed = (double) (tv2.tv_sec-tv1.tv_sec) + (double) (tv2.tv_usec-tv1.tv_usec) * 1.e-6;
    printf("Time for parallel execution = %lf seconds.\n\n", elapsed);


	return 0;
}

int linearSearch(int* A, int n, int tos){

	int foundat = -1;

    #pragma omp parallel for
    for(int iter =0; iter< n; iter++)
    {
	    if(A[iter] == tos)
		foundat = iter+1;
    }
    return foundat;
}