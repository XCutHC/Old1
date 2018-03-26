def palindrome?(sentence)
	# new code
	sentence.delete(" ").downcase == sentence.delete(" ").downcase.reverse
			
			# # Moj kod
			# string1 = sentence.delete(" ").downcase
			# string2 = sentence.reverse.delete(" ").downcase
			# if string1 == string2
				
			# 	puts true
			# else
			# 	puts false
			# end
	
	# Solution ze strony
	# downcase_stripped_sentence = sentence.downcase.gsub(" ", "")
 	# downcase_stripped_sentence  ==  downcase_stripped_sentence.reverse
end

p palindrome?("Never odd or even")

