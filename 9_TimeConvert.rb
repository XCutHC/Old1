def TimeConvert(num)

  number1 = num / 60
  number2 = num - number1 * 60
  puts "#{number1}:#{number2}"
  #return num 
         
end



TimeConvert(126)







# Challenge
# Using the Ruby language, have the function TimeConvert(num) take the num parameter 
# being passed and return the number of hours and minutes the parameter converts to 
# (ie. if num = 63 then the output should be 1:3). Separate the number of hours and minutes with a colon. 

# Sample Test Cases

# Input:126
# Output:"2:6"

# Input:45
# Output:"0:45"