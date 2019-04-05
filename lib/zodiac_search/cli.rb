#CLI controller
class ZodiacSearch::CLI

  def call
    welcome
    list_zodiac
    menu
  end

  def welcome
    puts "Hello"
    ZodiacSearch::Scraper.new.new_signs
  end

  def list_zodiac
    #list of signs
    ZodiacSearch::Signs.all.each.with_index(1) do |sign, i|
      puts "#{i}. #{sign.new_signs}"
    end
  end

  def menu
    input = ""
    while input != "exit"
      puts "Type number of sign you would like to learn more about:"
      input = gets.strip.downcase
        case input
        when "list"
          list_zodiac
        when "exit"
          goodbye
          break
        else
          if fetch_sign = ZodiacSearch::Signs.all[input.to_i-1]
            puts "Name: #{fetch_sign.new_signs}"
        end
      end
    end
  end

  def goodbye
    puts "Bye!"
  end

end
