class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

<<<<<<< HEAD
  def new
  end

  def create
  end

  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes.all
=======
  def show 
    @category = Category.find(params[:id])
    @recipes = @category.recipes
>>>>>>> 122e32bf06eb05fbcc5d031aba2e5a61f660a814
  end
end
