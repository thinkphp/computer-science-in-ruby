def PI ep

    anEPS = ep
   
    term1 = 1.0
 
    term2 = 1.0 - 1.0/3     

    i = 5

    sign = 1

    loop do          

        term1 = term2

        term2 += sign * 1.0 / i

        sign *= -1

        i += 2

        break if 4 * ( term1 > term2 ? term1 - term2 : term2 - term1 ) <= anEPS
    end

    4 * term2
end

p PI(0.00001)