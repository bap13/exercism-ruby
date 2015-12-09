# Raindrops. A program that converts a number to a string depending on its
# prime-factorization.

class Raindrops
  def self.convert(number)
    fail ArgumentError, "Input must be an integer." unless number.integer?
    output = ''
    output << 'Pling' if number % 3 == 0
    output << 'Plang' if number % 5 == 0
    output << 'Plong' if number % 7 == 0
    output = number.to_s if output.empty?
    return output
  end
end
