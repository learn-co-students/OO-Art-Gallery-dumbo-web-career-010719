class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def create_painting(gallery, title, price)
    Painting.new(self, gallery, title, price)
  end

  def self.total_experience
    total_experience = @@all.map {|artist| artist.years_experience}
    total_experience.reduce(:+)
  end

  def self.most_prolific
    @@all.max_by {|artist|
      artist.paintings.count.to_f / artist.years_experience.to_f}
  end

end
