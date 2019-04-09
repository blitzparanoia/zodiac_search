class ZodiacSearch::Scraper

  def scrape_astrosite
    doc = Nokogiri::HTML(open("https://www.izodiacsigns.com/"))
  end

  def new_signs
    scrape_astrosite.css("a.quarter.zodiac").each do |info|
      ZodiacSearch::Signs.new({
        signs: info.css("span.signN").text,
        dates: info.css("span.s-date").text,
        links: info.attr("href")})
      end
    end

    def self.scrape_sign(sign_page)
      details = Nokogiri::HTML(open(sign_page.links))
      #binding.pry
      details.css("p")[1,2].text

    end

  end

=begin
scrape each link from the main page and extract the following from the linked page
doc.css("a").attr("href").value
doc.css("p")[1,2].text


info.attr("href")
info["href"]
=end
