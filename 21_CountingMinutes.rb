def CountingMinutesI(str)
require 'time'
time = str.split('')
idx = time.index("-")
tim_x = time[0..(idx - 1)].join
tim_y = time[(idx + 1)..(-1)].join
time_1 = Time.parse("#{tim_x}")#.strftime("%l:%M%P")
time_2 = Time.parse("#{tim_y}")# + 86400 #.strftime("%l:%M%P")
  if time_1 > time_2
    time_1 = Time.parse("#{tim_x}")
    time_2 = Time.parse("#{tim_y}") + 86400
    p ((time_1 - time_2) / 60).abs.to_i
  else
    time_1 = Time.parse("#{tim_x}")
    time_2 = Time.parse("#{tim_y}")
    p ((time_1 - time_2) / 60).abs.to_i
  end
end
CountingMinutesI("9:00am-10:00am")


# Challenge
# Using the Ruby language, have the function CountingMinutesI(str) take the str
# parameter being passed which will be two times (each properly formatted with a
# colon and am or pm) separated by a hyphen and return the total number of minutes
# between the two times. The time will be in a 12 hour clock format. For example:
# if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am
# the output should be 1320.
#
# Sample Test Cases
#
# Input:"12:30pm-12:00am"
# Output:690
#
# Input:"1:23am-1:08am"
# Output:1425
