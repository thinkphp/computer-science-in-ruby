'''
Author:
Adrian Statescu <mergesortv@gmail.com>

Description:
A Heap is a type of data structure. One of the interesting things about
heaps is that they allow you to find the largest element in the heap
in O(1) time. Recall that in certain other data structures, likes arrays,
this operations takes O(n) time. Futhermore, extracting the largest element
from the Heap (i.e. finding and removing it) takes O(log n) time. These properties
make heaps very useful for implementing a priority queue.
Intuitive view of max heap:
You can view the max heap as a binary tree, where each node has two children (or fewer).
and the key of each node (i.e. the number inside the node) is greater than
the keys of its node. There is also min heaps, where each node is smaller than
its child nodes.

The root is stored at index 1, and if a node at index i, then:
 - its left child has index 2 i
 - its right child has index 2 i + 1
 - its parent has index [i / 2]

Time Complexity with Big O Notation:

- worst case time: O(n log n)
- average case time: O(n log n)
- best case time: O(n log n)
'''
$Heap = Array.new(500500, 0)

$sizeH = 0

def up( child )

    parent = child / 2

    while parent != 0

          if $Heap[ parent ] >= $Heap[ child ]

             aux = $Heap[ parent ]

             $Heap[ parent ] = $Heap[ child ]

             $Heap[ child ] = aux

            child = parent

            parent = child / 2
            
          else
            
            break
            
          end
    end

end

def down( parent )

    while 2 * parent <= $sizeH

          child = 2 * parent

          if 2 * parent + 1 <= $sizeH and $Heap[ 2 * parent + 1 ] < $Heap[ 2 * parent ]

                 child += 1
          end

          if $Heap[ parent ] <= $Heap[ child ]

              break
          end

          aux = $Heap[ parent ]
      
          $Heap[ parent ] = $Heap[ child ]
      
          $Heap[ child ] = aux

          parent = child          

    end

end

def insertHeap( value )

    $sizeH += 1

    $Heap[ $sizeH ] = value

    up( $sizeH )

end

def removeHeap

    ret = $Heap[ 1 ]

    $Heap[ 1 ] = $Heap[ $sizeH ]

    $sizeH -= 1

    down( 1 )

    return ret

end

def main

    arr = [100,70,40,30,9,8,7,6,5,4,3,-1,-2,-3]

    n = arr.length

    for i in 0..n-1

        insertHeap( arr[i] )
    end

    for i in 0..n-1

        print removeHeap()," "
    end
end

main
