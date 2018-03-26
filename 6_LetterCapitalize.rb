def LetterCapitalize(str)

  words = str.split(" ")
  puts words.map { |e| e.capitalize! }.join(' ')
  #return str 
         
end
   
   

LetterCapitalize("i ran there")


# Challenge
# Using the Ruby language, have the function LetterCapitalize(str) take the str parameter being passed and 
# capitalize the first letter of each word. Words will be separated by only one space. 

# Sample Test Cases

# Input:"hello world"
# Output:"Hello World"

# Input:"i ran there"
# Output:"I Ran There"