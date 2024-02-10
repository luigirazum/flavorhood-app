class RecipeFood < ApplicationRecord
  belongs_to :recipe, inverse_of: :recipe_foods
  belongs_to :food, inverse_of: :recipe_foods

  validates :quantity, presence: true
  validates :quantity, numericality: {
    greater_than_or_equal_to: 0
  }
  validates :food, uniqueness: { scope: :recipe, message: 'food cannot be duplicated per recipe' }
end
