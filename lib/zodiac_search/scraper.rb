class ZodiacSearch::Scraper

  def scrape_astrosite
    doc = Nokogiri::HTML(open("https://www.izodiacsigns.com/"))
  end

  def new_signs
    scrape_astrosite.css("a.quarter.zodiac").each do |info|
      ZodiacSearch::Signs.new({
        signs: info.css("span.signN").text,
        dates: info.css("span.s-date").text,
        #links: info.css("a").attr("href").value
        })
      end
    end
  end

  #def dates
  #  scrape_astrosite.css("a.quarter.zodiac").each do |info2|
  #    new_dates = info.css("span.s-date").text
  #  end
  #end
