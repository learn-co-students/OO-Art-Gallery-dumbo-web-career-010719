require_relative '../config/environment.rb'


mrart = Artist.new("Mr", 12)
kat = Artist.new("Kat", 11)
ez = Artist.new("Ez", 8)

g1 = Gallery.new("G1", "Atlanta")
g2 = Gallery.new("G2", "Seattle")
g3 = Gallery.new("G3", "Philly")

painting1 = Painting.new("GOOO", 700, g1, kat)
painting2 = Painting.new("YOOOO", 450, g1, kat)
painting3 = Painting.new("ZOOOO", 550, g1, kat)
painting4 = Painting.new("THAT", 1650, g2, ez)
painting5 = Painting.new("WHO", 4530, g1, ez)
painting6 = Painting.new("qqq", 900, g3, mrart)
painting7 = Painting.new("rrrrr", 600, g1, mrart)



binding.pry

puts "Bob Ross rules."
