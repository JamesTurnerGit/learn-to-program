=begin
• Leap years. Write a program that asks for a starting year and an ending
year and then puts all the leap years between them (and including them,
if they are also leap years). Leap years are years divisible by 4 (like 1984
and 2004). However, years divisible by 100 are not leap years (such as
1800 and 1900) unless they are also divisible by 400 (such as 1600 and
2000, which were in fact leap years). What a mess!
=end
def isLeapYear?(year)
  return false unless year % 4 == 0
  return false unless year % 400 == 0 if year % 100 == 0
  true
end

def leapYears(year_start, year_end)
  (year_start..year_end).each do |year|
    print " #{year}" if isLeapYear?(year)
  end
end
