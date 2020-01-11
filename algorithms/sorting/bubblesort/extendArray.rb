class Array

	  def _bubble_sort

	  	  finished = false

	  	  swapped = 0
	  	  
	  	  size = self.size          

          while not finished

                swapped = false

                for i in 0..size - 2

                    if self[i].to_i > self[i+1].to_i 

                        self[i], self[i+1] = self[i+1], self[i]

                        swapped = true                    	                    	                  
                    end	                    	                 
                end 

                if swapped == true

                    size -= 1

                else

                	finished = true
                end 	                
          end	

          return self
	  end 
end	


p [9,8,7,6,5,4,3,2,-1,0]._bubble_sort
