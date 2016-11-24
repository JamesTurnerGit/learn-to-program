#leap years
print "start year? "
start_year = gets.chomp.to_i
print "end year? "
start_year.upto(gets.chomp.to_i) {|year| print "#{year} " if year % 4 == 0 && (year % 100 != 0 ||year % 400 == 0)}
