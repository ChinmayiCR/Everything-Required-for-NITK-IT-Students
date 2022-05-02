#include <iostream>
#include <fstream>
#include <string> 
#include <math.h>
using namespace std;

long long int fact(int n) 
{ 
    long long int f = 1; 
    for (int i = 2; i <= n; i++) 
        f = f * i; 
    return f; 
} 

int main()
{
    int  a, b, c, n;
    float p1, p2, p3, num, den, prob;
    cout<<"Runaway 1: p1 = ";
    cin>>p1;

    cout<<"\nRunaway 2: p2 = ";
    cin>>p2;

    cout<<"\nRunaway 3: p3 = ";
    cin>>p3;

    cout<<"\nRunaway 1: ";
    cin>>a;

    cout<<"\nRunaway 2: ";
    cin>>b;

    cout<<"\nRunaway 3: ";
    cin>>c;

    cout<<"\nN = ";
    cin>>n;

    if((a+b+c)!=n)
        cout<<"\nThe number of airplanes do not sum up to N";
    if((p1+p2+p3)!=1)
        cout<<"\nThe probabilities do not sum up to 1";
    num = fact(n)*pow(p1, a)*pow(p2,b)*pow(p3,c);
    den = fact(a)*fact(b)*fact(c);
    prob = num/den;
    cout<<"The multimonomial distribution is: "<<prob;

    return 0;
}
