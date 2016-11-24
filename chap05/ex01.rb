puts "name please"
print "first ? "
first = gets.chomp.capitalize 
print "middles? "
middle = gets.chomp.split.collect{|x| x.capitalize}.join(" ")
print "last? "
last = gets.chomp.capitalize 


print "hello #{first} #{middle} #{last}!"