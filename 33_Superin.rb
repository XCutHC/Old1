def Superincreasing(*arr)
ans = 0
  (0..(arr.size - 2)).each do |e|
      if arr[e + 1] > arr[0..e].sum == true
      ans += 1
      end
  end
if ans == (arr.size - 1)
  puts true
else
  puts false
end
end
Superincreasing(1,2,5,10)

# Challenge
# Using the Ruby language, have the function Superincreasing(arr) take the array
# of numbers stored in arr and determine if the array forms a superincreasing
# sequence where each element in the array is greater than the sum of all previous
# elements. The array will only consist of positive integers. For example:
# if arr is [1, 3, 6, 13, 54] then your program should return the string "true"
# because it forms a superincreasing sequence. If a superincreasing sequence
# isn't formed, then your program should return the string "false"
#
# Sample Test Cases
#
# Input:1,2,3,4
# Output:"false"
#
# Input:1,2,5,10
# Output:"true"
#1. create sum varialbe
#2. loop through array
#3. add all previous elements to sum
#4. return false if sum is greater than current element
#5. return true after ending loop

sum = 0
(0..arr.length-1).each do |i|
   if sum >= arr[i]
       return false
   end
   sum += arr[i]
end
return true
end
