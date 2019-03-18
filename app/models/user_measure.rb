class UserMeasure < ApplicationRecord
  belongs_to :measure
  belongs_to :user
end
