#include <stdexcept>
#include "grains.h"

unsigned long long grains::square(int sq) {
  if (sq < 1) {
    throw std::domain_error("No negative squares possible");
  }

  if (sq == 1) {
    return 1ULL;
  }
  // found this on the internet.. 
  return 1ULL<<(sq - 1);
}

unsigned long long grains::total() {
  unsigned long long acc = 1;
  for (int i = 1; i <= 63; i++) {
    acc += 1ULL<<i; 
  }  
  return acc;
}