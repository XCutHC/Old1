def OtherProducts(*arr)
arr1 = []
(0..arr.size - 1).each do |e|
  arr[e]
  arr1[e] = arr.select { |n|  n != arr[e] }.inject(:*)
end
puts arr1.join('-')
end
OtherProducts(2,2,2,2)

# Challenge
# Using the Ruby language, have the function OtherProducts(arr) take the array of
# numbers stored in arr and return a new list of the products of all the other
# numbers in the array for each element. For example: if arr is [1, 2, 3, 4, 5]
# then the new array, where each location in the new array is the product of all
# other elements, is [120, 60, 40, 30, 24]. The following calculations were performed
# to get this answer: [(2*3*4*5), (1*3*4*5), (1*2*4*5), (1*2*3*5), (1*2*3*4)].
# You should generate this new array and then return the numbers as a string joined
# by a hyphen: 120-60-40-30-24. The array will contain at most 10 elements and at
# least 1 element of only positive integers.
#
# Sample Test Cases
#
# Input:1,4,3
# Output:"12-3-4"
#
# Input:3,1,2,6
# Output:"12-36-18-6"

# 1. For the input (1,1,1) your output was incorrect. The correct answer is 1-1-1.
# 2. For the input (2,2,2,2) your output was incorrect. The correct answer is 8-8-8-8.
