def readMatrix(matrix, k, p, c)
    if k == p
       s1 = 0
       for i in 0..c
           matrix[k][i] = rand(0...2)
           s1 += matrix[k][i]
       end
       return s1
    else
      s2 = 0
      for i in 0..c
          matrix[k][i] = rand(0...2)
          s2 += matrix[k][i]
      end
      return s2 + readMatrix(matrix, k + 1, p, c)
    end
end
 
def main
    matrix = Array.new(3) {
             Array.new(4) {0}
    }
    p readMatrix(matrix, 0, 2, 3)
    for i in 0..2
        for j in 0..3
            print matrix[i][j], " "
        end
        print("\n")
    end
end
main()
 

