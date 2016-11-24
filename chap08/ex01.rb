puts "array please"
my_array = []
while true do
	input = gets.chomp
	break if input == ""
	my_array << input
end
puts my_array.sort