def search(str)
  i = 0
  iCurr = 0
  iMax = 0
  lMax = 1
  n = str.length

  while i <= n
    if i - iCurr > lMax
      lMax = i - iCurr
      iMax = iCurr
    end
    iCurr = i
    while i < n - 1 and str[i].to_i + 1 == str[i+1].to_i
      i+=1
    end
    i +=1
  end
  arr = []
  for i in iMax..iMax+lMax-1
      arr.append(str[i])
  end
  return [iMax, lMax, arr]
end
def func
    str = "000000014567000001234567800000"
    query = search(str)
    p query[2]
end
func
