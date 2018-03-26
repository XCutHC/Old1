def NumberAddition(str)
 puts str.gsub(/\D/," ").split.to_a.map { |e| e.to_i }.inject(:+)
end

NumberAddition("75Number9")

# Challenge
# Using the Ruby language, have the function NumberSearch(str) take the str parameter,
# search for all the numbers in the string, add them together, then return that final number.
# For example: if str is "88Hello 3World!" the output should be 91.
# You will have to differentiate between single digit numbers and multiple
# digit numbers like in the example above.
# So "55Hello" and "5Hello 5" should return two different answers.
# Each string will contain at least one letter or symbol.
#
# Sample Test Cases
#
# Input:"75Number9"
# Output:84
#
# Input:"10 2One Number*1*"
# Output:13