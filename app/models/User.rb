class User
  
  attr_reader  :name
  
  @@all=[]
  def initialize (name)
    @name = name
    @@all << self  
  end
  
  def recipes
    RecipeCard.all.select do |card_instance|
      card_instance.user == self
      end
  end
  
  def add_recipe_card(recipe, date, rating)
    RecipeCard.new
  end
  
  def declare_allerge(name, ingredient)
      Allerge.new(name, self, ingredient)
  end
  
  def top_three_recipes
    self.recipes.max_by(3) do |instance|
      instance.rating
    end
  end
  
  def most_recent_recipe
    data = self.recipes.sort_by do |instance|
      instance.date
    end
    date[-1]
  end
  
  def self.all
    @@all
  end
end