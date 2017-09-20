class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recipes_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipes_ingredients, dependent: :destroy

  validates :difficulty, length: {maximum: 10}
end
