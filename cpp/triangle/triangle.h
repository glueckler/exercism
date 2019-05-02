#pragma once
#include <string>

namespace triangle {
  enum flavor {
    equilateral,
    isosceles,
    scalene
  };
  flavor kind(double a, double b, double c);
}
