class Food < ApplicationRecord
  has_many :recipe_foods, inverse_of: :food
  has_many :inventory_foods, inverse_of: :food, dependent: :destroy

  has_many :recipes, through: :recipe_foods
  has_many :inventories, through: :inventory_foods

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {
    greater_than_or_equal_to: 0
  }
end
