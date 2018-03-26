def ChangingSequence(*arr)
ans = 0
  if arr[0] > arr[1] == true
      (0..(arr.size - 2)).each do |e|
            if arr[e] > arr[e + 1] == false
              puts arr.index(arr[e])
              ans = 1
              break
            end
        end
  elsif arr[0] > arr[1] == false
      (0..(arr.size - 2)).each do |e|
            if arr[e] < arr[e + 1] == false
              puts arr.index(arr[e])
              ans = 1
              break
            end
        end
  end
  if ans == 0
    puts -1
  end
end
ChangingSequence(4, 3, 2, 1)

# Challenge
# Using the Ruby language, have the function ChangingSequence(arr) take the array
# of numbers stored in arr and return the index at which the numbers stop increasing
# and begin decreasing or stop decreasing and begin increasing. For example:
# if arr is [1, 2, 4, 6, 4, 3, 1] then your program should return 3 because 6 is
# the last point in the array where the numbers were increasing and the next number
# begins a decreasing sequence. The array will contain at least 3 numbers and it may
# contains only a single sequence, increasing or decreasing. If there is only a single
# sequence in the array, then your program should return -1. Indexing should begin with 0.
#
# Sample Test Cases
#
# Input:-4, -2, 9, 10
# Output:-1
#
# Input:5, 4, 3, 2, 10, 11
# Output:3
