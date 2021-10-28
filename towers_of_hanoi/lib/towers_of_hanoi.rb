class Hanoi
    def initialize
        @pile1 = [1,2]
        @pile2 = [3,4,5]
        @pile3 = [6,7,8]
    end

    def move
        until won?
            puts "Select a start pile (1,2,3)"
            start_pile = gets.chomp.to_i

            puts "Select a end pile (1,2,3)"
            end_pile = gets.chomp.to_i 

            case start_pile
                
            when 1
                disc == @pile1.pop
            when 2
                disc == @pile2.pop
            when 3
                disc == @pile3.pop
            end
        end
    end

    def won?
    end


end