#bottles of beer on da wall
require_relative "EnglishNumber"

num = 20

num.downto(2){|i|puts "#{englishNumber(i)} bottles of beer on the wall, #{englishNumber(i)} bottles of beer! \nTake one down and pass it around, #{englishNumber(i-1)} bottles of beer on the wall!"}
puts "one bottle of beer on the wall, one bottles of beer! \nTake it down and pass it around, no bottles of beer on the wall!"
puts "no bottles of beer on the walllll!"