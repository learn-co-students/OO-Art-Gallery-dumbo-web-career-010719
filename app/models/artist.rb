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
    Painting.all.select{ |painting|
      painting.artist == self
    }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery}.uniq
  end

  def self.most_prolific
    self.all.max_by { |artist| artist.years_experience}
  end

  def cities
    self.galleries.map { |gallery| gallery.city}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, gallery, self)
  end

  def self.total_experience
    @@all.inject(0){ |sum, n| sum + n.years_experience}
  end

end
