'''
Author:
Adrian Statescu <mergesortv@gmail.com>
 
Description:
Counting Sort Algorithm.
 
Analysis Complexity:
Worst Case Time: O(n)
Average Case Time: O(n)
Best Case Time: O(n)
Space: O(n)
'''
def main()
 
    arr = [5,90,23,3,-2,-1]
    p arr
    n  = arr.length() - 1
    b = Array.new(n+1,0)
    c = []
    for i in 0..n
        c[i] = arr[i]
    end
 
    for i in 0..n-1
       for j in i+1..n
         if arr[i] > arr[j]
            b[i] = b[i] + 1
         else
            b[j] = b[j] + 1
         end
       end
    end
 
 
    for k in 0..n
 
        arr[ b[k] ] = c[k]
 
    end
 
    p arr
 
end
main
