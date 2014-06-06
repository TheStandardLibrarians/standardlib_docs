# digest

size C / Josh

$ irb
2.1.2 :001 > require 'digest'
 => true

A cryptographic hash function is a procedure that takes data and returns a fixed bit string: the hash value, also known as digest. Hash functions are also called one-way functions, it is easy to compute a digest from a message, but it is infeasible to generate a message from a digest.

http://ruby.about.com/od/advancedruby/ss/Cryptographic-Hashes-In-Ruby.htm

As discussed in the password security primer, storing user passwords as cleartext in the database is a very bad idea. The primary way to prevent this is to use cryptographic hashes. Ruby has a number of ways to generate cryptographic hashes.
Note that these are cryptographic hashes, not key/value hashes. Cryptographic hashing algorithms calculate unique numbers to determine the integrity or identity of a string, file or any other bit stream. They have little to nothing to do with Ruby\'s Hashclass.
The Digest Module
The Digest module is part of the Ruby standard library. It doesn't provide a very wide variety if hashing algorithms (more or less, just SHA1 and SHA2) but it should be available on all Ruby installations. To begin using it, require 'digest'. You'll then have a number of algorithms available via the Digest::SHA1 and the various SHA2 classes: Digest::SHA2,Digest::SHA256, Digest::SHA384 and Digest::SHA512.

http://stackoverflow.com/questions/34490/how-do-i-create-a-sha1-hash-in-ruby

require 'digest/sha1'
Digest::SHA1.hexdigest 'foo'

There's also Digest::SHA1.base64digest 'foo'
FYI: Digest is part of the Ruby Standard Library (ruby-doc.org/stdlib-1.9.2/libdoc/digest/rdoc/index.html). It includes implementations for SHA1, SHA2, MD5 and others hash algorithms
---------------------------------------------------------------------------------------------------------

For a Base64 encoded hash, to validated an Oauth signature, I used

require 'base64'
require 'hmac-sha1'

Base64.encode64((HMAC::SHA1.new('key') << 'base').digest).strip
share|improve this answer

Question: where do we get hmac-sha1? looks like it's not a gem 
Answer: the 'hmac-sha1' requirement is met from the gem 'ruby-hmac


