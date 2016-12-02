puts "what year were you born in"
#thing= gets.chomp.to_i
birth_year = 1984
birth_month = 11
birth_day = 24

t = Time.new
if t.month == birth_month && t.day == birth_day
  print "happy Birthday beats!"
  (t.year-birth_year).times {print "SPANK!"}
else
  puts "nothing special then"
end
