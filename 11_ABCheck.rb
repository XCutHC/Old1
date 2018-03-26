def ABCheck(str)
words = str.split('')
letters_a = words.each_index.select{|i| words[i] == 'a'}
letters_b = words.each_index.select{|i| words[i] == 'b'}
letters_a_length = letters_a.length
letters_b_length = letters_b.length  
lett_b = 0
check_the_distance = 0
answer = 0
puts "miejsca litery a; " + letters_a.to_s
puts "miejsca litery b; " + letters_b.to_s
puts "ilosc a; " + letters_a_length.to_s
puts "ilosc b; " + letters_b_length.to_s
for i in 0..(letters_b_length.to_i - 1)
	lett_b = letters_b[i]
	for i in 0..(letters_a_length.to_i - 1)
		check_the_distance = (letters_a[i].to_i - lett_b).abs
		puts "Odleglosc miedzy a - b; " + check_the_distance.to_s
		if check_the_distance == 4
			answer = 1
		else
			answer = 0
		end
	end
end
	if answer == 1
		puts true
	else
		puts false
	end
end


ABCheck("lane borrowed")






# Challenge
# Using the Ruby language, have the function ABCheck(str) take the str parameter being passed 
# and return the string true if the characters a and b are separated by exactly 3 
# places anywhere in the string at least once (ie. "lane borrowed" would result in true 
# because there is exactly three characters between a and b). Otherwise return the string false. 

# Sample Test Cases

# Input:"after badly"
# Output:"false"


# Input:"Laura sobs"
# Output:"true"