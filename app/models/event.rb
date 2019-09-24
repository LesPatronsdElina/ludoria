class Event < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  validates :picture, presence: true
  validates :name, presence: true

  scope :ordered_by_date, -> { order(date: :desc)}
  scope :visibles, -> { where(visible: true) }


  def complete_date
    "#{date.strftime("%d/%m/%Y")} - #{date.strftime("%Hh%M")}"
  end

  def hour_slot
    "#{date.strftime("%Hh%M")}"
  end
end
