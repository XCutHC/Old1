def ExOh(str)
letters1 = str.delete("o")
letters2 = str.delete("x")
if letters1.length == letters2.length
	puts true
else
	puts false
end
end


ExOh("x")


# Challenge
# Using the Ruby language, have the function ExOh(str) take the str parameter being passed 
# and return the string true if there is an equal number of x's and o's, otherwise return the string false. 
# Only these two letters will be entered in the string, no punctuation or numbers. For example: 
# if str is "xooxxxxooxo" then the output should return false because there are 6 x's and 5 o's. 

# Sample Test Cases

# Input:"xooxxo"
# Output:"true"

# Input:"x"
# Output:"false"