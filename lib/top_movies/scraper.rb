class Scraper


def self.scrape_movies
      page = Nokogiri::HTML(open("https://www.themoviedb.org/movie")) #open page
      page.css('div.item.poster.card').each do |card|
      movie = Movie.create_movie
      title = card.css('a.title').text
      overview = card.css('p.overview')[0].children.text
      year = card.css('div.flex').text
      #binding.pry
      url = card.css('a.result')[0].attributes['href'].value
      #binding.pry
      movie.title = title
      movie.overview = overview
      movie.year = year
      movie.url = url

    #binding.pry
  end
end



end
