class Movie
  attr_accessor :title, :overview, :genre, :url

  @@all_movies = []

  def self.all_movies
  @@all_movies
  end

  def self.create_movie
      movie = Movie.new
    @@all_movies << movie
    movie
  end
end
