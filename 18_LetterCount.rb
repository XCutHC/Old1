def LetterCountI(str)
  # pusta tablica
answer = []
# usuwamy niechciane znaki
dele = str.delete("!?,.;:")
#dzielimy tablice
words2 = dele.split
# Ruby petla Kazde slowo dzilimy na chars i zliczamy powtarzajace sie litery
(0..(words2.size - 1)).map do |i|
  answer[i] = words2[i].chars.select{ |e| words2[i].count(e) > 1 }.uniq.length.to_i
end
# odp bierzemy index najwiekszej liczby z petli (powtarzajacych sie liter)
if answer.sum == 0
  p -1
else
p words2[answer.index(answer.max)]
end
end
LetterCountI("No words")





# Challenge
# Using the Ruby language, have the function LetterCountI(str) take the str parameter being passed and
# return the first word with the greatest number of repeated letters. For example:
# "Today, is the greatest day ever!"
# should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's.
# If there are no words with repeating letters return -1. Words will be separated by spaces.

# Sample Test Cases

# Input:"Hello apple pie"
# Output:"Hello"

# Input:"No words"
# Output:-1
