#include <iostream>
#include <fstream>
#include <string>
#include <bits/stdc++.h>

using namespace std;

string ltrim(const string &);
string rtrim(const string &);
void tokenize(std::string const &str, const char* delim,
            std::vector<std::string> &out);


int countBinversions() {
  int numBinversions = 0;
  int arr[];
  int tests;
  ifstream file;
  file.open("input.txt");
  file>>tests;
  for(int i = 0; i < tests; i++)
  {
  	 while(file>>"\n")
  	 {
  	 	
  	 }
  }

  /* Add your code here. Define appropriate parameters and call this function from main */

  return numBinversions;
}


int main (int argc, char * argv[]) {

  //cout << "Nu of args " << argc << argv[argc-1];

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
