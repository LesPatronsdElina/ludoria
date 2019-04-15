class Measure < ApplicationRecord
  after_create :create_user_measure_for_users
  has_many :user_measures

  validates :position, presence: true

  def create_user_measure_for_users
    User.all.each do |user|
      user.user_measures.create(measure: self)
    end
  end
end
