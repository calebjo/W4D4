require_relative "card.rb"

class Deck
    
    attr_accessor :cards
    VALID_SUITS = ["hearts", "diamonds", "clubs", "spades"]

    def initialize
        @cards = []

        (1..13).each do |number|
            VALID_SUITS.each do |suit|
                @cards << Card.new(number,suit)
            end
        end
    end

    def shuffle!
        @cards.shuffle!
    end

end
