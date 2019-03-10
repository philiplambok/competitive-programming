class LongWord
  def initialize(word)
    @word = word
  end

  def short_version
    return @word if @word.size <= 10

    first_char = @word[0]
    last_char = @word[-1]
    rest_word_count = @word[1..-2].size

    "#{first_char}#{rest_word_count}#{last_char}"
  end
end

# Main
# count_of_input = gets.strip.to_i
# word_collection = []
# count_of_input.times do
#   word = gets.strip
#   word_collection << word
# end

# word_collection.each do |word|
#   long_word = LongWord.new(word)
#   puts long_word.short_version
# end