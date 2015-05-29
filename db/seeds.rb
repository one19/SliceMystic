# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Pie.destroy_all
Website.destroy_all
Update.destroy_all

u1 = User.create(:name => 'Timmy', :email => 'maelstroswim@gmail.com', :icon => '192348483939', :password => 'butts', :password_confirmation => 'butts', :admin => false)
u2 = User.create(:name => 'Benny', :email => 'gtechshowalter@gmail.com', :icon => '192348411939', :password => 'butts', :password_confirmation => 'butts', :admin => true)

w1 = Website.create(:name => 'Sinfest', :chunks => 'asdjfakjsdbbfdbadsfj<li>stuff</li>', :icons => 'junk, things, placessdfasdf.jpg', :meta => 'webcomic, funny, black-and-white', :url => 'http://sinfest.com')
w2 = Website.create(:name => 'Dresden Codak', :chunks => 'asdjfakjsdbbfdbadsfj<li>stuff</li>', :icons => 'junadsfk, things, placessdfasddff.jpg', :meta => 'webcomic, drama, science', :url => 'http://dresdencodak.com')
w3 = Website.create(:name => 'Cyanide and Happiness', :chunks => 'asdjfakjsdbbfdbadsfj<li>stuff</li>', :icons => 'junk, things, placessdfasdf.jpg', :meta => 'webcomic, funny', :url => 'http://explosm.net/comics/latest/')
w4 = Website.create(:name => 'Penny Arcade', :chunks => 'asdjfakjsdbbfdbadsfj<li>stuff</li>', :icons => 'junadsfk, things, placessdfasddff.jpg', :meta => 'webcomic, funny, games', :url => 'http://www.penny-arcade.com/comic')

p1 = Update.create(:title => 'Observer Effect', :url => 'http://penny-arcade.com/comic/2015/05/27', :content => nil, :image => 'http://art.penny-arcade.com/photos/i-xKSk7LR/0/1050x10000/i-xKSk7LR-1050x10000.jpg', :tags => 'music, sad', :website_id => w4.id.to_i)
p2 = Update.create(:title => 'Observer Effect', :url => 'http://penny-arcade.com/comic/2015/05/27', :content => nil, :image => 'http://art.penny-arcade.com/photos/i-xKSk7LR/0/1050x10000/i-xKSk7LR-1050x10000.jpg', :tags => 'music, sad', :website_id => w4.id.to_i)
p3 = Update.create(:title => 'Observer Effect', :url => 'http://penny-arcade.com/comic/2015/05/27', :content => nil, :image => 'http://art.penny-arcade.com/photos/i-xKSk7LR/0/1050x10000/i-xKSk7LR-1050x10000.jpg', :tags => 'music, sad', :website_id => w3.id.to_i)
p4 = Update.create(:title => 'Observer Effect', :url => 'http://penny-arcade.com/comic/2015/05/27', :content => nil, :image => 'http://fillmurray.com/1200/1200', :tags => 'music, sad', :website_id => w2.id.to_i)
p5 = Update.create(:title => 'Observer Effect', :url => 'http://penny-arcade.com/comic/2015/05/27', :content => nil, :image => 'http://fillmurray.com/400/400', :tags => 'music, sad', :website_id => w1.id.to_i)

i1 = Pie.create(:name => 'Comics 1', :description => "A collection of funny and dramatic comics", :color => "rgba(234,29,123,1)")
i2 = Pie.create(:name => 'Comics 2', :description => "A shitt collection of shit", :color => "rgba(40,129,3,1)")

u1.pies << i1 << i2
u2.pies << i2

i1.websites << w1 << w2 << w4
i2.websites << w3