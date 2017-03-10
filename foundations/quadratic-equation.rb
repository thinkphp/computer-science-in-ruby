require "cmath"

def quadratic

    arr = []

    f1 = "quadratic.in"

    f2 = "quadratic.out"

    f_in = File.open(f1, "r")

    f_out = File.open(f2, "w")

    i = 1

    f_in.each_line do |line|

          arr = line.split(" ").map(&:to_f)

          a, b, c = arr[0], arr[1], arr[2]
          
          p "Quadratic Equation #{i}:" 
          f_out.puts( "Quadratic Equation #{i}:" )

          p "#{a}x^2 + #{b}x + #{c} = 0"
          f_out.puts("#{a}x^2 + #{b}x + #{c} = 0")

          d = b * b - 4 * a * c

          if d < 0

             p "No Real Solutions! Only Complexe Solutions!"
             f_out.write("No Real Solutions! Only Complexe Solutions!")
             f_out.puts @string #add new line

          end
         
          if d == 0 

             x1 = x2 = (-b + CMath.sqrt(d)) / (2 * a)
             puts "x1 = x2 = #{x1}"
             f_out.write("x1 = x2 = #{x1}")
             f_out.puts @string
          end 

          if d > 0
             x1 = (-b - CMath.sqrt(d)) / (2 * a)
             x2 = (-b + CMath.sqrt(d)) / (2 * a)
             puts "x1 = #{x1} x2 = #{x2}"
             f_out.write("x1 = #{x1} x2 = #{x2}")
             f_out.puts @string
          end 

          i = i + 1           
          puts @string
          f_out.puts @string #add new line
    end 

    f_in.close()

    f_out.close()

end

quadratic