# Find the primes
class Sieve
  attr_reader :range

  def initialize(value)
    @range = (2..value)
  end

  def primes
    @primes ||= gen_primes
  end

  private

  def gen_primes
    results = @range.to_a
    results.each do |n|
      results.reject! { |v| (v % n).zero? unless v == n }
    end
  end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
