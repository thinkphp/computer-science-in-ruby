''
Complexity Analysis:
What is the running-time of counting-sort?
  Worst Case time: O(n)
Average Case time: O(n)
   Best Case time: O(n)
Space O(n)
'''
def GetMinMax(arr, n)
 
    min, max = arr[0].to_i
    for i in 1..n-1
       if arr[i].to_i < min.to_i
          min = arr[i]
       end
       if arr[i].to_i > max.to_i
         max = arr[i]
       end
    end
    return [min, max]
 
end
def main
 
    arr = [9,8,7,6,5,4,3,2,1,0,-1,-2,-3,9,8,7,6,5,-3,-1]
 
    n = arr.length
 
    min, max = GetMinMax(arr, n)
 
    counts = Array.new(max-min+1,0)
 
    for i in 0..n-1
        counts[arr[i]-min] += 1
    end
 
    p counts
 
    k = 0
    for i in 0..max-min
        for j in 0..counts[i]-1
            arr[k] = i + min
            k = k + 1
        end
    end
    p arr
end
main
