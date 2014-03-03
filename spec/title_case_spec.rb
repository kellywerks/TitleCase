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

  it('will return certain special characters uncaptialized') do
    title_case("ruBy ROCKS tHE woRLd").should(eq("Ruby Rocks the World"))
  end

  it('will capitalize the first word, including exceptions') do
    title_case("tHe grEAtest ProGRammers of RuBY").should(eq("The Greatest Programmers of Ruby"))
  end

  it('will remove anything that is not a letter or space') do 
    title_case("tH54e grE%Atest Pr#{}oGRammers of RuBY!").should(eq("The Greatest Programmers of Ruby"))
  end    
end
