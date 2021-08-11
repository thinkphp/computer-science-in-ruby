def main
    arr = [1,2,3,-1,-4,-5,-10,-31]
    i = 1
    n = arr.length
    while i < n and arr[i] > arr[i-1]
          i += 1
    end
 
    if i == 1 or i == n
       p "Not Mountain!"
    else
       if arr[i] < arr[i-1]
            flag = 1
            for k in i..n - 1
                if arr[k] > arr[k-1]
                  flag = 0
                end
            end
            if flag == 1
               p "Mountain!"
            else
               p "Not Mountain!"
            end
       end
    end
end
main
 
