require 'date'

print "The day of the week is (Monday is day 1) "
puts Date.new(2014,05,22).wday

print "The day of the month is "
puts Date.new(2014,05,23).mday

print "The day of the year is "
puts Date.new(2014,05,22).yday

#shopping_days_til_xmas = (Date.new(2014,05,22).yday) - (2014,12,25)

#Print "Therefore there are #{shopping_days_til_xmas}"

print "This year is "
puts Date.new(2014,05,22).year

print "Next year is "
puts Date.new(2014,05,22).next_year

print "Is this a leap year? "
puts Date.new(2014).leap?


