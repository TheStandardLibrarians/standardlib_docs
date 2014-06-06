# net/pop

size C / Jen

$ irb
2.1.2 :001 > require 'net/pop'
 => true

**definition:**
This library provides functionality for retrieving email via POP3, the Post Office Protocolversion 3.

http://ruby.about.com/od/tasks/a/pop3.htm
Checking your email with Ruby is as simple as using the pre-installed POP3 email libraries. POP3 is used to check your mailboxes on ISP mail accounts. It's one of the ways a number of popular email clients, like Outlook Express, Eudora and Thunderbird, check and download the email you have stored on your ISP's server. Though the IMAP protocol is often used too, especially on mobile devices and in corporate environments, most mail servers support the POP3 protocol.

**Getting Started**

To begin using the Ruby POP3 library, simply require 'net/pop' and connect to a server. Be sure to provide the correct username and password for your account. This example is rather simple, it just logs into the POP3 server, checks if there are any messages and, if there are, displays the number of new messages. You could easily expand this example to include a timer and play a sound when you get new mail, making for an even more useful program.

 #!/usr/bin/env ruby
 require 'net/pop'

 pop = Net::POP3.new 'mail.isp.com'
 pop.start 'username@isp.com', 'password'

 if pop.mails.empty?
   puts "No mail."
 else
   puts "You have #{pop.mails.length} new messages."

http://apidock.com/ruby/Net/POP3

**Examples**

Retrieving Messages

This example retrieves messages from the server and deletes them on the server.

Messages are written to files named ‘inbox/1’, ‘inbox/2’, .… Replace ‘pop.example.com’ with your POP3 server address, and ‘YourAccount’ and ‘YourPassword’ with the appropriate account details.

require 'net/pop'

pop = Net::POP3.new('pop.example.com')
pop.start('YourAccount', 'YourPassword')             # (1)
if pop.mails.empty?
  puts 'No mail.'
else
  i = 0
  pop.each_mail do |m|   # or "pop.mails.each ..."   # (2)
    File.open("inbox/#{i}", 'w') do |f|
      f.write m.pop
    end
    m.delete
    i += 1
  end
  puts "#{pop.mails.size} mails popped."
end
pop.finish                                           # (3)
Call Net::POP3#start and start POP session.

Access messages by using POP3#each_mail and/or POP3#mails.

Close POP session by calling POP3#finish or use the block form of #start.

http://stackoverflow.com/questions/2666798/fetching-email-using-ruby-on-rails

require 'net/pop' Net::POP3.enable_ssl(OpenSSL::SSL::VERIFY_NONE) Net::POP3.start('pop.gmail.com', 995, username, password) do |pop| if pop.mails.empty? puts 'No mails.' else pop.each_mail do |mail| p mail.header p mail.pop end end end
share|edit
