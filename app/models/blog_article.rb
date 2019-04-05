class BlogArticle < ApplicationRecord
  has_many :blog_article_tags
  has_many :blog_photos
  has_many :blog_tags, through: :blog_article_tags
  has_many :blog_meta

  accepts_nested_attributes_for :blog_meta, allow_destroy: true
  accepts_nested_attributes_for :blog_photos, allow_destroy: true

  mount_uploader :cover_picture, PhotoUploader
end
