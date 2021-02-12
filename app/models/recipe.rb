class Recipe < ApplicationRecord
  belongs_to :user

  has_many :quantities, dependent: :destroy
  has_many :ingredients, through: :quantities

  validates :name, :description, :difficulty, presence: true
  validates :difficulty, inclusion: { in: ["very easy", "easy", "moderate", "expert"] }
  validates :description, length: { minimum: 10 }
end
