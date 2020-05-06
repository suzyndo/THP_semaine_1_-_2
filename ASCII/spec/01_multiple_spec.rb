require_relative '../lib/01_multiple'

describe "Multiple" do
  describe "sum of multiples of 3 or 5" do
    it "should sum multiples of 3 or 5 strictly inferior to 20" do
      expect(multiple(21)).to eq(98)
    end

    it "should sum multiples of 3 or 5 strictly inferior to 8" do
      expect(multiple(8)).to eq(14)
    end

    it "should sum multiples of 3 or 5 strictly inferior to 1000" do
     expect(multiple(1000)).to eq(233168)
    end
  end 
end