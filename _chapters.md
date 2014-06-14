These are all from:
http://www.ruby-doc.org/core-2.1.1/doc/standard_library_rdoc.html

MATH

CMath
Provides Trigonometric and Transcendental functions for complex numbers

Matrix
Represents a mathematical matrix.

mathn.rb
Deprecated library that extends math operations

Prime
Prime numbers and factorization library

TSort
Topological sorting using Tarjan’s algorithm
http://stackoverflow.com/questions/11010881/how-do-i-learn-tarjans-algorithm

SecureRandom
Interface for secure random number generator
(this may go under the encoding chapter instead)

BigDecimal
Provides arbitrary-precision floating point decimal arithmetic

ENCODING COMPRESSION

Zlib
Ruby interface for the zlib compression/decompression library
lossless data-compression library for use on virtually any computer hardware and operating system

Base64
Support for encoding and decoding binary data using a Base64 representation

OpenSSL
Provides SSL, TSL and general purpose cryptography for Ruby

HTTP Protocol

CGI
Support for the Common Gateway Interface protocol

GServer
HTTP server with logging, thread pooling and multi-server management

WEBrick
An HTTP server toolkit for Ruby

OpenURI
An easy-to-use wrapper for Net::HTTP, Net::HTTPS and Net::FTP

Net::FTP
Support for the File Transfer Protocol

Net::HTTP
HTTP client api for Ruby

Net::IMAP
Ruby client api for Internet Message Access Protocol

Net::POP3
Ruby client library for POP3

Net::SMTP
Simple Mail Transfer Protocol client library for Ruby

Net::Telnet
Telnet client library for Ruby

RSS
Family of libraries that support various formats of XML “feeds”

XMLRPC
Remote Procedure Call over HTTP support for Ruby

TIME / DATE

Date
A subclass of Object includes Comparable module for handling dates

DateTime
Subclass of Date to handling dates, hours, minutes, seconds, offsets

Time
Extends the Time class with methods for parsing and conversion

Timeout
Auto-terminate potentially long-running operations in Ruby

DATABASE

DBM
Provides a wrapper for the UNIX-style Database Manager Library

OpenStruct
Class to build custom data structures, similar to a Hash

GDBM
Ruby extension for the GNU dbm (gdbm) library

PStore
Implements a file based persistence mechanism based on a Hash

EXCEPTIONS / DEBUGGING / TESTING

E2MM
Module for defining custom exceptions with specific messages

DEBUGGER__
Debugging functionality for Ruby

Benchmark
Provides methods to measure and report the time used to execute code

MiniTest
A test suite with TDD, BDD, mocking and benchmarking

Test::Unit
A compatibility layer for MiniTest

Logger
Provides a simple logging utility for outputing messages
The Logger class provides a simple but sophisticated logging utility that you can use to output messages. The messages have associated levels, such as INFO or ERROR that indicate their importance. You can then give the Logger a level, and only messages at that level or higher will be printed.


READ & WRITE - STRING / IO Objects

Abbrev
Calculates a set of unique abbreviations for a given set of strings

CSV
Provides an interface to read and write CSV files and data

English.rb
Require ‘English.rb’ to reference global variables with less cryptic names

FileUtils
Several file utility methods for copying, moving, removing, etc

StringScanner
Provides lexical scanning operations on a String

SBDM
Provides a simple file-based key-value store with String keys and values

Readline
Provides an interface for GNU Readline and Edit Line (libedit)

PP
Provides a PrettyPrinter for Ruby objects

PrettyPrinter
Implements a pretty printing algorithm for readable structure

IO
Extensions for Ruby IO class, including wait and ::console

Socket
Access underlying OS socket implementations

StringIO
Pseudo I/O on String objects

Shellwords
Manipulates strings with word parsing rules of UNIX Bourne shell

Set
Provides a class to deal with collections of unordered, unique values

Find
This module supports top-down traversal of a set of file paths

Tempfile
A utility class for managing temporary files

Pathname
Representation of the name of a file or directory on the filesystem

Fcntl
Loads constants defined in the OS fcntl.h C header file

JSON
Implements Javascript Object Notation for Ruby

