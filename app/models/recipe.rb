class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :measurements, { dependent: :destroy }
  has_many :ingredients, { through: :measurements }

  validates :name, { presence: true, uniqueness: true }
  validates :difficulty, numericality: { greater_than: 0, less_than_or_equal_to: 10 }
  validates :description, :prep_time, :directions,{ presence: true }
end
