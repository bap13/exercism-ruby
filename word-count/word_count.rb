class Phrase
  VERSION = 1
  # 1st iteration's regex would not have matched 'you're'
  REGEX = /(\w+(?:\'\w+)*)/

  def initialize(string)
    @string = string
  end

  def word_count
    words = @string.scan(REGEX).flatten.map(&:downcase)
    Hash[words.zip(words.map { |w| words.count(w) })]
  end
end
