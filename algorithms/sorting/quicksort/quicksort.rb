#QuickSort @thinkphp
class QuickSort

      def initialize( arr )

          @arr = arr
          @len = arr.size() - 1;  
          @k = -1

          #in action
          quickSort()

      end 

      def pivot(li,ls)

          i = li
          j = ls
          i1 = 0
          j1 = -1
          
          while i<j 
                if @arr[i]>@arr[j]
                   @arr[i],@arr[j] = @arr[j],@arr[i]
                   temp = i1
                   i1 = -j1
                   j1 = -temp     
                end  
                i = i + i1
                j = j + j1
          end 
          @k = i
      end 

      def _qs(li, ls)

          if li < ls

             pivot(li,ls)
             _qs(li,@k-1)
             _qs(@k+1,ls)   

          end 
      end 

      def quickSort()

          _qs(0, @len);

      end 

      def get()

          return @arr 
      end 
end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = QuickSort.new(arr)

print ob.get()