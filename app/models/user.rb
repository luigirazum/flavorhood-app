class User < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :recipes, inverse_of: :user, dependent: :destroy
  has_many :inventories, inverse_of: :user
end
