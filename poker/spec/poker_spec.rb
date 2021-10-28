require 'card.rb'
require 'deck.rb'
require 'game.rb'
require 'hand.rb'
require 'player.rb'
require 'rspec'

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

RSpec.describe "Deck" do
    let(:deck) {Deck.new}
    describe "#initialize" do
        it "should have 52 cards" do
            expect(deck.cards.length).to eq(52)
        end

        it "should not have duplicates" do
            expect(deck.cards.uniq.length).to eq(52)
        end
    end

    describe "#shuffle" do 
        fake_deck = [1,2,3,4]
        it "should mix the order of the cards" do 
            expect(deck.shuffle).not_to eq(deck.sort)
        end
    end


end