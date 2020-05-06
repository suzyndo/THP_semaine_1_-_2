# with help of Lucas Montaigut's repo

require 'rubygems'
require 'nokogiri' 
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/" # CONSTANT

# to extract the blockchain's names

def crypto_name(page)
crypto_name_array = []
crypto_name = page.xpath('//tr/td[2]/div/a') # créer mon propre xpath
crypto_name.each{|crypto| crypto_name_array << crypto.text}
return crypto_name_array
end

# to extract the blockchain's values

def crypto_value(page)
crypto_value_array = []
crypto_value = page.xpath("//tr/td[5]/a")
crypto_value_array = crypto_value.collect(&:text)
crypto_value_array.map! do |x|
x.delete("$").to_f #correction : met en float remove the brackets and delete de dollar symbol
end 
return crypto_value_array
end

# to join the results in a hash in a array (name => value)

def perform
  page = Nokogiri::HTML(open(PAGE_URL))  
  result = []
  result << Hash[crypto_name(page).zip(crypto_value(page))]
  print result
end
perform
