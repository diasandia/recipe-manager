class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    # @category = Category.find(params[:id])
    # @recipe = @category.recipes
    # p "*" * 100
    # p @recipe
    @recipe = Recipe.find(params[:id])
  end

  def new
    @user = current_user
    @category = Category.find(params[:id])
    @recipe = @category.recipes.new
  end

  def edit
    @user = current_user
    @category = Category.find(params[:id])
    @recipe = @category.recipes.find(params[:id])
  end

  def create
    @user = current_user
    @category = Category.find(params[:id])
    @recipe = @category.recipes.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path
    else
      @errors = @recipe.errors.full_messages
      render 'new'
    end
  end

  def update
    @user = current_user
    @category = Category.find(params[:id])
    @recipe = @category.recipes.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to @recipe
    else
      @errors = @recipe.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @user = current_user
    @category = Category.find(params[:id])
    @recipe = @category.recipes.find(params[:id])
    @recipe.destroy

    redirect_to recipe_path(@recipe)
  end

private

  def recipe_params
    params.require(:recipe).permit(:name, :difficulty, :prep_time, :directions, :description)
  end
end
