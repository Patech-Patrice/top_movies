class Scraper


def self.scrape_movies
      page = Nokogiri::HTML(open("https://www.themoviedb.org/movie")) #open page
      page.css('div.item.poster.card').each do |card|
      movie = Movie.create_movie
      title = card.css('a.title').text
      #binding.pry
      movie.title = title

    #  binding.pry
  end
end



end
