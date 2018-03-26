def SimpleAdding(num)
	words = []
	# poprawka bardziej Ruby
		(0..(num - 1)).each do |i|
			words[i] = num - i
		end
						#  petla stara
						#  for i in 0..(num - 1)
						#  	words[i] = num - i
						# end
	puts words.sum 					#inject { |sum, n| sum + n }  <------- wczesniejsze rozumowanie
end

SimpleAdding(140)

# Challenge
# Using the Ruby language, have the function SimpleAdding(num) add up all the numbers from 1 to num.
# For example: if the input is 4 then your program should return 10 because 1 + 2 + 3 + 4 = 10.
# For the test cases, the parameter num will be any number from 1 to 1000.

# Sample Test Cases

# Input:12
# Output:78

# Input:140
# Output:9870
