class BlogPhoto < ApplicationRecord
  belongs_to :blog_article
  mount_uploader :photo, PhotoUploader
end
