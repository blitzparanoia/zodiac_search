class ZodiacSearch::Signs
  attr_accessor :name, :dates, :representation, :traits, :url

  def self.list
#scraping the website
#ZodiacSearch::ZodiacScraper.new.signs
self.scrape_zodiacs
end

def self.scrape_zodiacs
#working potential methods and info to scrape, The smae format for all 12 signs
#take the name dates rep and traits
  signs_scraped = []

  signs_scraped << self.scrape_astrosite
#from the url
  signs_scraped
end

def self.scrape_astrosite
  doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/"))
  binding.pry
end


end
