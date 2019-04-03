#CLI controller

class ZodiacSearch::CLI

  def call
    list_zodiac
    menu
    goodbye
  end

  def list_zodiac
    #welcome message, list of signs
    puts "Welcome! Here is the list:"
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
      when "list"
        list_zodiac
      else
        puts "Try again, type list or exit"
      end
    end
  end
#NOTE when exit is typed it also shows try again
  def goodbye
    #message for exit
    puts "Bye!"
  end
end
