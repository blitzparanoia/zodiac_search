#CLI controller

class ZodiacSearch::CLI

  def call
    list_zodiac
    menu
    goodbye
  end

  def list_zodiac
    #welcome message, list of signs
    puts "Welcome!"
  end

  def menu
    #prompt for user input, insert logic here
    input = nil
    while input != "exit"
    puts "Name a sign or pick a number:"
    input = gets.strip.downcase
      case input
      when "1"
        puts "first"
      when "2"
        puts "second"
      else
        puts "Try again"
      end
    end
  end

  def goodbye
    #message for exit
    puts "Bye!"
  end


end
