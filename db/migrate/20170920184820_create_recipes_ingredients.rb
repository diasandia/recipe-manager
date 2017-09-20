class CreateRecipesIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes_ingredients do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :amount
      t.string :measurement_type

      t.timestamps
    end
  end
end
