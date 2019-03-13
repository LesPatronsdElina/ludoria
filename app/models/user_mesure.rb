class UserMesure < ApplicationRecord
  belongs_to :mesure
  belongs_to :user
end
