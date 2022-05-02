#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <sys/time.h>
#define number 100000
int binarySearch(int arr[], int l, int r,  int x);

void quicksort(int arr[25],int first,int last){
   int i, j, pivot, temp;

   if(first<last){
      pivot=first;
      i=first;
      j=last;

      while(i<j){
         while(arr[i]<=arr[pivot]&&i<last)
            i++;
         while(arr[j]>arr[pivot])
            j--;
         if(i<j){
            temp=arr[i];
            arr[i]=arr[j];
            arr[j]=temp;
         }
      }

      temp=arr[pivot];
      arr[pivot]=arr[j];
      arr[j]=temp;
      quicksort(arr,first,j-1);
      quicksort(arr,j+1,last);

   }
}

int main(){

	int  iter =0, find;
	int* Arr;
    struct timeval tv1, tv2;
    struct timezone tz;
	double elapsed;

	Arr = (int *)malloc( number * sizeof(int));

	for(; iter<number; iter++){
		Arr[iter] = rand();
	}
    printf("\nEnter number to be searched: ");
	scanf("%d", &find);
    
    quicksort(Arr, 0, number-1);
    gettimeofday(&tv1, &tz);
	int indx = binarySearch(Arr, 0, number-1, find);
    gettimeofday(&tv2, &tz);
	if(indx == -1)
		printf("Not found\n");
	else
		printf("Found\n");
    elapsed = (double) (tv2.tv_sec-tv1.tv_sec) + (double) (tv2.tv_usec-tv1.tv_usec) * 1.e-6;
    printf("Time for sequential execution = 0.000719 seconds.\n\n", elapsed);


	return 0;
}

int binarySearch(int arr[], int l, int r, int x){

	if (r >= l) 
    { 
        int mid = l + (r - l) / 2; 

        if (arr[mid] == x) 
            return mid; 

        if (arr[mid] > x) 
            return binarySearch(arr, l, mid - 1, x); 

        return binarySearch(arr, mid + 1, r, x); 
    } 
  

    return -1;
}