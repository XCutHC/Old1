def ArithGeo(*arr)
words1 = Array.new
words1[0] = arr[0]
words2 = Array.new
words2[0] = arr[0]
# stała dla ciagu arytmetycznego
r_const_Ar = arr[arr.length - 1] - arr[arr.length - 2]
 puts "Array; " + arr.to_s
 puts "Array length; " + arr.length.to_s
# petla TUTAJ MYSLE ZE ZAMIESZANE
 for i in 0..(arr.length - 1)
   words1[i + 1] = words1[i]  + r_const_Ar
 end
 words1.delete_at(words1.length - 1)
# sprawdzamy ciag czy jest arytmetyczny
   if words1 == arr
     answer = "Arithmetic"
   end
# stała dla ciagu geometrycznego
  r_const_Ge = arr[arr.length - 1] / arr[arr.length - 2]
# petla TUTAJ MYSLE ZE ZAMIESZANE
  for i in 0..(arr.length - 1)
    words2[i + 1] = words2[i] * r_const_Ge
  end
  words2.delete_at(words2.length - 1)
# sprawdzamy ciag czy jest geometryczny
  if words2 == arr
   answer = "Geometric"
  end
  # warunek i puts odpowiedz
    if answer == "Arithmetic"
      puts "Arithmetic"
    elsif answer == "Geometric"
      puts "Geometric"
    else
      puts -1
    end
end


ArithGeo(2, 4, 6, 8)



# Challenge
# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr
# and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return
# "Geometric" if it follows a geometric pattern.
# If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the
# difference between each of the numbers is consistent, where as in a geometric sequence, each term after the
# first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example:
# [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered,
# and no array will contain all the same elements.

# Sample Test Cases

# Input:5,10,15
# Output:"Arithmetic"

# Input:2,4,16,24
# Output:-1
