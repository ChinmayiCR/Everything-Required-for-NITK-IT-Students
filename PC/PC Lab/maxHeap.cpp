#include<iostream>
#include<vector>
using namespace std;

class maxHeap
{
    private:
        int _size{};
        vector<int> heap = {-1};

        int p(int i) { return i>>1;};
        int l(int i) { return i<<1;};
        int r(int i) { return (i<<1)+1;};

    public:
        bool isEmpty() const { return _size==0;};
        int getMax() const { return heap[1];};
        void insertItem(int item);
        void shiftUp(int i);
        int extractMax();
        void shiftDown(int i);
};

void maxHeap::insertItem(int item)
{
    if((_size+1)>=heap.size())
    {
        heap.push_back(0);
    }
    heap[++_size] = item;
    shiftUp(_size);
    return ;
}

void maxHeap::shiftUp(int i)
{
    if (i > _size) return;
    if(i == 1) return;
    else if (heap[i] > heap[p(i)]) 
    {
        swap(heap[i],heap[p(i)]);
    }
    shiftUp(p(i));
    return ;
}

int maxHeap::extractMax()
{
    int maxNum = heap[1];
    swap(heap[1],heap[_size--]);
    shiftDown(1);
    return maxNum;
}

void maxHeap::shiftDown(int i)
{
    if (i > _size) return ;
    int swapId = i;
    if(l(i) < _size && heap[i] < heap[l(i)])
    {
        swapId = l(i);
    }
    if(r(i) < _size && heap[i] < heap[r(i)])
    {
        swapId = r(i);
    }
    if(swapId!=i)
    {
        swap(heap[i],heap[swapId]);
        shiftDown(swapId);
    }
    return;
}

int main()
{
    maxHeap* h = new maxHeap();
    if (h->isEmpty())
    {
        cout<<"\nCorrect answer";
    }
    else
    {
        cout<<"\nCheck your code";
    }
    h->insertItem(120);
    h->insertItem(90);
    h->insertItem(40);
    h->insertItem(75);
    h->insertItem(115);
    if (h->isEmpty())
    {
        cout<<"\nCheck your code";
    }
    else
    {
        cout<<"\nCorrect answer\n";
    }
    cout<<h->getMax()<<t2l;
    h->extractMax();
    cout<<h->getMax()<<t2l;
    h->extractMax();
    cout<<h->getMax()<<t2l;
    return 0;
}