#
# Adrian Statescu 
# Towers of Hanoi implemented in Ruby Languange
#

class Hanoi

      def initialize(n)
          @n,@a,@b,@c = n,"a","b","c"
      end 
      def run
          self.divideEtImpera(@n,@a,@b,@c)
      end
      def divideEtImpera(n,a,b,c)
          if n == 1
             p a+b            
          else
             divideEtImpera(n-1,a,c,b)
             p a+b
             divideEtImpera(n-1,c,b,a)
          end    

      end 
end

ob = Hanoi.new(3)
ob.run