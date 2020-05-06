require 'rubygems'
require 'nokogiri'
require 'open-uri'

PAGE_URL = "https://www.annuaire-des-mairies.com"

# get scrap one townhall's email

def get_townhall_email(townhall_url)
page = Nokogiri::HTML(open(townhall_url))
townhall_email = page.xpath('//section[2]//tr[4]/td[2]') # avec nokogiri on obtient un ARRAY de data
townhall_email == "" ? {townhall_email => "aucun mail disponible"} : townhall_email.text
end

# get scrap of the url's of each townhall's of Val d'Oise

def get_townhall_urls
  page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
  townhall_url_array = []
  townhall_url = page.xpath('//tr/td[1]/p/a/@href')
  townhall_url.each do |url| 
     i = url.text.chars # removing the annoying "."
     i.shift 
     townhall_url_array <<  PAGE_URL+i.join
  end
  return townhall_url_array
end

# get scrap the townhall's name for a more readable array of hash

def get_townhall_name
  page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
  townhall_name_array = []
  townhall_name = page.xpath('//tr/td[1]/p/a')
  townhall_name.each{|name| townhall_name_array <<  name.text}
  return townhall_name_array
end


def perform
  townhall_email_array = []
  townhall_url_array = get_townhall_urls
  townhall_url_array.each do |url| 
    townhall_email_array << get_townhall_email(url)
  end
  townhall_name_array = get_townhall_name
  result = []
  result << Hash[townhall_name_array.zip(townhall_email_array)] 
  return result
end
perform


