class UserMeasure < ApplicationRecord
  belongs_to :measure
  belongs_to :user
  validates :value, numericality: { greater_than_or_equal_to: 0 }
  scope :ordered_by_position, -> { includes(:measure).order('measures.position')}
  scope :filtered_by_important, -> { includes(:measure).where(measures: {important: true}) }
end
