def fib(nth)
	arr = Array.new(nth + 1, 0)
	arr[0] = 0
	arr[1] = 1
	#print arr[0],' ', arr[1], ' '
	for i in 2..nth
	    arr[i] = arr[i-1] + arr[i-2]
	    #print arr[i], ' '
	end
	arr[nth]
end	

print fib(100)
