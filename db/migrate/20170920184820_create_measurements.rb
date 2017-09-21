class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.integer :recipe_id
      t.integer :ingredient_id
      t.integer :amount, { null: false }
      t.string :measurement_type, { null: false }

      t.timestamps
    end
  end
end
