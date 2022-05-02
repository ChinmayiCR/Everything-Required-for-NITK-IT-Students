#include <iostream>
#include <vector>
#include <queue>
#include <climits>
using namespace std;
 
int dst,src;

struct Edge {
	int source, dest, weight;
};


struct Node {
	int vertex, weight;
};


class Graph
{
public:
	//Representing adjacency list
	vector<vector<Edge>> adjList;

	//Constructor
	Graph(vector<Edge> const &edges, int N)
	{
		
		adjList.resize(N);

		// adding new edges to the undirected graph
		for (Edge const &edge: edges)
		{
			
			adjList[edge.source].push_back(edge); // inserts in the end
		}
	}
};

void print_route(vector<int> const &prev, int i)
{
	if (i < 0)
		return;

	print_route(prev, prev[i]);
	switch(i)
	{
	    case 1: cout << "(" << i << ")" << "Mangalore ";
	            break;
	    case 2: cout << "(" << i << ")" << "Bangalore ";
	            break;
	    case 3: cout << "(" << i << ")" << "Chennai ";
	            break;
	    case 4: cout << "(" << i << ")" << "Hyderabad ";
	            break;
	    case 5: cout << "(" << i << ")" << "Visakhapatnam ";
	            break;
	    case 6: cout << "(" << i << ")" << "Mumbai ";
	            break;
	    case 7: cout << "(" << i << ")" << "Delhi ";
	            break;
	    case 8: cout << "(" << i << ")" << "Kolkata ";
	            break;
	    default: break;
	}
}


struct comp
{
	bool operator()(const Node &lhs, const Node &rhs) const
	{
		return lhs.weight > rhs.weight;
	}
};

// Run Dijkstra's algorithm on given graph
void shortestPath(Graph const& graph, int source, int N, int choice)
{
	// Pushes nodes having distances zero to the heap
	priority_queue<Node, vector<Node>, comp> min_heap;
	min_heap.push({source, 0});

	// set infinite distance from source to v initially
	vector<int> dist(N, INT_MAX);

	
	dist[source] = 0;

	
	vector<bool> done(N, false);
	done[0] = true;

	
	vector<int> prev(N, -1);

	
	while (!min_heap.empty())
	{
		
		Node node = min_heap.top();
		min_heap.pop();

		// get vertex number
		int u = node.vertex;

		// do for each neighbor v of u
		for (auto i : graph.adjList[u])
		{
			int v = i.dest;
			int weight = i.weight;

			
			if (!done[v] && (dist[u] + weight) < dist[v])
			{
				dist[v] = dist[u] + weight;
				prev[v] = u;
				min_heap.push({v, dist[v]});
			}
		}

		
		done[u] = true;
	}
	if(choice==10)
	{
	    for(int j = src; j<src+1;j++)
	    {
	        for (int i = dst; i < dst+1; ++i)
	        {
	            cout << "Travel through required source(" <<j<<") "<< "to destination(" <<i<<")"<< " has minimum time of " << dist[i] << " minutes and the route is [ ";
		        print_route(prev, i);
		        cout << "]\n";
	        }
	    }
	}
	else if(choice==20)
	{
	    for(int j = src; j<src+1;j++)
	    {
	        for (int i = dst; i < dst+1; ++i)
	        {
	            cout << "Travel through required source(" <<j<<") "<< "to destination(" <<i<<")"<< " has minimum cost of " << dist[i] << " rupees and the route is [ ";
		        print_route(prev, i);
		        cout << "]\n";
	        }
	    }	    
	}
}

// main function
int main()
{
    int N = 9;
    int choice;
	
	cout<<"---------------WELCOME---------------"<<endl;
	cout<<" "<<endl;
	cout<<"List of airports:"<<endl;
	cout<<"1.Mangalore      "<<endl;
	cout<<"2.Bangalore      "<<endl;
	cout<<"3.Chennai        "<<endl;
	cout<<"4.Hyderabad      "<<endl;
    cout<<"5.Visakhapatnam  "<<endl;
    cout<<"6.Mumbai         "<<endl;
    cout<<"7.Delhi          "<<endl;
    cout<<"8.Kolkata        "<<endl;
    cout<<" "<<endl;
    
    cout<<"Enter the source"<<endl;
	cin>>src;
	cout<<"Enter the destination"<<endl;
	cin>>dst;
	if(src>=1&&src<=8&&dst<=8&&dst>=1)
	{
		    cout<<"Enter your choice of search for flights"<<endl;
		    cout<<"10-Based on time constraint"<<endl;
		    cout<<"20-Based on cost constraint"<<endl;
		    cout<<"0-exit"<<endl;
		    cin>>choice;
		  
		    if(choice==10)
		    {
		        //Based on time constraint
			    vector<Edge> edges =
			    {
			        {1, 2, 60}, {1, 3, 105}, {1, 4, 115}, {1, 6, 100},
			        {2, 1, 60}, {2, 4, 70}, {2, 5, 95}, {2, 6, 105}, {2, 7, 170},
				    {3, 1, 110}, {3, 4, 80}, {3, 5, 80}, {3, 6, 120}, {3, 7, 170}, {3, 8, 140},
				    {4, 1, 105}, {4, 2, 75}, {4, 3, 75}, {4, 5, 70}, {4, 6, 90}, {4, 7, 140},
				    {5, 2, 100}, {5, 3, 90}, {5, 4, 75}, {5, 7, 140},
				    {6, 1, 90}, {6, 2, 105}, {6, 3, 110}, {6, 4, 85}, {6, 7, 125}, {6, 8, 160},
				    {7, 2, 165}, {7, 3, 170}, {7, 4, 130}, {7, 5, 135}, {7, 6, 130}, {7, 8, 130},
				    {8, 3, 150}, {8, 6, 175}, {8, 7, 150}
			    };
			    
			    // construct graph
			    Graph graph(edges, N);
			    shortestPath(graph, src, N, choice);
		    }
		    else if(choice==20)
		    {
		        //Based on cost constraint
		        vector<Edge> edges =
		        {
		                {1, 2, 4541}, {1, 3, 7015}, {1, 4, 3766}, {1, 6, 3706},
			        {2, 1, 2695}, {2, 4, 2131}, {2, 5, 3554}, {2, 6, 1889}, {2, 7, 3640},
			    	{3, 1, 2748}, {3, 4, 1622}, {3, 5, 2649}, {3, 6, 2791}, {3, 7, 4113}, {3, 8, 4037},
			    	{4, 1, 3848}, {4, 2, 1810}, {4, 3, 1648}, {4, 5, 2747}, {4, 6, 1896}, {4, 7, 2686},
			       	{5, 2, 3598}, {5, 3, 2450}, {5, 4, 2901}, {5, 7, 4270},
			    	{6, 1, 3646}, {6, 2, 2295}, {6, 3, 3031}, {6, 4, 1596}, {6, 7, 2438}, {6, 8, 4295},
			       	{7, 2, 4035}, {7, 3, 4106}, {7, 4, 2987}, {7, 5, 4058}, {7, 6, 2320}, {7, 8, 2944},
			    	{8, 3, 4515}, {8, 6, 4448}, {8, 7, 3292}
		        };
		        // construct graph
			    Graph graph(edges, N);
			    shortestPath(graph, src, N, choice);
		    }
		    else
		       cout<<"Invalid choice!!!"<<endl;
	}
	else

	{
		if(src<1||src>8)
		{
			cout<<"\nEntered source does not exist!";

		}
		else
			cout<<"\nEntered destination does not exist!";
	}
	
   
	return 0;
}

