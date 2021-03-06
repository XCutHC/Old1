def MeanMode(*arr)
  # wtrzykujemy w nowy hash i zliczamy powtarzajace sie liczby
freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  # okreslamy mode, najwiecej razy powtarzajaca sie liczba
mode = arr.max_by { |v| freq[v] }
  # warunek dla challegne i odp
if mode < 2
  puts 0
elsif arr.sum % mode == 0
  puts 1
elsif arr.sum % mode != 0
  puts 0
end
end

MeanMode(4, 4, 4, 6, 2, 5)

# Challenge
# Using the Ruby language, have the function MeanMode(arr) take the array of numbers
# stored in arr and return 1 if the mode equals the mean, 0 if they don't equal each other (ie.
# [5, 3, 3, 3, 1] should return 1 because the mode (3) equals the mean (3)).
# The array will not be empty, will only contain positive integers,
# and will not contain more than one mode.
#
# Sample Test Cases
#
# Input:1, 2, 3
# Output:0
#
# Input:4, 4, 4, 6, 2
# Output:1
