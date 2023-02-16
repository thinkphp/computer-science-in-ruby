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

def power(a, b)
  p = 1
  for i in 1..b
      p = p * a
  end
  p
end

def toDec(n)
    dec = 0
    power = 0
    until n == 0
      dec += n % 10 * power(2, power)
      n /= 10
      power+=1
    end
    dec
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
    print"\n"
    for i in 1000..1010
      p toDec(i)
    end
end
func()
