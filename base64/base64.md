# base 64

size A / Jen

$ irb
2.1.2 :001 > require 'base64'
 => true  

**definition:**
Encodes and decodes your files. You can think of it as a spy decoder ring. It's a really great way to 
put photos in your html and to jumble up any text you need jumbled up.

**Try it out:**
The cats have left a decoder ring for Mr. Chips. He is not sure how to solve it until he find the base64 clue on Pippin's tongue. Pippin ate the paper the ring was wrapped in.



**The Code**


**Read More:**


**Code More:**


**Why would I use this?**

form of encoding if you want to send a program to someone through email
or an image/jpg
in a website there can be base64 image files
hackers 
Spammers use Base64 to evade basic anti-spamming tools, which often do not decode Base64 and therefore cannot detect keywords in encoded messages.
movies - Jurasic Park
http://en.wikipedia.org/wiki/Base64
Base 64 Decoder
http://www.base64-image.de/  Instant Image encoder
How to save a base64 string as an image using ruby 
The best approach is to specify the correct flag on the open call:
File.open('shipping_label.gif', 'wb') do|f|
  f.write(Base64.decode64(base_64_encoded_data))
end 

http://stackoverflow.com/questions/201479/what-is-base-64-encoding-used-for/201510#201510 

"When you have some binary data that you want to ship across a network, you generally don't do it by just streaming the bits and bytes over the wire in a raw format. Why? because some media are made for streaming text. You never know -- some protocols may interpret your binary data as control characters (like a modem), or your binary data could be screwed up because the underlying protocol might think that you've entered a special character combination (like how FTP translates line endings). 

So to get around this, people encode the binary data into characters. Base64 is one of these types of encodings. Why 64? Because you can generally rely on the same 64 characters being present in many character sets, and you can be reasonably confident that your data's going to end up on the other side of the wire uncorrupted."

