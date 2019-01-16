require_relative '../config/environment.rb'

artist1 = Artist.new("Cassidy", 5)
artist2 = Artist.new("Cliff", 1)

gallery1 = Gallery.new("Gallery 1", "New York")
gallery2 = Gallery.new("Gallery 2", "Chicago")

painting1 = Painting.new(artist1, gallery1, "Cass Painting", 3000)
painting2 = Painting.new(artist2, gallery2, "Cliff Painting", 4000)
painting3 = Painting.new(artist1, gallery2, "Cass Paints Again", 7000)

binding.pry

puts "Bob Ross rules."
