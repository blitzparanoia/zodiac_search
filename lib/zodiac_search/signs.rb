class ZodiacSearch::Signs
  attr_accessor :new_signs, :signs, :dates, :links, :information

  @@all = []

  def initialize(new_signs)
    new_signs.each do |attribute, info|
     self.send("#{attribute}=", info)
   end
    #binding.pry
    @@all << self
  end

  def self.all
    @@all
  end


end
