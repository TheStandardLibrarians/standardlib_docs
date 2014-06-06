require 'cgi'
cgi = CGI.new("html3") # add HTML generation methods
cgi.out do
  cgi.html do
    cgi.head { "\n"+cgi.title { "This Is a Test"} } +
    cgi.body do "\n"+
      cgi.form do"\n"+
      cgi.hr +
      cgi.h1 { "A Form: " } + "\n"+
      cgi.textarea("get_text") +"\n"+
      cgi.br +
      cgi.submit
      end
    end
  end
end
