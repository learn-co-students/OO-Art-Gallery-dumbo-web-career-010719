require 'pry'
class Artist

  attr_reader :name, :years_experience
  @@all=[]
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
    @@all.map{|obj| obj.years_experience}.inject {|sum, years|
    sum + years
  }
  end

  def painting_count
    paintings.count
  end

  def self.most_prolific
      @@all.max_by {|artist| artist.painting_count}
  end

  def create_painting(title, price, gallery)
     Painting.new(title, price, self, gallery)
  end

end
