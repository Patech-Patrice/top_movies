class CLI

  def start
    puts "Welcome to the Top 100 Hollywood Rated Movies of All Time!"
  if Movie.all_movies == []
     Scraper.scrape_movies
   end
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
    movie_object = Movie.all_movies[index]
  if index.between?(0,Movie.all_movies.length-1)
    puts "#{movie_object.title}"
    puts "#{movie_object.genre}"
    puts "For more info type (y) to view or type (exit) to return to main menu."
    more_info_input = gets.strip.downcase
    if more_info_input == 'y' || more_info_input == 'yes'
      puts "#{movie_object.overview}:"
      puts "#{movie_object.url}"
      puts "Want to know more? Type (y) to view or type (exit)."
      want_more_info(movie_object)#2nd level scrape
    elsif  more_info_input == "exit"
      goodbye
    else
      invalid_choice
    end
  else
    invalid_choice
  end
end

  def want_more_info(movie)
    want_more_input = gets.strip.downcase
    if want_more_input == 'y' || want_more_input == 'yes'
      Scraper.scrape_reviews(movie)
      puts "#{movie.review}"
      final_choice
    elsif want_more_input == 'exit'
      goodbye
    else
      puts "Please choose a valid option...."
      want_more_info(movie)
    end
  end


  def final_choice
    puts "Would you like to view more movies? Type (y) to view or type (exit). "
    final_choice_input = gets.strip.downcase
    if final_choice_input == 'y' || final_choice_input == 'yes'
    start
  elsif final_choice_input == "exit"
    goodbye
  else
    puts "Invalid choice..."
    final_choice
  end
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
