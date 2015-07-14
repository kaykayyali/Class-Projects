# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.create(
:title => "NEW POST!",	:author => "Kaysser", :date => DateTime.now, :source => "Http://kaykayyali.com", :content => "Super awesome content on the way!", :summary => "Listen to Nizar, he is the ruby wizard!")
Article.create(:title => "NEW POST!",:author => "Kaysser", :date => DateTime.now, :source => "Http://kaykayyali.com", :content => "Super awesome content on the way!", :summary => "Listen to Nizar, he is the ruby wizard!")
Article.create(:title => "NEW POST!",:author => "Kaysser", :date => DateTime.now, :source => "Http://kaykayyali.com", :content => "Super awesome content on the way!", :summary => "Listen to Nizar, he is the ruby wizard!")
Article.create(:title => "NEW POST!",:author => "Kaysser", :date => DateTime.now, :source => "Http://kaykayyali.com", :content => "Super awesome content on the way!", :summary => "Listen to Nizar, he is the ruby wizard!")
Article.create(:title => "NEW POST!",:author => "Kaysser", :date => DateTime.now, :source => "Http://kaykayyali.com", :content => "Super awesome content on the way!", :summary => "Listen to Nizar, he is the ruby wizard!")


    	# t.string :author
    	# t.datetime :date
    	# t.string :source
    	# t.text :content
    	# t.text :summary