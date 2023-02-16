def sort
  a = [81,71,3,2,-1,0,10]
  n = a.length
  b = [0] * (n+1)
  c = []
  for i in 0..n-1
    c[i] = a[i]
  end
  p a
  for i in 0..n-2
    for j in i+1..n-1
        if a[i]>a[j]
          b[i]+=1
        else
          b[j]+=1
        end
    end
  end
  for i in 0..n-1
    a[b[i]]=c[i]
  end
  for i in 0..n-1
    a[b[i]] = c[i]
  end
  p a
end
sort
