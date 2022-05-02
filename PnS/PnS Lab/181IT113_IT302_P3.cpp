#include <iostream>
#include <fstream>
#include <string> 
#include <sstream>
#include<arrh.h>
using namespace std;

int main()
{
    int x,m,n,a;
    double c, sum = 0.0;
    fstream file;
    cout<<"m = ";
    cin>>m;
    cout<<"a = ";
    cin>>a;
    cout<<"n = ";
    cin>>n;
    for (x=0; x<=n; x++)
    {
        sum += pow(x,m) + a;
    }
    c = 1/sum;
    cout<<"c = "<<c;
      
    file.open("181IT113_IT302_P3_Output_TC6.txt",ios::out); 
    if(!file) 
    { 
        cout<<"Error in creating file!!!"; 
        return 0; 
    } 
    file<<c;

}