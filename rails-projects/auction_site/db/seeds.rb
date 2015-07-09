# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
kaysser = User.create(name: "Kaysser" , email: "kaykayyali@gmail.com", password: "password")
product = Product.new(description: "Blah", title: "MacBook", deadline: DateTime.new)
product.user = kaysser
product.save
bid = Bid.new(amount: 10.0)
bid.user = kaysser
bid.product = product
bid.save


cesar = User.create(name: "Cesar" , email: "cesarbourdon@gmail.com", password: "password")
nizar = User.create(name: "Nizar" , email: "nizar@ironhack.com", password: "password")
andrew = User.create(name: "Andrew" , email: "andrew@imsick.com", password: "password")

product1 = Product.new(description: "super computer", title: "Lenovo", deadline: DateTime.new)
product1.user = cesar
product1.save
bid = Bid.new(amount: 10.0)
bid.user = cesar
bid.product = product1
bid.save

product2 = Product.new(description: "not bad", title: "HP", deadline: DateTime.new)
product2.user = nizar
product2.save
bid = Bid.new(amount: 10.0)
bid.user = nizar
bid.product = product2
bid.save

product3 = Product.new(description: "old laptopssss!!!", title: "IBM", deadline: DateTime.new)
product3.user = andrew
product3.save
bid = Bid.new(amount: 10.0)
bid.user = andrew
bid.product = product3
bid.save