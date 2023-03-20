require 'set'
def func
    $solutions = Array.new
    def solve(working_set, level, n)
        if level == n
          s = Set.new
          working_set.each{ |elem|
            if elem[1] == 1
              s << elem[0]
            end
          }
          print s
          $solutions << s
          print "\n"
        else
            level = level + 1
            for i in [0,1]
                working_set[level] = i
                solve(working_set, level, n)
            end
        end
    end
    n = gets.chomp.to_i
    solve({},0,n)
    print $solutions
end
func
