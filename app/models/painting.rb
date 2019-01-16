class Painting

  attr_reader :title, :price, :gallery, :artist

  @@all = []
  @@price = []

  def initialize(title, price, gallery, artist)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
    @@price << price
  end

  def self.all
  	@@all
  end

  def self.total_price
  	@@price.reduce(0, :+).to_i
  end

end
