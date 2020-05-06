require_relative '../lib/04_word_counter'

describe "The word counter machine" do
  describe "word_counter" do
    it "should find each match of word in a string and return the frequency of each word in a hash " do
      dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
      expect(word_counter("Howdy partner, sit down! How's it going?", dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
    end
  end
end