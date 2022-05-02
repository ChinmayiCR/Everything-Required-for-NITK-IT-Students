#include<iostream>
using namespace std;

class Test
{
    int t;
    public:
        Test() : t(5) {}
        Test(const Test& T_copy): t(T_copy.t) { }
        int get_length() const {return t;}
};
int main()
{
    Test T;
    Test newT(T);
    cout<<T.get_length();
}
