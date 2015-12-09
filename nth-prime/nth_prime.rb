class Prime
  # Returns an array of primes less than the limit using the Sieve of Eratosthenes.
  # This is reasonably fast for numbers under 1,000,000
  def prime_sieve(limit)
    bool_array = Array.new(limit, true)
    bool_array[0] = bool_array[1] = false

    for i in 2..Math.sqrt(limit).ceil
      if bool_array[i]
        j = 0
        while((i**2 + j*i <= limit))
          bool_array[(i**2 + j*i)] = false
          j += 1
        end
      end
    end
    bool_array.each_index.select { |n| bool_array[n] == true }
  end

  def self.nth(n)
    fail ArgumentError, "Number outside of acceptable range" if n < 1
    prime_sieve(105_000)[n - 1]
  end
end

