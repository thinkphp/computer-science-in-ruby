# Towers of Hanoi
class TOH
    attr_reader :towers, :size
    
    def initialize(difficulty)
        raise "Incorrect Difficulty. Please provide a number between 3 and 10." if (difficulty > 10 || difficulty < 3)
        @size = difficulty
        @towers = [Array.new(@size) { |i| @size-i },[],[]]
        @moves = 0
    end

    # - Core Methods -
    def move(from,to)
        if vaild_move?(from,to)
            print "Moving disc from tower #{from} to tower #{to}\n\n"
            @towers[to] << @towers[from].pop
            @moves += 1
            render
        else
            print "Invalid Move\n"
        end
    end

    def vaild_move?(from,to)
        # Possible move
        return false unless (0..2).include?(from)
        return false unless (0..2).include?(to)
        return false if @towers[from].length == 0
        return true if @towers[to].length == 0
        # Correct according to game rules
        @towers[from].last < @towers[to].last
    end

    def render
        size_arr = []        
        (0..@size+1).each do |num|
            if num == 0
                size_arr << (Array.new(@size+2," ").join+'||'+Array.new(@size+2," ").join)
            elsif num == @size+1
                size_arr << " "+Array.new((@size+2)*2,"=").join+" "
            else
                str1 = "  "+Array.new(@size-num," ").join+Array.new(num,"*").join
                str2 = Array.new(num,"*").join+Array.new(@size-num," ").join+"  "
                size_arr << str1+"**"+str2
            end
        end

        output = []
        output << (size_arr[0]+size_arr[0]+size_arr[0])
        (@size-1).downto(0) do |num|
            output << (size_arr[@towers[0][num]||0]+size_arr[@towers[1][num]||0]+size_arr[@towers[2][num]||0])
        end
        output << (size_arr[@size+1]+size_arr[@size+1]+size_arr[@size+1])
        
        output.each { |line| print line+"\n" }
        print"\n"
    end

    def won?
        (@towers[1].length == @size || @towers[2].length == @size)
    end

    # - Gameplay Loop -
    def play
        print "\n\nWelcome back to another exciting game of Towers of Hanoi!\n"
        print "This game is brought to you by the letter '#{('A'..'Z').to_a.sample}'\n\n"
        print "This game's difficulty is set to #{@size}\n"
        print "Move discs by entering which tower you would like to take from and where you would like to place it.\n"
        print "Type 'quit' at any time to exit the game\n"
        print "Good luck and have fun!\n\n"
        render

        until won?
            print "Enter in your move (Ex: '0 1'): "
            input = gets.strip

            if input.downcase == 'quit'
                return 'Quitting the game...'
            else 
                input = input.split(' ').map(&:to_i)
            end

            if input.length != 2
                print "Invalid input length\n"
                next
            end

            move(input.first, input.last)
        end

        print "You've solved the puzzle!\nCongratulations!\n"
        puts "It took you #{@moves} moves"
        if @moves == (2**@size - 1)
            puts "This was an optimal solution. Great Job!"
        else
            puts "The optimal solution for this difficulty is #{2**@size - 1} moves."
        end
        return "YOU WIN!"
    end
end

print "Enter a difficulty (3 - 10): "
test = TOH.new(gets.to_i)
test.play
