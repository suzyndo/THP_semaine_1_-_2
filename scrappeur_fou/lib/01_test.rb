require 'rubygems'
require 'nokogiri' 
require 'open-uri'

# Exercices of the bastard book

page = Nokogiri::HTML(open("http://ruby.bastardsbook.com/files/hello-webpage.html"))
# Referring back to our sample HTML, write a selector that chooses only the anchor tags in the div that has 
#the id of "references". Print out the text within the anchor tag followed by its URL.
links = page.css('div#references a')
links.each{|link|  "#{link.text}\t#{link['href']}"} # \t pour tabulation


page = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/HTML"))

labels = page.css('div#content div#bodyContent table.infobox tr th')
labels.each{|label| puts "#{label.text}"}

