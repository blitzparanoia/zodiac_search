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


#signs_scraped = self.new
#signs_scraped.name = doc.css("span.signN").children.collect {|x| x.text}
#signs_scraped.dates = doc.css("span.s-date").children.collect {|x| x.text}
#signs_scraped

=begin
doc.css("div.col-50 h2").text  SIGN
doc.css("div.col-50 p").text DATES

Traits URL & scrape (needs a method)
doc = Nokogiri::HTML(open("https://www.astrology-zodiac-signs.com/"))
doc = Nokogiri::HTML(open("https://labyrinthos.co/blogs/astrology-horoscope-zodiac-signs/list-of-12-zodiac-signs-dates-meanings-symbols"))

=end
end
