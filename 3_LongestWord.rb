def LongestWord(sen)
	words = sen.delete("&!#").split(" ")
	p numbers = words.max { |a, b| a.length <=> b.length }
	#puts numbers[words.length - 1]
end



LongestWord("I love dogs")



# Challenge
# Using the Ruby language, have the function LongestWord(sen) take the sen parameter being passed
# and return the largest word in the string. If there are two or more words that are the same length,
# return the first word from the string with that length. Ignore punctuation and assume sen will not be empty.

# Sample Test Cases

# Input:"fun&!! time"
# Output:"time"

# Input:"I love dogs"
# Output:"love"
