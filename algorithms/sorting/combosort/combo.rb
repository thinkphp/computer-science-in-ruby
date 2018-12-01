class Algorithm

      def initialize( arr )

          @arr = arr

          @len = arr.length - 1

      end

      def runCombo()

          gap = @len - 1

          size = @len

          swapped = 0

          shrinkFactor = 1.3

          while gap > 1 or swapped == 1

                swapped = 0

                if gap > 1 

                   gap = (gap / shrinkFactor).to_i
                  
                end 
                
                0.upto(size-gap) do |i|
                     
                      if @arr[i] > @arr[i+gap]                         

                         holder = @arr[i]

                         @arr[i] = @arr[i+gap]

                         @arr[i+gap] = holder

                         swapped = 1  
                      end

                end   
          end   
      end

      def runBubble()

          size = @len 

          loop do

               swapped = 0

               0.upto(size-1) do |i|

                 if @arr[i] > @arr[i+1] 

                    holder = @arr[i]

                    @arr[i] = @arr[i+1]

                    @arr[i+1] = holder

                    swapped = 1

                 end

               end  
 
              if swapped == 1

                 size -= 1   

              else

                 break 
              end
          end
      end

      def to_str

          'to_str'
      end  

      def to_s

         o = ''

         0.upto(@len) do |i|

           o = o + @arr[i].to_s + ' '

         end 

         o

      end
end
L = [-1,-2,-3,9,8,7,6,5,4,3,2,1,0]
print "Before -> "
print L
o = Algorithm.new(L)
o.runCombo()
print "\n After -> "
puts o
