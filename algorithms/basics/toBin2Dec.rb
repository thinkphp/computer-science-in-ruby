def toBin(n)
    if n / 2 != 0
      toBin(n / 2)
    end
    print n % 2
end
def toBin2(n)
    size = 7
    for i in (size).downto(0)
      print (n >> i) & 1
    end
end

def toBin3(n)
    size = 7
    size.downto(0) do |i|
      print ( n >> i) & 1
    end
end

def toBin4(n)
    i = 7
    until i < 0
      print (n >> i) & 1
      i -= 1
    end
end

def toBin5(n)
    int = 0..7
    int.reverse_each{|i| print (n >> i) & 1}
end

def func()
    n = 8
    toBin(n)
    print"\n"
    toBin2(n)
    print"\n"
    toBin3(n)
    print"\n"
    toBin4(n)
    print"\n"
    toBin5(n)
end
func()
