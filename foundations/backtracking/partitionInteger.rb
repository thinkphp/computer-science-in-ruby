def func

    def init
      if $level == 1
        $stack[$level] = 0
      else
        $stack[$level] = $stack[$level-1]-1
      end
    end

    def succ()
        if $stack[$level] < $n - $s
           $stack[$level] += 1
           return true
        else
           $s = $s - $stack[$level-1]
           return false
        end
    end

    def valid
        if $stack[$level] <= $n - $s
           $s = $s + $stack[$level]
           return true
        end
        return false
    end

    def sol
        return $s == $n
    end

    def printf
      for i in 1..$level
        print $stack[i], ' '
      end
      $s = $s - $stack[$level]
      print "\n"
    end

    def solve
      $s = 0
      $level = 1
      init()

      while $level > 0
            su = true
            v = false
            while su == true && v == false
                  su = succ()
                  if su == true
                    v = valid()
                  end
                  if su == true
                    if sol() == true
                       printf()
                    else
                      $level = $level + 1
                      init()
                    end
                  else
                    $level = $level - 1
                  end
            end
      end
    end

    $n = 5
    $stack = [0] * ($n+1)
    solve
end

func
