def main
    n = 5
    matrix = Array.new(n+1){Array.new(n+1){0}}

    pos = [0,4,14,23,25]
    val = [0,3,5,7,8]

    for k in 1..pos.length-1
        i = pos[k] / n + 1
        j = pos[k] % n
        if j == 0
          i -= 1
          j = n
        end
        matrix[i][j] = val[k]
    end

    for i in 1..n
        for j in 1..n
          print matrix[i][j],  " "
        end
        print"\n"
    end

end
main
