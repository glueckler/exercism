#include "leap.h"

bool leap::is_leap_year(const int yr)
{
  if (yr % 4 != 0)
  {
    return false;
  }
  if (yr % 100 == 0)
  {
    return yr % 400 == 0;
  }
  return true;
}
