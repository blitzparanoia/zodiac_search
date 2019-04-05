class ZodiacSearch::Signs
  attr_accessor :new_signs, :dates

  @@all = []

  def initialize(new_signs)
    @new_signs = new_signs
    @@all << self
  end

  def self.all
    @@all
  end


end
