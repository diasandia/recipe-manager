Ingredient.destroy_all
Measurement.destroy_all
Recipe.destroy_all
Category.destroy_all
User.destroy_all

User.create!(id: 1, username: 'kenken', email: 'ken@ken.ken', password: 'password')

Category.create!(id: 1, name: "Appetizer")
Category.create!(id: 2, name: "Salad")
Category.create!(id: 3, name: "Main Course")
Category.create!(id: 4, name: "Dessert")

Ingredient.create!(name: "milk")
Ingredient.create!(name: "cheese")
Ingredient.create!(name: "flour")
Ingredient.create!(name: "butter")
Ingredient.create!(name: "sugar")
Ingredient.create!(name: "eggs")
Ingredient.create!(name: "apples")
Ingredient.create!(name: "carrots")
Ingredient.create!(name: "celery")
Ingredient.create!(name: "spinach")
Ingredient.create!(name: "mushrooms")

Recipe.create!(user_id: 1, category_id: 4, name: "Pumpkin Cheesecake", description: "the very best cheesecake ever!", difficulty: 7, prep_time: 90, directions: "Mix that shit up and pour it in a springform pan.")