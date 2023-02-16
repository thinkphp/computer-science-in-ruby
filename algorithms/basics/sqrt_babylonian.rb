def sqrt_babylonian(n)
    x = n
    y = 1.0
    e = 0.000001
    while x - y > e
      x = (x + y) / 2
      y = n / x
    end
    x
end
def func
    puts "Num="
    n = gets.chomp.to_i
    r = sqrt_babylonian(n)
    print"root = #{r}"
end
func
