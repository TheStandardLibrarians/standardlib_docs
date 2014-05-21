#http://raveendran.wordpress.com/2012/01/24/ruby-big-decimal-sample-usage/
require 'bigdecimal'

float_integer_plain = 400.56 - 400

float_integer_bigdecimal = BigDecimal("400.56") - BigDecimal("400")

puts "-------------------------"

print "$"
puts float_integer_plain

print "$"
puts float_integer_bigdecimal.to_f

puts "-------------------------"
