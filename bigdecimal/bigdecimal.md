# bigdemimal

size C / Josh

$ irb
2.1.2 :001 > require 'bigdecimal'
 => true 

**definition:**
Provides arbitrary-precision floating point decimal arithmetic
Super accurate large decimal arithmetic.

Like the name implies bigdecimal is for BIG DECIMALS. The length of your number is only limited by the available memory of your computer. 

to_d is to decimal

  http://makandracards.com/makandra/1178-bigdecimal-arithmetic-in-ruby
  http://raveendran.wordpress.com/2012/01/24/ruby-big-decimal-sample-usage/
require 'bigdecimal'

float_integer_plain = 400.56 - 400

float_integer_bigdecimal = BigDecimal("400.56") - BigDecimal("400")

#-----------------------------------
print "$"
puts float_integer_plain

print "$"
puts float_integer_bigdecimal.to_f

When it is run:
$0.5600000000000023
$0.56


Try it out:


Why would I use this?

Read More:

Code More:
