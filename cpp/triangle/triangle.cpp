#include <string>
#include "triangle.h"
#include <stdexcept>

triangle::flavor triangle::kind(double a, double b, double c)
{
  if (a <= 0 || b <= 0 || c <= 0)
  {
    throw std::domain_error("Triangle must not have sides of 0 or neg length");
  }

  if (a + b < c || b + c < a || c + a < b) {
    throw std::domain_error("This triangle shows inequality");
  }

  if (a == b && a == c)
  {
    return equilateral;
  }

  if (a == b || b == c || c == a)
  {
    return isosceles;
  }

  return scalene;
}