#include <iostream>
#include <fstream>
#include <string> 
#include <sstream>
#include <arrh.h>
using namespace std;

void helperFunction(int m, int n, int o, int a)
{
    fstream file;
    int total, apples_oranges[n][m],e,h, c, d[n][m];
    file.open("181IT113_IT302_P6_Output_TC1.txt",ios::out); 
   if(!file) 
    { 
        cout<<"Error in creating file!!!"; 
        return;
    }
    }
    total = m + n + o;
    int result = formulaFunction(total, a);
    for( int i = 0; i < n+1; i++)
    {
        for(int j = 0; j < m+1; j++)
        {
            if((n+m) <= a)
            {
                e = formulaFunction(n, i)*formulaFunction(o, j)*formulaFunction(m, a - (i+j));
                h = e/(1.0*result);
                c = a - (i+j);
                d[i][j] = h;
            }
        }
    }
    
    


}

int formulaFunction(int total, int a)
{
    if(total < a) return 0;
    if(a == 0) return 1;
    int sum = 1;
    int k = a;
    int w = total;
    while (k > 0)
    {
        sum *= w;
        k -= 1;
        w -= 1;
    }
    /*file<<sum;
    cout<<sum;*/
    int sum1 = 1;
    for(int i = 1; i < a+1; i++)
    {
        sum1 *= i;
    }
    /*file<<sum1;
    cout<<sum1;*/
    return sum/sum1;
}
int main()
{
    int m, n, o, a;
    fstream file;
    cout<<"m = ";
    cin>>m;
    file<<"m = "<<m;
    cout<<"n = ";
    cin>>n;
    file<<"n = "<<n;
    cout<<"o = ";
    cin>>o;
    file<<"o = "<<o;
    cout<<"a = ";
    cin>>a;
    file<<"a = "<<a;
    file.open("181IT113_IT302_P6_Output_TC1.txt",ios::out); 
    if(!file) 
    { 
        cout<<"Error in creating file!!!"; 
        return 0; 
    }
    if(m<0 || n<0 || o<0 || a<0)
    {
        file<<"\nInvalid input";
        cout<<"\nInvalid input";
    }
    else
    {
        helperFunction(m, n, o, a);   
    }
    
    
 
    return 0;
}
