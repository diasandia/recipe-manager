class RecipesController < ApplicationController
  def index 
    @recipes = Recipe.all
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :difficulty, :prep_time, :directions)
  end
end
