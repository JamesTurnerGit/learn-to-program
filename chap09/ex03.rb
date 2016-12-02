def roman_numeral num
	key = {M: 1000,D: 500,C: 100, L: 50,  X: 10, V: 5,I: 1}
	reverse_key = {}
	output = ""
	while num > 0 do
		biggest_char = ""
		key.each do |roman_character,roman_digits|#find biggest number
				if num - roman_digits >= 0
					biggest_char = roman_character
					num -= key[biggest_char.to_sym]
					break
				end
				#### its the next number that begins with a 1 that can be subbed, should be able to calculate that value then look it up
				number_to_be_subbed = roman_digits.to_s
				number_to_be_subbed = number_to_be_subbed[0..-2] if number_to_be_subbed[0] == "1"
			  number_to_be_subbed[0] = "1"
				number_to_be_subbed = number_to_be_subbed.to_i
				if num - (roman_digits - number_to_be_subbed) >= 0
					biggest_char = "#{key.key(number_to_be_subbed)}#{roman_character}"
					num -= roman_digits - number_to_be_subbed
					break
				end
		end
		output += biggest_char.to_s
	end
  output
end

puts roman_numeral(1999)
puts
