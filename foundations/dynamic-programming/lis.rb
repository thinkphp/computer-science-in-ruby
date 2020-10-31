#
# Description : Longest Increasing Subsequence in Ruby language
#
# This problem is part of Dynamic Programming technique.
# and written by Adrian Statescu <http://adrianstatescu.ch>
# 
# Complexity  : O(n^2)
#
# License     : MIT

def lis( v )

    n = v.length()
    
    lens = Array.new(n, 0)

    lens[n-1] = 1

    max = 0

    i = n - 2

    while i >= 0
        
        max = 0

        j = i + 1

        while(j < n)
        
              if(v[j]>=v[i] && lens[j]>max)

                 max = lens[j]
              end      

        	  j+=1
        end 

              lens[i] = 1 + max 
    	i-=1
    end 	
   
    get_max = lens.max

    get_max_stored = get_max

    index_max = lens.rindex(get_max)

    sol = Array.new(get_max,0)

    sol[0] = v[index_max]

    k = 1
    
    (index_max+1..n-1).each{|i| 

	                if(v[i] > v[index_max] && (get_max - 1) == lens[i])

    	                	sol[k] = v[i]

    	                	get_max-=1

    	                	k+=1
    	            end 	     
    
                       }     
                       [sol, get_max_stored]                    
end

# print lis([11,55,22,7,8,1,88,100])
out = lis([10,9,2,5,3,7,101,18])
print "The Longest increasing subsequence increasing -> "
p out[0]
print "The length is -> "
p out[1]
p "The algorithm runs on O(n^2) Complexity"