# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "clarence", age: 24)
User.create(name: "linya", age: 24)

Ingredient.create(name: "peanut")
Ingredient.create(name: "chicken")
Ingredient.create(name: "pasta")

Recipe.create(name: "chicken pasta", user_id: 1)
Recipe.create(name: "peanut chicken", user_id: 2)

Allergen.create(name: "peanut allergy", user_id: 1, ingredient_id: 1)

RecipeIngredient.create(recipe_id: 1, ingredient_id: 2)
RecipeIngredient.create(recipe_id: 1, ingredient_id: 3)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 1)
RecipeIngredient.create(recipe_id: 2, ingredient_id: 2)
