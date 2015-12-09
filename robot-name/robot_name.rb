class Robot
  attr_reader :name
  @@used_robot_names = []

  def initialize
    # this loop ensures there are no duplicate robot names. Although it
    # is possible to get stuck in an infinite loop, the chances are 
    # incredibly small for a small number of robots.
    loop do
      @name = generate_name
      break unless @@used_robot_names.member?(@name)
    end 
    @@used_robot_names.push(@name)
  end

  def reset
    initialize
  end

  def generate_name
    name = ""
    2.times { name << 65 + rand(26) }
    3.times { name << rand(9).to_s }
    name
  end
end

