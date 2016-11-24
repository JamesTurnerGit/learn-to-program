#improvements
#add "and" in the correct places (when you figure out where that is)

def englishNumber remaining_number
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

#puts englishNumber 5_555_555_556