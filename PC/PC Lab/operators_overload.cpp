#include<iostream>
using namespace std;

struct Vector
{
    float x, y;
    Vector(float a, float b) : x(a), y(b) { }
    Vector operator+ (const Vector& other) const
    {
        return Vector(x+other.x,y+other.y);
    }
    Vector operator* (const Vector& other) const
    {
        return Vector(x*other.x,y*other.y);
    }
    bool operator== (const Vector& other) const
    {
        return x==other.x && y==other.y;
    }
    bool operator!= (const Vector& other) const
    {
        return !(*this == other);
    }
    void output(ostream& stream) const
    {
        stream<<x<<" "<<y;
    }
};
ostream& operator << (ostream& stream, const Vector& v) 
{
    v.output(stream);
    return stream;
}
int main()
{
    Vector position(0.5f, 0.6f);
    Vector time(0.05f, 0.03f);
    Vector speed = position+time;
    Vector speed_multiply = position*time;
    if(position == time) cout<<"True"<<t2l; 
    if(position != time) cout<<"False"<<t2l;
    cout<<speed<<t2l;

    return 0;
}