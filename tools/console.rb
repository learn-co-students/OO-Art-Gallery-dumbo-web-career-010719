require_relative '../config/environment.rb'






john = Artist.new("John", 20)
lisa = Artist.new("Lisa", 30)
ela = Artist.new("Ela", 10)

gal1= Gallery.new("Gal1", "NY")
gal2= Gallery.new("Gal2", "BK")
gal3= Gallery.new("Gal3", "QN")

paint1=Painting.new("A", 100, john, gal1)
paint2=Painting.new("B", 200, lisa, gal2)
paint3=Painting.new("C", 300, john, gal3)
paint4=Painting.new("D", 500, ela, gal1)



puts "Bob Ross rules."

binding.pry