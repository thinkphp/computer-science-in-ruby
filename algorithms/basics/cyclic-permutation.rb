def GetCount(n)
    cnt = 0
    while n != 0
      cnt += 1
      n /= 10
    end
    return cnt
end
 
def pow(x,y)
    p = 1
    for i in 1..y
       p *= x
    end
    return p
end
 
def CyclicPerm(num)
 
      count = GetCount(num)
      n = num
 
      while true
         p n
         r = n % 10
         d = n / 10
         n = pow(10, count-1) * r + d
         if n == num
            break
         end
      end
end
 
def main()
    n = 1234
    CyclicPerm(n)
end
main
