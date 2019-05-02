#include "./reverse_string.h"

std::string reverse_string::reverse_string(std::string str) {
  std::reverse(str.begin(), str.end());
  return str;
}
