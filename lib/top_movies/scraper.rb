class Scraper

  def self.scrape_movies
      page = Nokogiri::HTML(open("https://www.timeout.com/newyork/movies/100-best-movies-as-chosen-by-actors")) #open page
      page.css('div.card-content').each do |card|
        #binding.pry
      movie = Movie.create_movie
      title = card.css('h3.card-title').first.text.strip
      overview = card.css('div.js-card-desc-content').text.strip
      genre = card.css('div.category.things-to-do').text
      #binding.pry
      url =  "https://www.timeout.com"  + card.css('h3.card-title a')[0].attributes['href'].value
      movie.title = title
      movie.overview = overview
      movie.genre = genre
      movie.url = url
    end
  end

  #def self.scrape_reviews(movie)
    #movie = Movie.all_movies[index]
    #review_page = Nokogiri::HTML(open(movie.url))
    #reviews = review_page.css('h3.card-title')
    #reviews.each do |review_html|
      #binding.pry
    #binding.pry
    #url = "https://www.timeout.com" + review_page.css()
    #review = movie_object.css()
    #movie.review = review
  #end
#end
end
