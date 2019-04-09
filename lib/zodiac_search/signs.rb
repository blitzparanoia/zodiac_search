class ZodiacSearch::Signs
  attr_accessor :new_signs, :signs, :dates, :links, :scrape_sign

  @@all = []

  def initialize(new_signs)
    new_signs.each do |attribute, info|
      #binding.pry
     self.send("#{attribute}=", info)
   end
    #binding.pry
    @@all << self
  end

  def self.all
    @@all
  end

  #def information(scrape_sign)
  #binding.pry
  #end

end
