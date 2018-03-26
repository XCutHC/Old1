def ArrayAdditionI(*arr)
array_1 = []
array_2 = []
max_nr = arr.max
arr.delete(max_nr)
array_1 = arr.sort
array_sort = arr.sort { |a, b| a <=> b }
size = arr.size
answer = 0
      (0..(size - 1)).each do |i|
         array_2 = array_1[i]
         array_sort.select {|item| item != array_1[i]}
          (0..(size -2)).each do |e|
             array_2 = array_2 + array_sort[e]
             if array_2 == max_nr
               answer = 1
               break
             end
          end
      end
    if answer == 1
      puts true
    else
      puts false
    end
end

ArrayAdditionI(4, 6, 23, 10, 1, 3)

# Challenge
# Using the Ruby language, have the function ArrayAdditionI(arr) take the array of numbers stored in
# arr and return the string true
# if any combination of numbers in the array can be added up to equal the largest number in the array,
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3]
# the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty,
# will not contain all the same elements, and may contain negative numbers.
#
# Sample Test Cases
#
# Input:5,7,16,1,2
# Output:"false"
#
# Input:3,5,-1,8,12
# Output:"true"

DO SPRAWDZENIA
def ArrayAdditionI(arr)

  target = arr.sort!.pop

  1.upto(arr.length).each do |i|
     arr.combination(i).each do |com|
        if com.inject(:+) == target
            return true
        end
     end
  end
  return false
end
