def getMax v, lo, hi

    if lo == hi 
    	v[lo] 
    else

        mid = (lo + hi)>>1
    	a, b = getMax(v, lo, mid), getMax(v, mid + 1, hi)
    	a > b ? a : b
       
    end	

end	

vec = [11,33,44,333,111,88,55,233,1111,88888,5555]

max = getMax(vec, 0, vec.length() - 1)

p max