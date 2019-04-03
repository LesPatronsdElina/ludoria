class BlogPhoto < ApplicationRecord
  belongs_to :blog_article
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
