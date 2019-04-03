class BlogArticle < ApplicationRecord
  has_many :blog_article_tags
  has_many :blog_photos
  has_many :blog_tags, through: :blog_article_tags
  has_many :blog_meta

  mount_uploader :cover_picture, PhotoUploader
end
