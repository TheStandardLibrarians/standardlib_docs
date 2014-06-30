# logger

## size  / Wale

$ irb
2.1.2 :001 > require 'logger'
 => true 

**definition:**
Provides a simple logging utility for outputting messages where instances can be sorted from least to most severe: debug, info, warn, error, unknown, and fatal.  

**Try it out:**
The angry rabbit and horses have sent malicious code in the form of a bug army to attack the cats' server and food. Help the cats defeat the bug army by using logger to catch bugs. 

**The Code**

logger.debug "Cats sense something is off. Sharpened claws come out. "
logger.info "Cats ears perk up. What's that low buzzing sound?"
logger.warn "Cats grab bugspray. Leave the food alone!"
logger.error "The bugspray is ineffective. Fur is flying in the air!"
logger.unknown "Cats have never seen such a terrible sight!"
logger.fatal "Cats survive near death experience. Those bugs are huge!"

**Read more:**

[Using the Ruby Logger by Adam Hawkins] (http://hawkins.io/2013/08/using-the-ruby-logger/)

[The Art of Logging by Colin Eberhardt] (http://www.codeproject.com/Articles/42354/The-Art-of-Logging#what)

**Code More:**

**Why would I use this?**
Logger is a utility that records instances and is often used to track errors caused by bad code. 

**Graphic (from Jen)** 
