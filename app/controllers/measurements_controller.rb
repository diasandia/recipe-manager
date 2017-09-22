class MeasurementsController < ApplicationController
  def new
    @user = current_user
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @measurement = @recipe.measurements.new
    @ingredient = Ingredient.new
  end

  def edit
    @user = current_user
    @category = Category.find(params[:category_id])
    @recipe = @category.recipes.find(params[:id])
    @measurement = @recipe.measurements.find(params[:measurement_id])
  end

  def create
    @recipe = Recipe.find(params[:id])
    @measurement = @recipe.measurements.new(measurement_params)
    @ingredient = Ingredient.find_or_create_by(ingredient_params)

    if @ingredient.save
      @measurement.ingredient_id = @ingredient.id
      if @measurement.save
        redirect_to recipe_path
      else
        @errors = @measurement.errors.full_messages
        render 'new'
      end
    else
      # this means the ingredient didn't save
      @errors = @ingredient.errors.full_messages
      render 'new'
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @measurement = @recipe.measurements.find(params[:measurement_id])

    if @measurement.update(measurement_params)
      redirect_to @recipe
    else
      @errors = @measurements.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @measurement = @recipe.measurements.find(params[:measurement_id])
    # find where ingredient.id == measurements.ingredient_id
    @measurement.destroy

    redirect_to recipe_path(@recipe)
  end

private

  def measurement_params
    params.require(:measurement).permit(:amount, :measurement_type)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
