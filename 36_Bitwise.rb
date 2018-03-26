def BitwiseOne(*strArr)
arr1 = strArr[0].split('').map {|e| e.to_i}
arr2 = strArr[1].split('').map {|e| e.to_i}
arr3 = []
(0..arr1.size - 1).each do |e|
  arr3[e] = arr1[e] + arr2[e]
  if arr3[e] == 2
    arr3[e] = 1
  end
end
puts arr3.join
end
BitwiseOne("1001", "0100")

# Challenge
# Using the Ruby language, have the function BitwiseOne(strArr) take the array of
# strings stored in strArr, which will only contain two strings of equal length
# that represent binary numbers, and return a final binary string that performed
# the bitwise OR operation on both strings. A bitwise OR operation places a 0 in
# the new string where there are zeroes in both binary strings, otherwise it
# places a 1 in that spot. For example: if strArr is ["1001", "0100"] then your
# program should return the string "1101"
#
# Sample Test Cases
#
# Input:"100", "000"
# Output:"100"
#
# Input:"00011", "01010"
# Output:"01011"
