require ('rspec')
require ('title_case')

describe('title_case') do
  it('will return a word with an uppercase first letter') do
    title_case("ruby").should(eq("Ruby"))
  end   

  it('will return a word with only the first letter uppercase') do
    title_case("ruBy").should(eq("Ruby"))
  end

  it('will return each word of the input with only the first letter of the word capitalized') do
    title_case("ruBy ROCKS").should(eq("Ruby Rocks"))
  end  
end
