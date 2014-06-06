#date

size C / Jen

$ irb
2.1.2 :001 > require 'date'
 => true 

http://ruby-doc.org/stdlib-2.1.2/libdoc/date/rdoc/index.html

A subclass of Object includes Comparable module for handling dates

http://www.tutorialspoint.com/ruby/ruby_date_time.htm

example:
http://robdodson.me/blog/2012/04/28/playing-with-ruby-dates/

require 'date'

today = Date.today
tomorrow = today + 1
last_week = today - 7
every_day_last_week = (last_week..today).to_a

puts "Todays date is "+ today.to_s
puts "Tomorrows date is " + tomorrow.to_s
puts today.next
puts last_week
puts every_day_last_week
today.friday?

today.friday? doesn’t seem to work
undefined method `friday?' for #<Date: 4913599/2,0,2299161> (NoMethodError)



