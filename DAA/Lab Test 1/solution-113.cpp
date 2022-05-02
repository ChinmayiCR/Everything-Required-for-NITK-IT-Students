#include <iostream>
#include <fstream>
#include <string>
#include <bits/stdc++.h>

using namespace std;

string ltrim(const string &);
string rtrim(const string &);
void tokenize(std::string const &str, const char* delim, std::vector<std::string> &out);
int _mergeSort(int arr[], int temp[], int left, int right, int b); 
int merge(int arr[], int temp[], int left, int mid, int right); 
int mergeSort(int arr[], int array_size, int b) 
{ 
    int temp[array_size]; 
    return _mergeSort(arr, temp, 0, array_size - 1, b); 
}

int merge(int arr[], int temp[], int left, int mid, int right, int b) 
{ 
	int i, j, k; 
	int bInversions = 0; 
	i = left; 
  j = mid; 
  k = left; 
	while ((i <= mid - 1) && (j <= right)) { 
		if (arr[i] > b*arr[j]) { 
			temp[k++] = arr[i++]; 
		} 
		else { 
			temp[k++] = arr[j++]; 
			bInversions = bInversions + (mid - i); 
		} 
	} 
	while (i <= mid - 1) 
		temp[k++] = arr[i++]; 

	while (j <= right) 
		temp[k++] = arr[j++]; 

	for (i = left; i <= right; i++) 
		arr[i] = temp[i]; 

	return bInversions; 
} 

int _mergeSort(int arr[], int temp[], int left, int right, int b) 
{ 
    int mid, bInversions = 0; 
    if (right > left) { 
        mid = (right + left) / 2; 
  
        bInversions += _mergeSort(arr, temp, left, mid, b); 
        bInversions += _mergeSort(arr, temp, mid + 1, right, b); 
        bInversions += merge(arr, temp, left, mid + 1, right, b); 
    } 
    return bInversions; 
} 
int countBinversions() {
  int numBinversions = 0;
  int arr[100];
  int tests, x, n;
  ifstream file;
  file.open("input.txt");
  file>>tests;
  int b;
  int j;
  for(int i = 0; i < tests; i++)
  {
    j = 0;
  	 while (file>>x)
  	 { 
       
       file>>x;
  	 	 arr[j] = x;
       j++;
  	 }
     file>>x;
     b = x;
     n = sizeof(arr)/sizeof(arr[0]);
     int result = mergeSort(arr, n,  b);
     cout<<result<<endl;
  }
  
  /* Add your code here. Define appropriate parameters and call this function from main */

  return numBinversions;
}




int main (int argc, char * argv[]) {

  //cout << "Nu of args " << argc << argv[argc-1];
  countBinversions();
  string filename = argv[argc-1];

  string line;
  ifstream myfile (filename);

  if (myfile.is_open())
  {
    // int numTestCases = getline (myfile,line);

    getline (myfile,line);

    int numTestCases = stoi(ltrim(rtrim(line)));

    for (int i=0; i < numTestCases; i++)
    {
      std::vector<int> A;          // Vector to store the sequence of numbers
      int b;

      std::vector<string> Astr;
      const char* delim = " ";
      getline (myfile,line);
      tokenize(line, delim, Astr);
      
      cout << " Sequence is ";
      // Read in the numbers in the sequence into Vector A
      for (auto &s : Astr) {

        int i = stoi(ltrim(rtrim(s)));
        A.push_back(i);
        cout << i <<" ";

      }

      // Read in the number b
      getline (myfile,line);
      b = stoi(ltrim(rtrim(line)));

      cout << "\nB is " << b << '\n';
    }


    myfile.close();
  }

  else cout << "Unable to open file"; 

  return 0;
}


/* You do not need to modify the code from here below */


void tokenize(std::string const &str, const char* delim,
            std::vector<std::string> &out)
{
    char *token = strtok(const_cast<char*>(str.c_str()), delim);
    while (token != nullptr)
    {
        out.push_back(std::string(token));
        token = strtok(nullptr, delim);
    }
}
string ltrim(const string &str) {
    string s(str);

    s.erase(
        s.begin(),
        find_if(s.begin(), s.end(), not1(ptr_fun<int, int>(isspace)))
    );

    return s;
}

string rtrim(const string &str) {
    string s(str);

    s.erase(
        find_if(s.rbegin(), s.rend(), not1(ptr_fun<int, int>(isspace))).base(),
        s.end()
    );

    return s;
}
