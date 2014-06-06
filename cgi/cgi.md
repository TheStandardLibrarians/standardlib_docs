#cgi

size C / Josh

$ irb
2.1.2 :001 > require 'cgi'
 => true 

Used for forms

http://ruby-doc.org/stdlib-2.1.0/libdoc/cgi/rdoc/CGI.html

The Common Gateway Interface (CGI) is a simple protocol for passing an HTTP request from a web server to a standalone program, and returning the output to the web browser.
Basically, a CGI program is called with the parameters of the request passed in either in the environment (GET) or via $stdin (POST), and everything it prints to $stdout is returned to the client.

http://phrogz.net/programmingruby/web.html
You could use Ruby's regular expression features to parse incoming query strings, look up environment variables, check tags, substitute text into templates, escape special characters, format up the HTML, and print it all out.
#!/usr/bin/env ruby
print "HTTP/1.0 200 OK\r\n"
print "Content-type: text/html\r\n\r\n"
print "<html><body>Hello World!</body></html>\r\n"

http://www.tutorialspoint.com/ruby/ruby_web_applications.htm

Writing CGI Scripts:
The most basic Ruby CGI script looks like this:
#!/usr/bin/ruby

puts "HTTP/1.0 200 OK"
puts "Content-type: text/html\n\n"
puts "<html><body>This is a test</body></html>"
If you call this script test.cgi and uploaded it to a Unix-based Web hosting provider with the right permissions, you could use it as a CGI script.
For example, if you have the Web site http://www.example.com/ hosted with a Linux Web hosting provider and you upload test.cgi to the main directory and give it execute permissions, then visiting http://www.example.com/test.cgi should return an HTML page saying This is a test.
Here when test.cgi is requested from a Web browser, the Web server looks for test.cgi on the Web site, and then executes it using the Ruby interpreter. The Ruby script returns a basic HTTP header and then returns a basic HTML document.
Using cgi.rb:
Ruby comes with a special library 

http://stackoverflow.com/questions/14929260/ruby-error-webrick-or-cgi


2down vote
Nope, not an error. That's the way it works.
From the ruby-docs CGI documentation
If the CGI object is not created in a standard CGI call environment (that is, it can’t locate REQUEST_METHOD in its environment), then it will run in “offline” mode. In this mode, it reads its parameters from the command line or (failing that) from standard input
In the irb console, after the (offline mode: enter name=value pairs on standard input)message, the console is waiting for you to enter the values. Enter key value pairs followed by Ctrld to finish entering data.
irb(main):001:0> require 'cgi' => true irb(main):002:0> cgi = CGI.new (offline mode: enter name=value pairs on standard input) name=Prakash number=432
Ctrld
=> #<CGI:0x007fa4eb2abd30 @options={:accept_charset=>"UTF-8"}, @accept_charset="UTF-8", @multipart=false, @params={"name"=>["Prakash"], "number"=>["432"]}, @cookies={}, @output_cookies=nil, @output_hidden=nil> irb(main):003:0>
Refer to CGI Programming Documentation on PLEAC-Ruby for further code examples of working with CGI in ruby.

****************https://www.ruby-forum.com/topic/4408446

http://pleac.sourceforge.net/pleac_ruby/cgiprogramming.html

