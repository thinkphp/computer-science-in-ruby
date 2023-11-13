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


# Examples
(Extend Class Array with bubblesort)  https://ideone.com/85rdNd 

## References

https://www.programming-books.io/essential/ruby/

https://www.programming-books.io/essential/rubyonrails/
