MAX = 10000
vec = Array.new(MAX)
sd = 1

def isFriend a, b, vec
	if vec[a-1] == b && vec[b-1] == a
		return 1
	else
		return 0
	end	
end	

1.upto(MAX) {	
    |i| sd = 1
    2.upto(i/2) {
    	|j| 
    	if i % j == 0
    		sd += j
    	end
    }
    vec[i-1] = sd
}

1.upto(MAX-1) { 
	|a|  
	(a+1).upto(MAX) { 
		|b| 
		if isFriend(a,b, vec) == 1
		   print a,", ", b, " Friends \n"
		end 
	}    
}



