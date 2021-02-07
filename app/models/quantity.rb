class Quantity < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  validates :measure, presence: true
end
