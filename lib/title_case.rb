def title_case(input)
  input = input.gsub(/[^A-Za-z\s]/, '')
  words = input.downcase.split
  first_word = words.shift
  output = []
  exceptions = ["the", "of", "and", "or", "nor", "a"]

  first_word = first_word[0].upcase + first_word[1..-1]
  output << first_word

  words.each do |x|
    unless exceptions.include? x
      x = x[0].upcase + x[1..-1]
    end
    output << x
  end
  output.join(" ")
end
