class Series
  def initialize(series)
    @nums = series
  end
  def slices(len)
    raise ArgumentError unless len <= nums.length
    
    split_nums = nums.split('')
    
    split_nums.each_cons(len).map { |arr| arr.join('') }
  end
  private
  attr_reader :nums
end