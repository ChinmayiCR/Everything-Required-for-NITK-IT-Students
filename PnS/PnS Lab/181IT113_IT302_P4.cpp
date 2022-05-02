#include <iostream>
#include <fstream>
#include <string> 
#include <sstream>
#include <vector>
#include <stdio.h>
using namespace std;

double fact( int number)
{
    if(number < 0)
        return 1;
    return (number == 0 || number == 1 )? 1: (number * fact(number-1));
}

void invalid(int inv)
{
    fstream file;
    file.open("181IT113_IT302_P4_Output_TC6.txt",ios::out); 
    if (!file)
    {
        cout<<"Error in creating file!"<<l;
        return;
    }
    switch(inv)
    {
        case 1: cout<< "n is not a number "<<l;
                file<< "n is not a number "<<l;
                break;
        case 2: cout<< "x is not a number "<<t2l;
                file<< "x is not a number "<<t2l;
                break;
        case 3: cout<< "y is not a number "<<t2l;
                file<< "y is not a number "<<t2l;
                break;
        case 4: cout<< "z is not a number "<<t2l;
                file<< "z is not a number "<<t2l;
                break;
    }
}

int main()
{
    int  n, x, y, z, num1, num2, num3, i, j;
    string  a, b, c, d;
    int f, den, sum1=0;
    
    fstream file;
    file.open("181IT113_IT302_P4_Output_TC6.txt",ios::out); 

    if(!file) 
        cout<<"Error in creating file!"<<t2l;
        
    cout<<"n = ";
    cin>>a;
    cout<<"x = ";
    cin>>b;
    cout<<"y = ";
    cin>>c;
    cout<<"z = ";
    cin>>d;
    file<<"n = "<<a<<"\n";
    file<<"x = "<<b<<"\n";
    file<<"y = "<<c<<"\n";
    file<<"z = "<<d<<"\n";
    for(i=0;i<a.length();i++)
    {
        if(!isdigit(a[i]))
        {
            invalid(1);
            return 0;   
        }
    }
    
    for(i=0;i<b.length();i++)
    {
        if(!isdigit(b[i]))
        {
            invalid(2);
            return 0;   
        }
    }
    
    for(i=0;i<c.length();i++)
    {
        if(!isdigit(c[i]))
        {
            invalid(3);
            return 0;   
        }
    }
    
    for(i=0;i<d.length();i++)
    {
        if(!isdigit(d[i]))
        {
            invalid(4);
            return 0;   
        }
    }
    n = stoi(a);
    x = stoi(b);
    y = stoi(c);
    z = stoi(d);
    int sum = x+y+z;
    int jointDis[n][n] = {0};

    for(j=0; j <= n; j++)
    {
            cout<<"\t\t"<<j;
            file<<"\t\t"<<j;
    }
    cout<<t2l;
    file<<"\n";
    den = fact(sum)/(fact(sum-n) * fact(n));
    for(i =0; (i <= n) && (i <= x) ; ++i )
    {
        cout<<i<<"    \t";
        file<<i<<"    \t";
        for(j = 0; (j <= n) && (j <= y); ++j)
        {
            
            if(i+j <= n)
            {
                num1 = fact(x)/(fact(x-i)*fact(i));
                num2 = fact(y)/(fact(y-j)*fact(j));
                num3 = fact(z)/(fact(z-n+i+j)*fact(n-i-j));   
                f = num1 * num2 * num3;
                jointDis[i][j] = f;
                cout<<double(jointDis[i][j])/den<<"\t";
                file<<double(jointDis[i][j])/den<<"\t";
            }
            else
            {   
                
                cout<<"0.000000\t";
                file<<"0.000000\t";
                jointDis[i][j] = 0;
            }   
        }
        cout<<t2l;
        file<<"\n";
    }
    cout<<"\nMarginal distribution for x:\n";
    file<<"\nMarginal distribution for x:\n";
    for(i = 0; i <= n; ++i)
    {
        for(j = 0; j <= n; ++j)
        {
            sum1 += jointDis[j][i];    
        }
        cout<<i<<"\t"<<double(sum1)/den<<t2l;
        file<<i<<"\t"<<double(sum1)/den<<t2l;
        sum1= 0;
    }
    cout<<"\nMarginal distribution for y:\n";
    file<<"\nMarginal distribution for y:\n";
    for(i = 0; i <= n; ++i)
    {
        for(j = 0; j<= n; ++j)
        {
            sum1 += jointDis[i][j];

        }
        cout<<i<<"\t"<<double(sum1)/den<<t2l;
        file<<i<<"\t"<<double(sum1)/den<<"\n";
        sum1=0;
    }
    return 0;
}