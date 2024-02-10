class InventoryFood < ApplicationRecord
  belongs_to :inventory, inverse_of: :inventory_foods
  belongs_to :food, inverse_of: :inventory_foods

  validates :quantity, presence: true
  validates :quantity, numericality: {
    greater_than_or_equal_to: 0
  }
  validates :food, uniqueness: { scope: :inventory, message: 'food cannot be duplicated per inventory' }
end
