#pragma once
#include <map>
#include <string>

class dna
{
  // trying to make a constructor maybe?
  dna() {
    
  }
public:
  std::map<char, int> nucleotide_counts(std::string);
}
