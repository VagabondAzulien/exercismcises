# Convert English to Raindrops

module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end

class Raindrops
  FACTORS = { 
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(num)
    word = FACTORS.each.collect{ |k,v|
      (num % k == 0) ? v : "" }.join
    word.empty? ? num.to_s : word;
  end
end
