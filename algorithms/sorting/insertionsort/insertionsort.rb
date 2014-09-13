#Sorting By Insertion @thinkphp
class InsertionSort

      def initialize( arr )

          @arr = arr
          @len = arr.size() - 1;  

          #in action
          _insertionSort()

      end 

      def _insertionSort()
 
         (1..@len).each do |i|

             k = i - 1
             aux = @arr[ i ]

             while k >= 0 and @arr[k] > aux

                   @arr[k+1] = @arr[k]
                   k -= 1
             end

             @arr[k+1] = aux

          end 

      end 

      def get()

          return @arr 
      end 
end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = InsertionSort.new(arr)

print ob.get()