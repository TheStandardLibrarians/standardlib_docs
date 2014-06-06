# minitest/spec

size C / Jen

$ irb
2.1.2 :001 > require 'minitest/spec'
Warning: you should require 'minitest/autorun' instead.
Warning: or add 'gem "minitest"' before 'require "minitest/autorun"'

MiniTest::Spec -- The faster, better, less-magical spec framework!

https://github.com/metaskills/minitest-spec-rails
A gem to use with it.
From Minitest::Spec to Minitest::Test
November 26, 2013 
Trevor Rowe 
testing
In a previous blog post, I introduced Minitest from the perspective of RSpec. Some Minitest users prefer to avoid the specification style of Minitest::Spec. Instead they use Minitest::Test. It's closer to the metal and uses a more vanilla Ruby syntax.

Here is an example spec file using Minitest::Spec:

require 'test_helper'

describe MyClass do
  describe '#some_method' do
    it 'returns a string' do
      MyClass.new.some_method.must_be_kind_of(String)
    end
  end
end
Converting this to use Minitest::Test looks like:

require 'test_helper'

class MyClassTest < Minitest::Test
  def test_some_method_returns_a_string
    assert_kind_of String, MyClass.new.some_method
  end
end
Some key differences:
Assertions are instance methods provided by the test class. Instead of calling magic methods added to Object, you pass the object under test into the assertion. Example:


value.must_be_kind_of(String)
becomes:
assert_kind_of(String, value)
There is no DSL for defining test cases. The it method is removed. Instead, all methods prefixed with test_ are executed as test cases.
Nesting describe blocks is a useful technique for grouping specs. You can still do this, but you have to nest test classes.

class MyClassTest < Minitest::Test
    class SubClassTest < Minitest::Test
    ...
  end
end
I don't feel as strongly as others about using vanilla Minitest::Test over Minitest::Spec. I personally find the specs easier to read, but that may be due to my experience with RSpec. You may have a different experience based on your testing background.
Happy Testing!
_____________________________________________________________________
http://www.rubyinside.com/a-minitestspec-tutorial-elegant-spec-style-testing-that-comes-with-ruby-5354.html
What Does MiniTest::Spec Look Like?
Let's start with a ridiculously simplistic Test::Unit style test:
require 'test/unit'

class TestArray < Test::Unit::TestCase
  def test_array_can_be_created_with_no_arguments
    assert_instance_of Array, Array.new
  end

  def test_array_of_specific_length_can_be_created
    assert_equal 10, Array.new(10).size
  end
end
Nothing too unusual there, I hope. Let's convert it to MiniTest::Spec:
require 'minitest/spec'
require 'minitest/autorun'

describe Array do
  it "can be created with no arguments" do
    Array.new.must_be_instance_of Array
  end

  it "can be created with a specific size" do
    Array.new(10).size.must_equal 10
  end
end
It's a matter of style and opinion, of course, but I prefer the latter version. MiniTest::Spec brings RSpec-esque matchers and contexts right into the Ruby 1.9 standard library and I hope it will start to make significant inroads into the library and developer tool test suites, replacing raw Test::Unit.
(For the purists out there, minitest/spec is implemented in a single ~300 line Ruby file. It's not a framework and it's easy to walk through the code in 10 minutes. Minimal magic!)
MiniTest::Spec's Matchers / Expectations
Previously we just did a check for equality and an object's class, but you're going to want to go a bit further. Here are MiniTest::Spec's key expectations:
obj.must_be(operator, expected) - for example, 10.must_be :< , 11
obj.must_be_close_to - the equivalent of assert_in_delta
obj.must_be_empty - Fails unless obj.empty?
obj.must_be_instance_of(klass) - Fails unless obj.class == klass
obj.must_be_kind_of(klass) - Fails unless obj is of class klass or klass is one of its superclasses.
obj.must_be_nil
obj.must_be_same_as - tests for true object equality
lambda {}.must_be_silent
obj.must_be_within_delta
obj.must_be_within_epsilon
obj.must_equal(other) - Does a ==/eql? comparison between two objects.
obj.must_include(other)
obj.must_match(regex) - A regular expression match, e.g. "hello".must_match /w+/
lambda {}.must_output(stdout, [stderr..]) - The block should have certain output on stdout or stderr. Set stdout to nil just to check stderr.
lambda {}.must_raise(exception)
obj.must_respond_to(message)
obj.must_throw(sym)
The above are all positive expectations but the opposite ones are easy to build as in most cases you can switch must with wont. For example:
wont_be
wont_be_empty
wont_be_instance_of
wont_be_kind_of
wont_be_nil
wont_be_same_as
wont_equal
wont_include
wont_match
wont_respond_to
Note: If you look at the source for minitest/spec.rb you'll see that the expectations map directly to MiniTest::Unit assertions.
