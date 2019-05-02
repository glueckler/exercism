#include <iostream>
#include <string>
using namespace std;

int main()
{
  string str = "hiiiii";
  int strLength = str.length();
  for (int a = 0; a <= strLength; a = a + 1)
  {
    string output = (string) str[a] + "\n";
    cout << output;
  }
  return 1;
}