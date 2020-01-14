class RecipeCard
  
  attr_reader :date, :rating, :user, :recipe
  
  @@all=[]
  
  def initialize(date, rating, user, recipe)
    @date = date
    @rating = rating
    @user = user
    @recipe = recipe
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  # return the ingredient instance that the highest num of users are allergic to
  
  def self.most_common_allergen
    
  end
end