#include<stdio.h>
#include<omp.h>
#include<sys/time.h>
#include<stdlib.h>
#include<limits.h>
const int n=1000000;
int main(){struct timeval TimeValue_t1;
struct timezone TimeZone_t1;
struct timeval TimeValue_Final;
struct timezone TimeZone_Final;
long time_t1, time_t2;
double time_overhead;
	int a[n];
	for(int i=0;i<n;i++){
		a[i]=rand();
	}
	int min=INT_MAX;
	gettimeofday(&TimeValue_t1, &TimeZone_t1);
	for(int i=0;i<n;i++){
		if(a[i]<min){
			min=a[i];
		}
	}
gettimeofday(&TimeValue_Final, &TimeZone_Final);
time_t1 = TimeValue_t1.tv_sec * 1000000 + TimeValue_t1.tv_usec;
time_t2 = TimeValue_Final.tv_sec * 1000000 + TimeValue_Final.tv_usec;
time_overhead = (time_t2 - time_t1)/1000000.0;
printf("\nn=%d Time in Seconds (T) : %lf",n,time_overhead);
printf("\nmin- %d\n",min);
}