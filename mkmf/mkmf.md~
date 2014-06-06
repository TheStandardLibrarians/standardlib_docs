# mkmf

size B / Jen

$ irb
2.1.2 :001 > require 'mkmf'
 => true 

http://en.wikibooks.org/wiki/Ruby_Programming/Standard_Library/mkmf
 
The general usage of mkmf.rb file is typically to be something like what autoconf/automake/configure are for Linux programs--it determines appropriate compile/link options, then compiles files against them.

The general usage is to then edit some global variables ("magic" variables), which will be used for the compile line.
# push a define:
$defs.push("-D#{name}")
# or $preload
# or $CFLAGS
# or $LDFLAGS
# etc.

and you'll possibly have to edit CONFIG['xxx'] to add more directives into the build process.
And then at the end of your extconf.rb file
create_makefile "name_of_final_lib" # the name of the .so file to create

This will create a file Makefile, which will compile all .{c,cpp} files in the current directory to .o files, then link them all together into name_of_final_lib.so
Note that within said name_of_final_lib.so file, it will have to have a method Init_filename, which will be run at load time when the .so file is first loaded.
There are more instructions here near the bottom for how to use it.
http://svn.ruby-lang.org/repos/ruby/trunk/README.EXT

