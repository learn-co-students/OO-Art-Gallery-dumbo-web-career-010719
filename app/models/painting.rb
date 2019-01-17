class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist=artist
    @gallery=gallery
    @@all<<self
  end

  def artist
    @artist
  end

  def self.all
    @@all
  end

  def gallery
    @gallery
  end

  def self.total_price
      @@all.map{|paiting|paiting.price}.inject {|sum, paint| sum+paint}
  end



end
