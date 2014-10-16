class QuickSort

      @vec = []

      @n = -1  

      def initialize( arr )

          @vec = arr
          @n = @vec.size()

          _quicksort(0, @n - 1)
      end

      def _quicksort(li, ls)

          i = li
          j = ls
          p = @vec[ ( li + ls ) >> 1 ]
          x = -1
          
          while i<=j   

                while @vec[ i ] < p

                   i += 1
                end  

                while @vec[ j ] > p

                   j -= 1
                end  

                if i <= j
                   
                   x = @vec[i]^@vec[j]
                   @vec[i] = x^@vec[i]  
                   @vec[j] = x^@vec[j]
                   i += 1
                   j -= 1
                end  
          end 

          if li < j
             _quicksort(li, j)
          end  

          if i < ls
             _quicksort(i, ls)
          end  
        
      end

      def get()

          return @vec
      end   
end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = QuickSort.new( arr )

print ob.get();