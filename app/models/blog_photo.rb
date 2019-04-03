class BlogPhoto < ApplicationRecord
  belongs_to :article
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
