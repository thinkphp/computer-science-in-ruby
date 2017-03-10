def monte_carlo(n)

    count = 0

    n.times do

         x = Random.rand()

         y = Random.rand()

         z = x**2 + y**2

         if z <= 1 

            count = count + 1

         end 
    end 

    (4 * count) / n.to_f
end

p monte_carlo(10**6)