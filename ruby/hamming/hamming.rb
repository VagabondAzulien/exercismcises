#Hamming count

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end

class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError, 'Strands much be of equal length' unless strand1.length == strand2.length

    strand1.length.times.count do |n|
      strand1[n] != strand2[n]
    end
  end
end
