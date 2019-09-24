class Event < ApplicationRecord
  mount_uploader :picture, PhotoUploader

  validates :picture, presence: true
  validates :name, presence: true

  def complete_date
    "#{date.strftime("%A %d %B %Y")} à #{date.strftime("%Hh%M")}"
  end

  def hour_slot
    "#{date.strftime("%Hh%M")}"
  end
end
