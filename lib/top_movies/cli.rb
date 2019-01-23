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
    all_movies = Movie.all_movies
    puts "Please enter the number of the movie you wish to view:(enter 1-100)"
    input = gets.strip
    index = input.to_i-1
  if index.between?(0,99) #continue running program
    #find the movie
    puts "#{Movie.all_movies[index].title}"
    #puts "#{Movie.all_movies[index].overview}:"
    puts "#{Movie.all_movies[index].genre}"
    puts "For more info type (y) to view or type (exit) to return to main menu."
      input = gets.strip.downcase
      if input == 'y' || input == 'yes'
        puts "#{Movie.all_movies[index].overview}:"
        puts "#{Movie.all_movies[index].url}"
      elsif input == 'n' || input == 'no'
          puts "Invalid choice...."
          #puts ".....retrieving reviews"
        #Scraper.scrape_reviews(all_movies[index])
      #2nd scrape
      #list the movie that corresponds with the input number
    elsif  input == "exit"
      goodbye
    #elsif input == '' || input == 'no'
  else
      puts ""
      puts "Invalid choice...."
      get_movie
    end
  #else
      #puts "Invalid choice...."
      #get_movie #recursive method ---calling the same method from inside of the method
    #end
 end
end


  def goodbye
      puts "Would you like to try a different movie number? (y/n)"
      input = gets.strip.downcase
      if input == 'y' || input == 'yes'
      start
      else input = 'n' || input == 'no'
      puts "Thank you for viewing the Top 100 Hollywood Movies!!! Goodbye."
    end
  end
end
#end
