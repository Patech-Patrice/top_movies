class TopMovies::Scraper
#first level to scrape the top 50 best selling products

#first level to scrape the top 50 movies



def get_page
      Nokogiri::HTML(open("https://www.hollywoodreporter.com/lists/100-best-films-ever-hollywood-favorites-818512")) #open page
  end

  def scrape_movies
    self.get_page.css("list-item__title").each do |movie|
      binding.pry
      movie.css("h1.list-item__info").text

    
  end
end


  end
