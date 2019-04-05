class ZodiacSearch::Signs
  #attr_accessor :name, :dates, :signs, :representation, :traits, :url
  attr_accessor :new_signs

  @@all = []

  def initialize(new_signs)
    @new_signs = new_signs

    @@all << self
  end

  def self.all
    @@all
  end

end
  #def self.list
#scraping the website
#ZodiacSearch::ZodiacScraper.new.signs
  #  self.scrape_zodiacs
  #ZodiacSearch::Scraper
  #end





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
