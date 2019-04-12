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
      information = []
      
      details = Nokogiri::HTML(open(sign_page.links))

        info_one = details.css("p")[1].text
        info_two = details.css("p")[2].text

        information.push(info_one, info_two)
        puts information.join("\n\n") unless sign_page.signs == "Aquarius"

        if sign_page.signs == "Aquarius"

          info_three = details.css("p")[0].text.gsub(/\t/, "")
          info_four = details.css("p")[1].text.gsub(/\t/, "")

          2.times do
            information.slice!(0)
          end

          information.push(info_three, info_four)
          puts information
        end
        end
      end
