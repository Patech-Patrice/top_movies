class TopMovies::CLI

  def start
    puts "Welcome to the Hollywood Top 10O Movies of All Time!"
    puts "What number movie would you like to view? enter (1-100)"
    TopMovies::Scraper.new.scrape_movies

    #display list of movies to users
    list_movies
  end

  def list_movies
  end

end
