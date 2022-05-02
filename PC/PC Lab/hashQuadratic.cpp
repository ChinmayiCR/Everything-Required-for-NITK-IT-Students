#include<iostream>
#include<list>
using namespace std;

class hashTable{
    private:
    int index;
    static const int tableSize = 10;
    list<int> table[tableSize];
    
    public:
    void hashFill();
    int hashFunction(int key);
    void insertItem(int key);
    void deleteItem(int key);
};
void hashTable:: hashFill()
{
    for(int i{}; i< tableSize; i++)
    {
        table->push_back(0);
    }
}
int hashTable:: hashFunction(int key)
{
    return key % tableSize;
}
void hashTable :: insertItem(int key)
{
    int j;
    index = hashFunction(key);
    for(int i{}; i < tableSize;i++)
    {
        j = (index+(i*i))%tableSize;
        auto bitr = table[j].begin();
        if(*bitr == 0)
        {
            *bitr = key;
            return;
        }

    }
    std::cout<< "\nNo empty space\n";
    return;

}
void hashTable :: deleteItem(int key)
{
    int j;
    index = hashFunction(key);
    for(int i{}; i < tableSize;i++)
    {
        j = (index+(i*i))%tableSize;
        auto bitr = table[j].begin();
        if(*bitr == key)
        {
            *bitr = 0;
            return;
        }

    }
    std::cout<< "\nKey not found!\n";
    return;

}
int main()
{
    hashTable HT;
    HT.hashFill();
    HT.insertItem(3);
    HT.insertItem(303);
    HT.insertItem(403);
    HT.insertItem(44);
    HT.insertItem(40);
    HT.insertItem(203);
    HT.insertItem(33);
    HT.insertItem(29);
    HT.insertItem(22);
    HT.insertItem(11);
    HT.insertItem(78);
    HT.deleteItem(11);
    HT.deleteItem(10);
    HT.insertItem(78);
    return 0;
}