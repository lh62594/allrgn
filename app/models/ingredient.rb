class Ingredient < ApplicationRecord
  has_one :allergen
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  def number_of_allergens
    Allergen.where("name = '#{self.name}'").count
  end

end #end of Ingredient
