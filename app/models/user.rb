class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :create_user_measures
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         # :confirmable
  has_many :user_measures, dependent: :destroy
  accepts_nested_attributes_for :user_measures

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :conditions_validation, inclusion: { in: [true] }

  def create_user_measures
    Measure.all.each do |measure|
      user_measures.create(measure: measure)
    end
  end

end
