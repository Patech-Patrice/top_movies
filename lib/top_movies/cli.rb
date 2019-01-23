class CLI

  def start
    puts "Welcome to the Top 100 Hollywood Rated Movies of All Time!"
    puts "What movie would you like to view?"
    Scraper.scrape_movies
  #display list of movies to users
    list_movies
    get_movie

  end

  def list_movies
    all_movies = Movie.all_movies
    all_movies.each.with_index(1) {|movie, index| puts "#{index} #{movie.title}"}
  end

  def get_movie
    puts "Please enter the number of the movie you wish to view:(enter 1-100)"
    input = gets.strip
    index = input.to_i-1
  if index.between?(0,99)
      puts "#{Movie.all_movies[index].title}"
    puts "#{Movie.all_movies[index].overview}:"
    puts "#{Movie.all_movies[index].genre}"
    #continue running program
      #find the movie
      #2nd scrape
      #list the movie that corresponds with the input number
    elsif
      input == "list"
      list_movies
    elsif input == "exit"
      puts "Goodbye"
    else
      puts "Invalid choice"
      get_movie #recursive method ---calling the same method from inside of the method
    all_movies = Movie.all_movies
    all_movies.each.with_index(1) {|movie, index| puts "#{index} #{movie.title} "}
  end
end
end
