def SimpleSymbols(str)
words = str.split('')
super_son =
check_1 =
check_2 =
letters = words.each_index.select{|i| words[i] =~ /[[:alpha:]]/ }
		for i in 0..(letters.length - 1)
			super_son = letters[i].to_i - 1
			if super_son < 0
				check_1 = false
				break
			end
			check_1 = words[super_son]
				if check_1 == "+"
					check_1 = true
				else
					check_1 = false
				end
		end
		for i in 0..(letters.length - 1)
			super_son = letters[i].to_i + 1
			if super_son > (words.length - 1)
				check_2 = false
				break
			end
			check_2 = words[super_son]
				if check_2 == "+"
					check_2 = true
				else
					check_2 = false
				end
		end
	if check_1 && check_2 == true
		puts true
	else
		puts false
	end
end
SimpleSymbols("+d+=3=+s+")






# Challenge
# Using the Ruby language, have the function SimpleSymbols(str) take the str parameter being passed and
# determine if it is an acceptable sequence by either returning the string true or false.
# The str parameter will be composed of + and = symbols with several letters between them
# (ie. ++d+===+c++==a) and for the string to be true each letter must be surrounded by a + symbol.
# So the string to the left would be false. The string will not be empty and will have at least one letter.

# Sample Test Cases

# Input:"+d+=3=+s+"
# Output:"true"

# Input:"f++d+"
# Output:"false"
