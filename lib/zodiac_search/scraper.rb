class ZodiacSearch::Scraper

  def scrape_astrosite
    Nokogiri::HTML(open("https://www.izodiacsigns.com/"))
  end

  def new_signs
    scrape_astrosite.css("a.quarter.zodiac").each do |info|
      new_signs= info.css("span.signN").text
      new_dates= info.css("span.s-date").text
      #binding.pry
    end
  end

end
