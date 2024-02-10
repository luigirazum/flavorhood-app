class Recipe < ApplicationRecord
  belongs_to :user, inverse_of: :recipes
  has_many :recipe_foods, inverse_of: :recipe
  has_many :foods, through: :recipe_foods

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :public, presence: true
  validates :public, inclusion: [true, false]
end
