#include <string>
#include "raindrops.h"

std::string raindrops::convert(int number)
{
  std::string rtn = "";
  if (number % 3 == 0) {
    rtn += "Pling";
  }
  if (number % 5 == 0) {
    rtn += "Plang";
  }
  if (number % 7 == 0) {
    rtn += "Plong";
  }
  if (rtn == "") {
    return std::to_string(number);
  }
  return rtn;
}
