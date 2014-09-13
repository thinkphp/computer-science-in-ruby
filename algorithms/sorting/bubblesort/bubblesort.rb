class Bubblesort
           
      def initialize(arr)

          #hold in @arr the input array
          @arr = arr

          #the number of the elements
          @n = arr.length - 1

      end

      def sort1()
           
          swapped = true

          while swapped

                 swapped = false

                 (0..@n-1).each do |i|

                     if @arr[i] > @arr[i+1]

                        xor = @arr[i]^@arr[i+1]

                        @arr[i] = xor^@arr[i]

                        @arr[i+1] = xor^@arr[i+1]

                        swapped = true

                     end
                 end 
          end             
      end

      def sort2()
           
          swapped = true

          k = 1

          while swapped

                 swapped = false

                 (0..@n-k).each do |i|

                     if @arr[i] > @arr[i+1]

                        xor = @arr[i]^@arr[i+1]

                        @arr[i] = xor^@arr[i]

                        @arr[i+1] = xor^@arr[i+1]

                        swapped = true

                     end
                 end 

                 k += 1
          end             
      end

      def sort3()
         
        k = 1 

        loop do

          swapped = false

          0.upto(@n-k) do |i|

                 if @arr[i] > @arr[i+1]

                    @arr[i], @arr[i+1] = @arr[i+1], @arr[i]

                    swapped = true

                 end 
          end 

          break unless swapped

          k +=1
        end

      end

      #old school
      def sort4()
         
         k = 1

         loop do

              swapped = false
 
              for i in 0..@n-k 

                  if @arr[i] > @arr[i+1]

                     xor = @arr[i]^@arr[i+1]

                     @arr[i] = xor^@arr[i]

                     @arr[i+1] = xor^@arr[i+1]

                     swapped = true  

                  end 
              end 

              break unless swapped

              k +=1 
         end

      end

      def sort5()

         k = 1

         loop do

              swapped = false
 
              0.upto(@n-k) do |i|

                  if @arr[i] > @arr[i+1]

                     xor = @arr[i]^@arr[i+1]

                     @arr[i] = xor^@arr[i]

                     @arr[i+1] = xor^@arr[i+1]

                     swapped = true  

                  end 
              end 

              break unless swapped

              k +=1 
         end

      end  
   
      def get() 

          return @arr
      end

end

arr = [9,8,7,6,5,4,3,2,1,0]

ob = Bubblesort.new(arr)

ob.sort5()

print ob.get()

