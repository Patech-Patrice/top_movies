class CLI



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
    all_movies.each.with_index(1) {|movie, index| puts "#{index} #{movie.title}"}
    #binding.pry
    #all_movies.each do |movie|
      #puts movie.title
      #puts movie.overview
      #puts movie.genre
  end






  def get_movie
    puts "Please enter the title of the movie you wish to view:"

    input = gets.chomp.downcase


    all_movies = Movie.all_movies
    all_movies.each.with_index(1) {|movie, index| puts "#{index} #{movie.title} "}
    #movie_choice = all_movies.detect { |movie| movie.title.downcase == input}

    #binding.pry

    #binding.pry
    if input == movie_choice
      movie = gets.chomp


      puts "#{movie.title} - #{movie.overview }"

    elsif input == "exit"
       puts "Goodbye"
  end
end
end
