class Bubblesort
           
      def initialize( filename )

          read(filename) 

          sort()
          
      end

      def write(filename)
     
          f = File.open(filename, "w")

          f.write(@arr)

          f.close()
      end

      def read(filename) 

          f = File.open(filename, "r")

          f.each_line do |line|

            @arr = line.split(" ").map(&:to_i) 

          end 

          @n = @arr.size() - 1

          f.close()

      end

      def sort()

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

      def get()

          return @arr  
      end

end

ob = Bubblesort.new('input.in')

ob.sort()

print ob.get()

ob.write("output.out")