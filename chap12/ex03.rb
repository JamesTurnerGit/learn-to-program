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

def roman_to_integer string

  raise "invalid chars detected" unless string.gsub(/(M|D|C|L|X|V|I)/,"").length == 0

  def number_to_be_subbed num
    number_to_be_subbed = num.to_s
    number_to_be_subbed = number_to_be_subbed[0..-2] if number_to_be_subbed[0] == "1"
    number_to_be_subbed[0] = "1"
    number_to_be_subbed = number_to_be_subbed.to_i
  end

  def roman_num char
    return 0 if char == nil
    roman_hash = {M: 1000,D: 500,C: 100, L: 50,  X: 10, V: 5,I: 1}
    roman_hash[char.to_sym]
  end

  output = 0
  while string.length > 0
    if roman_num(string[0]) < roman_num(string[1]) # check if minus is valid then do it
      raise "invalid char order "unless roman_num(string[0]) == number_to_be_subbed(roman_num(string[1]))
      output += roman_num(string[1]) - roman_num(string[0])
      string = string[2..-1]
    else
      output += roman_num(string[0])
      string = string[1..-1]
    end
  end
  output
end

#puts roman_to_integer "IM"
puts roman_to_integer(roman_numeral(1999))
puts
