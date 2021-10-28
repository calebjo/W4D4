require 'card.rb'
require 'deck.rb'
require 'game.rb'
require 'hand.rb'
require 'player.rb'

RSpec.describe "Card" do
    let(:card) {Card.new(6, "clubs")}

    describe "#initialize" do
        it "creates a card with a number" do
            expect(card.number).to eq(6)
        end

        it "creates a card with a suit" do
            expect(card.suit).to eq("clubs")
        end

        it "should not create a card with a number over 13 or under 1" do
            expect{Card.new(100, "clubs")}.to raise_error(ArgumentError)
        end

        it "should not create a card with an invalid suit" do
            expect{Card.new(5, "memes")}.to raise_error(ArgumentError)
        end
    end
end

