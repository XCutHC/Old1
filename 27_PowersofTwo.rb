def PowersofTwo(num)
array = (0..20).to_a.map { |e| 2 ** e }
  if array.include?(num)
    puts true
  else
    puts false
  end
end
PowersofTwo(9)
# Challenge
# Using the Ruby language, have the function PowersofTwo(num) take the num parameter
# being passed which will be an integer and return the string true if it's a power of two.
# If it's not return the string false. For example if the input is 16 then your program
# should return the string true but if the input is 22 then
# the output should be the string false.
#
# Sample Test Cases
#
# Input:4
# Output:"true"
#
# Input:124
# Output:"false"
