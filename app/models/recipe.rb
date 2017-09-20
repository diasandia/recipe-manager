class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients
end
