class SelectionByMin

      def initialize( arr )

          #hold in n the number of the elements of our array
          @n = arr.size() - 1 

          #hold in arr the real array
          @arr = arr

          #selection by min in actin
          sort() 

      end 

      def sort()

          (0..@n-1).each do |i|

              min = @arr[ i ]

              posMin = i

              (i..@n).each do |j|

                  if @arr[j] < min

                     min = @arr[j]
                     posMin = j 

                  end
              end

              @arr[posMin] = @arr[i]

              @arr[i] = min   
          end
      end

      def getSorted()

          return @arr 
      end 
end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = SelectionByMin.new(arr)

print ob.getSorted()