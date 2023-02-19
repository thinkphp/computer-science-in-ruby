def init(level)
    $st[level] =0
end
def succ(level)
    if $st[level] < $n
      $st[level] += 1
      return true
    end
    return false
end

def valid(level)
    for i in 1..level-1
      if $st[level] == $st[i]
        return false
      end
    end
    return true
end

def sol(level)
  return level == $n
end

def printf()
    for i in 1..$n
      print $st[i], " "
    end
    print"\n"
end
def bk(level)
  init(level)
  while succ(level)
        if valid(level)
           if sol(level)
              printf()
           else
             bk(level+1)
           end
        end
  end
end
def perm
    $n = 3
    $st = [0] * ($n+1)
    bk(1)
end
perm
