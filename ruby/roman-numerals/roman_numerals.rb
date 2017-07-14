# Convert Roman to Standard numerals
class RomTest
  ROMAN_NUMERALS = { 1000 => "M",
                      500 => "D",
                      100 => "C",
                       50 => "L",
                       10 => "X",
                        5 => "V",
                        1 => "I"}

  def self.to_numerals(val)
    ROMAN_NUMERALS.each_pair do |k,v|
      temp = (val / k)
      if (temp % 9).zero? and temp != 0 then
        print k
      else
        temp.times { print v }
      end
      val = val.divmod(k)[1] unless temp == 0
    end
  end

end
