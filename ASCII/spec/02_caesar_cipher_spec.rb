require_relative '../lib/02_caesar_cipher'

describe "Caesar secret code" do
  describe "substitute_letter" do
    it "should add in a array each letter of string converted in ASCII number equivalence" do
      expect(substitute_letter("coriace")).to eq([99, 111, 114, 105, 97, 99, 101])
    end

    it "should add in a array each letter of string converted in ASCII number equivalence" do
      expect(substitute_letter("tendresse")).to eq([116, 101, 110, 100, 114, 101, 115, 115, 101])
    end
  end

  describe "shift_number" do
    it "should sum each ASCII number converted with the \" shift \" number choose for the secret code and return an array" do
      expect(shift_number([99, 111, 114, 105, 97, 99, 101], 3)).to eq([102, 114, 117, 108, 100, 102, 104])
    end

    it "should sum each ASCII number converted with the \" shift \" number choose for the secret code and return an array" do
      expect(shift_number([116, 101, 110, 100, 114, 101, 115, 115, 101], 5)).to eq([121, 106, 115, 105, 119, 106, 120, 120, 106])
    end
  end

  describe "conversion" do
    it "should convert an array of number in ASCII letter equivalence to deliver the secret's string" do
      expect(conversion([102, 114, 117, 108, 100, 102, 104])).to eq("fruldfh")
    end

    it "should convert an array of number in ASCII letter equivalence to deliver the secret's string" do
      expect(conversion([121, 106, 115, 105, 119, 106, 120, 120, 106])).to eq("yjsiwjxxj")
    end
  end
end