class TopMovies::Movie
  attr_accessor :name, :genre, :year, :rating
  @@all_items = []

  def self.all_items
  @@all
  end

  def self.create_movie
  end
end
