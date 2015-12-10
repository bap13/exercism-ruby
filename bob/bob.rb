class Bob
  def hey(remark)
    case remark
    when /^(?=.*[a-z\d]).*\?$(?!\n)/
      "Sure."
    when /^(?!.*[a-z])(?=.*[A-Z]).*$/
      "Whoa, chill out!"
    when /\b.+/
      "Whatever."
    else
      "Fine. Be that way!"
    end
  end
end

