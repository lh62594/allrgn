class User < ApplicationRecord
  has_many :recipes
  has_many :allergens
  has_many :ingredients, through: :recipes

  def allergen_ids=(allergen_ids)
    allergen_ids.each do |id|
      if id.strip != ""
        allergen = Allergen.find(id.to_i)
        self.allergens << allergen
      end
    end
  end


end #end of User
