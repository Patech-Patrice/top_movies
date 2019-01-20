class CLI

  def start
    puts "Welcome to the Top Rated Movies of 2018-2019!"
    puts "What movie would you like to view?"
    Scraper.scrape_movies

    #display list of movies to users
    list_movies
  end

  def list_movies
    all_movies = Movie.all_movies
    #binding.pry
    all_movies.each do |movie|
      puts movie.title
      puts movie.overview
      puts movie.year
      puts movie.url
    end
  end

end
