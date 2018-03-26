def HammingDistance(*strArr)
ans = 0
size = strArr[0].size
arr_1 = strArr[0].split('')
arr_2 = strArr[1].split('')
  (0..size - 1).each do |e|
    if arr_1[e] != arr_2[e]
      ans += 1
    end
  end
puts ans
end
HammingDistance("coder", "codec")
# Challenge
# Using the Ruby language, have the function HammingDistance(strArr) take the array
# of strings stored in strArr, which will only contain two strings of equal
# length and return the Hamming distance between them. The Hamming distance
# is the number of positions where the corresponding characters are different.
# For example: if strArr is ["coder", "codec"] then your program should return 1.
# The string will always be of equal length and will only contain lowercase characters
# from the alphabet and numbers.
#
# Sample Test Cases
#
# Input:"10011", "10100"
# Output:3
#
# Input:"helloworld", "worldhello"
# Output:8
