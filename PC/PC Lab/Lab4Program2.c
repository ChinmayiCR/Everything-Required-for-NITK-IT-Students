#include<stdio.h>
#include<omp.h>
#include <sys/time.h>
#define N 1000
int a[N][N], rowsum[N], colsum[N];
int main()
{
    int i, j;
    struct timeval tv1, tv2;
    struct timezone tz;
    double time;

    for(i=0; i<N; i++)
        for(j=0; j<N; j++)
        {
            a[i][j] = 1;
        }
    printf("\n");
    gettimeofday(&tv1, &tz);

    for (i = 0; i < N ; ++i) 
        for(j=0; j< N ; ++j)
        {    
            rowsum[i] += a[i][j];
            colsum[i] += a[j][i];
        }
    gettimeofday(&tv2, &tz);
    time = (double) (tv2.tv_sec-tv1.tv_sec) + (double) (tv2.tv_usec-tv1.tv_usec) * 1.e-6;
    /*for(int i = 0; i < N; i++)
        printf("Sum of row%d is: %d\n",i+1,rowsum[i]);
    printf("\n");
    for(i = 0; i<N; i++)
        printf("Sum of column%d is: %d\n",i+1,colsum[i]);*/
    printf("\nTime for sequential execution = %lf \n\n", time);    
    return 0;
}