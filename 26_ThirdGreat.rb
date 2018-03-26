def ThirdGreatest(*strArr)
p sort_arr = strArr.sort_by { |word| word.length }
  if strArr.size > 3
    puts sort_arr[-3]
  elsif sort_arr[-1].length == sort_arr[-2].length
    puts sort_arr[1]
  else
    nr = strArr.max_by(3) {|x| x.length }
    puts nr[-1]
  end
end
ThirdGreatest("bat","cat","mat")

# Challenge
# Using the Ruby language, have the function ThirdGreatest(strArr) take the array
# of strings stored in strArr and return the third largest word within in.
# So for example: if strArr is ["hello", "world", "before", "all"] your output
# should be world because "before" is 6 letters long, and "hello" and "world" are both 5,
# but the output should be world because it appeared as the last 5 letter word in the array.
# If strArr was ["hello", "world", "after", "all"] the output should be after because the
# first three words are all 5 letters long, so return the last one.
# The array will have at least three strings and each string will only contain letters.
#
# Sample Test Cases
#
# Input:"coder","byte","code"
# Output:"code"
#
# Input:"abc","defg","z","hijk"
# Output:"abc"
# 1. For the input ("a","bc","def") your output was incorrect. The correct answer is a.
# 2. For the input ("two","three","four") your output was incorrect. The correct answer is two.
# 3. For the input ("a","bcd","efgdggc") your output was incorrect. The correct answer is a.
# 4. For the input ("aaaa","bbbbbb","cc") your output was incorrect. The correct answer is cc.
# 5. For the input ("jk","lmn","opqrst") your output was incorrect. The correct answer is jk.
# 6. For the input ("bat","cat","mat") your output was incorrect. The correct answer is mat.
# 7. For the input ("battt","catt","mat") your output was incorrect. The correct answer is mat.
# 8. For the input ("as","assssvvvvt","affggg") your output was incorrect. The correct answer is as.
