def SwapII(str)
splt = str.split
arr = []
splt.each do |e|
  if e.scan(/\d/).size > 1
    arr << e.gsub(/(\d)(\w+)(\d)/, '\3\2\1')
  else
    arr << e
  end
end
puts arr.join(' ').swapcase
end
SwapII("2S 6 du5d4e")

# Challenge
# Using the Ruby language, have the function SwapII(str) take the str parameter
# and swap the case of each character. Then, if a letter is between two numbers
# (without separation), switch the places of the two numbers. For example:
# if str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3.
#
# Sample Test Cases
#
# Input:"Hello -5LOL6"
# Output:"hELLO -6lol5"
#
# Input:"2S 6 du5d4e"
# Output:"2s 6 DU4D5E"
