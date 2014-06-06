# net/imap

size C / Jen

$ irb
2.1.2 :001 > require 'net/imap'
 => true 

**definition:**
Ruby client api for Internet Message Access Protocol

**Try it out:**


**Why would I use this?**


**Read More:**


**Code More:**


**Why would I use this?**


An IMAP client connects to a server, and then authenticates itself using eitherauthenticate() or login(). Having authenticated itself, there is a range of commands available to it. Most work with mailboxes, which may be arranged in an hierarchical namespace, and each of which contains zero or more messages. How this is implemented on the server is implementation-dependent; on a UNIX server, it will frequently be implemented as a files in mailbox format within a hierarchy of directories.
To work on the messages within a mailbox, the client must first select that mailbox, using either select() or (for read-only access) examine(). Once the client has successfully selected a mailbox, they enter selected state, and that mailbox becomes thecurrent mailbox, on which mail-item related commands implicitly operate.
Messages have two sorts of identifiers: message sequence numbers, and UIDs.
