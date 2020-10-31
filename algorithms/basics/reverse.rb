def _r v, lo, hi    
	if lo < hi
		v[lo], v[hi] = v[hi], v[lo]
		_r v, lo+1, hi-1
    end		
end	

def __r(v)
	_r v, 0, v.length() - 1
end	

v = [0,1,2,3,4,5,6,7,8,9]

p v 
__r v
p v