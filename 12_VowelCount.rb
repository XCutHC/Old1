def VowelCount(str)
	letters = []
	letters = str.split(/[aeiou]/).join('')
	words = str.split('')
puts words.length - letters.length
	return str 
end

VowelCount("hello")






# Challenge
# Using the Ruby language, have the function VowelCount(str) take the str string parameter being passed 
# and return the number of vowels the string contains (ie. "All cows eat grass and moo" would return 8). 
# Do not count y as a vowel for this challenge. 

# Sample Test Cases

# Input:"hello"
# Output:2

# Input:"coderbyte"
# Output:3