# Gigasecond - a program that calculates when someone will, or has,
# turned 1 Gs old

class Gigasecond
  VERSION = 1
  def self.from(time)
    time + 1e9
  end
end
