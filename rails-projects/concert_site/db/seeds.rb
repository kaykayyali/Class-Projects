# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

concert = Concert.create( :artist => "John Mayer", :date => DateTime.new(2015, 7, 23), :venue => "Cruzan Amphitheatre", :city => "Boca Raton", :ticket_price => 45, :description => "")
concert = Concert.create( :artist => "DeadMau5", :date => DateTime.new(2016, 1, 3), :venue => "Liv @ Fountaine Bleu", :city => "Miami Beach", :ticket_price => 105, :description => "")
concert = Concert.create( :artist => "Kaskade", :date => DateTime.new(2014, 2, 20), :venue => "American Airlines Arena", :city => "Miami", :ticket_price => 85, :description => "")
concert = Concert.create( :artist => "ACDC", :date => DateTime.new(1985, 7, 1), :venue => "Landshark Stadium", :city => "Miami", :ticket_price => 15, :description => "")
concert = Concert.create( :artist => "John Mayer", :date => DateTime.new(2015, 7, 23), :venue => "Cruzan Amphitheatre", :city => "Boca Raton", :ticket_price => 45, :description => "")
concert = Concert.create( :artist => "DeadMau5", :date => DateTime.new(2016, 1, 3), :venue => "Liv @ Fountaine Bleu", :city => "Miami Beach", :ticket_price => 105, :description => "")
concert = Concert.create( :artist => "Kaskade", :date => DateTime.new(2014, 2, 20), :venue => "American Airlines Arena", :city => "Miami", :ticket_price => 85, :description => "")
concert = Concert.create( :artist => "ACDC", :date => DateTime.new(2015, 7, 10), :venue => "Landshark Stadium", :city => "Miami", :ticket_price => 15, :description => "")
