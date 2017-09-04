require "test/unit"

def bsearch(arr=[], key = nil)

    return -1 if key.nil? || arr.nil?

    lo = 0

    hi = arr.size - 1

    while lo <= hi do

          m = (lo+hi)>>1

          return m+1 if arr[m] == key

          key < arr[m] ? hi = m - 1 : lo = m + 1
    end 

    return -1
end

array = (1..100).to_a

print bsearch(array, 1)


class TestSimpleNumber < Test::Unit::TestCase
 
  def test_simple

    assert_equal(1, bsearch([1,2,3,4,5,6,7,8,9], 1))
    assert_equal(2, bsearch([1,2,3,4,5,6,7,8,9], 2))
    assert_equal(3, bsearch([1,2,3,4,5,6,7,8,9], 3))

  end
 
end


