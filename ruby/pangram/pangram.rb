module BookKeeping
  VERSION = 2
end

class Pangram
  ALPHABET = ("a".."z")

  def self.is_pangram?(str)
      ALPHABET.all?{ |letter|
      str.downcase.include?(letter)
    }
  end
end
