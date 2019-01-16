require_relative '../config/environment.rb'


jim = Artist.new("Jim", 12)
bob = Artist.new("Bob", 7)

no1_gallery = Gallery.new("No 1 Gallery", "New York")

rainbow = Painting.new("rainbow", 100, no1_gallery, bob)
pony = Painting.new("pony", 200, no1_gallery, jim)

binding.pry

puts "Bob Ross rules."
