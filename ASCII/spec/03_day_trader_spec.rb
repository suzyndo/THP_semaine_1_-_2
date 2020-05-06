require_relative '../lib/03_day_trader'

describe "Day_trader" do
  describe "buying_day" do
    it "should add in a array the index of the most minimum value in the first half part of the price array" do
      expect(buying_day([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1])
    end
  end

  describe "selling_day" do
    it "should add in a array the index of the maximum value, if the index of the value is superior to the index of the minimum value" do
      expect(selling_day([17, 3, 6, 9, 15, 8, 6, 1, 10],[1])).to eq([1, 4])
    end
  end
end