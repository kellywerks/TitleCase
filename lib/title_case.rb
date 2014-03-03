def title_case(input)
  words = input.downcase.split
  output = []
  words.each do |x|
      x = x[0].upcase + x[1..-1]
      output << x
  end
  output.join(" ")
end
