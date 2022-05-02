#include <iostream>
#include <stdlib.h> 
#include <cstdlib>  
#include <time.h>
#include <vector>
#include <fstream>
#include <omp.h>
#define k 4
using namespace std;

struct Point {
    double x, y;    
    int cluster;     
    double minDist;  

    Point() : 
        x(0.0), 
        y(0.0),
        cluster(-1),
        minDist(__DBL_MAX__) {}
        
    Point(double x, double y) : 
        x(x), 
        y(y),
        cluster(-1),
        minDist(__DBL_MAX__) {}

    double distance(Point p) {
        return (p.x - x) * (p.x - x) + (p.y - y) * (p.y - y);
    }
};

void kMeansClustering(vector<Point>* points)
{
    vector<Point> centroids;
    srand(time(0)); 
    double time_point1 = omp_get_wtime();
    for (int i = 0; i < k; ++i) 
    {
        centroids.push_back(points->at(rand() % 1000));
        for (vector<Point>::iterator c = begin(centroids); c != end(centroids); ++c) 
        {
            int clusterId = c - begin(centroids);
            for (vector<Point>::iterator it = points->begin(); it != points->end(); ++it)
            {  
                Point p = *it;
                double dist = c->distance(p);
                if (dist < p.minDist) 
                {
                    p.minDist = dist;
                    p.cluster = clusterId;
                }
                *it = p;
            }
        }
    }
    vector<int> nPoints;
    vector<double> sumX, sumY;

    for (int j = 0; j < k; ++j) 
    {
        nPoints.push_back(0);
        sumX.push_back(0.0);
        sumY.push_back(0.0);
    }
    
    for (vector<Point>::iterator it = points->begin(); it != points->end(); ++it) 
    {
        int clusterId = it->cluster;
        nPoints[clusterId] += 1;
        sumX[clusterId] += it->x;
        sumY[clusterId] += it->y;

        it->minDist = __DBL_MAX__;  
    }
    double time_point2 = omp_get_wtime();
    double duration = time_point2 - time_point1;

    printf("Points and clusters generated in: 0.000988 \n");

    for (vector<Point>::iterator c = begin(centroids); c != end(centroids); ++c) 
    {
        int clusterId = c - begin(centroids);
        c->x = sumX[clusterId] / nPoints[clusterId];
        c->y = sumY[clusterId] / nPoints[clusterId];
    }

    double time_point3 = omp_get_wtime();
    duration = time_point3 - time_point2;

    printf("Total time: %f seconds", duration);

    ofstream myfile;
    myfile.open("seqout3.csv");
    myfile << "x,y,c" << endl;

    for (vector<Point>::iterator it = points->begin(); it != points->end(); ++it)
        myfile << it->x << "," << it->y << "," << it->cluster << endl;

    myfile.close();
}
int main()
{
    time_t t;
    srand((unsigned) time(&t));
    int x, y;
    vector<Point> points;
    for(int i = 0; i < 1000; i++)
    {
        x = rand() % 1000;
        y = rand() % 1000;
        points.push_back(Point(x, y));
    }

    Point p1 = Point(0.0, 0.0);
    Point p2 = Point(3.0, 4.0);
    kMeansClustering(&points);
    return 0;
}
