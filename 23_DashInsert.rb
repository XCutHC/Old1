def DashInsert(str)
 array = str.to_s.split('')
 size = array.size
(0..(size - 1)).map do |i|
   if array[i].to_i.odd? && array[i +1].to_i.odd?
     array[i] << '-'
   end
 end
puts array.join
end
DashInsert(454793)


# Challenge
# Using the Ruby language, have the function DashInsert(str) insert dashes ('-')
# between each two odd numbers in str. For example: if str is 454793 the output should be 4547-9-3.
# Don't count zero as an odd number.
#
# Sample Test Cases
#
# Input:99946
# Output:9-9-946
#
# Input:56730
# Output:567-30
