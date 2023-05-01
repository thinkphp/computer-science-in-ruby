def getMax(level)
	max = 0
	for i in 1..level-1
	   if $st[i] > max
	   	max = $st[i]
	   end	
    end
    return max
end    
	
def init(level)
    $st[level] = 0
end

def succ(level)
    if $st[level]<getMax(level)+1
      $st[level]+=1
      return true
    end
    return false
end

def valid(level)
  return true
end
def sol(level)
  return $n == level
end

def printf()
  $cnt +=1
  print $cnt
  takemax = $st.max()
  for i in 1..takemax
      print "{"
      for j in i..$n
        if $st[j] == i
          print j, ''
        end
      end
      print "}"
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
def partitions
  $cnt = 0	
  $n = gets.chomp.to_i
  $st = [0] * ($n+1)
  $st[1] = 1
  bk(2)
end
partitions
