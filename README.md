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


# Examples
(Extend Class Array with bubblesort)  https://ideone.com/85rdNd 

## References

https://www.programming-books.io/essential/ruby/

https://www.programming-books.io/essential/rubyonrails/
