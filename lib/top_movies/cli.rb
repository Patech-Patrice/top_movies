class CLI

  def start
    puts "Welcome to the Top 100 Hollywood Rated Movies of All Time!"
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
    #elsif
      #input == "list"
      #list_movies
    elsif input == "exit"
      farewell
    else
      puts "Invalid choice...."
      #list_movies
      get_movie #recursive method ---calling the same method from inside of the method
      start

    all_movies = Movie.all_movies
    all_movies.each.with_index(1) {|movie, index| puts "#{index} #{movie.title} "}
 end
end


  def farewell
    puts "Would you like to try a different number movie? (y/n)"
    input = gets.strip.downcase
    if input == 'y' || input == 'yes'
      start
    else input = 'n' || input == 'no'
      puts "Thank you for viewing the Top 100 Hollywood Films of all Time.Goodbye!"
    end
  end
end
