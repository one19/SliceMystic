#Penny Arcade Comic
require "open-uri"
string = 'doc.css("div#comicFrame img")[0]["alt"]###doc.css("div#feedPA a")[1]["href"]###doc.css("div#comicFrame img")[0]["src"]###nil###nil'
doc = Nokogiri::HTML(open("http://www.penny-arcade.com/comic"))

title = doc.css("div#comicFrame img")[0]["alt"]
url = doc.css("div#feedPA a")[1]["href"]
img = doc.css("div#comicFrame img")[0]["src"]
content = nil
tags = nil


#sinfest
doc = Nokogiri::HTML(open("http://www.sinfest.net/"))


#reddit games
'doc.css("div#siteTable a.title")[0].inner_text###doc.css("div#siteTable a.title")[0]["href"]###nil###doc.css("div#siteTable div.unvoted")[1].inner_text + " reddit score."###nil'
title = doc.css("div#siteTable a.title")[0].inner_text
url = doc.css("div#siteTable a.title")[0]["href"]
img = nil
content = doc.css("div#siteTable div.unvoted")[1].inner_text + " reddit score."
tags = nil