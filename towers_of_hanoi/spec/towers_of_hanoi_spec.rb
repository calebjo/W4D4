require 'rspec'
require 'towers_of_hanoi'

RSpec.describe "Hanoi" do 
    let(:hanoi) {Hanoi.new}

    describe "#initialize" do
        it "should create 3 piles of discs" do
            expect(pile1).to eq([1,2])
            expect(pile2).to eq([3,4,5])
            expect(pile3).to eq([6,7,8])
        end

    end

    describe "#move" do
        it "should get user input" do
        expect(start_pile).to_not eq(nil)
        expect(end_pile).to_not eq(nil)
    end

    describe "#won?" do
        it "should check if any pile has 8 anything" do 
            8_count = pile1.length == 8 || pile2.length == 8 || pile3.length == 8  
            expect(8_count).to be true
        end
    end



end