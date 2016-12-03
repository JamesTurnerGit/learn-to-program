file_name = "birthdays.txt"
birthdays_unparsed = File.read(file_name)
birthdays = Hash.new
birthdays_unparsed.each_line do |line|
  months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Mar","Sep","Oct","Nov","Dec"]
  name = line.split(",")[0]
  birthdays_unparsed = line.split(",")[1..2].join.chomp
  birth_year = birthdays_unparsed.split[2].to_i
  birth_month = months.index(birthdays_unparsed.split[0])
  birth_day = birthdays_unparsed.split[1].to_i
  birthdays[name] = [birth_day,birth_month,birth_year]
end

puts "name please?"
#input = gets.chomp
input = "Christopher Lloyd"
current_year = Time.now.year
unless birthdays.include? input
  puts ("not in birthdays.txt!")
else
  puts "#{input}'s next birthday will be on the #{birthdays[input][0]}-#{birthdays[input][1]}-#{current_year}"
  puts "they will be #{current_year-birthdays[input][2]}!"
end
