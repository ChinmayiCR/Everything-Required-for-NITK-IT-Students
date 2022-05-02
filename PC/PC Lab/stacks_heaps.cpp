#include<iostream>
using namespace std;

struct Vector
{
    float a, b, c;
    Vector() : a(0),b(0), c(0) {} 
};
int main()
{
    int svalue = 10;
    int sarr[5];
    for (int i = 0;i < 5;i++)
    {
        sarr[i] = i+1;
    }
    Vector v;
    int* hvalue = new int;
    *hvalue = 10;
    int* harr = new int[5];
    for (int i = 0;i < 5;i++)
    {
        sarr[i] = i+1;
    }
    Vector* vect = new Vector();
    delete hvalue;
    delete[] harr;
    delete vect;
    return 0;
}