def roman_to_integer string
	string.upcase!
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
      raise "invalid char order " unless roman_num(string[0]) == number_to_be_subbed(roman_num(string[1]))
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
puts roman_to_integer("IV")
puts
