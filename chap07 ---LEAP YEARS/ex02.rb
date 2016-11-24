#deaf granny
bye_count = 0

puts "HI BOY/GIRL"

while true do
	input = gets.chomp
	if input == input.upcase
		if input == "BYE"
			bye_count += 1
			break if bye_count == 3
		else; bye_count = 0
		end
		puts "NO, NOT SINCE #{rand(1930..1970)}"
	else
		puts "HUH?!  SPEAK UP, SONNY!"
		bye_count = 0
	end
end
print "BYE BOY/GIRL"