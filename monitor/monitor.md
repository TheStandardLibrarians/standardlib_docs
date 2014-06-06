# monitor

size B / Jen

$ irb
2.1.2 :001 > require 'monitor'
 => false

definition:
Provides an object or module to use safely by more than one thread

https://www.ruby-forum.com/topic/49879

} and have the same API. This begs two questions:
}
} 1: What is the difference between Monitor and Mutex?
}
} 2: Which one of the two is the preferred solution? PickAxe 1-st
} edition covered Mutex, PickAxe 2-nd edition covers Monitor in main
} text and Mutex in passing in library reference.
}
} Any opinions are highly appreciated.

There are at least three (maybe only three -- it\'s been a long time
since
my operating systems course in college) equivalently powerful
concurrency
control primitives: mutexes, monitors, and semaphores. They are
equivalently powerful because you can implement any one of them in terms
of
any other. The implication, then, is that you should use the primitive
that
best suits your application. Here is some guidance on where each applies
well:

1) Semaphores involve counting, so they are typically used for
controlling
   access to a limited, but plural, number of connections to some
resource.
   Some good examples are audio channels or IO channels.

2) Monitors are an OO construct and work well with controlling
concurrent
   access to the multiple entry points in an object. A good example
might
   be a shared queue object, on which the enqueue and dequeue operations
   are protected.

3) Mutexes are the simplest primitives. They are best for protecting
either
   a single entry point (i.e. a single function/method/block) or global
   data. An example might be a thread-safe printf function that prevents
   interleaved printing.

http://blog.maxaller.name/2010/10/ruby-monitor-basics-or-how-the-heck-do-i-synchronize-producersconsumers/
