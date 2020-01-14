class Ingredient
  attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end
  
  def self.most_common_allergen
    Allergy.all.name.max
  end
  
  def self.all
    @@all
  end
end
