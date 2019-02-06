class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new

  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to @recipe
  end

  def index
    # @recipes = Recipe.all
    if params["sort_by"] == "0"
      @recipes = Recipe.all.sort_by{|r| r.number_of_ingredients}.reverse
    else
      @recipes = Recipe.all.sort_by{|r| r.number_of_ingredients}
    end
  end

  def show
    # byebug
    find_recipe
  end

  def edit
    find_recipe
  end

  def update
    find_recipe
    @recipe.update(recipe_params)



    redirect_to @recipe
  end

  def delete
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, ingredient_ids: [])
  end

end #end of RecipesController
