class RPN
    attr_reader :stack, :result
    def initialize
        @stack = []
        @result = 0
    end
    def clear_stack
      @stack = []
    end
    def pop()
       @stack.pop
    end
    def push(data)
      @stack << data.to_f
    end
    def operation(op)
        raise "Not enough numbers in the stack" if (@stack.length < 2)
        term1 = pop
        term2 = pop
        @result = eval("#{term2}#{op}#{term1}")
        @stack << @result
    end
    def evaluate(str)
        puts "Evaluating #{str}"
        str.split(' ').each do |el|
           '+-*/'.include?(el) ? operation(el) : push(el)
        end
        clear_stack
        @result
    end
end
 
c = RPN.new
p c.evaluate('1 2 3 4 5 6 7 8 9 10 + + + + + + + + +')