REXML
An XML toolkit for Ruby

Psych
A YAML parser and emitter for Ruby

YAML
Ruby client library for the Psych YAML implementation

Open3
Provides access to stdin, stdout and stderr when running other programs

GUI

Tk
Provides a framework for building a Graphical User Interface (GUI)
The standard graphical user interface (GUI) for Ruby is Tk. Tk started out as the GUI for the Tcl scripting language developed by John Ousterhout.
Tk has the unique distinction of being the only cross-platform GUI. Tk runs on Windows, Mac, and Linux and provides a native look-and-feel on each operating system.


COMMAND LINE TOOLS

IRB
Interactive Ruby command-line tool for REPL (Read Eval Print Loop)

RDoc
Produces HTML and command-line documentation for Ruby

OptionParser
Ruby-oriented class for command-line option analysis

GetoptLong
Parse command line options similar to the GNU C getopt_long()

PTY
Creates and manages pseudo terminal

WIN32OLE
A helper class for windows OLE, (Object Linking and Embedding) which is used to control other programs like excel, etc.

METHODS

Delegator
Provides three abilities to delegate method calls to an object
DRb
Distributed object system for Ruby
dRuby allows methods to be called in one Ruby process upon a Ruby object located in another Ruby process, even on another machine. References to objects can be passed between processes. Method arguments and return values are dumped and loaded in marshalled format. All of this is done transparently to both the caller of the remote method and the object that it is called upon.

Forwardable
Provides delegation of specified methods to a designated object

objspace
Extends ObjectSpace module to add methods for internal statistics

THREADS
http://rubylearning.com/satishtalim/ruby_threads.html
A thread of execution is a sequence of Ruby statements that run (or appear to run) in parallel with the main sequence of statements that the interpreter is running. Threads are implemented within the Ruby interpreter. That makes the Ruby threads completely portable - they don't rely on the operating system. 

Queue
Synchronized communication between threads, provided by thread.rb

Resolv
Thread-aware DNS resolver library in Ruby

Thread
Provides support classes for threaded programs

ThreadsWait
Watches for termination of multiple threads

Monitor
Provides an object or module to use safely by more than one thread

PATTERNS

Observable
Provides a mechanism for publish/subscribe pattern in Ruby

Singleton
Implementation of the Singleton pattern for Ruby

COMPRESSION

Zlib
Ruby interface for the zlib compression/decompression library
lossless data-compression library for use on virtually any computer hardware and operating system


Libraries¶ ↑

ERB
An easy to use but powerful templating system for Ruby

IPAddr
Provides methods to manipulate IPv4 and IPv6 IP addresses

MakeMakefile
Module used to generate a Makefile for C extensions

Mutex_m
Mixin to extend objects to be handled like a Mutex

profile.rb
Runs the Ruby Profiler__

Profiler__
Provides a way to profile your Ruby application


Racc
A LALR(1) parser generator written in Ruby.

Rake
Ruby build program with capabilities similar to make

rational.rb
Deprecated library replaced by C implementation in core

RbConfig
Information of your configure and build of Ruby

resolv-replace.rb
Replace Socket DNS with Resolv

Rinda
The Linda distributed computing paradigm in Ruby

Gem
Package management framework for Ruby

Scanf
A Ruby implementation of the C function scanf(3)

Shell
An idiomatic Ruby interface for common UNIX shell commands

Synchronizer
A module that provides a two-phase lock with a counter

tmpdir.rb
Extends the Dir class to manage the OS temporary file path

Tracer
Outputs a source level execution trace of a Ruby program

un.rb
Utilities to replace common UNIX commands

URI
A Ruby module providing support for Uniform Resource Identifiers

WeakRef
Allows a referenced object to be garbage-collected

Coverage
Provides coverage measurement for Ruby

Digest
Provides a framework for message digest libraries

DL
Provides a wrapper for the UNIX dlopen() library

Etc
Provides access to information typically stored in UNIX /etc directory

Fiddle
A libffi wrapper for Ruby

NKF
Ruby extension for Network Kanji Filter

Ripper
Provides an interface for parsing Ruby programs into S-expressions



Syslog
Ruby interface for the POSIX system logging facility








