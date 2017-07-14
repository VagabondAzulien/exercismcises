# Difference between sum of squares and sqare of sums for {1..n}

module BookKeeping
  VERSION = 3
end

class Squares
  def initialize(num)
    @range = (0..num)
  end

  def square_of_sum
    @range.reduce(:+)**2
  end

  def sum_of_squares
    @range.map{|i| i**2}.reduce(:+)
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end
end
