require 'rspec'
require 'towers_of_hanoi'

RSpec.describe "Hanoi" do 
    let(:hanoi) {Hanoi.new}

    describe "#initialize" do
        it "should create 3 piles of discs" do
            expect(hanoi.pile1).to eq([1,2])
            expect(hanoi.pile2).to eq([3,4,5])
            expect(hanoi.pile3).to eq([6,7,8])
        end

    end

    describe "#move" do
        it "should get user input" do
            # allow($stdin).to receive(:gets)
            # pile = $stdin.gets
            # expect(pile).not_to eq(nil)
        end
    end

    describe "#won?" do
        hanoi.pile3 = [1,2,3,4,5,6,7,8]
        it "should check if any pile has 8 anything" do 
            # expect(pile3.length).to eq(8)
            expect(hanoi.won?).to be true
        end
    end

end