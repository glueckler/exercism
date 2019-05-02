class Phrase
  attr_reader :word_count
  def initialize(phrase)
    words = phrase.downcase.scan(/\b[\w']+\b/)
    @word_count = words.each_with_object(Hash.new(0)) do |nxt, col|
      col[nxt] += 1
    end
  end
end