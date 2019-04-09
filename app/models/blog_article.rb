class BlogArticle < ApplicationRecord
  has_many :blog_article_tags
  has_many :blog_photos
  has_many :blog_tags, through: :blog_article_tags
  has_many :blog_meta

  accepts_nested_attributes_for :blog_meta, allow_destroy: true
  accepts_nested_attributes_for :blog_photos, allow_destroy: true

  enum status: { active: 0, archived: 1}

  mount_uploader :pdf, PhotoUploader
  mount_uploader :cover_picture, PhotoUploader

  def self.homepage
    where(visible_on_home: true)
  end
end
