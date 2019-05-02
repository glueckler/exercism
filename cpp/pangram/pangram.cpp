#include <string>
#include <algorithm>
#include "pangram.h"

#include <iostream>
                      
bool pangram::is_pangram(std::string possible_pang)
{
  // downcase
  std::transform(possible_pang.begin(), possible_pang.end(), possible_pang.begin(), ::tolower);

  // sort string
  std::sort(possible_pang.begin(), possible_pang.end());

  // loop through sorted string 
  char last_character = 97;
  for (char c : possible_pang) {
    // ignore non a-z
    if (c < 97 || c > 122) {
      continue;
    }
    // if the letter is not the same or one higher.. return false
    if (c > last_character + 1) {
      return false;
    } 

    last_character = c;

    // if we reach z, we've done it!
    if (last_character == 122) {
      return true;
    }
  }
  // in cases where there's no input string and no loop
  return false;  
}