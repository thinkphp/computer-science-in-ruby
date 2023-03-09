def numberFour(n)
 
	if n - 4 != 0
	    if n % 10 == 0
	    	numberFour(n/10)
	    end	
	    if n % 10 == 4
	    	numberFour(n/10)
	    else
	    	numberFour(n*2)
	    end	
	    print "---->%d"%[n]
	end	
 
end	
n = 3
print "%d"%[4]
numberFour(n)
