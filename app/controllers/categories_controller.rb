class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
  end

  def create
  end

  def show
    @category = Category.find(params[:id])
    @recipes = @category.recipes.all
  end
end
