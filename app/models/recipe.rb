class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  def ingredient_ids=(ingredient_ids)
    ingredient_ids.each do |id|
      if id.strip != ""
        ingredient = Ingredient.find(id.to_i)
        self.ingredients << ingredient
      end
    end
  end

  def number_of_ingredients
    self.ingredients.count
  end

end #end of Recipe
