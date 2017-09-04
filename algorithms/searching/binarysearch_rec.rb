require "test/unit"

def bsearch_rec(arr=[], key = nil)

    lo, hi = 0, arr.length - 1  

    if lo >= hi 

       return -1

    end 

    middle = (lo+hi)>>1
    
    if arr[middle] == key

       middle

    elsif key < arr[middle]

         bsearch_rec(arr[lo..(middle)], key)
    else 

         bsearch_rec(arr[(middle+1)..hi], key)
    end
    
end

arr = (1..9).to_a

print bsearch_rec(arr, 3)

class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

    assert_equal(0, bsearch_rec([1,2,3,4,5,6,7,8,9], 1))
    assert_equal(1, bsearch_rec([1,2,3,4,5,6,7,8,9], 2))
    assert_equal(2, bsearch_rec([1,2,3,4,5,6,7,8,9], 3))

  end
 
end




