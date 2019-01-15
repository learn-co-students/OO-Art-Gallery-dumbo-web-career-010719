require_relative '../config/environment.rb'



norbert = Artist.new("Norbert", 3)
raymond = Artist.new("Raymond", 2)
prince = Artist.new("Prince", 5)

gal1 = Gallery.new("Moma", "NYC")
gal2 = Gallery.new("Nice", "Seattle")
gal3 = Gallery.new("Weird", "Boston")

p1 = Painting.new("Mona Lisa", 200, norbert, gal2)
p2 = Painting.new("Last Supper", 200, norbert, gal1)
p3 = Painting.new("Weird Painting", 500, raymond, gal3)
p4 = Painting.new("Small Painting", 400, prince, gal3)
p5 = Painting.new("Large Painting", 100, norbert, gal3)


binding.pry

puts "Bob Ross rules."
