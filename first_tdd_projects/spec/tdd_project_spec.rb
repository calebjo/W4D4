require 'rspec'
require 'tdd_project'

describe "#my_uniq" do
    let(:array) { [1, 2, 1, 3, 3] }
    let(:array2) { [1, 2, 3] }

    it "removes doubles from the array" do
        expect(my_uniq(array)).to eq(array2)
    end
end