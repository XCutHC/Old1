def RectangleArea(*strArr)
arr1 = []
arr2 = []
arr = strArr.map { |e| e.delete("()") }.map { |e| e.split(' ') }
arr.each do |e|
  if e[0].size > 1
    arr1 << 0 - e[0][1].to_i
  else
    arr1 << e[0].to_i
  end
    if e[1].size > 1
      arr2 << 0 - e[1][1].to_i
    else
      arr2 << e[1].to_i
    end
end
arr_s1 = arr1.sort
arr_s2 = arr2.sort
puts (arr_s1.max - arr_s1[0]) * (arr_s2.max - arr_s2[0])
end
RectangleArea("(-2 -2)","(0 0)","(-2 0)","(0 -2)")

# def RectangleArea(*strArr)
#   grid = strArr.map{|coords| coords.scan(/d+/).map(&:to_i)}.sort
#   area = ((grid[2][0] - grid[0][0]) * (grid[1][1] - grid[0][1])).abs
# end
# Challenge
# Using the Ruby language, have the function RectangleArea(strArr) take the array
# of strings stored in strArr, which will only contain 4 elements and be in the
# form (x y) where x and y are both integers, and return the area of the rectangle
# formed by the 4 points on a Cartesian grid. The 4 elements will be in arbitrary order.
# For example: if strArr is ["(0 0)", "(3 0)", "(0 2)", "(3 2)"] then your program should
# return 6 because the width of the rectangle is 3 and the height is 2 and the area of a
# rectangle is equal to the width * height.
#
# Sample Test Cases
#
# Input:"(1 1)","(1 3)","(3 1)","(3 3)"
# Output:4
#
# Input:"(0 0)","(1 0)","(1 1)","(0 1)"
# Output:1
