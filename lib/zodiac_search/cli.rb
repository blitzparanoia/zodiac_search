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
      puts "#{i}. #{sign.signs}"
    end
  end

  def help
    puts "Heard you needed help. Here are the options: \nlist \nexit \neaster egg"
  end

  def easter_egg
      puts "UNICORNS ARE THE BEST!"
      puts %q{
  \.
   \\      .
    \\ _,.+;)_
    .\\;~%:88%%.
   (( a   `)9,8;%.
   /`   _) ' `9%%%?
  (' .-' j    '8%%'
   `"+   |    .88%)+._____..,,_   ,+%$%.
         :.   d%9`             `-%*'"'~%$.
      ___(   (%C                 `.   68%%9
    ."        \7                  ;  C8%%)`
    : ."-.__,'.____________..,`   L.  \86' ,
    : L    : :            `  .'\.   '.  %$9%)
    ;  -.  : |             \  \  "-._ `. `~"
     `. !  : |              )  >     ". ?
       `'  : |            .' .'       : |
           ; !          .' .'         : |
          ,' ;         ' .'           ; (
         .  (         j  (            `  \
         """'          ""'             `"" mh
      }
      puts "KEEP ON CODING!"
      end
    end

  def menu
    input = ""
    while input != "exit"
      puts "\nType number of sign you would like to learn more about:"
      input = gets.strip.downcase
        case input
        when "help"
          help
        when "list"
          list_zodiac
        when "easter egg"
          easter_egg
        when "exit"
          goodbye
          break
        else
          if fetch_sign = ZodiacSearch::Signs.all[input.to_i-1]
            binding.pry
            #puts "Name: #{fetch_sign.signs} \nDate Range:#{fetch_sign.dates} \n"
            ZodiacSearch::Scraper.scrape_sign(fetch_sign)
          else
            puts "Please enter a number between 1 and 12."
        end
      end
    end
  end

  def goodbye
    puts "Have a great day!"

end
