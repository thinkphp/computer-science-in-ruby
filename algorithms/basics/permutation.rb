$n = 3
$sol = Array.new($n+1,0)
$used = Array.new($n+1,false)
 
def perm( level )
    if level == ($n + 1)
        for i in 1..$n
            print"#{$sol[i]}", " "
        end
        print"\n"
    else
        for i in 1..$n
            if $used[i] == false
               $used[ i ] = true
               $sol[ level ] = i
               perm(level + 1)
               $used[i] = false
            end
        end
    end
end
def main
    perm(1)
end
main
