class Inventory < ApplicationRecord
  belongs_to :user, inverse_of: :inventories
  has_many :inventory_foods, inverse_of: :inventory
  has_many :foods, through: :inventory_foods

  validates :name, presence: true
  validates :name, uniqueness: true
end
