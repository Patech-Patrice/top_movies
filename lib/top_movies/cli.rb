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
    #binding.pry
    index = input.to_i-1
  if index.between?(0,99)#if index.between #continue running program
    #find the movie
    puts "#{Movie.all_movies[index].title}"
    #puts "#{Movie.all_movies[index].overview}:"
    puts "#{Movie.all_movies[index].genre}"
    puts "For more info type (y) to view or type (exit) to return to main menu."
    more_info_input = gets.strip.downcase
    if more_info_input == 'y' || more_info_input == 'yes' #if input y or yes
      puts "#{Movie.all_movies[index].overview}:"
      puts "#{Movie.all_movies[index].url}"
    elsif imore_info_input == 'n' || more_info_input == 'no'
      puts "Invalid choice...."
          #puts ".....retrieving reviews"
        #Scraper.scrape_reviews(all_movies[index])
      #2nd scrape
      #list the movie that corresponds with the input number
    elsif  more_info_input == "exit"
      goodbye
    #elsif input == '' || input == 'no'
    else #if index.between
      invalid_choice
    end #if input y or yes
  else
    invalid_choice
  end #if index.between
end

  def invalid_choice
    puts ""
    puts "Invalid choice...."
    get_movie
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
