class ZodiacSearch::Scraper

  def scrape_astrosite
    Nokogiri::HTML(open("https://www.izodiacsigns.com/"))
  end

  def new_signs
    scrape_astrosite.css("a.quarter.zodiac").each do |info|
      new_signs = info.css("span.signN").text
      new_dates = info.css("span.s-date").text

      ZodiacSearch::Signs.new(new_signs)
    end
  end

end

#def self.scrape_zodiacs
#working potential methods and info to scrape, The smae format for all 12 signs
#take the name dates rep and traits

#  signs_scraped << new_signs
#from the url
#  signs_scraped
#end
