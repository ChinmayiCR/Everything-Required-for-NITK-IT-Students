#include <stdio.h>
#include <sys/time.h>
#include <omp.h>
#include <stdlib.h>
#define n 100000
int main(void)
{
    struct timeval TimeValue_t1;
    struct timezone TimeZone_t1;
    struct timeval TimeValue_Final;
    struct timezone TimeZone_Final; 
    long time_t1, time_t2;
    double time_overhead;double pi,x;
    int i;
    int arr[n];

    for(i = 0; i<=n; i++)
    {
        arr[i] = rand();
    }

    gettimeofday(&TimeValue_t1, &TimeZone_t1);
    int small = INT_MAX;
    #pragma omp parallel for schedule(static) reduction(min:small)
        for(i = 0; i<=n; i++)
        {
            if(arr[i] <= small) small = arr[i];
        }

    gettimeofday(&TimeValue_Final, &TimeZone_Final);
    time_t1 = TimeValue_t1.tv_sec * 1000000 + TimeValue_t1.tv_usec;
    time_t2 = TimeValue_Final.tv_sec * 1000000 + TimeValue_Final.tv_usec;
    time_overhead = (time_t2 - time_t1)/1000000.0;
    printf("n = %d\n",n);
    printf("\n\nTime in Seconds (T) : %lf\n",time_overhead);
    printf("\n\nSmallest element of the arr is : %d\n",small);
    return 0;
}
