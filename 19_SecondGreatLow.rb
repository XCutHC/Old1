def SecondGreatLow(*arr)
# sortujemy liczby
 sort = arr.sort
# usuwamy najmniejsza liczbe (jezeli sie powtarza to tez zostaje usunieta)
 answer_1 = sort.delete(arr.min)
 # usuwamy najwieksza liczbe najk wyzej
 answer_2 = sort.delete(arr.max)
 # warunek dla Challange i wynik
 if arr.size < 3
   puts arr[1].to_s + ' ' + arr[0].to_s
 else
   puts sort.min.to_s + ' ' + sort.max.to_s
 end
end

SecondGreatLow(100, 30, 6)

# def SecondGreatLow(*arr)
# sort = arr.sort
# nr = sort[0]
#   if arr.size == 2
#     puts "#{arr[1]} #{arr[0]}"
#   end
# sort.delete_if { |e| e == arr.max }
# sort.delete_if { |e| e == nr }
#   if sort.size < 2
#     puts "#{sort[0]} #{sort[0]}"
#   else
#   puts "#{sort[0]} #{sort[-1]}"
#   end
# end







# Challenge
# Using the Ruby language, have the function SecondGreatLow(arr) take the array of numbers stored in arr and return
# the second lowest and second greatest numbers, respectively, separated by a space.
# For example: if arr contains [7, 7, 12, 98, 106] the output should be 12 98.
# The array will not be empty and will contain at least 2 numbers. It can get tricky if there's just two numbers!

# Sample Test Cases

# Input:1, 42, 42, 180
# Output:"42 42"

# Input:4, 90
# Output:"90 4"
