#
# Description: Display Numbers Primes.
#
# Author     : Adrian Statescu <mergesortv@gmail.com>
#
# MIT        : License 

def isPrime n

	if n == 2 or n == 3
	return 1	 
    end		
 
    prime = 1
    k = 2

    while prime and (k*k)<=n
    	  prime = (n % k) != 0
    	  k += 1
    end 	

    return prime
end

def _main
	print "n="
	n = gets.to_i
	2.upto(n) { 
		   |i| 
	       if isPrime i
	       	  print i, " "
	       end	
	}
	puts ""
end	

def __main
	count = 0
	i = 2
	print "n="
	n = gets.to_i

	while count != n
		if isPrime i
           print i, " "
           count += 1
	    end	
	    i += 1	
	end 	

end	

_main()
__main()
