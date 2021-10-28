class Card
    attr_reader :number, :suit

    VALID_SUITS = ["hearts", "diamonds", "clubs", "spades"]

    def initialize(number, suit)
        @number = number
        @suit = suit
        unless VALID_SUITS.include?(suit.downcase) && number.between?(1,13)
            raise ArgumentError.new("Invalid suit.")
        end
    end
end