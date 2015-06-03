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
#IT DOESNT FUCKING WORK


#reddit games
'doc.css("div#siteTable a.title")[0].inner_text###doc.css("div#siteTable a.title")[0]["href"]###nil###doc.css("div#siteTable div.unvoted")[1].inner_text + " reddit score."###nil'
title = doc.css("div#siteTable a.title")[0].inner_text
url = doc.css("div#siteTable a.title")[0]["href"]
img = nil
content = doc.css("div#siteTable div.unvoted")[1].inner_text + " reddit score."
tags = nil

#dresden codak TUMBLR
doc = Nokogiri::HTML(open("http://dresdencodak.tumblr.com/"))
'doc.css("div.post div.content a")[0].inner_text###doc.css("div.post div.content a")[0]["href"]###doc.css("div.post img")[0]["src"]###content = nil###"dresden codak"'
title = doc.css("div.post div.content a")[0].inner_text
url = doc.css("div.post div.content a")[0]["href"]
img = doc.css("div.post img")[0]["src"]
content = nil
tags = "dresden codak"

#cyanide and happiness
doc = Nokogiri::HTML(open("http://explosm.net/"))
'doc.css("div.row h1")[0].inner_text###"http://explosm.net".concat(doc.css("h3.past-week-comic-title a")[0]["href"])###doc.css("img#featured-comic")[0]["src"]###nil###nil'
title = doc.css("div.row h1")[0].inner_text
url = "http://explosm.net".concat(doc.css("h3.past-week-comic-title a")[0]["href"])
img = doc.css("img#featured-comic")[0]["src"]
content = nil
tags = nil

#guardian world news
doc = Nokogiri::HTML(open("http://www.theguardian.com/world"))
'doc.css("div.fc-item__content a")[0].inner_text###doc.css("div.fc-item__content a")[0]["href"]###"http://www.".concat(doc.css("div.fc-item__media-wrapper img")[0]["src"][2..-1])###nil###nil'
title = doc.css("div.fc-item__content a")[0].inner_text
url = doc.css("div.fc-item__content a")[0]["href"]
img = "http://www.".concat(doc.css("div.fc-item__media-wrapper img")[0]["src"][2..-1])
content = nil
tags = nil

#totalbiscuit youtube
doc = Nokogiri::HTML(open("https://www.youtube.com/user/TotalHalibut/videos"))
'"TotalBiscuit - ".concat(doc.css("h3.yt-lockup-title a")[0].inner_text)###"https://www.youtube.com".concat(doc.css("ul#channels-browse-content-grid li a")[0]["href"])###doc.css("span.yt-thumb-clip img")[0]["src"]###nil###nil'
title = "TotalBiscuit - ".concat(doc.css("h3.yt-lockup-title a")[0].inner_text)
url = "https://www.youtube.com".concat(doc.css("ul#channels-browse-content-grid li a")[0]["href"])
img = doc.css("span.yt-thumb-clip img")[0]["src"]
content = nil
tags = nil

#game grumps youtube
doc = Nokogiri::HTML(open("https://www.youtube.com/user/GameGrumps/videos"))
'"GameGrumps - ".concat(doc.css("h3.yt-lockup-title a")[0].inner_text)###"https://www.youtube.com".concat(doc.css("ul#channels-browse-content-grid li a")[0]["href"])###doc.css("span.yt-thumb-clip img")[0]["src"]###nil###nil'
title = "TotalBiscuit - ".concat(doc.css("h3.yt-lockup-title a")[0].inner_text)
url = "https://www.youtube.com".concat(doc.css("ul#channels-browse-content-grid li a")[0]["href"])
img = doc.css("span.yt-thumb-clip img")[0]["src"]
content = nil
tags = nil

#werd119 tumblr
doc = Nokogiri::HTML(open("http://werd119.tumblr.com/"))
'doc.css("section.post h2")[0].inner_text###doc.css("div.date-note-wrapper a")[0]["href"]###doc.css("section.post iframe")[0]["src"]###nil###nil'
title = doc.css("section.post h2")[0].inner_text
url = doc.css("div.date-note-wrapper a")[0]["href"]
img = doc.css("section.post iframe")[0]["src"]
content = nil
tags = nil