require 'date'

today = Date.today
tomorrow = today + 1
last_week = today - 7
every_day_last_week = (last_week..today).to_a

Date.new(2014,05,22).wday  
puts "Todays date is "+ today.to_s
puts "Tomorrows date is " + tomorrow.to_s
puts "Tomorrows date is " +  today.next.to_s
print "Last week "
puts last_week
puts "Every day last week "
puts every_day_last_week
print "Is today Friday yet? "
puts today.friday?

