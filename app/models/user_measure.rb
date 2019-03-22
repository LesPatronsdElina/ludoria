class UserMeasure < ApplicationRecord
  belongs_to :measure
  belongs_to :user
  validates :value, numericality: { greater_than_or_equal_to: 0 }

end
