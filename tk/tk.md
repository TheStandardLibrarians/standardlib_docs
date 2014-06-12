# tk

## size E / Steph

$ irb
2.1.2 :001 > require 'tk'
LoadError: cannot load such file -- tk
 
**definition:**
Provides a framework for building a Graphical User Interface (GUI)

**Try it out:**
http://ruby-doc.org/stdlib-2.1.2/libdoc/tk/rdoc/index.html
require 'tk'

root = TkRoot.new { title "Hello, World!" }
TkLabel.new(root) do
   text 'Hello, World!'
   pack { padx 15 ; pady 15; side 'left' }
end
Tk.mainloop

ANother Tutorial:
http://rubylearning.com/satishtalim/ruby_tk_tutorial.html


**Why would I use this?**
Tk has the unique distinction of being the only cross-platform GUI. 
Tk runs on Windows, Mac, and Linux and provides a native look-and-feel on each operating system.


**Read More:**
http://ruby-doc.org/stdlib-2.1.2/libdoc/tk/rdoc/index.html

**Code More:**

