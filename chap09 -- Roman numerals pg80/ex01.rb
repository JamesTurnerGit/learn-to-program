def Ask question
	while true
		puts question
		reply = gets.chomp.downcase
		if(reply == 'yes' || reply == 'no')
			return reply == 'yes' ? true : false
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

Ask "do you like eating tacos?"
sucks_dicks = Ask "do you suck dicks?"