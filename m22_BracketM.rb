def BracketMatcher(str)
l_bracket = 0
r_bracket = 0
  str.each_char do |e|
    if e == "("
      l_bracket += 1
    elsif e == ")"
      r_bracket += 1
    end
  end
  if l_bracket == r_bracket
    puts 1
  else
    puts 0
  end
end
BracketMatcher("(coder)(byte))")
# Challenge
# Using the Ruby language, have the function BracketMatcher(str) take the str
# parameter being passed and return 1 if the brackets are correctly matched and
# each one is accounted for. Otherwise return 0. For example: if str
# is "(hello (world))", then the output should be 1, but if str is
# "((hello (world))" the the output should be 0 because the brackets do not
# correctly match up. Only "(" and ")" will be used as brackets. If str contains
# no brackets return 1.
#
# Sample Test Cases
#
# Input:"(coder)(byte))"
# Output:0
#
# Input:"(c(oder)) b(yte)"
# Output:1
