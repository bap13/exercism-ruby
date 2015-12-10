class Grains
  def self.square(n)
    return 1 if n == 1
    return square(n - 1) * 2
  end

  def self.total
    (1..64).reduce { |a,e| a += square(e) }
  end
end

