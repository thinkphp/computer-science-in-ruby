# Computer Science in Ruby language.

Ruby is a dynamic programming language with a complex but expressive grammar and
a core class library with a rich and powerful API. Ruby draws inspiration from Lisp,
Smalltalk, and Perl, but uses a grammar that is easy for C and JavaTM programmers to
learn. Ruby is a pure object-oriented language, but it is also suitable for procedural and
functional programming styles. It includes powerful metaprogramming capabilities
and can be used to create domain-specific languages or DSLs.


## Overridden Methods

```
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
