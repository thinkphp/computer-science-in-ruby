#Ruby Looping Methods -> n.times
def bubblesort(vector)

     n = vector.length

     loop do

       changed = false

       (n-1).times do |i|
           
           if vector[ i ] > vector[ i + 1 ] 

              vector[ i ], vector[ i + 1 ] = vector[ i + 1 ], vector[ i ]

              changed = true

           end
       end  

      break if not changed

     end

vector

end


def bubblesort2 vector

     n = vector.length

     loop do

       changed = false

       (n-1).times do |i|
           
           if vector[ i ] > vector[ i + 1 ] 

              vector[ i ], vector[ i + 1 ] = vector[ i + 1 ], vector[ i ]

              changed = true

           end
       end  

      break if not changed

     end

vector

end

#loop for i in a..b
def bubblesort3(vector)

     n = vector.length

     for i in 0..n-1
         for j in 0..n-i-2
             if vector[ j ] > vector[ j + 1 ]
                vector[ j ], vector[ j + 1] = vector[ j + 1 ], vector[ j ]     
             end
         end
     end 
   vector
end


p bubblesort3([9,8,7,6,5,4,3,2,1,0])