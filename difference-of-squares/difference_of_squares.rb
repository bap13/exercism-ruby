# Iteration 3

# Difference of Squares finds the difference between the square of sums
# and the sum of squares of the first n natural numbers.
class Squares
  VERSION = 1
  attr_reader :range

  # Initializes @range
  def initialize(n)
    @range = (1..n)
  end

  # Sums up the first n natural numbers and then squares the sum
  def square_of_sums
    range.reduce(:+)**2
  end

  # Calculates the sum of 1**2 + 2**2 + 3**2 + ... + n**2
  def sum_of_squares
    range.reduce { |a, e| a + e**2 }
  end

  # Subtracts the sum of squares from the square of sums
  def difference
    square_of_sums - sum_of_squares
  end
end
