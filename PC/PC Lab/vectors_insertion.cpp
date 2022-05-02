#include<iostream>
#include<vector>
using namespace std;
int main()
{
    vector<int> v;
    int number, N =6;
    while(cin>>number && N!=0)
    {
        v.push_back(number);
        N--;
    }
    for(vector<int>::iterator it = v.begin(); it!=v.t2(); it++)
    {
        cout<<*it<<" ";
    }
    return 0;
}