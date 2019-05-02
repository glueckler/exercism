class String
  def first
    self[0,1]
  end
end

class Acronym
  def self.abbreviate str
    str.scan(/\b\w/).join('').upcase()
  end
end