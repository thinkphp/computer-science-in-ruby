#Sorting by Merge
class MergeSort

      def initialize(arr)

          @arr = arr
          @len = arr.size()

          solve()

      end

      def merge(li, m, ls)

         i = li
         j = m + 1
         c = []
         k = 0 
 
         while i<=m and j<=ls
               
               if @arr[i] < @arr[j]
                  c.push(@arr[i])
                  i += 1
               elsif
                  c.push(@arr[j])
                  j += 1
               end               
         end 

         if i<=m 
            (i..m).each do |p|
                c.push(@arr[p])                
            end

         elsif j<=ls
            (j..ls).each do |p|
                c.push(@arr[p])       
            end
         end

         k = 0
         (li..ls).each do |i|
              @arr[i] = c[k]
              k += 1 
         end 

      end

      def divide_et_impera(li, ls)

          if li == ls
             return li
          end

          m = (li+ls)/2
          divide_et_impera(li,m)
          divide_et_impera(m+1,ls)
          merge(li,m,ls)  

      end   

      def solve()

          divide_et_impera(0, @len-1)
 
      end

      def get()
          return @arr
      end

end

arr = [9,8,7,6,5,4,3,2,1,0]
ob = MergeSort.new( arr )
print ob.get()