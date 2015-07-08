# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Url.create(link: "http://www.google.com", shortlink: Url.randomlink(3), times_visited: 2000)
Url.create(link: "http://www.ironhack.com", shortlink: Url.randomlink(3), times_visited: 3)
Url.create(link: "http://www.cnn.com", shortlink:  Url.randomlink(3), times_visited: 2)
Url.create(link: "http://www.github.com", shortlink: Url.randomlink(3), times_visited: 100)