def main
    matrix = Array.new(11) {Array.new(11, 0)}
    digits = 3
    ten = 1
    vec = [31,23,3,44,52,404,723,81,9,51,10,20,303]
    print "Input -> ", vec
 
    n = vec.length()
 
    for digit in 1..digits
 
        if digit > 1
          ten *= 10
        end
 
        for i in 0..n-1
            dig = (vec[i] / ten) % 10
            matrix[ 0 ][ dig ] += 1
            matrix[ matrix[0][dig] ] [ dig ] = vec[ i ]
        end
 
        k = 0
        for i in 0..9
          if matrix[ 0 ][ i ] != 0
             for j in 1..matrix[0][i]
                 vec[ k ] = matrix[ j ][ i ]
                 k += 1
             end
          end
        end
 
        for i in 0..9
          matrix[0][i] = 0
        end
    end
 
    print("\n")
    print "Output -> ", vec
    print("\n")
 
 
end
