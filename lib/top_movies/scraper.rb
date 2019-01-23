class Scraper


def self.scrape_movies
      page = Nokogiri::HTML(open("https://www.timeout.com/newyork/movies/100-best-movies-as-chosen-by-actors")) #open page
      page.css('div.card-content').each do |card|
      movie = Movie.create_movie
      title = card.css('h3.card-title').first.text.strip
      overview = card.css('div.js-card-desc-content').text
      genre = card.css('div.category.things-to-do').text

      movie.title = title
      movie.overview = overview
      movie.genre = genre
    end
  end


  def self.scrape_reviews(movie)
    movie = Movie.create_movie
    binding.pry
    review_page = Nokogiri::HTML(open("")) #open page
end


  
end
