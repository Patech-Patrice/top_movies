class Scraper


  def self.scrape_movies
      page = Nokogiri::HTML(open("https://www.timeout.com/newyork/movies/100-best-movies-as-chosen-by-actors")) #open page
      page.css('div.card-content').each do |card|
      movie = Movie.create_movie
      title = card.css('h3.card-title').first.text.strip
      overview = card.css('div.js-card-desc-content').text.strip
      genre = card.css('div.category.things-to-do').text
      #url =  "https://www.timeout.com"  + page.css('div.card-content a')[0].attributes['href'].value
      movie.title = title
      movie.overview = overview
      movie.genre = genre
      #movie.url = url
    end
  end
end
