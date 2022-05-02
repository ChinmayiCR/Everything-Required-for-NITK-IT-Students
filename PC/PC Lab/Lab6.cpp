#include<bits/stdc++.h>
#include<omp.h>
using namespace std;
#define N 300
int arr[N*N*3],arr_gray[N*N],arr_yiq[3*N*N];
int main()
{
freopen("KittenRGB.txt","r",stdin);
for(int i=0;i<3*N*N;i++){
cin>>arr[i];
}

double t1,t2;

// RGB to GRAY scale
t1=omp_get_wtime();
for(int i=0; i<300*300*3; i+=3){

    int R=arr[i];
    int G=arr[i+1];
    int B=arr[i+2];
    arr_gray[i]=(R*0.21)+(G*0.72)+(B*0.07);
    arr_yiq[i]=(0.299*R)+(0.587*G)+(0.114*B);
    arr_yiq[i+1]=(0.596*R)-(0.275*G)-(0.321*B);
    arr_yiq[i+2]=(0.212*R)-(0.523*G)+(0.311*B);
}
t2=omp_get_wtime();
cout<<"Total time taken in sequential execution= "<<(t2-t1)<<'\n';


t1=omp_get_wtime();
#pragma omp parallel num_threads(2)
{
#pragma omp for
for(int i=0; i < N*N*3; i+=3)
{
    int R=arr[i];
    int G=arr[i+1];
    int B=arr[i+2];
    arr_gray[i]=(R*0.21)+(G*0.72)+(B*0.07);
    arr_yiq[i]=(0.299*R)+(0.587*G)+(0.114*B);
    arr_yiq[i+1]=(0.596*R)-(0.275*G)-(0.321*B);
    arr_yiq[i+2]=(0.212*R)-(0.523*G)+(0.311*B);
}
}
t2=omp_get_wtime();

cout<<"Total time taken by 2 threads in Parallel= "<<(t2-t1)<<'\n';

t1=omp_get_wtime();
#pragma omp parallel num_threads(4)
{
#pragma omp for
for(int i=0;i<N*N*3;i+=3){
    int R=arr[i];
    int G=arr[i+1];
    int B=arr[i+2];
    arr_gray[i]=(R*0.21)+(G*0.72)+(B*0.07);
    arr_yiq[i]=(0.299*R)+(0.587*G)+(0.114*B);
    arr_yiq[i+1]=(0.596*R)-(0.275*G)-(0.321*B);
    arr_yiq[i+2]=(0.212*R)-(0.523*G)+(0.311*B);
}
}

t2=omp_get_wtime();
cout<<"Total time taken by 4 threads in Parallel= "<<(t2-t1)<<'\n';

t1=omp_get_wtime();
#pragma omp parallel num_threads(8) 
{
#pragma omp for
for(int i=0;i<N*N*3;i+=3){
    int R=arr[i];
    int G=arr[i+1];
    int B=arr[i+2];
    arr_gray[i]=(R*0.21)+(G*0.72)+(B*0.07);
    arr_yiq[i]=(0.299*R)+(0.587*G)+(0.114*B);
    arr_yiq[i+1]=(0.596*R)-(0.275*G)-(0.321*B);
    arr_yiq[i+2]=(0.212*R)-(0.523*G)+(0.311*B);
}
}
t2=omp_get_wtime();
cout<<"Total time taken by 8 threads in Parallel= "<<(t2-t1)<<'\n';

t1=omp_get_wtime();
#pragma omp parallel num_threads(16)
{
#pragma omp for
for(int i=0;i<N*N*3;i+=3)
{
    int R=arr[i];   
    int G=arr[i+1];
    int B=arr[i+2];
    arr_gray[i]=(R*0.21)+(G*0.72)+(B*0.07);
    arr_yiq[i]=(0.299*R)+(0.587*G)+(0.114*B);
    arr_yiq[i+1]=(0.596*R)-(0.275*G)-(0.321*B);
    arr_yiq[i+2]=(0.212*R)-(0.523*G)+(0.311*B);
}
}
t2=omp_get_wtime();
cout<<"Total time taken by 16 threads in Parallel= "<<(t2-t1)<<'\n';
freopen("Output.txt","w",stdout);

for(int i=0;i<N*N;i+=3)
cout<<arr_gray[i]<<" ";
cout<<"\n\n\n\n";
for(int i=0;i<N*N*3;i++)
cout<<arr_yiq[i]<<" ";

return 0;
}