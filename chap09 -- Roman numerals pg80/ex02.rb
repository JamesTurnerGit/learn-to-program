def OSRN num
	print num.to_s + " "
	key = {M: 1000,D: 500,C: 100, L: 50,  X: 10, V: 5,I: 1}
	output = ""
	while num > 0 do
		key.each do |x,y|
			if num >= y
				num -= y
				output += x.to_s
				break
			end
		end
	end
	output
end

puts OSRN 2530
puts OSRN 999
puts OSRN 1234
