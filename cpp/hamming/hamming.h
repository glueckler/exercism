#include <string>
#include <exception>
using namespace std;

namespace hamming
{
int compute(string strA, string strB)
{
  int strLA = strA.length();
  int strLB = strB.length();
  if (strLA != strLB)
  {
    throw domain_error("lengths don't match");
  }
  int totalCount = 0;
  for (int a = 0; a <= strLA; ++a)
  {
    if (strA[a] != strB[a]) {
      ++totalCount;
    }
  }
  return totalCount;
}
} // namespace hamming
