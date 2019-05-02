class Gigasecond
  def self.from time
    time_to_sec = time.to_i
    time_plus_9_giga_sec = time_to_sec + 10**9
    Time.at(time_plus_9_giga_sec)
  end
end