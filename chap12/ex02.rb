puts "what year were you born in"
#thing= gets.chomp.to_i

birth_year = 1984
birth_month = 12
birth_day = 2

t = Time.new
if t.month == birth_month && t.day == birth_day
  puts "happy Birthday beats! #{"SPANK!" * (t.year-birth_year)}"
else
  puts "nothing special then"
end
