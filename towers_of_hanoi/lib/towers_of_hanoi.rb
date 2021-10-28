class Hanoi
    attr_accessor :pile1, :pile2, :pile3

    def initialize
        @pile1 = [1,2]
        @pile2 = [3,4,5]
        @pile3 = [6,7,8]
        @game_over = false
    end

    def move
        until won?
            p @pile1
            p @pile2
            p @pile3

            puts "Select a start pile (1,2,3)"
            start_pile = gets.chomp.to_i

            disc = nil
            case start_pile 
            when 1
                disc = @pile1.pop
            when 2
                disc = @pile2.pop
            when 3
                disc = @pile3.pop
            end

            puts "Select an end pile (1,2,3)"
            end_pile = gets.chomp.to_i 

            case end_pile
            when 1
                @pile1.push(disc)
            when 2
                @pile2.push(disc)
            when 3
                @pile3.push(disc)
            end

        end
        puts "You win!"
    end

    def valid_arg?(n)
        n == 1 || n == 2 || n == 3
    end

    def won?
        @game_over = true if eight_count
    end

    def eight_count
        @pile1.length == 8 || @pile2.length == 8 || @pile3.length == 8 
    end

end