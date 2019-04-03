#CLI controller

class ZodiacSearch::CLI

  def call
    list_zodiac
  end

  def list_zodiac
    #welcome message, list of signs
    puts "Welcome!"
  end

  def menu
    #prompt for user input, insert logic here
    input = nil
    puts "Name a sign or pick a number:"
    input = gets.strip.downcase
    while input != "exit"
      case input
      when "1"
        puts "first"
      end
    end

  end

  def goodbye
    #message for exit
  end


end
