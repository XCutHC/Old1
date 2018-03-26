def LetterChanges(str)
 	# przesuwamy litery do przodu
 	words = str.gsub(/[a-z]/) { |match| match.next }
  	# uppercase samogloski
  	vowel = words.gsub(/[aeiou]/) { |match| match.upcase }
  	puts vowel
         
end

LetterChanges("fun times!")





# Challenge
# Using the Ruby language, have the function LetterChanges(str) take the str parameter being passed and 
# modify it using the following algorithm. Replace every letter in the string with the letter following it in the 
# alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) 
# and finally return this modified string. 

# Sample Test Cases

# Input:"hello*3"
# Output:"Ifmmp*3"

# Input:"fun times!"
# Output:"gvO Ujnft!"