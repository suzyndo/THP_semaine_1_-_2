require "rubygems"
require "nokogiri"
require "open-uri"
require "pry"

PAGE_URL = "http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"

# get scrap informations of one deputy

def get_deputy_first_name(deputy_url)
  page =  Nokogiri::HTML(open(deputy_url))
  first_name = page.xpath('//div[2]/h1')
  first_name == "" ? {first_name => "le prénom est manquant"} : first_name.text.split.delete_at(1)
end

def get_deputy_last_name(deputy_url)
  page =  Nokogiri::HTML(open(deputy_url))
  last_name = page.xpath('//div[2]/h1')
  last_name == "" ? {last_name => "le nom est manquant"} : last_name.text.split.drop(2).join
end

def get_deputy_email(deputy_url)
  page =  Nokogiri::HTML(open(deputy_url))
  email = page.xpath('//dd[4]/ul/li[2]/a')
  email == "" ? {email => "l'email est manquant"} : email.text
end

# get scrap all the url's of deputies

def get_deputies_urls
  page =  Nokogiri::HTML(open(PAGE_URL))
  urls = page.xpath('//div[3]/div/ul/li/a/@href').map{|url| "http://www2.assemblee-nationale.fr"+url}
  return urls
end

def perform
  urls = get_deputies_urls
  first_name_array = []
  last_name_array = []
  email_array = []
  urls.each do |url| 
    first_name_array << get_deputy_first_name(url)
    last_name_array << get_deputy_last_name(url)
    email_array << get_deputy_email(url)
  end
  result = first_name_array.zip(last_name_array)
  #result << Hash[]
  print result
end
perform

# exemple of Luca Montaigut
=begin
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_depute_email(page)
  page.xpath("//a[starts-with(@href, 'mailto')]/text()")[1].text
end

def get_depute_first_name(page)
  first_name = []
  array = page.xpath("//article/div[2]/h1").text.split(" ")
  array.delete_at(0)
  first_name << array[0]
  first_name.join
end


def get_depute_last_name(page)
  array = page.xpath("//article/div[2]/h1").text.split(" ")
  array.delete_at(0)
  array.delete_at(0)
  array.join(" ")
end

def get_urls_depute
  page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  urls = page.xpath("//div/div[3]/div/ul/li/a/@href").map {|url| "http://www2.assemblee-nationale.fr" + url}
end

def hash_depute(get_depute_first_name,get_depute_last_name,get_depute_email)
  hash_temp = Hash.new
  hash_temp["first_name"]=get_depute_first_name
  hash_temp["last_name"]=get_depute_last_name
  hash_temp["email"]=get_depute_email
  hash_temp
end

def perform
  depute = get_urls_depute.map do |url|
    page = Nokogiri::HTML(open(url))
    hash_depute(get_depute_first_name(page),get_depute_last_name(page),get_depute_email(page))
    puts hash_depute(get_depute_first_name(page),get_depute_last_name(page),get_depute_email(page))
  end
  depute
end

perform
=end