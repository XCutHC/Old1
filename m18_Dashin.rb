def DashInsertII(num)
  array = num.to_s.split('')
  size = array.size
 (0..(size - 2)).map do |i|
    if array[i].to_i.odd? && array[i + 1].to_i.odd?
      array[i] << '-'
    end
    if array[i].to_i != 0 && array[i + 1].to_i != 0 && array[i].to_i.even? && array[i + 1].to_i.even?
      array[i] << '*'
    end
  end
 puts array.join
end
DashInsertII(60497642)


# Challenge
# Using the Ruby language, have the function DashInsertII(str) insert dashes ('-')
# between each two odd numbers and insert asterisks ('*') between each two even
# numbers in str. For example: if str is 4546793 the output should be 454*67-9-3.
# Don't count zero as an odd or even number.
#
# Sample Test Cases
#
# Input:99946
# Output:9-9-94*6
#
# Input:56647304
# Output:56*6*47-304
