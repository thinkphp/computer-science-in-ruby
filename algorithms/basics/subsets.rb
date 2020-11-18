def pow a, b
    res = 1
    1.upto(b) { 
      |n|  
      res = res * a   
    }  
    res
end

def generate_subsets str, n
    
    total = pow(2, n)
    
    0.upto(total-1) { 
    	|i|    
        0.upto(n-1) { |j|      
          if (i & (1<<j) != 0)
          	print str[j]
          end     
        } 
        print "\n"
    }    
end

def main
     
	str = gets.chomp
	n = str.length
    generate_subsets str, n
end	

main
