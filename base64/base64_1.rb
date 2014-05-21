#http://books.google.com/books?id=VCQGjDhhbn8C&pg=PA496&lpg=PA496&dq=ruby+abbrev+example&source=bl&ots=u8lu_6Ckq9&sig=AP2y6RTNYuEPd9XAFQdiDYeIEJM&hl=en&sa=X&ei=E997U8GYA4rqoASQhYCADw&ved=0CFUQ6AEwBQ#v=onepage&q=ruby%20abbrev%20example&f=false

require 'base64'

puts "type in your name"

puts Base64.encode64(gets.chomp)

puts "type in your pet's name"

puts Base64.encode64(gets.chomp)
puts
puts "Let's look at the code that makes this happen"

puts "Base64.encode64(gets.chomp)"


puts "Now decode some text. What do you think this says?"

text = "Tm8gdXBzIGFuZCBkb3ducywgbXkgcHJldHR5LA0KQSBtZXJtYWlkLCBub3QgYSBwdW5rOw
0KQSBkcnVua2FyZCBpcyBhIGRlYWQgbWFuLA0KQW5kIGFsbCBkZWFkIG1lbiBhcmUgZHJ1
bmsuIA0KICAgfldpbGxpYW0gQnV0bGVyIFllYXRz"

puts

puts Base64.decode64(text)

puts "Let's look at the code that makes this happen"

puts "text = \"Tm8gdXBzIGFuZCBkb3ducywgbXkgcHJldHR5LA0KQSBtZXJtYWlkLCBub3QgYSBwdW5rOw
0KQSBkcnVua2FyZCBpcyBhIGRlYWQgbWFuLA0KQW5kIGFsbCBkZWFkIG1lbiBhcmUgZHJ1
bmsuIA0KICAgfldpbGxpYW0gQnV0bGVyIFllYXRz\""

puts "puts \"Base64.decode64(text)\""

