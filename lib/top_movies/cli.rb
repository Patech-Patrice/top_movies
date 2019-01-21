class CLI

  attr_accessor :sorted_movies

  def start
    puts "Welcome to the Top 20 Rated Movies of 2018-2019!"
    puts "What movie would you like to view?"
    Scraper.scrape_movies
  #display list of movies to users
    list_movies
    get_movie
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

  def get_movie
    puts "Please enter the title of the movie you wish to view:"
    input = gets.chomp.downcase
    all_movies = Movie.all_movies
    #all_movies.detect { |movie| movie.title.downcase == input}
    movie_choice = all_movies.detect { |movie| movie.title.downcase == input}
    binding.pry
    if input == '#{movie.title}'
      puts "#{movie.title}. #{movie.overview}. #{movie.year}"
    elsif input == nil
      puts "Please enter a valid title:"
    elsif input == "exit"
      goodbye
  end
end
end



def goodbye
    puts "Thank you for viewing the top 20 movies!!!"
  end
