require 'rspec'
require 'tdd_project'

describe "#my_uniq" do
    let(:array) { [1, 2, 1, 3, 3] }
    let(:array2) { [1, 2, 3] }

    it "removes doubles from the array" do
        expect(my_uniq(array)).to eq(array2)
    end
end

describe "two_sum" do 
    let(:array){[-1,0,2,-2,1]}
    
    it "finds pairs that sums to 0" do
        expect(array.two_sum).to eq([[0,4],[2,3]])
    end

    it "should have the smaller index first" do
        expect(array[0] < array[1]).to be true
    end 
end

describe "my_transpose" do 
    let(:array) {    
    [   [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]   ] }

    let(:array2) {    
    [   [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]   ] }

    it "should zip the arrays" do
        expect(my_transpose(array)).to eq(array2)
    end
end
