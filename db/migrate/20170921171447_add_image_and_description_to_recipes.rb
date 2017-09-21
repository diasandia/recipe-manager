class AddImageAndDescriptionToRecipes < ActiveRecord::Migration[5.1]
  def change
    add_column :recipes, :image, :string
    add_column :recipes, :description, :text
  end
end
