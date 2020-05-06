require_relative '../lib/02_blockchain'
page = Nokogiri::HTML(open(PAGE_URL))  

describe "Cryptoscrapper" do

  describe "crypto_name" do
    it "should return in a array the name of each crypto" do
      expect(crypto_name(page)).to be_an_instance_of(Array) 
    end

    it "Includes at least 3 cryptocurrencies" do 
      expect(crypto_name(page)).to include("Bitcoin")
      expect(crypto_name(page)).to include("Ethereum")
      expect(crypto_name(page)).to include("XRP")
    end 
  end

  describe "crypto_value" do
    it "should return in a array the price of each crypto" do
      expect(crypto_value(page)).to be_an_instance_of(Array)
      expect(crypto_value(page).size).to eq(crypto_name(page).size)
    end

    it "shouldn't have nil value" do
      expect(crypto_value(page)).not_to include(nil)
    end
  end

  describe "perform" do 
    it "should return an array of hash" do
      expect(perform()).to be_an_instance_of(Array)
      expect(perform()).to include(Hash)
    end
      
    it "shouldn't have nil value" do
      expect(perform()).not_to eq(nil)
      #expect(perform()).not_to include(nil) 
	  end
  end
end
  
