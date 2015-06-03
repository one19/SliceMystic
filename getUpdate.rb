#Penny Arcade Comic
require 'open-uri'
doc = Nokogiri::HTML(open('http://www.penny-arcade.com/comic'))
img = doc.css('div#comicFrame img')[0]['src']
title = doc.css('div#comicFrame img')[0]['alt']
url = doc.css('div#feedPA a')[1]['href']
content = nil
tags = nil
website_id = website.id
update = Update.new


#sinfest
doc = Nokogiri::HTML(open("http://www.sinfest.net/"))