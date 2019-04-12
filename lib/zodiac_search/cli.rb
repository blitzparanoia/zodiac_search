#CLI controller
class ZodiacSearch::CLI

  def call
    welcome
    list_zodiac
    menu
  end

  def welcome
    puts "Welcome!\n"
    ZodiacSearch::Scraper.new.new_signs
  end

  def list_zodiac
    #list of signs
    ZodiacSearch::Signs.all.each.with_index(1) do |sign, i|
      puts "#{i}. #{sign.signs}"
    end
  end

  def help
    puts "\nHeard you needed help. Here are the options: \nlist \neaster egg \nexit"
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
      input = nil

      while input != "exit"

        puts "\nType number of sign you would like to learn more about:"

        input = gets.strip.downcase

          if input == "list"
            list_zodiac
          elsif input == "help"
            help
          elsif input == "easter egg"
            easter_egg
          elsif input == "exit"
            goodbye
          elsif
             input.to_i.between?(1,12)

             fetch_sign = ZodiacSearch::Signs.all[input.to_i - 1]
              puts "Name: #{fetch_sign.signs}\nDate Range: #{fetch_sign.dates}"

              ZodiacSearch::Scraper.scrape_sign(fetch_sign)
          elsif
            input.to_i == 11
              ZodiacSearch::Scraper.scrape_sign(fetch_sign.signs == "Aquarius")
          else
            puts "Please enter a number between 1 and 12."
          end
        end
      end

    def goodbye
      puts "Have a great day!"

  end
