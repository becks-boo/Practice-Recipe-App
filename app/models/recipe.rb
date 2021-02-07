class Recipe < ApplicationRecord
  has_many :quantities
  has_many :ingredients, through: :quantities

  validates :name, :description, :difficulty, presence: true
  validates :difficulty, inclusion: { in: ["very easy", "easy", "moderate", "expert") }
  validates :description, length: { minimum: 150 }
end
