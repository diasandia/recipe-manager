class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name, { null: false }
      t.integer :difficulty, { null: false }
      t.integer :prep_time, { null: false }
      t.text :directions, { null: false }
      t.boolean :submitted, default: false

      t.timestamps
    end
  end
end
