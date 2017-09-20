class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.integer :difficulty
      t.integer :prep_time
      t.text :directions
      t.boolean :submitted, default: false

      t.timestamps
    end
  end
end
