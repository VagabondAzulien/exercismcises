#RNA Transcription

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end

class Complement
  RULES = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(strand)
    strand.chars.collect { |genome|
      RULES[genome] ? RULES[genome] : (return "")
    }.join
  end
end
