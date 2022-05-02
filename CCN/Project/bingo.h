#include <iostream>
#include <iomanip>
#include <ctime>
#include <cstdlib>
using namespace std;
class card
{
  public:
      int arr[5][5];
      void move(int);
      int checkwin();
      int cardcheck(int,int);
};

class player:public card
{
  public:
  void input();
  void display();
};

int card::cardcheck(int i,int j)
{
    if(arr[i][j]<=0 || arr[i][j]>25)
      return 0;
    int k,l;
    for(k=0;k<=i;k++)
       for(l=0;l<5;l++)
        {
          if(k==i && l==j)
            return 1;
          if(arr[i][j]==arr[k][l])
            return 0;
        }
 return 1;
}

void player::input()
{
  for(int i=0;i<5;i++)
    for(int j=0;j<5;j++)
    {
        cin>>arr[i][j];
        if(!card::cardcheck(i,j))
        {
          cout<<"Invalid Entry:Enter Again !!!";
          j--;
        }
      
    } 
}

void player::display()
{
  for(int i=0;i<5;i++)
  {
    cout<<"   ________________________"<<endl;
    for(int j=0;j<5;j++)
    {
        if(arr[i][j]!=0)
          cout<<setw(5)<<arr[i][j];
        else
          cout<<setw(5)<<"X";
    
    }
    cout<<"\n";
  } 
  cout<<"   ________________________"<<endl;
}

void card::move(int x)
{
  for(int i=0;i<5;i++)
    for(int j=0;j<5;j++)
      if(arr[i][j]==x)
        arr[i][j]=0;   
}

int card::checkwin()
{
  int c=0;
  int i,j;
  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
        if(arr[i][j]==0)
          continue;
        else
          break;   
    }

    if(j==5)
      c++;
  }

  for(i=0;i<5;i++)
  {
    for(j=0;j<5;j++)
    {
        if(arr[j][i]==0)
          continue;
        else
          break;
    }
    if(j==5)
    c++;
  }

  if(c==5)
    return 1;
  else
    return 0; 
}