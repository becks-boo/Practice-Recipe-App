class Ingredient < ApplicationRecord
  has_many :quantities
  has_many :recipes, through: :quantities

  validates :name, presence: true
  # You can't delete an ingredient if it is used by at least one recipe
end
