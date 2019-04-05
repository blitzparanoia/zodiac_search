#CLI controller

class ZodiacSearch::CLI

  def call
    list_zodiac
    menu
    goodbye
  end

  def list_zodiac
    #welcome message, list of signs
    @signs = ZodiacSearch::Signs.list
    @signs.each.with_index(1) do |sign, i|
      puts "#{i}. #{sign.name - sign.dates}"
    end
  end

  def menu
    #prompt for user input, insert logic here
    input = nil
    while input != "exit"
    puts "Name a sign or pick a number:"
    input = gets.strip.downcase

    if input.to_i > 0
      the_sign = @signs[input.to_i-1]
      puts puts "#{the_sign.name} - #{the_sign.dates}"
    elsif input  == "list"
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
