# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:name => "kaysser", :email => "kaykayyali@gmail.com")
User.create(:name => "nizar", :email => "nizar@ironhack.com")
User.create(:name => "josh", :email => "josh@ironhack.com")