def sort(arr)
    n = arr.length - 1
    for i in 0..n-1
        min = arr[i]
        pos = i
        for j in i + 1..n
            if arr[j] < min
               min = arr[j]
               pos = j
            end
        end
        arr[pos], arr[i] = arr[i], arr[pos]
    end
end
def searchbin(lo, hi, key, arr)
    if lo > hi
       return -1
    end
    m = (lo + hi) >> 1
    if key == arr[m]
       return m
    end
    if key < arr[m]
       return searchbin(lo, m - 1, key, arr)
    else
      return searchbin(m + 1, hi, key, arr)
    end
end

def searchBin_rec(arr, key)

    return searchbin(0, arr.length-1, key, arr)

end

def searchBin(arr, key)
    n = arr.length
    lo = 0
    hi = n - 1
    pos = -1
    while lo <= hi
        m = (lo + hi) >> 1
        if key == arr[m]
           pos = m
           break
        end
        if key < arr[m]
           hi = m - 1
        else key > arr[m]
          lo = m + 1
        end
    end
    return pos
end
def main
    arr = [1,2,3,10,20,-10,-20,2021,-2]
    print arr
    print "\nWhat's your key?\nkey = "
    key = gets.chomp.to_i

    hash = {}
    for i in 0..arr.length-1
        hash[arr[i]] = i
    end
    sort(arr)
    ans = searchBin_rec(arr, key)
    if ans != -1       
       p "Found on position: #{hash[key]}!"
    else
      p "Not Found!"
    end
end
main
