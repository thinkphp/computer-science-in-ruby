def main()
    arr = [9,8,7,6,5,4,3,1,-10]
    n = arr.length
    i = 1
    while i < n and arr[ i ] == arr[ 0 ]
        i += 1
    end
    if i < n
        if arr[i] > arr[i-1]
                 flag = 1
                 for k in i..n-1
                     if arr[k] < arr[k-1]
                       flag = 0
                     end
                 end
                 if flag == 1
                    p "Ascending Order!"
                 else
                    p "Unordered!"
                 end
        elsif arr[i] < arr[i-1]
              flag = 1
              for k in i..n-1
                  if arr[k] > arr[k-1]
                    flag = 0
                  end
              end
              if flag == 1
                 p "Descending Order!"
              else
                 p "Unordered!"
              end
        end
    end
end
main
 
