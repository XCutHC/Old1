def TripleDouble(num1,num2)
trip = num1.to_s.split('').map { |e| e.to_i }.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
double = num2.to_s.split('').map { |e| e.to_i }.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
trip_nr = []
  trip.each do |key, value|
    if value > 2
      trip_nr << key
    end
  end
  if trip_nr.size == 0 || num2.size < 2
    puts 0
  else
    trip_nr.each do |e|
          if double[e] == 2
            puts 1
            break
          else
            puts 0
          end
    end
  end
end
TripleDouble(2233334,3)
# Challenge
# Using the Ruby language, have the function TripleDouble(num1,num2) take both
# parameters being passed, and return 1 if there is a straight triple of a number
# at any place in num1 and also a straight double of the same number in num2.
# For example: if num1 equals 451999277 and num2 equals 41177722899, then return
# 1 because in the first parameter you have the straight triple 999 and you have
# a straight double, 99, of the same number in the second parameter.
# If this isn't the case, return 0.
#
# Sample Test Cases
#
# Input:465555 & num2 = 5579
# Output:1
#
# Input:67844 & num2 = 66237
# Output:0
1. For the input 556668 and 556886 your output was incorrect. The correct answer is 0.
2. For the input 2233334 and 3 your output was incorrect. The correct answer is 0.
