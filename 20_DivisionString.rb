def DivisionStringified(num1,num2)
 answer = num1.to_f / num2
 if num1 % num2 == 0 && answer > 999
      answer_integer = answer.to_i
    p answer_integer.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
 end
  if num1 % num2 == 0 && answer < 999
    p answer_integer = answer.to_i
  end
  if num1 % num2 != 0 && answer < 999
    p answer_integer = answer.round
  end
  if num1 % num2 != 0 && answer > 999
      answer_integer = answer.round
    p answer_integer.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
  end
end
#.reverse.gsub(/(\d{3})/) { $1 + "," }.reverse
DivisionStringified(503394930, 43)



# Challenge
# Using the Ruby language, have the function DivisionStringified(num1,num2) take both parameters being passed,
# divide num1 by num2, and return the result as a string with properly formatted commas.
# If an answer is only 3 digits long,
# return the number with no commas (ie. 2 / 3 should output "1").
# For example: if num1 is 123456789 and num2 is 10000 the output should be "12,346".
#
# Sample Test Cases
#
# Input:5 & num2 = 2
# Output:"3"
#
# Input:6874 & num2 = 67
# Output:"103"
