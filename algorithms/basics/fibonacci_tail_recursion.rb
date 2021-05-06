$arr = Array.new
 
def fib(n, a, b)
 
	if n == 1
 
	   $arr.push(a)	
 
	   return a
 
	else
	   $arr.push(a)
	   return fib(n-1, b, a + b)	
	end	
end	
 
fib(10, 0, 1)
print $arr
 
