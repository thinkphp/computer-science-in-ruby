def mss v

	currentSum = 0
	maxsum = v[0]
	start = 0
	ends = -1
	possibleStart = 0

	0.upto(v.length()-1) { 
		|i|  
		if currentSum < 0
		   possibleStart = i	
		end	
		currentSum = [currentSum+v[i], v[i]].max

		if currentSum > maxsum
		   maxsum = currentSum
		   start = possibleStart
		   ends = i	 
	    end		
	} 
    print maxsum," ",start + 1," ", ends + 1, "\n"
end	

def main
	mss([5,-6,3,4,-2,3,-3])
end	

main
