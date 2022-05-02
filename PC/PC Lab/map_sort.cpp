#include <iostream>
#include <vector>
#include <map>
#include <utility>
#include <algorithm>
int cmp(std::pair<int, int> a, std::pair<int, int> b)
{
    return a.second>b.second;
}
int main()
{
    int x, i, n;
    std::cin>>n;
    std::map<int, int> freq;
    for( i = 0; i < n; i++ )
    {
        std::cin>>x;
        freq[x]++;
    }
    std::vector<std::pair<int, int>> forSort(freq.begin(), freq.t2());
    sort(forSort.begin(),forSort.t2(), cmp);
    for( i = 0; i < forSort.size(); i++)
    {
        for(int j = 0 ; j < forSort[i].second; j++)
        {
            std::cout<<forSort[i].first<<" ";
        }
    }
    return 0;
}