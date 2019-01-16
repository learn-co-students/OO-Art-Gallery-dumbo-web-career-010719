require_relative '../config/environment.rb'


artist1 = Artist.new("Art", 25)
artist2 = Artist.new("Bob", 10)
artist3 = Artist.new("Chuck", 15)

gallery1 = Gallery.new("Guug", "NY")
gallery2 = Gallery.new("Smith", "GA")
gallery3 = Gallery.new("Berl", "Berlin")
gallery4 = Gallery.new("Wonk", "AZ")

painting1 = Painting.new("No", 100, gallery1, artist1)
painting2 = Painting.new("Seeking", 25, gallery2, artist1)
painting3 = Painting.new("Chair", 10, gallery3, artist1)
painting4 = Painting.new("Happy", 150, gallery2, artist2)
painting5 = Painting.new("Mis", 35, gallery3, artist3)
painting6 = Painting.new("Wall", 35, gallery4, artist2)
painting7 = Painting.new("Floor", 35, gallery4, artist1)
painting8 = Painting.new("Cup", 35, gallery1, artist3)


binding.pry

puts "Bob Ross rules."
