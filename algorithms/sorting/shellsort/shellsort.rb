#Sorting By Shell @thinkphp
class ShellSort

      def initialize( arr )

          @arr = arr
          @len = arr.size() - 1;  

          #in action
          _shellSort()

      end 

      def _shellSort()

           dist = [7,5,3,1]

           (0..dist.size()-1).each do |d|

               one = dist[ d ]
               
               for j in one..@len

                   aux = @arr[ j ]

                   i = j - one

                   while i>=0 and @arr[i] > aux

                         @arr[i + one] = @arr[ i ]

                         i = i - one
                   end 
  
                   @arr[i + one] = aux
               end 
  
            end 
 
      end 

      def get()

          return @arr 
      end 
end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = ShellSort.new(arr)

print ob.get()