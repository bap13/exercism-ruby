class Hamming
  VERSION = 1
  def self.compute(strand_a, strand_b)
    strand_a.length == strand_b.length or
      fail ArgumentError, 'Strands must be of equal length'

    strand_a.length.times.count { |i| strand_a[i] != strand_b[i] }
  end
end
