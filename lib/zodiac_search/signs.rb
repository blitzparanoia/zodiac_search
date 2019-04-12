class ZodiacSearch::Signs
  attr_accessor :new_signs, :signs, :dates, :links, :scrape_sign

  @@all = []

  def initialize(new_signs)
    new_signs.each do |attribute, info|
     self.send("#{attribute}=", info)
   end
    @@all << self
  end

  def self.all
    @@all
  end

end
