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
  	Painting.all.select do |painting|
  		painting.artist == self
  	end
  end

  def galleries
  	paintings.map do |painting|
  		painting.gallery
  	end
  end

  def cities
  	galleries.map do |gallery|
  		gallery.city
  	end
  end

  def self.total_experience
  	Artist.all.inject(0) {|sum, artist| sum + artist.years_experience}
  end

  def self.most_prolific
  	prolific = {}
  	@@all.each do |artist|
  		prolific[artist] = artist.paintings.count.to_f/artist.years_experience.to_f
  	end
  	prolific.max_by{|k,v| v}[0]
  end

  def create_painting(title, price, gallery)
  	Painting.new(title, price, gallery, self)
  end
end
