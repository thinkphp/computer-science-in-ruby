def comb_sort( list ) 

    shrinkFactor = 1.3

    swapped = true

    n, gap = list.size, list.size
    
    until (gap == 1) && !swapped

          swapped = false
 
          gap = (gap / shrinkFactor)         
 
          gap = 1 if gap < 1

          i = 0

          until i + gap >= n 

                if list[ i ] > list[ i + gap ]

                   list[ i ], list[ i + gap ] = list[ i + gap], list[ i ]

                   swapped = true  

                end 

                i = i + 1
          end
           
    end 

    list       
end

list = [9, 8, 7, 6, 5, 4, 3, 2, 1]

print comb_sort( list )
