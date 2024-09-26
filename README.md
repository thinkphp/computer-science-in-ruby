# Introduction to Ruby Programming - Stanford Course Outline

1. [Introduction to Ruby](#1-introduction-to-ruby)

   1.1 [History and Philosophy of Ruby](#11-history-and-philosophy-of-ruby)
   1.2 [Setting Up Ruby Environment](#12-setting-up-ruby-environment)
   1.3 [Interactive Ruby (IRB)](#13-interactive-ruby-irb)

2. [Ruby Basics](#2-ruby-basics)

   2.1 [Variables and Data Types](#21-variables-and-data-types)
   2.2 [Control Structures](#22-control-structures)
   2.3 [Methods](#23-methods)
   2.4 [Arrays and Hashes](#24-arrays-and-hashes)

3. [Object-Oriented Programming in Ruby](#3-object-oriented-programming-in-ruby)

   3.1 [Classes and Objects](#31-classes-and-objects)
   3.2 [Inheritance](#32-inheritance)
   3.3 [Modules and Mixins](#33-modules-and-mixins)

4.[Advanced Ruby Concepts](#4-advanced-ruby-concepts)

   4.1 [Blocks, Procs, and Lambdas](#41-blocks-procs-and-lambdas)
   4.2 [Metaprogramming](#42-metaprogramming)
   4.3 [Exception Handling](#43-exception-handling)

5. [Ruby Standard Library and Gems](#5-ruby-standard-library-and-gems)

   5.1 [Working with Files](#51-working-with-files)
   5.2 [Date and Time Manipulation](#52-date-and-time-manipulation)
   5.3 [Using Gems](#53-using-gems)

6. [Ruby in Practice](#6-ruby-in-practice)

   6.1 [Ruby for Web Development](#61-ruby-for-web-development)
   6.2 [Testing in Ruby](#62-testing-in-ruby)
   6.3 [Ruby Best Practices](#63-ruby-best-practices)

## 1. Introduction to Ruby

### 1.1 History and Philosophy of Ruby

Ruby was created by Yukihiro Matsumoto (often called "Matz") in 1995. Its philosophy emphasizes programmer happiness and follows the principle of least astonishment.

Examples:
```ruby
# Ruby's expressive syntax
5.times { puts "Ruby is fun!" }

# Everything is an object
puts 5.class  # Output: Integer
puts "Hello".class  # Output: String

# Ruby's flexibility
def say(word)
  word.upcase + "!"
end

puts say "hello"  # Output: HELLO!
puts say("hello")  # Output: HELLO!
```

### 1.2 Setting Up Ruby Environment

Instructions for installing Ruby on different operating systems and setting up a development environment.

### 1.3 Interactive Ruby (IRB)

Introduction to using IRB for quick Ruby experimentation.

Example:
```ruby
$ irb
irb(main):001:0> 1 + 1
=> 2
irb(main):002:0> [1, 2, 3].map { |n| n * 2 }
=> [2, 4, 6]
```

## 2. Ruby Basics

### 2.1 Variables and Data Types

Ruby is dynamically typed, with several basic data types.

Examples:
```ruby
# Integer and Float
age = 25
pi = 3.14159

# String
name = "Ruby Programmer"
interpolated = "My name is #{name}"

# Symbol
status = :active

# Boolean
is_student = true

# Array
fruits = ["apple", "banana", "cherry"]

# Hash
person = { name: "John", age: 30, city: "San Francisco" }
```

### 2.2 Control Structures

Ruby provides various control structures for program flow.

Examples:
```ruby
# If-else statement
x = 10
if x > 5
  puts "x is greater than 5"
elsif x < 5
  puts "x is less than 5"
else
  puts "x is equal to 5"
end

# Unless statement
unless x == 0
  puts "x is not zero"
end

# Case statement
grade = 'B'
case grade
when 'A' then puts "Excellent!"
when 'B' then puts "Good job!"
when 'C' then puts "Acceptable"
else puts "Needs improvement"
end

# While loop
counter = 0
while counter < 5
  puts "Counter is #{counter}"
  counter += 1
end

# For loop
for i in 1..5
  puts "Iteration #{i}"
end
```

### 2.3 Methods

Methods in Ruby are defined using the `def` keyword.

Examples:
```ruby
# Simple method
def greet(name)
  "Hello, #{name}!"
end

puts greet("Stanford")

# Method with default parameter
def power(base, exponent = 2)
  base ** exponent
end

puts power(3)    # Output: 9
puts power(2, 3) # Output: 8

# Method with keyword arguments
def create_user(name:, email:, age: nil)
  "User: #{name}, Email: #{email}, Age: #{age || 'N/A'}"
end

puts create_user(name: "Alice", email: "alice@example.com")
puts create_user(name: "Bob", email: "bob@example.com", age: 30)

# Variable number of arguments
def sum(*numbers)
  numbers.reduce(0, :+)
end

puts sum(1, 2, 3, 4, 5) # Output: 15
```

### 2.4 Arrays and Hashes

Arrays and hashes are fundamental data structures in Ruby.

Examples:
```ruby
# Array operations
numbers = [1, 2, 3, 4, 5]
puts numbers.first
puts numbers.last
puts numbers.length
numbers.push(6)
numbers.pop

# Array iteration
numbers.each { |num| puts num * 2 }

# Array transformation
doubled = numbers.map { |num| num * 2 }

# Hash operations
person = { name: "Alice", age: 30, city: "New York" }
puts person[:name]
person[:occupation] = "Engineer"

# Hash iteration
person.each do |key, value|
  puts "#{key}: #{value}"
end

# Hash transformation
uppercase_person = person.transform_values(&:upcase)
```

## 3. Object-Oriented Programming in Ruby

### 3.1 Classes and Objects

Ruby is a pure object-oriented language.

Examples:
```ruby
# Define a class
class Car
  attr_reader :make, :model
  
  def initialize(make, model)
    @make = make
    @model = model
  end

  def display_info
    "This car is a #{@make} #{@model}."
  end
end

# Create an object
my_car = Car.new("Toyota", "Corolla")
puts my_car.display_info
puts my_car.make
```

### 3.2 Inheritance

Ruby supports single inheritance.

Example:
```ruby
class ElectricCar < Car
  attr_reader :battery_capacity

  def initialize(make, model, battery_capacity)
    super(make, model)
    @battery_capacity = battery_capacity
  end

  def display_info
    "#{super} It has a battery capacity of #{@battery_capacity} kWh."
  end
end

tesla = ElectricCar.new("Tesla", "Model 3", 75)
puts tesla.display_info
```

### 3.3 Modules and Mixins

Modules in Ruby are used for namespacing and as mixins.

Examples:
```ruby
# Module as a namespace
module Math
  PI = 3.14159

  def self.square(x)
    x * x
  end
end

puts Math::PI
puts Math.square(4)

# Module as a mixin
module Swimmable
  def swim
    "#{self.class} is swimming!"
  end
end

class Fish
  include Swimmable
end

class Duck
  include Swimmable
end

puts Fish.new.swim
puts Duck.new.swim
```

## 4. Advanced Ruby Concepts

### 4.1 Blocks, Procs, and Lambdas

These are different ways of grouping code for reuse in Ruby.

Examples:
```ruby
# Block
[1, 2, 3].each do |num|
  puts num * 2
end

# Proc
square = Proc.new { |x| x * x }
puts [1, 2, 3].map(&square)

# Lambda
multiply = ->(x, y) { x * y }
puts multiply.call(3, 4)

# Differences between Proc and Lambda
def proc_return
  proc = Proc.new { return "Proc returns" }
  proc.call
  "This line is never reached"
end

def lambda_return
  lambda = -> { return "Lambda returns" }
  lambda.call
  "This line is reached"
end

puts proc_return
puts lambda_return
```

### 4.2 Metaprogramming

Ruby's metaprogramming capabilities allow you to write code that writes code.

Examples:
```ruby
# Define method dynamically
class String
  define_method(:shout) do
    self.upcase + "!"
  end
end

puts "hello".shout  # Output: HELLO!

# Open class
class Integer
  def double
    self * 2
  end
end

puts 5.double  # Output: 10

# method_missing
class MyClass
  def method_missing(method_name, *args)
    "You called #{method_name} with #{args}"
  end
end

obj = MyClass.new
puts obj.non_existent_method(1, 2, 3)
```

### 4.3 Exception Handling

Ruby provides a mechanism to handle errors and exceptions.

Example:
```ruby
def divide(a, b)
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "Error: #{e.message}"
    result = nil
  ensure
    puts "Division attempt completed"
  end
  result
end

puts divide(10, 2)
puts divide(10, 0)
```

## 5. Ruby Standard Library and Gems

### 5.1 Working with Files

Ruby provides easy-to-use methods for file operations.

Examples:
```ruby
# Reading a file
File.open("example.txt", "r") do |file|
  puts file.read
end

# Writing to a file
File.open("output.txt", "w") do |file|
  file.puts "Hello, Stanford!"
end

# Appending to a file
File.open("log.txt", "a") do |file|
  file.puts "Log entry at #{Time.now}"
end
```

### 5.2 Date and Time Manipulation

Ruby has built-in classes for working with dates and times.

Example:
```ruby
require 'date'

today = Date.today
puts today
puts today + 30  # 30 days from now

now = Time.now
puts now
puts now + 3600  # 1 hour from now
```

### 5.3 Using Gems

Gems are Ruby's package manager system. Here's how to use a popular gem like 'nokogiri' for XML/HTML parsing.

Example:
```ruby
# First, install the gem: gem install nokogiri

require 'nokogiri'
require 'open-uri'

# Parse HTML from a URL
doc = Nokogiri::HTML(URI.open("https://www.stanford.edu"))
puts doc.css('title').text

# Create XML
builder = Nokogiri::XML::Builder.new do |xml|
  xml.root {
    xml.child1 { xml.text "Child 1 content" }
    xml.child2 { xml.text "Child 2 content" }
  }
end

puts builder.to_xml
```

## 6. Ruby in Practice

### 6.1 Ruby for Web Development

Introduction to web development with Ruby, mentioning frameworks like Ruby on Rails and Sinatra.

### 6.2 Testing in Ruby

Overview of testing practices in Ruby, including unit testing with RSpec or Minitest.

### 6.3 Ruby Best Practices

Discussion of Ruby style guides, common idioms, and best practices for writing clean, efficient Ruby code.

This course outline covers the fundamental concepts of Ruby programming, from basic syntax to advanced topics like metaprogramming. Each section includes multiple examples to illustrate the concepts. Students should practice these examples and explore further to gain a deeper understanding of Ruby.




# Computer Science in Ruby language.

Ruby is a dynamic programming language with a complex but expressive grammar and
a core class library with a rich and powerful API. Ruby draws inspiration from Lisp,
Smalltalk, and Perl, but uses a grammar that is easy for C and JavaTM programmers to
learn. Ruby is a pure object-oriented language, but it is also suitable for procedural and
functional programming styles. It includes powerful metaprogramming capabilities
and can be used to create domain-specific languages or DSLs.

## Arrays

An array is a sequence of values that allows values to be accessed by their position, or
index, in the sequence. In Ruby, the first value in an array has index 0. The size and
length methods return the number of elements in an array. The last element of the array
is at index size-1. Negative index values count from the end of the array, so the last
element of an array can also be accessed with an index of –1. The second-to-last has an
index of –2, and so on. If you attempt to read an element beyond the end of an array
(with an index >= size) or before the beginning of an array (with an index < -size),
Ruby simply returns nil and does not throw an exception.
Ruby’s arrays are untyped and mutable. The elements of an array need not all be of the
same class, and they can be changed at any time. Furthermore, arrays are dynamically
resizeable; you can append elements to them and they grow as needed. If you assign a
value to an element beyond the end of the array, the array is automatically extended
with nil elements. (It is an error, however, to assign a value to an element before the
beginning of an array.)
```
An array literal is a comma-separated list of values, enclosed in square brackets:
[1, 2, 3] # An array that holds three Fixnum objects
[-10...0, 0..10,] # An array of two ranges; trailing commas are allowed
[[1,2],[3,4],[5]] # An array of nested arrays
[x+y, x-y, x*y] # Array elements can be arbitrary expressions
[] # The empty array has size 0

Ruby includes a special-case syntax for expressing array literals whose elements are
short strings without spaces:
words = %w[this is a test] # Same as: ['this', 'is', 'a', 'test']
open = %w| ( [ { < | # Same as: ['(', '[', '{', '<']
white = %W(\s \t \r \n) # Same as: ["\s", "\t", "\r", "\n"]
```
%w and %W introduce an array literal, much like %q and %Q introduce a String literal. In
particular, the delimiter rules for %w and %W are the same as for %q and %Q. Within the
delimiters, no quotation marks are required around the array element strings, and no 
commas are required between the elements. Array elements are delimited by whitespace.

You can also create arrays with the Array.new constructor, and this provides options
for programmatically initializing the array elements:

```
empty = Array.new # []: returns a new empty array
nils = Array.new(3) # [nil, nil, nil]: new array with 3 nil elements
zeros = Array.new(4, 0) # [0, 0, 0, 0]: new array with 4 0 elements
copy = Array.new(nils) # Make a new copy of an existing array
count = Array.new(3) {|i| i+1} # [1,2,3]: 3 elements computed from index
```

```
To obtain the value of an array element, use a single integer within square brackets:
a = [0, 1, 4, 9, 16] # Array holds the squares of the indexes
a[0] # First element is 0
a[-1] # Last element is 16
a[-2] # Second to last element is 9
a[a.size-1] # Another way to query the last element
a[-a.size] # Another way to query the first element
a[8] # Querying beyond the end returns nil
a[-8] # Querying before the start returns nil, too
```

All of the expressions above, except for the last, can also be used on the lefthand side
of an assignment:
```
a[0] = "zero" # a is ["zero", 1, 4, 9, 16]
a[-1] = 1..16 # a is ["zero", 1, 4, 9, 1..16]
a[8] = 64 # a is ["zero", 1, 4, 9, 1..16, nil, nil, nil, 64]
a[-10] = 100 # Error: can't assign before the start of an array
```
Like strings, arrays can also be indexed with two integers that represent a starting index
and a number of elements, or a Range object. In either case, the expression returns the
specified subarray:
```
a = ('a'..'e').to_a # Range converted to ['a', 'b', 'c', 'd', 'e']
a[0,0] # []: this subarray has zero elements
a[1,1] # ['b']: a one-element array
a[-2,2] # ['d','e']: the last two elements of the array
a[0..2] # ['a', 'b', 'c']: the first three elements
a[-2..-1] # ['d','e']: the last two elements of the array
a[0...-1] # ['a', 'b', 'c', 'd']: all but the last element
```

When used on the lefthand side of an assignment, a subarray can be replaced by the
elements of the array on the righthand side. This basic operation works for insertions
and deletions as well:

```
a[0,2] = ['A', 'B'] # a becomes ['A', 'B', 'c', 'd', 'e']
a[2...5]=['C', 'D', 'E'] # a becomes ['A', 'B', 'C', 'D', 'E']
a[0,0] = [1,2,3] # Insert elements at the beginning of a
a[0..2] = [] # Delete those elements
a[-1,1] = ['Z'] # Replace last element with another
a[-1,1] = 'Z' # For single elements, the array is optional
a[-2,2] = nil # Delete last 2 elements in 1.8; replace with nil in 1.9
```

In addition to the square bracket operator for indexing an array, the Array class defines
a number of other useful operators. Use + to concatenate two arrays:
```
a = [1, 2, 3] + [4, 5] # [1, 2, 3, 4, 5]
a = a + [[6, 7, 8]] # [1, 2, 3, 4, 5, [6, 7, 8]]
a = a + 9 # Error: righthand side must be an array
```
The + operator creates a new array that contains the elements of both its operands. Use
<< to append an element to the end of an existing array, and use concat to append the
elements of an array:
```
a = [] # Start with an empty array
a << 1 # a is [1]
a << 2 << 3 # a is [1, 2, 3]
a << [4,5,6] # a is [1, 2, 3, [4, 5, 6]]
a.concat [7,8] # a is [1, 2, 3, [4, 5, 6], 7, 8]
```
The - operator subtracts one array from another. It begins by making a copy of its
lefthand array, and then removes any elements from that copy if they appear anywhere
in the righthand array:
```
['a', 'b', 'c', 'b', 'a'] - ['b', 'c', 'd'] # ['a', 'a']
Like the String class, Array also uses the multiplication operator for repetition:
a = [0] * 8 # [0, 0, 0, 0, 0, 0, 0, 0]
```
The Array class borrows the Boolean operators | and & and uses them for union and
intersection. | concatenates its arguments and then removes all duplicate elements from
the result. & returns an array that holds elements that appear in both of the operand
arrays. The returned array does not contain any duplicate elements:
```
a = [1, 1, 2, 2, 3, 3, 4]
b = [5, 5, 4, 4, 3, 3, 2]
a | b # [1, 2, 3, 4, 5]: duplicates are removed
b | a # [5, 4, 3, 2, 1]: elements are the same, but order is different
a & b # [2, 3, 4]
b & a # [4, 3, 2]
```
Note that these operators are not transitive: a|b is not the same as b|a, for example. If
you ignore the ordering of the elements, however, and consider the arrays to be unor-
dered sets, then these operators make more sense. Note also that the algorithm by which
union and intersection are performed is not specified, and there are no guarantees about
the order of the elements in the returned arrays.
The Array class defines quite a few useful methods. The only one we’ll discuss here is
the each iterator, used for looping through the elements of an array:
a = ('A'..'Z').to_a # Begin with an array of letters
a.each {|x| print x } # Print the alphabet, one letter at a time
Other Array methods you may want to look up include clear, compact!, delete_if,
each_index, empty?, fill, flatten!, include?, index, join, pop, push, reverse,
reverse_each, rindex, shift, sort, sort!, uniq!, and unshift.

## Overridden Methods

```ruby
class WorldGreeter
   def greet
     puts "#{greeting} #{who}"
   end
   def greeting
     "Hello"
   end
   def who
     "World!"
   end
end

class SpanishWorldGreeter < WorldGreeter
   def greeting #override the greeting
     "Hola"
   end
   def who
     "Mundo!"
   end
end

class PortuguessWorldGreeter < WorldGreeter
   def greeting #override the greeting
     "Ola"
   end
   def who
     "Mundo!"
   end
end

class FrenchWorldGreeter < WorldGreeter
   def greeting #override the greeting
     "Bonjour"
   end
   def who
     "le Monde!"
   end
end

class LatinWorldGreeter < WorldGreeter
   def greeting #override the greeting
     "Salve"
   end
   def who
     "Mundi!"
   end
end
class ItalianWorldGreeter < WorldGreeter
   def greeting #override the greeting
     "Ciao"
   end
   def who
     "Mondo!"
   end
end

# we call a method defined in WordGreeter, which
# calls the overridden version of greeting in SpanishWorld
# and prints "Hola Wolrd"
LatinWorldGreeter.new.greet
SpanishWorldGreeter.new.greet
PortuguessWorldGreeter.new.greet
FrenchWorldGreeter.new.greet
ItalianWorldGreeter.new.greet

```
https://ideone.com/a3DFTj

## Marshaling Objects

You can save the state of an object by passing it to the class method Marshal.dump.
If you pass an I/O stream object as the second argument, Marshal.dump writes the state
of the object (and, recursively, any objects it references) to that stream. Otherwise, it
simply returns the encoded state as a binary string.
To restore a marshaled object, pass a string or an I/O stream containing the object to
Marshal.load.
Marshaling an object is a very simple way to save its state for later use, and these meth-
ods can be used to provide an automatic file format for Ruby programs. Note, however,

that the binary format used by Marshal.dump and Marshal.load is version-dependent,
and newer versions of Ruby are not guaranteed to be able to read marshaled objects
written by older versions of Ruby.
Another use for Marshal.dump and Marshal.load is to create deep copies of objects:
```
def deepcopy(o)
Marshal.load(Marshal.dump(o))
end
```
Note that files and I/O streams, as well as Method and Binding objects, are too dynamic
to be marshaled; there would be no reliable way to restore their state.
YAML (“YAML Ain’t Markup Language”) is a commonly used alternative to the
Marshal module that dumps objects to (and loads objects from) a human-readable text
format. It is in the standard library, and you must require 'yaml' to use it.


#### Examples
(Extend Class Array with bubblesort)  https://ideone.com/85rdNd 


#### Programming Contests

Experimental Educational Round: VolBIT Formulas Blitz https://codeforces.com/contest/630

VK Cup 2015 - Wild Card Round 1 https://codeforces.com/contest/530

Codeforces Alpha Round 20 https://codeforces.com/contest/20 (A. BerOS file system1, B. Equation, C. Dijkstra?)

April Fools Day Contest 2024 https://codeforces.com/contest/1952

#### Div. 1

Codeforces Round 808 (Div. 1) https://codeforces.com/contest/1707

#### Div. 2

https://codeforces.com/contest/365

https://codeforces.com/contest/1944

Codeforces Round 726 (Div. 2) https://codeforces.com/contest/1537

Codeforces Round 926 (Div. 2) https://codeforces.com/contest/1929

Codeforces Beta Round 9 (Div. 2) https://codeforces.com/contest/9

Educational Codeforces Round 161 (Div. 2) https://codeforces.com/contest/1922

Codeforces Beta Round 91 (Div. 2) https://codeforces.com/contest/122

Codeforces Round 948 (Div. 2) https://codeforces.com/contest/1977

Codeforces Beta Round 82 (Div. 2) https://codeforces.com/contest/106

Codeforces Round 907 (Div. 2) https://codeforces.com/contest/1891

Codeforces Round 134 (Div. 2) https://codeforces.com/contest/218

#### Div.3 

Codeforces Round 920 (Div. 3) https://codeforces.com/contest/1921

Codeforces Round 587 (Div. 3) https://codeforces.com/contest/1216

Codeforces Round 486 (Div. 3) https://codeforces.com/contest/988

Codeforces Round 479 (Div. 3) https://codeforces.com/contest/977

Codeforces Round 481 (Div. 3) https://codeforces.com/contest/978

#### Div. 4

Codeforces Round 799 (Div. 4) https://codeforces.com/contest/1692

Codeforces Round 928 (Div. 4) https://codeforces.com/contest/1926

Codeforces Round 640 (Div. 4) https://codeforces.com/contest/1352

Codeforces Round 784 (Div. 4) https://codeforces.com/contest/1669

Codeforces Round 835 (Div. 4) https://codeforces.com/contest/1760

Codeforces Round 849 (Div. 4) https://codeforces.com/contest/1791

Codeforces Round 859 (Div. 4) https://codeforces.com/contest/1807

Codeforces Round 827 (Div. 4) https://codeforces.com/contest/1742

Codeforces Round 817 (Div. 4) https://codeforces.com/contest/1722

Codeforces Round 790 (Div. 4) https://codeforces.com/contest/1676



####  Happy New Year

Good Bye 2014 https://codeforces.com/contest/500 Editorial: https://codeforces.com/blog/entry/15513

Good Bye 2015 https://codeforces.com/contest/611 Editorial: https://codeforces.com/blog/entry/22441

Good Bye 2016 https://codeforces.com/contest/611 Editorial: https://codeforces.com/blog/entry/49412

Good Bye 2017 https://codeforces.com/contest/908 Editorial: https://codeforces.com/blog/entry/56713 https://codeforces.com/blog/entry/56848

Good Bye 2018 https://codeforces.com/contest/1091 Editorial: https://codeforces.com/blog/entry/64196

Good Bye 2019 https://codeforces.com/contest/1270 Editorial: https://codeforces.com/blog/entry/72611
                                                  
Good Bye 2020 https://codeforces.com/contest/1466 Editorial: https://codeforces.com/blog/entry/86126

Good Bye 2021 https://codeforces.com/contest/1616  Editorial: https://codeforces.com/blog/entry/98501

Good Bye 2022 https://codeforces.com/contest/1770 Editorial: https://codeforces.com/blog/entry/110754

Good Bye 2023 https://codeforces.com/contest/1916 Editorial: https://codeforces.com/blog/entry/124138 

### EDU Codeforces
https://codeforces.com/edu/courses

#### References

https://www.programming-books.io/essential/ruby/

https://www.programming-books.io/essential/rubyonrails/
