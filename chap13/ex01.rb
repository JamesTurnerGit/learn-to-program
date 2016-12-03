class String
  def roman_to_integer
    string = self
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
end

class Integer
  def romanNumeral
    num = self
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

  def englishNumber
    remaining_number = self
    if remaining_number == 0
      return 'zero'
    end
    number_string = remaining_number < 0 ? "negative " : ""
    remaining_number = remaining_number.abs

    #build arrays
    onesPlace = ['one',   'two',    'three',    'four',     'five',    'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',   'twenty', 'thirty',   'forty',    'fifty',   'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven','twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
    million_billion =  [[100,"hundred"]]
    big_array = ["thousand","million","billion","trillion","quadrillion","quintillion","sextillion","septillion","octillion","nonillion","decillion","undecillion","duodecillion","tredecillion","quattuordecillion","quindecillion","sexdecillion","septendecillion","octodecillion","novemdecillion","vigintillion","unvigintillion","duovigintillion","trevigintillion","quattuorvigintillion","quinvigintillion","sexvigintillion","septenvigintillion","octovigintillion","novemvigintillion","trigintillion","untrigintillion","duotrigintillion","tretrigintillion","quattuortrigintillion","quintrigintillion","sextrigintillion","septentrigintillion","octotrigintillion","novemtrigintillion","quadragintillion","unquadragintillion","duoquadragintillion","trequadragintillion","quattuorquadragintillion","quinquadragintillion","sexquadragintillion","septenquadragintillion","octoquadragintillion","novemquadragintillion","quinquagintillion","unquinquagintillion","duoquinquagintillion","trequinquagintillion","quattuorquinquagintillion","quinquinquagintillion","sexquinquagintillion","septenquinquagintillion","octoquinquagintillion","novemquinquagintillion","sexagintillion","unsexagintillion","duosexagintillion","tresexagintillion","quattuorsexagintillion","quinsexagintillion","sexsexagintillion","septensexagintillion","octosexagintillion","novemsexagintillion","septuagintillion","unseptuagintillion","duoseptuagintillion","treseptuagintillion","quattuorseptuagintillion","quinseptuagintillion","sexseptuagintillion","septenseptuagintillion","octoseptuagintillion","novemseptuagintillion","octogintillion","unoctogintillion","duooctogintillion","treoctogintillion","quattuoroctogintillion","quinoctogintillion","sexoctogintillion","septenoctogintillion","octooctogintillion","novemoctogintillion","nonagintillion","unnonagintillion","duononagintillion","trenonagintillion","quattuornonagintillion","quinnonagintillion","sexnonagintillion","septennonagintillion","octononagintillion","novemnonagintillion","centillion"]
    big_array.each_with_index do |array_words,index|
      million_billion << [1000 ** (index + 1),array_words]
    end

    #bignums
    million_billion.reverse_each do |array_number,array_words|
      currently_writing = remaining_number/array_number
      remaining_number  -= currently_writing * array_number
      if currently_writing > 0
        number_string += englishNumber(currently_writing) + ' ' + array_words
        if remaining_number > 0
          number_string += ' '
        end
      end
    end
    #tens
    currently_writing = remaining_number/10
    remaining_number  -= currently_writing*10
    if currently_writing > 0
      if ((currently_writing == 1) and (remaining_number > 0))
        number_string += teenagers [remaining_number-1]
        remaining_number = 0
      else
        number_string += tensPlace[currently_writing-1]
      end
      if remaining_number > 0
        number_string += '-'
      end
    end
    #ones
    number_string += onesPlace [remaining_number-1]  if remaining_number > 0
    number_string
  end
end

puts 5.romanNumeral
puts 5.englishNumber
puts "V".roman_to_integer
puts "x".roman_to_integer
