class Array

	  def binary_search( k )

	  	  lo = 0

	  	  hi = length - 1

          while lo <= hi

          	     m = (lo+hi)>>1

          	     if k < self[m]

          	     	hi = m - 1 

          	     elsif k > self[m]

          	     	lo = m + 1

          	     else
          	     	
          	     	 return m + 1
          	     end 	          	     			
          	     			
          end	

          return -1
	  end	
end

print [1,2,3,4,5,7,8,9,10].binary_search(10)
