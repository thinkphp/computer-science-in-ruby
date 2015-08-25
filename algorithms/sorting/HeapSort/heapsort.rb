class HeapSort

      def initialize( arr )

          @sizeHeap = 0

          @Heap = []

          @n = arr.size();

          (0..@n-1).each do|i|

              insertHeap(arr[i])

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

          (1..@n).each do|i|

              print removeHeap(),' '

           end 
      end

      def get()

          return @Heap

      end
end

ob = HeapSort.new([9,8,7,6,5,4,3,2,1])
ob.sort()


