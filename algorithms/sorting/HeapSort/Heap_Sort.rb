class HeapSort

      def initialize( filename, output )

          @sizeHeap = 0

          @Heap = []

          read( filename );

          @output = output;

          @n = @arr.size();

          (0..@n-1).each do|i|

              insertHeap(@arr[i])

          end
      end 

      def _swap(a, b)

          x = @Heap[ a ] ^ @Heap[ b ]

          @Heap[ a ] = x ^ @Heap[ a ] 

          @Heap[ b ] = x ^ @Heap[ b ] 
      end 

      def up( child )

          parrent = child / 2

          while parrent > 0 do

                if @Heap[ parrent ] > @Heap[ child ]

                   _swap(parrent, child)

                   child = parrent

                   parrent = child / 2 

                else

                    break
                end
          end          

      end 

      def down( parrent )

          while parrent * 2 <= @sizeHeap do

                child = parrent * 2

                if 2 * parrent + 1 <= @sizeHeap && @Heap[ 2 * parrent + 1 ] < @Heap[ 2 * parrent ]

                   child += 1

                end

                if @Heap[ parrent ] <= @Heap[ child ] 

                   break
                end 

                _swap(parrent, child)

               parrent = child                
          end 

      end  

      def insertHeap( val ) 

          @sizeHeap += 1   

          @Heap[ @sizeHeap ] = val

          up( @sizeHeap );          
      end 

      def removeHeap()

          val = @Heap[ 1 ]

          @Heap[ 1 ] = @Heap[ @sizeHeap ]

          @sizeHeap -= 1; 

          down( 1 )	

          return val
      end 

      def sort 

          @out = [] 

          (1..@n).each do|i|

              @out.push( removeHeap() )

           end 

           write( @output )
      end

      def get()

          return @arr

      end


      def write(filename)
     
          f = File.open(filename, "w")

          f.write(@out)

          f.close()
      end

      def read(filename) 

          f = File.open(filename, "r")

          f.each_line do |line|

            @arr = line.split(" ").map(&:to_i) 

          end 

          f.close()

      end

end

ob = HeapSort.new("algsort.in","algsort.out")
ob.sort()



