def roman_numeral num
	print num.to_s + " "
	key = {M: 1000,D: 500,C: 100, L: 50,  X: 10, V: 5,I: 1}
	output = ""
	while num > 0 do
		key.each_with_index do |(character,digits) i|
			
			#find biggest number
			#use intervals of next smallest number to alter it
			#use recursion to call for next instance
		end

	end
	output
end

puts roman_numeral 1
puts roman_numeral 4
puts roman_numeral 5
